; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/b43legacy/phy.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/b43legacy/phy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.b43legacy_lopair = type { i8, i8, i8 }
%struct.b43legacy_wldev = type { ptr, ptr, %struct.atomic_t, i32, i8, i8, i8, i8, i8, %struct.b43legacy_phy, %union.anon.131, %struct.b43legacy_stats, %struct.b43legacy_led, %struct.b43legacy_led, %struct.b43legacy_led, %struct.b43legacy_led, i32, [6 x i32], i32, %struct.b43legacy_noise_calculation, i32, %struct.tasklet_struct, %struct.delayed_work, i32, %struct.work_struct, i16, i8, [58 x %struct.b43legacy_key], %struct.b43legacy_firmware, ptr, %struct.completion, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.b43legacy_phy = type { i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, %struct.anon.128, [2 x i16], [2 x i16], ptr, ptr, i8, i32, i32, ptr, i16, i16, i16, i16, i16, i8, [2 x i16], %struct.anon.129, %struct.anon.130, i32, [26 x i32], [2 x i16], i32, [64 x i8], i8, i16, i16, %struct.atomic_t, i8, i8 }
%struct.anon.128 = type { i8, i16, i16 }
%struct.anon.129 = type { i16, i16, i16, i16 }
%struct.anon.130 = type { i16 }
%union.anon.131 = type { %struct.b43legacy_dma }
%struct.b43legacy_dma = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.b43legacy_stats = type { i8, i32, i32 }
%struct.b43legacy_led = type { ptr, %struct.led_classdev, i8, i8, [32 x i8] }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.b43legacy_noise_calculation = type { i8, i8, i8, [8 x [4 x i8]] }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.132, i32 }
%union.anon.132 = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.b43legacy_key = type { ptr, i8, i8 }
%struct.b43legacy_firmware = type { ptr, ptr, ptr, ptr, i16, i16 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.ssb_device = type { ptr, ptr, ptr, ptr, %struct.ssb_device_id, i8, i32, ptr, ptr }
%struct.ssb_device_id = type { i16, i16, i8, i8 }
%struct.b43legacy_wl = type { ptr, ptr, %struct.spinlock, %struct.mutex, %struct.spinlock, %struct.work_struct, ptr, [6 x i8], [6 x i8], i32, i8, i32, %struct.ieee80211_low_level_stats, %struct.hwrng, i8, [31 x i8], %struct.list_head, i8, i8, i8, ptr, i8, i8, i8, %struct.work_struct, [4 x %struct.b43legacy_qos_params], %struct.work_struct, [4 x %struct.sk_buff_head], [4 x i8] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.b43legacy_qos_params = type { %struct.ieee80211_tx_queue_params }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.ssb_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ssb_bus = type { ptr, ptr, ptr, %union.anon.133, %struct.spinlock, i32, %union.anon.134, i32, %struct.mutex, i16, i8, i16, i16, i8, [16 x %struct.ssb_device], i8, i32, %struct.ssb_chipcommon, %struct.ssb_pcicore, %struct.ssb_mipscore, %struct.ssb_extif, %struct.ssb_boardinfo, %struct.ssb_sprom, i8, %struct.gpio_chip, ptr, %struct.list_head, i8, i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { ptr }
%struct.ssb_chipcommon = type { ptr, i32, i32, i16, %struct.spinlock, %struct.ssb_chipcommon_pmu, i32, i32 }
%struct.ssb_chipcommon_pmu = type { i8, i32 }
%struct.ssb_pcicore = type { ptr, i8 }
%struct.ssb_mipscore = type {}
%struct.ssb_extif = type {}
%struct.ssb_boardinfo = type { i16, i16 }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.136, %struct.anon.137, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.136 = type { i8, i8, i8, i8 }
%struct.anon.137 = type { %struct.anon.138, %struct.anon.139 }
%struct.anon.138 = type { i8, i8, i8, i8, i8 }
%struct.anon.139 = type { i8, i8, i8, i8, i8 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.140, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.140 = type { ptr }

@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/wireless/broadcom/b43legacy/phy.c\00", [50 x i8] zeroinitializer }, align 32
@b43legacy_phy_lo_g_measure.pairorder = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\03\01\05\07\09\02\00\04\06\08", [22 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.1 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"WARNING: Invalid LOpair (low: %d, high: %d, index: %d)\0A\00", [40 x i8] zeroinitializer }, align 32
@b43legacy_phy_xmitpower._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 1781, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016b43legacy: Test (%s) failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"b43legacy_phy_xmitpower\00", [40 x i8] zeroinitializer }, align 32
@b43legacy_phy_xmitpower._entry_ptr = internal global ptr @b43legacy_phy_xmitpower._entry, section ".printk_index", align 4
@.str.4 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"!(phy->type == B43legacy_PHYTYPE_B || phy->type == B43legacy_PHYTYPE_G)\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Invalid max-TX-power value in SPROM.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"Current TX power output: %u.%u dBm, Desired TX power output: %u.%u dBm\0A\00", [56 x i8] zeroinitializer }, align 32
@b43legacy_tssi2dbm_b_table = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"MLKJJIHGGFEEDCBBA@?>=<;:987654210/-,+)(&%#!\1F\1D\1A\17\14\10\0C\06\00\F9\F9\F9\F9\F9\F9\F9\F9\F9\F9\F9\F9", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Could not allocate memory for tssi2dbm table\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Could not generate tssi2dBm table\0A\00", [61 x i8] zeroinitializer }, align 32
@b43legacy_tssi2dbm_g_table = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"MMMLLLKKJJIIIHHGGFFEDDCCBAA@??>=<;:98765421/-+(%!\1C\16\0E\05\F9\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC", [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unknown PHYTYPE found\0A\00", [41 x i8] zeroinitializer }, align 32
@b43legacy_phy_setupg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.10, ptr @.str, i32 314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"b43legacy_phy_setupg\00", [43 x i8] zeroinitializer }, align 32
@b43legacy_phy_setupg._entry_ptr = internal global ptr @b43legacy_phy_setupg._entry, section ".printk_index", align 4
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"phy->type != B43legacy_PHYTYPE_G\00", [63 x i8] zeroinitializer }, align 32
@b43legacy_ilt_finefreqg = external dso_local local_unnamed_addr constant [256 x i16], align 2
@b43legacy_ilt_noiseg1 = external dso_local local_unnamed_addr constant [8 x i16], align 2
@b43legacy_ilt_rotor = external dso_local local_unnamed_addr constant [53 x i32], align 4
@b43legacy_ilt_noiseg2 = external dso_local local_unnamed_addr constant [8 x i16], align 2
@b43legacy_ilt_noisescaleg1 = external dso_local local_unnamed_addr constant [27 x i16], align 2
@b43legacy_ilt_noisescaleg3 = external dso_local local_unnamed_addr constant [27 x i16], align 2
@b43legacy_ilt_noisescaleg2 = external dso_local local_unnamed_addr constant [27 x i16], align 2
@b43legacy_ilt_sigmasqr1 = external dso_local local_unnamed_addr constant [53 x i16], align 2
@b43legacy_ilt_sigmasqr2 = external dso_local local_unnamed_addr constant [53 x i16], align 2
@b43legacy_ilt_retard = external dso_local local_unnamed_addr constant [53 x i32], align 4
@b43legacy_phy_init_pctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.12, ptr @.str, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"b43legacy_phy_init_pctl\00", [40 x i8] zeroinitializer }, align 32
@b43legacy_phy_init_pctl._entry_ptr = internal global ptr @b43legacy_phy_init_pctl._entry, section ".printk_index", align 4
@b43legacy_find_lopair.dict = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\0B\0A\0B\0C\0D\0C\0D\0C\0D\0C", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"WARNING: Writing invalid LOpair (low: %d, high: %d)\0A\00", [43 x i8] zeroinitializer }, align 32
@b43legacy_phy_lo_g_state.transitions = internal constant { [8 x %struct.b43legacy_lopair], [40 x i8] } { [8 x %struct.b43legacy_lopair] [%struct.b43legacy_lopair { i8 1, i8 1, i8 0 }, %struct.b43legacy_lopair { i8 0, i8 1, i8 0 }, %struct.b43legacy_lopair { i8 -1, i8 1, i8 0 }, %struct.b43legacy_lopair { i8 -1, i8 0, i8 0 }, %struct.b43legacy_lopair { i8 -1, i8 -1, i8 0 }, %struct.b43legacy_lopair { i8 0, i8 -1, i8 0 }, %struct.b43legacy_lopair { i8 1, i8 -1, i8 0 }, %struct.b43legacy_lopair { i8 1, i8 0, i8 0 }], [40 x i8] zeroinitializer }, align 32
@b43legacy_phy_estimate_power_out._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.14, ptr @.str, i32 1744, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"b43legacy_phy_estimate_power_out\00", [63 x i8] zeroinitializer }, align 32
@b43legacy_phy_estimate_power_out._entry_ptr = internal global ptr @b43legacy_phy_estimate_power_out._entry, section ".printk_index", align 4
@.str.15 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.22 = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.23 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 8]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 77, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [10 x i8] c"pairorder\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 1467, i32 18 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 1695, i32 12 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 1780, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 1824, i32 26 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 1845, i32 25 }
@___asan_gen_.52 = private unnamed_addr constant [27 x i8] c"b43legacy_tssi2dbm_b_table\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 32, i32 17 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 2001, i32 26 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 2009, i32 27 }
@___asan_gen_.61 = private unnamed_addr constant [27 x i8] c"b43legacy_tssi2dbm_g_table\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 51, i32 17 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 2065, i32 25 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 314, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 142, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [5 x i8] c"dict\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 1293, i32 18 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 1277, i32 10 }
@___asan_gen_.88 = private unnamed_addr constant [12 x i8] c"transitions\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 1356, i32 39 }
@___asan_gen_.91 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.98 = private constant [49 x i8] c"../drivers/net/wireless/broadcom/b43legacy/phy.c\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 1744, i32 3 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @b43legacy_phy_estimate_power_out._entry, ptr @b43legacy_phy_estimate_power_out._entry_ptr, ptr @b43legacy_phy_init_pctl._entry, ptr @b43legacy_phy_init_pctl._entry_ptr, ptr @b43legacy_phy_setupg._entry, ptr @b43legacy_phy_setupg._entry_ptr, ptr @b43legacy_phy_xmitpower._entry, ptr @b43legacy_phy_xmitpower._entry_ptr, ptr @.str, ptr @b43legacy_phy_lo_g_measure.pairorder, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @b43legacy_tssi2dbm_b_table, ptr @.str.7, ptr @.str.8, ptr @b43legacy_tssi2dbm_g_table, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @b43legacy_find_lopair.dict, ptr @.str.13, ptr @b43legacy_phy_lo_g_state.transitions, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43legacy_phy_lo_g_measure.pairorder to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43legacy_phy_xmitpower._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43legacy_tssi2dbm_b_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43legacy_tssi2dbm_g_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43legacy_phy_setupg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43legacy_phy_init_pctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43legacy_find_lopair.dict to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43legacy_phy_lo_g_state.transitions to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43legacy_phy_estimate_power_out._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43legacy_phy_lock(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_locked = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 44
  %0 = ptrtoint ptr %phy_locked to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %phy_locked, align 1, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !56

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 77, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %phy_locked to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %phy_locked, align 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %revision = getelementptr inbounds %struct.ssb_device, ptr %4, i32 0, i32 4, i32 2
  %5 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %6)
  %cmp = icmp ult i8 %6, 3
  br i1 %cmp, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @b43legacy_mac_suspend(ptr noundef %dev) #7
  br label %if.end28

if.else:                                          ; preds = %if.end
  %wl = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  %7 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wl, align 4
  %operating.i = getelementptr inbounds %struct.b43legacy_wl, ptr %8, i32 0, i32 10
  %9 = ptrtoint ptr %operating.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %operating.i, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.else.if.then26_crit_edge, label %b43legacy_is_mode.exit

if.else.if.then26_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26

b43legacy_is_mode.exit:                           ; preds = %if.else
  %if_type.i = getelementptr inbounds %struct.b43legacy_wl, ptr %8, i32 0, i32 9
  %11 = ptrtoint ptr %if_type.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %if_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp.i.not = icmp eq i32 %12, 3
  br i1 %cmp.i.not, label %b43legacy_is_mode.exit.if.end28_crit_edge, label %b43legacy_is_mode.exit.if.then26_crit_edge

b43legacy_is_mode.exit.if.then26_crit_edge:       ; preds = %b43legacy_is_mode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26

b43legacy_is_mode.exit.if.end28_crit_edge:        ; preds = %b43legacy_is_mode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then26:                                        ; preds = %b43legacy_is_mode.exit.if.then26_crit_edge, %if.else.if.then26_crit_edge
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %4, align 4
  %read32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %16(ptr noundef %4, i16 noundef zeroext 288) #7
  %and.i = and i32 %call.i.i.i, -100663297
  %or8.i = or i32 %and.i, 67108864
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %write32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %22(ptr noundef %18, i16 noundef zeroext 288, i32 noundef %or8.i) #7
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %revision.i = getelementptr inbounds %struct.ssb_device, ptr %24, i32 0, i32 4, i32 2
  %25 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %26)
  %cmp14.i = icmp ugt i8 %26, 4
  br i1 %cmp14.i, label %if.then26.for.body.i_crit_edge, label %if.then26.if.end28_crit_edge

if.then26.if.end28_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then26.for.body.i_crit_edge:                   ; preds = %if.then26
  br label %for.body.i

for.body.i:                                       ; preds = %if.end23.i.for.body.i_crit_edge, %if.then26.for.body.i_crit_edge
  %i.036.i = phi i32 [ %inc.i, %if.end23.i.for.body.i_crit_edge ], [ 0, %if.then26.for.body.i_crit_edge ]
  %call19.i = tail call i32 @b43legacy_shm_read32(ptr noundef %dev, i16 noundef zeroext 1, i16 noundef zeroext 64) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call19.i)
  %cmp20.not.i = icmp eq i32 %call19.i, 4
  br i1 %cmp20.not.i, label %if.end23.i, label %for.body.i.if.end28_crit_edge

for.body.i.if.end28_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.end23.i:                                       ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 2147480) #7
  %inc.i = add nuw nsw i32 %i.036.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %if.end23.i.if.end28_crit_edge, label %if.end23.i.for.body.i_crit_edge

if.end23.i.for.body.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end23.i.if.end28_crit_edge:                    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.end28:                                         ; preds = %if.end23.i.if.end28_crit_edge, %for.body.i.if.end28_crit_edge, %if.then26.if.end28_crit_edge, %b43legacy_is_mode.exit.if.end28_crit_edge, %if.then24
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_mac_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43legacy_power_saving_ctl_bits(ptr noundef %dev, i32 %bit25, i32 %bit26) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %read32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1, i16 noundef zeroext 288) #7
  %and = and i32 %call.i.i, -100663297
  %or8 = or i32 %and, 67108864
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %write32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write32.i.i, align 4
  tail call void %11(ptr noundef %7, i16 noundef zeroext 288, i32 noundef %or8) #7
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %revision = getelementptr inbounds %struct.ssb_device, ptr %13, i32 0, i32 4, i32 2
  %14 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %15)
  %cmp14 = icmp ugt i8 %15, 4
  br i1 %cmp14, label %entry.for.body_crit_edge, label %entry.if.end24_crit_edge

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end23.for.body_crit_edge, %entry.for.body_crit_edge
  %i.036 = phi i32 [ %inc, %if.end23.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call19 = tail call i32 @b43legacy_shm_read32(ptr noundef %dev, i16 noundef zeroext 1, i16 noundef zeroext 64) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call19)
  %cmp20.not = icmp eq i32 %call19, 4
  br i1 %cmp20.not, label %if.end23, label %for.body.if.end24_crit_edge

for.body.if.end24_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.end23:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 2147480) #7
  %inc = add nuw nsw i32 %i.036, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %if.end23.if.end24_crit_edge, label %if.end23.for.body_crit_edge

if.end23.for.body_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end23.if.end24_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.end24:                                         ; preds = %if.end23.if.end24_crit_edge, %for.body.if.end24_crit_edge, %entry.if.end24_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43legacy_phy_unlock(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_locked = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 44
  %0 = ptrtoint ptr %phy_locked to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %phy_locked, align 1, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !57

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 92, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %phy_locked to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %phy_locked, align 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %revision = getelementptr inbounds %struct.ssb_device, ptr %4, i32 0, i32 4, i32 2
  %5 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %6)
  %cmp = icmp ult i8 %6, 3
  br i1 %cmp, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @b43legacy_mac_enable(ptr noundef %dev) #7
  br label %if.end29

if.else:                                          ; preds = %if.end
  %wl = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  %7 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wl, align 4
  %operating.i = getelementptr inbounds %struct.b43legacy_wl, ptr %8, i32 0, i32 10
  %9 = ptrtoint ptr %operating.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %operating.i, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.else.if.then27_crit_edge, label %b43legacy_is_mode.exit

if.else.if.then27_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then27

b43legacy_is_mode.exit:                           ; preds = %if.else
  %if_type.i = getelementptr inbounds %struct.b43legacy_wl, ptr %8, i32 0, i32 9
  %11 = ptrtoint ptr %if_type.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %if_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp.i.not = icmp eq i32 %12, 3
  br i1 %cmp.i.not, label %b43legacy_is_mode.exit.if.end29_crit_edge, label %b43legacy_is_mode.exit.if.then27_crit_edge

b43legacy_is_mode.exit.if.then27_crit_edge:       ; preds = %b43legacy_is_mode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then27

b43legacy_is_mode.exit.if.end29_crit_edge:        ; preds = %b43legacy_is_mode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then27:                                        ; preds = %b43legacy_is_mode.exit.if.then27_crit_edge, %if.else.if.then27_crit_edge
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %4, align 4
  %read32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %16(ptr noundef %4, i16 noundef zeroext 288) #7
  %and.i = and i32 %call.i.i.i, -100663297
  %or8.i = or i32 %and.i, 67108864
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %write32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %22(ptr noundef %18, i16 noundef zeroext 288, i32 noundef %or8.i) #7
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %revision.i = getelementptr inbounds %struct.ssb_device, ptr %24, i32 0, i32 4, i32 2
  %25 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %26)
  %cmp14.i = icmp ugt i8 %26, 4
  br i1 %cmp14.i, label %if.then27.for.body.i_crit_edge, label %if.then27.if.end29_crit_edge

if.then27.if.end29_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then27.for.body.i_crit_edge:                   ; preds = %if.then27
  br label %for.body.i

for.body.i:                                       ; preds = %if.end23.i.for.body.i_crit_edge, %if.then27.for.body.i_crit_edge
  %i.036.i = phi i32 [ %inc.i, %if.end23.i.for.body.i_crit_edge ], [ 0, %if.then27.for.body.i_crit_edge ]
  %call19.i = tail call i32 @b43legacy_shm_read32(ptr noundef %dev, i16 noundef zeroext 1, i16 noundef zeroext 64) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call19.i)
  %cmp20.not.i = icmp eq i32 %call19.i, 4
  br i1 %cmp20.not.i, label %if.end23.i, label %for.body.i.if.end29_crit_edge

for.body.i.if.end29_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.end23.i:                                       ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 2147480) #7
  %inc.i = add nuw nsw i32 %i.036.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %if.end23.i.if.end29_crit_edge, label %if.end23.i.for.body.i_crit_edge

if.end23.i.for.body.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end23.i.if.end29_crit_edge:                    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.end29:                                         ; preds = %if.end23.i.if.end29_crit_edge, %for.body.i.if.end29_crit_edge, %if.then27.if.end29_crit_edge, %b43legacy_is_mode.exit.if.end29_crit_edge, %if.then25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_mac_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @b43legacy_phy_read(ptr nocapture noundef readonly %dev, i16 noundef zeroext %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %write16.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write16.i.i, align 4
  tail call void %5(ptr noundef %1, i16 noundef zeroext 1020, i16 noundef zeroext %offset) #7
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %read16.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %read16.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read16.i.i, align 4
  %call.i.i = tail call zeroext i16 %11(ptr noundef %7, i16 noundef zeroext 1022) #7
  ret i16 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43legacy_phy_write(ptr nocapture noundef readonly %dev, i16 noundef zeroext %offset, i16 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %write16.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write16.i.i, align 4
  tail call void %5(ptr noundef %1, i16 noundef zeroext 1020, i16 noundef zeroext %offset) #7
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %write16.i.i2 = getelementptr inbounds %struct.ssb_bus_ops, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %write16.i.i2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write16.i.i2, align 4
  tail call void %11(ptr noundef %7, i16 noundef zeroext 1022, i16 noundef zeroext %val) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43legacy_phy_calibrate(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %read32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1, i16 noundef zeroext 288) #7
  %calibrated = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 9
  %6 = ptrtoint ptr %calibrated to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %calibrated, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 3
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %cmp = icmp eq i8 %8, 2
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %rev = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 4
  %9 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp4 = icmp eq i8 %10, 1
  br i1 %cmp4, label %if.then6, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @b43legacy_wireless_core_reset(ptr noundef %dev, i32 noundef 0) #7
  tail call fastcc void @b43legacy_phy_initg(ptr noundef %dev)
  tail call void @b43legacy_wireless_core_reset(ptr noundef %dev, i32 noundef 536870912) #7
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %11 = ptrtoint ptr %calibrated to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load9 = load i8, ptr %calibrated, align 2
  %bf.set = or i8 %bf.load9, -128
  store i8 %bf.set, ptr %calibrated, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_wireless_core_reset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @b43legacy_phy_initg(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rev = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 4
  %0 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @b43legacy_phy_initb5(ptr noundef %dev)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @b43legacy_phy_initb6(ptr noundef %dev)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp5 = icmp ugt i8 %3, 1
  br i1 %cmp5, label %land.lhs.true, label %if.end.if.end21thread-pre-split_crit_edge

if.end.if.end21thread-pre-split_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21thread-pre-split

land.lhs.true:                                    ; preds = %if.end
  %gmode = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %gmode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %gmode, align 1, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %land.lhs.true.if.end9_crit_edge, label %if.then8

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then8:                                         ; preds = %land.lhs.true
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 414) #7
  %type.i.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 3
  %6 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %type.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp.not.i.i = icmp eq i8 %7, 2
  br i1 %cmp.not.i.i, label %if.then8.do.end27.i.i_crit_edge, label %do.end.i.i, !prof !56

if.then8.do.end27.i.i_crit_edge:                  ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end27.i.i

do.end.i.i:                                       ; preds = %if.then8
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.11) #10
  %8 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %type.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp8.not.i.i = icmp eq i8 %9, 2
  br i1 %cmp8.not.i.i, label %do.end.i.i.do.end27.i.i_crit_edge, label %do.body17.i.i, !prof !56

do.end.i.i.do.end27.i.i_crit_edge:                ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end27.i.i

do.body17.i.i:                                    ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/broadcom/b43legacy/phy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 314, 0\0A.popsection", ""() #7, !srcloc !58
  unreachable

do.end27.i.i:                                     ; preds = %do.end.i.i.do.end27.i.i_crit_edge, %if.then8.do.end27.i.i_crit_edge
  %10 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp29.i.i = icmp eq i8 %11, 1
  br i1 %cmp29.i.i, label %if.then31.i.i, label %if.else.i.i

if.then31.i.i:                                    ; preds = %do.end27.i.i
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %write16.i.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %write16.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write16.i.i.i.i.i, align 4
  tail call void %17(ptr noundef %13, i16 noundef zeroext 1020, i16 noundef zeroext 1030) #7
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %write16.i.i2.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %write16.i.i2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write16.i.i2.i.i.i, align 4
  tail call void %23(ptr noundef %19, i16 noundef zeroext 1022, i16 noundef zeroext 20249) #7
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %write16.i.i.i391.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %write16.i.i.i391.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write16.i.i.i391.i.i, align 4
  tail call void %29(ptr noundef %25, i16 noundef zeroext 1020, i16 noundef zeroext 1065) #7
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %read16.i.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %read16.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read16.i.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i16 %35(ptr noundef %31, i16 noundef zeroext 1022) #7
  %36 = and i16 %call.i.i.i.i.i, -961
  %37 = or i16 %36, 832
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %write16.i.i.i392.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %write16.i.i.i392.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write16.i.i.i392.i.i, align 4
  tail call void %43(ptr noundef %39, i16 noundef zeroext 1020, i16 noundef zeroext 1065) #7
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %write16.i.i2.i393.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %write16.i.i2.i393.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write16.i.i2.i393.i.i, align 4
  tail call void %49(ptr noundef %45, i16 noundef zeroext 1022, i16 noundef zeroext %37) #7
  %50 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %write16.i.i.i394.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %53, i32 0, i32 4
  %54 = ptrtoint ptr %write16.i.i.i394.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write16.i.i.i394.i.i, align 4
  tail call void %55(ptr noundef %51, i16 noundef zeroext 1020, i16 noundef zeroext 1068) #7
  %56 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %write16.i.i2.i395.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %write16.i.i2.i395.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write16.i.i2.i395.i.i, align 4
  tail call void %61(ptr noundef %57, i16 noundef zeroext 1022, i16 noundef zeroext 90) #7
  %62 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %write16.i.i.i396.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %65, i32 0, i32 4
  %66 = ptrtoint ptr %write16.i.i.i396.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %write16.i.i.i396.i.i, align 4
  tail call void %67(ptr noundef %63, i16 noundef zeroext 1020, i16 noundef zeroext 1063) #7
  %68 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %write16.i.i2.i397.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %71, i32 0, i32 4
  %72 = ptrtoint ptr %write16.i.i2.i397.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %write16.i.i2.i397.i.i, align 4
  tail call void %73(ptr noundef %69, i16 noundef zeroext 1022, i16 noundef zeroext 26) #7
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then31.i.i
  %indvars.iv.i.i = phi i32 [ 0, %if.then31.i.i ], [ %indvars.iv.next.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [256 x i16], ptr @b43legacy_ilt_finefreqg, i32 0, i32 %indvars.iv.i.i
  %74 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %arrayidx.i.i, align 2
  %76 = trunc i32 %indvars.iv.i.i to i16
  %77 = add i16 %76, 22528
  tail call void @b43legacy_ilt_write(ptr noundef %dev, i16 noundef zeroext %77, i16 noundef zeroext %75) #7
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, 256
  br i1 %exitcond.not.i.i, label %for.body44.preheader.i.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.body44.preheader.i.i:                         ; preds = %for.body.i.i
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @b43legacy_ilt_noiseg1 to i32))
  %78 = load i16, ptr @b43legacy_ilt_noiseg1, align 2
  tail call void @b43legacy_ilt_write(ptr noundef %dev, i16 noundef zeroext 6144, i16 noundef zeroext %78) #7
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([8 x i16], ptr @b43legacy_ilt_noiseg1, i32 0, i32 1) to i32))
  %79 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @b43legacy_ilt_noiseg1, i32 0, i32 1), align 2
  tail call void @b43legacy_ilt_write(ptr noundef %dev, i16 noundef zeroext 6145, i16 noundef zeroext %79) #7
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([8 x i16], ptr @b43legacy_ilt_noiseg1, i32 0, i32 2) to i32))
  %80 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @b43legacy_ilt_noiseg1, i32 0, i32 2), align 2
  tail call void @b43legacy_ilt_write(ptr noundef %dev, i16 noundef zeroext 6146, i16 noundef zeroext %80) #7
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([8 x i16], ptr @b43legacy_ilt_noiseg1, i32 0, i32 3) to i32))
  %81 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @b43legacy_ilt_noiseg1, i32 0, i32 3), align 2
  tail call void @b43legacy_ilt_write(ptr noundef %dev, i16 noundef zeroext 6147, i16 noundef zeroext %81) #7
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([8 x i16], ptr @b43legacy_ilt_noiseg1, i32 0, i32 4) to i32))
  %82 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @b43legacy_ilt_noiseg1, i32 0, i32 4), align 2
  tail call void @b43legacy_ilt_write(ptr noundef %dev, i16 noundef zeroext 6148, i16 noundef zeroext %82) #7
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([8 x i16], ptr @b43legacy_ilt_noiseg1, i32 0, i32 5) to i32))
  %83 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @b43legacy_ilt_noiseg1, i32 0, i32 5), align 2
  tail call void @b43legacy_ilt_write(ptr noundef %dev, i16 noundef zeroext 6149, i16 noundef zeroext %83) #7
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([8 x i16], ptr @b43legacy_ilt_noiseg1, i32 0, i32 6) to i32))
  %84 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @b43legacy_ilt_noiseg1, i32 0, i32 6), align 2
  tail call void @b43legacy_ilt_write(ptr noundef %dev, i16 noundef zeroext 6150, i16 noundef zeroext %84) #7
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([8 x i16], ptr @b43legacy_ilt_noiseg1, i32 0, i32 7) to i32))
  %85 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @b43legacy_ilt_noiseg1, i32 0, i32 7), align 2
  tail call void @b43legacy_ilt_write(ptr noundef %dev, i16 noundef zeroext 6151, i16 noundef zeroext %85) #7
  br label %for.body57.i.i

for.body57.i.i:                                   ; preds = %for.body57.i.i.for.body57.i.i_crit_edge, %for.body44.preheader.i.i
  %indvars.iv451.i.i = phi i32 [ 0, %for.body44.preheader.i.i ], [ %indvars.iv.next452.i.i, %for.body57.i.i.for.body57.i.i_crit_edge ]
  %arrayidx62.i.i = getelementptr [53 x i32], ptr @b43legacy_ilt_rotor, i32 0, i32 %indvars.iv451.i.i
  %86 = ptrtoint ptr %arrayidx62.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx62.i.i, align 4
  %88 = trunc i32 %indvars.iv451.i.i to i16
  %89 = add i16 %88, 8192
  tail call void @b43legacy_ilt_write32(ptr noundef %dev, i16 noundef zeroext %89, i32 noundef %87) #7
  %indvars.iv.next452.i.i = add nuw nsw i32 %indvars.iv451.i.i, 1
  %exitcond454.not.i.i = icmp eq i32 %indvars.iv.next452.i.i, 53
  br i1 %exitcond454.not.i.i, label %for.body57.i.i.if.end107.i.i_crit_edge, label %for.body57.i.i.for.body57.i.i_crit_edge

for.body57.i.i.for.body57.i.i_crit_edge:          ; preds = %for.body57.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body57.i.i

for.body57.i.i.if.end107.i.i_crit_edge:           ; preds = %for.body57.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end107.i.i

if.else.i.i:                                      ; preds = %do.end27.i.i
  tail call void @b43legacy_nrssi_hw_write(ptr noundef %dev, i16 noundef zeroext -17768, i16 noundef signext 30292) #7
  %90 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %91)
  %cmp68.i.i = icmp eq i8 %91, 2
  br i1 %cmp68.i.i, label %if.then70.i.i, label %if.else71.i.i

if.then70.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %92 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %93, align 4
  %write16.i.i.i398.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %95, i32 0, i32 4
  %96 = ptrtoint ptr %write16.i.i.i398.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %write16.i.i.i398.i.i, align 4
  tail call void %97(ptr noundef %93, i16 noundef zeroext 1020, i16 noundef zeroext 1216) #7
  %98 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %99, align 4
  %write16.i.i2.i399.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %101, i32 0, i32 4
  %102 = ptrtoint ptr %write16.i.i2.i399.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %write16.i.i2.i399.i.i, align 4
  tail call void %103(ptr noundef %99, i16 noundef zeroext 1022, i16 noundef zeroext 6241) #7
  %104 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %105, align 4
  %write16.i.i.i400.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %107, i32 0, i32 4
  %108 = ptrtoint ptr %write16.i.i.i400.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %write16.i.i.i400.i.i, align 4
  tail call void %109(ptr noundef %105, i16 noundef zeroext 1020, i16 noundef zeroext 1217) #7
  %110 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %111, align 4
  %write16.i.i2.i401.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %113, i32 0, i32 4
  %114 = ptrtoint ptr %write16.i.i2.i401.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %write16.i.i2.i401.i.i, align 4
  tail call void %115(ptr noundef %111, i16 noundef zeroext 1022, i16 noundef zeroext 625) #7
  br label %if.end78.i.i

if.else71.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %91)
  %cmp74.i.i = icmp ugt i8 %91, 2
  br i1 %cmp74.i.i, label %if.then76.i.i, label %if.else71.i.i.if.end78.i.i_crit_edge

if.else71.i.i.if.end78.i.i_crit_edge:             ; preds = %if.else71.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78.i.i

if.then76.i.i:                                    ; preds = %if.else71.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %116 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %117, align 4
  %write16.i.i.i402.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %119, i32 0, i32 4
  %120 = ptrtoint ptr %write16.i.i.i402.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %write16.i.i.i402.i.i, align 4
  tail call void %121(ptr noundef %117, i16 noundef zeroext 1020, i16 noundef zeroext 1216) #7
  %122 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %123, align 4
  %write16.i.i2.i403.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %125, i32 0, i32 4
  %126 = ptrtoint ptr %write16.i.i2.i403.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %write16.i.i2.i403.i.i, align 4
  tail call void %127(ptr noundef %123, i16 noundef zeroext 1022, i16 noundef zeroext 152) #7
  %128 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dev, align 4
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %129, align 4
  %write16.i.i.i404.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %131, i32 0, i32 4
  %132 = ptrtoint ptr %write16.i.i.i404.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %write16.i.i.i404.i.i, align 4
  tail call void %133(ptr noundef %129, i16 noundef zeroext 1020, i16 noundef zeroext 1217) #7
  %134 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dev, align 4
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %135, align 4
  %write16.i.i2.i405.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %137, i32 0, i32 4
  %138 = ptrtoint ptr %write16.i.i2.i405.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %write16.i.i2.i405.i.i, align 4
  tail call void %139(ptr noundef %135, i16 noundef zeroext 1022, i16 noundef zeroext 112) #7
  %140 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %dev, align 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %141, align 4
  %write16.i.i.i406.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %143, i32 0, i32 4
  %144 = ptrtoint ptr %write16.i.i.i406.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %write16.i.i.i406.i.i, align 4
  tail call void %145(ptr noundef %141, i16 noundef zeroext 1020, i16 noundef zeroext 1225) #7
  %146 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dev, align 4
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %147, align 4
  %write16.i.i2.i407.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %149, i32 0, i32 4
  %150 = ptrtoint ptr %write16.i.i2.i407.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %write16.i.i2.i407.i.i, align 4
  tail call void %151(ptr noundef %147, i16 noundef zeroext 1022, i16 noundef zeroext 128) #7
  br label %if.end78.i.i

if.end78.i.i:                                     ; preds = %if.then76.i.i, %if.else71.i.i.if.end78.i.i_crit_edge, %if.then70.i.i
  %152 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %dev, align 4
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %153, align 4
  %write16.i.i.i408.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %155, i32 0, i32 4
  %156 = ptrtoint ptr %write16.i.i.i408.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %write16.i.i.i408.i.i, align 4
  tail call void %157(ptr noundef %153, i16 noundef zeroext 1020, i16 noundef zeroext 1067) #7
  %158 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %dev, align 4
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %159, align 4
  %read16.i.i.i409.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %161, i32 0, i32 1
  %162 = ptrtoint ptr %read16.i.i.i409.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %read16.i.i.i409.i.i, align 4
  %call.i.i.i410.i.i = tail call zeroext i16 %163(ptr noundef %159, i16 noundef zeroext 1022) #7
  %164 = or i16 %call.i.i.i410.i.i, 2048
  %165 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dev, align 4
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %166, align 4
  %write16.i.i.i411.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %168, i32 0, i32 4
  %169 = ptrtoint ptr %write16.i.i.i411.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %write16.i.i.i411.i.i, align 4
  tail call void %170(ptr noundef %166, i16 noundef zeroext 1020, i16 noundef zeroext 1067) #7
  %171 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %dev, align 4
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %172, align 4
  %write16.i.i2.i412.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %174, i32 0, i32 4
  %175 = ptrtoint ptr %write16.i.i2.i412.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %write16.i.i2.i412.i.i, align 4
  tail call void %176(ptr noundef %172, i16 noundef zeroext 1022, i16 noundef zeroext %164) #7
  br label %for.body87.i.i

for.body87.i.i:                                   ; preds = %for.body87.i.i.for.body87.i.i_crit_edge, %if.end78.i.i
  %i.3428.i.i = phi i16 [ 0, %if.end78.i.i ], [ %inc92.i.i, %for.body87.i.i.for.body87.i.i_crit_edge ]
  %add89.i.i = add nuw nsw i16 %i.3428.i.i, 16384
  tail call void @b43legacy_ilt_write(ptr noundef %dev, i16 noundef zeroext %add89.i.i, i16 noundef zeroext %i.3428.i.i) #7
  %inc92.i.i = add nuw nsw i16 %i.3428.i.i, 1
  %cmp85.i.i = icmp ult i16 %i.3428.i.i, 63
  br i1 %cmp85.i.i, label %for.body87.i.i.for.body87.i.i_crit_edge, label %for.body98.preheader.i.i

for.body87.i.i.for.body87.i.i_crit_edge:          ; preds = %for.body87.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body87.i.i

for.body98.preheader.i.i:                         ; preds = %for.body87.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @b43legacy_ilt_noiseg2 to i32))
  %177 = load i16, ptr @b43legacy_ilt_noiseg2, align 2
  tail call void @b43legacy_ilt_write(ptr noundef %dev, i16 noundef zeroext 6144, i16 noundef zeroext %177) #7
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([8 x i16], ptr @b43legacy_ilt_noiseg2, i32 0, i32 1) to i32))
  %178 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @b43legacy_ilt_noiseg2, i32 0, i32 1), align 2
  tail call void @b43legacy_ilt_write(ptr noundef %dev, i16 noundef zeroext 6145, i16 noundef zeroext %178) #7
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([8 x i16], ptr @b43legacy_ilt_noiseg2, i32 0, i32 2) to i32))
  %179 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @b43legacy_ilt_noiseg2, i32 0, i32 2), align 2
  tail call void @b43legacy_ilt_write(ptr noundef %dev, i16 noundef zeroext 6146, i16 noundef zeroext %179) #7
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([8 x i16], ptr @b43legacy_ilt_noiseg2, i32 0, i32 3) to i32))
  %180 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @b43legacy_ilt_noiseg2, i32 0, i32 3), align 2
  tail call void @b43legacy_ilt_write(ptr noundef %dev, i16 noundef zeroext 6147, i16 noundef zeroext %180) #7
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([8 x i16], ptr @b43legacy_ilt_noiseg2, i32 0, i32 4) to i32))
  %181 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @b43legacy_ilt_noiseg2, i32 0, i32 4), align 2
  tail call void @b43legacy_ilt_write(ptr noundef %dev, i16 noundef zeroext 6148, i16 noundef zeroext %181) #7
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([8 x i16], ptr @b43legacy_ilt_noiseg2, i32 0, i32 5) to i32))
  %182 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @b43legacy_ilt_noiseg2, i32 0, i32 5), align 2
  tail call void @b43legacy_ilt_write(ptr noundef %dev, i16 noundef zeroext 6149, i16 noundef zeroext %182) #7
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([8 x i16], ptr @b43legacy_ilt_noiseg2, i32 0, i32 6) to i32))
  %183 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @b43legacy_ilt_noiseg2, i32 0, i32 6), align 2
  tail call void @b43legacy_ilt_write(ptr noundef %dev, i16 noundef zeroext 6150, i16 noundef zeroext %183) #7
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([8 x i16], ptr @b43legacy_ilt_noiseg2, i32 0, i32 7) to i32))
  %184 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @b43legacy_ilt_noiseg2, i32 0, i32 7), align 2
  tail call void @b43legacy_ilt_write(ptr noundef %dev, i16 noundef zeroext 6151, i16 noundef zeroext %184) #7
  br label %if.end107.i.i

if.end107.i.i:                                    ; preds = %for.body98.preheader.i.i, %for.body57.i.i.if.end107.i.i_crit_edge
  %185 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %186)
  %cmp110.i.i = icmp ult i8 %186, 3
  br i1 %cmp110.i.i, label %if.end107.i.i.for.body117.i.i_crit_edge, label %if.else126.i.i

if.end107.i.i.for.body117.i.i_crit_edge:          ; preds = %if.end107.i.i
  br label %for.body117.i.i

for.body117.i.i:                                  ; preds = %for.body117.i.i.for.body117.i.i_crit_edge, %if.end107.i.i.for.body117.i.i_crit_edge
  %indvars.iv463.i.i = phi i32 [ %indvars.iv.next464.i.i, %for.body117.i.i.for.body117.i.i_crit_edge ], [ 0, %if.end107.i.i.for.body117.i.i_crit_edge ]
  %arrayidx122.i.i = getelementptr [27 x i16], ptr @b43legacy_ilt_noisescaleg1, i32 0, i32 %indvars.iv463.i.i
  %187 = ptrtoint ptr %arrayidx122.i.i to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %arrayidx122.i.i, align 2
  %189 = trunc i32 %indvars.iv463.i.i to i16
  %190 = add i16 %189, 5120
  tail call void @b43legacy_ilt_write(ptr noundef %dev, i16 noundef zeroext %190, i16 noundef zeroext %188) #7
  %indvars.iv.next464.i.i = add nuw nsw i32 %indvars.iv463.i.i, 1
  %exitcond466.not.i.i = icmp eq i32 %indvars.iv.next464.i.i, 27
  br i1 %exitcond466.not.i.i, label %for.body117.i.i.if.end164.i.i_crit_edge, label %for.body117.i.i.for.body117.i.i_crit_edge

for.body117.i.i.for.body117.i.i_crit_edge:        ; preds = %for.body117.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body117.i.i

for.body117.i.i.if.end164.i.i_crit_edge:          ; preds = %for.body117.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end164.i.i

if.else126.i.i:                                   ; preds = %if.end107.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %186)
  %cmp129.i.i = icmp ugt i8 %186, 6
  br i1 %cmp129.i.i, label %land.lhs.true.i.i, label %if.else126.i.i.for.body154.i.i.preheader_crit_edge

if.else126.i.i.for.body154.i.i.preheader_crit_edge: ; preds = %if.else126.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body154.i.i.preheader

for.body154.i.i.preheader:                        ; preds = %land.lhs.true.i.i.for.body154.i.i.preheader_crit_edge, %if.else126.i.i.for.body154.i.i.preheader_crit_edge
  br label %for.body154.i.i

land.lhs.true.i.i:                                ; preds = %if.else126.i.i
  %191 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %dev, align 4
  %193 = ptrtoint ptr %192 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %192, align 4
  %write16.i.i.i413.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %194, i32 0, i32 4
  %195 = ptrtoint ptr %write16.i.i.i413.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %write16.i.i.i413.i.i, align 4
  tail call void %196(ptr noundef %192, i16 noundef zeroext 1020, i16 noundef zeroext 1097) #7
  %197 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %dev, align 4
  %199 = ptrtoint ptr %198 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %198, align 4
  %read16.i.i.i414.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %200, i32 0, i32 1
  %201 = ptrtoint ptr %read16.i.i.i414.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %read16.i.i.i414.i.i, align 4
  %call.i.i.i415.i.i = tail call zeroext i16 %202(ptr noundef %198, i16 noundef zeroext 1022) #7
  %203 = and i16 %call.i.i.i415.i.i, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %203)
  %tobool134.not.i.i = icmp eq i16 %203, 0
  br i1 %tobool134.not.i.i, label %land.lhs.true.i.i.for.body154.i.i.preheader_crit_edge, label %land.lhs.true.i.i.for.body140.i.i_crit_edge

land.lhs.true.i.i.for.body140.i.i_crit_edge:      ; preds = %land.lhs.true.i.i
  br label %for.body140.i.i

land.lhs.true.i.i.for.body154.i.i.preheader_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body154.i.i.preheader

for.body140.i.i:                                  ; preds = %for.body140.i.i.for.body140.i.i_crit_edge, %land.lhs.true.i.i.for.body140.i.i_crit_edge
  %indvars.iv455.i.i = phi i32 [ %indvars.iv.next456.i.i, %for.body140.i.i.for.body140.i.i_crit_edge ], [ 0, %land.lhs.true.i.i.for.body140.i.i_crit_edge ]
  %arrayidx145.i.i = getelementptr [27 x i16], ptr @b43legacy_ilt_noisescaleg3, i32 0, i32 %indvars.iv455.i.i
  %204 = ptrtoint ptr %arrayidx145.i.i to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %arrayidx145.i.i, align 2
  %206 = trunc i32 %indvars.iv455.i.i to i16
  %207 = add i16 %206, 5120
  tail call void @b43legacy_ilt_write(ptr noundef %dev, i16 noundef zeroext %207, i16 noundef zeroext %205) #7
  %indvars.iv.next456.i.i = add nuw nsw i32 %indvars.iv455.i.i, 1
  %exitcond458.not.i.i = icmp eq i32 %indvars.iv.next456.i.i, 27
  br i1 %exitcond458.not.i.i, label %for.body140.i.i.if.end164.i.i_crit_edge, label %for.body140.i.i.for.body140.i.i_crit_edge

for.body140.i.i.for.body140.i.i_crit_edge:        ; preds = %for.body140.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body140.i.i

for.body140.i.i.if.end164.i.i_crit_edge:          ; preds = %for.body140.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end164.i.i

for.body154.i.i:                                  ; preds = %for.body154.i.i.for.body154.i.i_crit_edge, %for.body154.i.i.preheader
  %indvars.iv459.i.i = phi i32 [ %indvars.iv.next460.i.i, %for.body154.i.i.for.body154.i.i_crit_edge ], [ 0, %for.body154.i.i.preheader ]
  %arrayidx159.i.i = getelementptr [27 x i16], ptr @b43legacy_ilt_noisescaleg2, i32 0, i32 %indvars.iv459.i.i
  %208 = ptrtoint ptr %arrayidx159.i.i to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %arrayidx159.i.i, align 2
  %210 = trunc i32 %indvars.iv459.i.i to i16
  %211 = add i16 %210, 5120
  tail call void @b43legacy_ilt_write(ptr noundef %dev, i16 noundef zeroext %211, i16 noundef zeroext %209) #7
  %indvars.iv.next460.i.i = add nuw nsw i32 %indvars.iv459.i.i, 1
  %exitcond462.not.i.i = icmp eq i32 %indvars.iv.next460.i.i, 27
  br i1 %exitcond462.not.i.i, label %for.body154.i.i.if.end164.i.i_crit_edge, label %for.body154.i.i.for.body154.i.i_crit_edge

for.body154.i.i.for.body154.i.i_crit_edge:        ; preds = %for.body154.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body154.i.i

for.body154.i.i.if.end164.i.i_crit_edge:          ; preds = %for.body154.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end164.i.i

if.end164.i.i:                                    ; preds = %for.body154.i.i.if.end164.i.i_crit_edge, %for.body140.i.i.if.end164.i.i_crit_edge, %for.body117.i.i.if.end164.i.i_crit_edge
  %212 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %213)
  %cmp167.i.i = icmp eq i8 %213, 2
  br i1 %cmp167.i.i, label %if.end164.i.i.for.body174.i.i_crit_edge, label %if.else183.i.i

if.end164.i.i.for.body174.i.i_crit_edge:          ; preds = %if.end164.i.i
  br label %for.body174.i.i

for.body174.i.i:                                  ; preds = %for.body174.i.i.for.body174.i.i_crit_edge, %if.end164.i.i.for.body174.i.i_crit_edge
  %indvars.iv471.i.i = phi i32 [ %indvars.iv.next472.i.i, %for.body174.i.i.for.body174.i.i_crit_edge ], [ 0, %if.end164.i.i.for.body174.i.i_crit_edge ]
  %arrayidx179.i.i = getelementptr [53 x i16], ptr @b43legacy_ilt_sigmasqr1, i32 0, i32 %indvars.iv471.i.i
  %214 = ptrtoint ptr %arrayidx179.i.i to i32
  call void @__asan_load2_noabort(i32 %214)
  %215 = load i16, ptr %arrayidx179.i.i, align 2
  %216 = trunc i32 %indvars.iv471.i.i to i16
  %217 = add i16 %216, 20480
  tail call void @b43legacy_ilt_write(ptr noundef %dev, i16 noundef zeroext %217, i16 noundef zeroext %215) #7
  %indvars.iv.next472.i.i = add nuw nsw i32 %indvars.iv471.i.i, 1
  %exitcond474.not.i.i = icmp eq i32 %indvars.iv.next472.i.i, 53
  br i1 %exitcond474.not.i.i, label %for.body174.i.i.if.end208thread-pre-split.i.i_crit_edge, label %for.body174.i.i.for.body174.i.i_crit_edge

for.body174.i.i.for.body174.i.i_crit_edge:        ; preds = %for.body174.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body174.i.i

for.body174.i.i.if.end208thread-pre-split.i.i_crit_edge: ; preds = %for.body174.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end208thread-pre-split.i.i

if.else183.i.i:                                   ; preds = %if.end164.i.i
  %218 = add i8 %213, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %218)
  %219 = icmp ult i8 %218, 6
  br i1 %219, label %if.else183.i.i.for.body198.i.i_crit_edge, label %if.else183.i.i.if.end208.i.i_crit_edge

if.else183.i.i.if.end208.i.i_crit_edge:           ; preds = %if.else183.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end208.i.i

if.else183.i.i.for.body198.i.i_crit_edge:         ; preds = %if.else183.i.i
  br label %for.body198.i.i

for.body198.i.i:                                  ; preds = %for.body198.i.i.for.body198.i.i_crit_edge, %if.else183.i.i.for.body198.i.i_crit_edge
  %indvars.iv467.i.i = phi i32 [ %indvars.iv.next468.i.i, %for.body198.i.i.for.body198.i.i_crit_edge ], [ 0, %if.else183.i.i.for.body198.i.i_crit_edge ]
  %arrayidx203.i.i = getelementptr [53 x i16], ptr @b43legacy_ilt_sigmasqr2, i32 0, i32 %indvars.iv467.i.i
  %220 = ptrtoint ptr %arrayidx203.i.i to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %arrayidx203.i.i, align 2
  %222 = trunc i32 %indvars.iv467.i.i to i16
  %223 = add i16 %222, 20480
  tail call void @b43legacy_ilt_write(ptr noundef %dev, i16 noundef zeroext %223, i16 noundef zeroext %221) #7
  %indvars.iv.next468.i.i = add nuw nsw i32 %indvars.iv467.i.i, 1
  %exitcond470.not.i.i = icmp eq i32 %indvars.iv.next468.i.i, 53
  br i1 %exitcond470.not.i.i, label %for.body198.i.i.if.end208thread-pre-split.i.i_crit_edge, label %for.body198.i.i.for.body198.i.i_crit_edge

for.body198.i.i.for.body198.i.i_crit_edge:        ; preds = %for.body198.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body198.i.i

for.body198.i.i.if.end208thread-pre-split.i.i_crit_edge: ; preds = %for.body198.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end208thread-pre-split.i.i

if.end208thread-pre-split.i.i:                    ; preds = %for.body198.i.i.if.end208thread-pre-split.i.i_crit_edge, %for.body174.i.i.if.end208thread-pre-split.i.i_crit_edge
  %224 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %224)
  %.pr.i.i = load i8, ptr %rev, align 4
  br label %if.end208.i.i

if.end208.i.i:                                    ; preds = %if.end208thread-pre-split.i.i, %if.else183.i.i.if.end208.i.i_crit_edge
  %225 = phi i8 [ %.pr.i.i, %if.end208thread-pre-split.i.i ], [ %213, %if.else183.i.i.if.end208.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %225)
  %cmp211.i.i = icmp eq i8 %225, 1
  br i1 %cmp211.i.i, label %if.end208.i.i.for.body218.i.i_crit_edge, label %if.end208.i.i.for.body259.i.i_crit_edge

if.end208.i.i.for.body259.i.i_crit_edge:          ; preds = %if.end208.i.i
  br label %for.body259.i.i

if.end208.i.i.for.body218.i.i_crit_edge:          ; preds = %if.end208.i.i
  br label %for.body218.i.i

for.body218.i.i:                                  ; preds = %for.body218.i.i.for.body218.i.i_crit_edge, %if.end208.i.i.for.body218.i.i_crit_edge
  %indvars.iv475.i.i = phi i32 [ %indvars.iv.next476.i.i, %for.body218.i.i.for.body218.i.i_crit_edge ], [ 0, %if.end208.i.i.for.body218.i.i_crit_edge ]
  %arrayidx223.i.i = getelementptr [53 x i32], ptr @b43legacy_ilt_retard, i32 0, i32 %indvars.iv475.i.i
  %226 = ptrtoint ptr %arrayidx223.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %arrayidx223.i.i, align 4
  %228 = trunc i32 %indvars.iv475.i.i to i16
  %229 = add i16 %228, 9216
  tail call void @b43legacy_ilt_write32(ptr noundef %dev, i16 noundef zeroext %229, i32 noundef %227) #7
  %indvars.iv.next476.i.i = add nuw nsw i32 %indvars.iv475.i.i, 1
  %exitcond478.not.i.i = icmp eq i32 %indvars.iv.next476.i.i, 53
  br i1 %exitcond478.not.i.i, label %for.body231.preheader.i.i, label %for.body218.i.i.for.body218.i.i_crit_edge

for.body218.i.i.for.body218.i.i_crit_edge:        ; preds = %for.body218.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body218.i.i

for.body231.preheader.i.i:                        ; preds = %for.body218.i.i
  tail call void @b43legacy_ilt_write(ptr noundef %dev, i16 noundef zeroext 21508, i16 noundef zeroext 32) #7
  tail call void @b43legacy_ilt_write(ptr noundef %dev, i16 noundef zeroext 21509, i16 noundef zeroext 32) #7
  tail call void @b43legacy_ilt_write(ptr noundef %dev, i16 noundef zeroext 21510, i16 noundef zeroext 32) #7
  tail call void @b43legacy_ilt_write(ptr noundef %dev, i16 noundef zeroext 21511, i16 noundef zeroext 32) #7
  tail call void @b43legacy_ilt_write(ptr noundef %dev, i16 noundef zeroext 21512, i16 noundef zeroext 32) #7
  tail call void @b43legacy_ilt_write(ptr noundef %dev, i16 noundef zeroext 21513, i16 noundef zeroext 32) #7
  tail call void @b43legacy_ilt_write(ptr noundef %dev, i16 noundef zeroext 21514, i16 noundef zeroext 32) #7
  tail call void @b43legacy_ilt_write(ptr noundef %dev, i16 noundef zeroext 21515, i16 noundef zeroext 32) #7
  tail call void @b43legacy_ilt_write(ptr noundef %dev, i16 noundef zeroext 21516, i16 noundef zeroext 32) #7
  tail call void @b43legacy_ilt_write(ptr noundef %dev, i16 noundef zeroext 21517, i16 noundef zeroext 32) #7
  tail call void @b43legacy_ilt_write(ptr noundef %dev, i16 noundef zeroext 21518, i16 noundef zeroext 32) #7
  tail call void @b43legacy_ilt_write(ptr noundef %dev, i16 noundef zeroext 21519, i16 noundef zeroext 32) #7
  tail call void @b43legacy_ilt_write(ptr noundef %dev, i16 noundef zeroext 21520, i16 noundef zeroext 32) #7
  tail call void @b43legacy_ilt_write(ptr noundef %dev, i16 noundef zeroext 21521, i16 noundef zeroext 32) #7
  tail call void @b43legacy_ilt_write(ptr noundef %dev, i16 noundef zeroext 21522, i16 noundef zeroext 32) #7
  tail call void @b43legacy_ilt_write(ptr noundef %dev, i16 noundef zeroext 21523, i16 noundef zeroext 32) #7
  tail call fastcc void @b43legacy_phy_agcsetup(ptr noundef %dev) #7
  %230 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %dev, align 4
  %bus.i.i.i = getelementptr inbounds %struct.ssb_device, ptr %231, i32 0, i32 3
  %232 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %bus.i.i.i, align 4
  %boardinfo.i.i.i = getelementptr inbounds %struct.ssb_bus, ptr %233, i32 0, i32 21
  %234 = ptrtoint ptr %boardinfo.i.i.i to i32
  call void @__asan_load2_noabort(i32 %234)
  %235 = load i16, ptr %boardinfo.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5348, i16 %235)
  %cmp.i.i.i = icmp eq i16 %235, 5348
  br i1 %cmp.i.i.i, label %land.lhs.true240.i.i, label %for.body231.preheader.i.i.cleanup.sink.split.i.i_crit_edge

for.body231.preheader.i.i.cleanup.sink.split.i.i_crit_edge: ; preds = %for.body231.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i.i

land.lhs.true240.i.i:                             ; preds = %for.body231.preheader.i.i
  %type242.i.i = getelementptr inbounds %struct.ssb_bus, ptr %233, i32 0, i32 21, i32 1
  %236 = ptrtoint ptr %type242.i.i to i32
  call void @__asan_load2_noabort(i32 %236)
  %237 = load i16, ptr %type242.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1046, i16 %237)
  %cmp244.i.i = icmp eq i16 %237, 1046
  br i1 %cmp244.i.i, label %land.lhs.true246.i.i, label %land.lhs.true240.i.i.cleanup.sink.split.i.i_crit_edge

land.lhs.true240.i.i.cleanup.sink.split.i.i_crit_edge: ; preds = %land.lhs.true240.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i.i

land.lhs.true246.i.i:                             ; preds = %land.lhs.true240.i.i
  %board_rev.i.i = getelementptr inbounds %struct.ssb_bus, ptr %233, i32 0, i32 22, i32 13
  %238 = ptrtoint ptr %board_rev.i.i to i32
  call void @__asan_load2_noabort(i32 %238)
  %239 = load i16, ptr %board_rev.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 23, i16 %239)
  %cmp250.i.i = icmp eq i16 %239, 23
  br i1 %cmp250.i.i, label %land.lhs.true246.i.i.b43legacy_phy_setupg.exit.i_crit_edge, label %land.lhs.true246.i.i.cleanup.sink.split.i.i_crit_edge

land.lhs.true246.i.i.cleanup.sink.split.i.i_crit_edge: ; preds = %land.lhs.true246.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i.i

land.lhs.true246.i.i.b43legacy_phy_setupg.exit.i_crit_edge: ; preds = %land.lhs.true246.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43legacy_phy_setupg.exit.i

for.body259.i.i:                                  ; preds = %for.body259.i.i.for.body259.i.i_crit_edge, %if.end208.i.i.for.body259.i.i_crit_edge
  %i.12438.i.i = phi i16 [ %inc264.i.i, %for.body259.i.i.for.body259.i.i_crit_edge ], [ 0, %if.end208.i.i.for.body259.i.i_crit_edge ]
  %add261.i.i = add nuw nsw i16 %i.12438.i.i, 4096
  tail call void @b43legacy_ilt_write(ptr noundef %dev, i16 noundef zeroext %add261.i.i, i16 noundef zeroext 2080) #7
  %inc264.i.i = add nuw nsw i16 %i.12438.i.i, 1
  %cmp257.i.i = icmp ult i16 %i.12438.i.i, 32
  br i1 %cmp257.i.i, label %for.body259.i.i.for.body259.i.i_crit_edge, label %for.end265.i.i

for.body259.i.i.for.body259.i.i_crit_edge:        ; preds = %for.body259.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body259.i.i

for.end265.i.i:                                   ; preds = %for.body259.i.i
  tail call fastcc void @b43legacy_phy_agcsetup(ptr noundef %dev) #7
  %240 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %dev, align 4
  %242 = ptrtoint ptr %241 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %241, align 4
  %write16.i.i.i416.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %243, i32 0, i32 4
  %244 = ptrtoint ptr %write16.i.i.i416.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %write16.i.i.i416.i.i, align 4
  tail call void %245(ptr noundef %241, i16 noundef zeroext 1020, i16 noundef zeroext 1024) #7
  %246 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %dev, align 4
  %248 = ptrtoint ptr %247 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %247, align 4
  %read16.i.i.i417.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %249, i32 0, i32 1
  %250 = ptrtoint ptr %read16.i.i.i417.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %read16.i.i.i417.i.i, align 4
  %call.i.i.i418.i.i = tail call zeroext i16 %251(ptr noundef %247, i16 noundef zeroext 1022) #7
  %252 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %dev, align 4
  %254 = ptrtoint ptr %253 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %253, align 4
  %write16.i.i.i419.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %255, i32 0, i32 4
  %256 = ptrtoint ptr %write16.i.i.i419.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %write16.i.i.i419.i.i, align 4
  tail call void %257(ptr noundef %253, i16 noundef zeroext 1020, i16 noundef zeroext 1027) #7
  %258 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %dev, align 4
  %260 = ptrtoint ptr %259 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %259, align 4
  %write16.i.i2.i420.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %261, i32 0, i32 4
  %262 = ptrtoint ptr %write16.i.i2.i420.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %write16.i.i2.i420.i.i, align 4
  tail call void %263(ptr noundef %259, i16 noundef zeroext 1022, i16 noundef zeroext 4096) #7
  tail call void @b43legacy_ilt_write(ptr noundef %dev, i16 noundef zeroext 15362, i16 noundef zeroext 15) #7
  tail call void @b43legacy_ilt_write(ptr noundef %dev, i16 noundef zeroext 15363, i16 noundef zeroext 20) #7
  %264 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %dev, align 4
  %bus.i421.i.i = getelementptr inbounds %struct.ssb_device, ptr %265, i32 0, i32 3
  %266 = ptrtoint ptr %bus.i421.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %bus.i421.i.i, align 4
  %boardinfo.i422.i.i = getelementptr inbounds %struct.ssb_bus, ptr %267, i32 0, i32 21
  %268 = ptrtoint ptr %boardinfo.i422.i.i to i32
  call void @__asan_load2_noabort(i32 %268)
  %269 = load i16, ptr %boardinfo.i422.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5348, i16 %269)
  %cmp.i423.i.i = icmp eq i16 %269, 5348
  br i1 %cmp.i423.i.i, label %land.lhs.true269.i.i, label %for.end265.i.i.cleanup.sink.split.i.i_crit_edge

for.end265.i.i.cleanup.sink.split.i.i_crit_edge:  ; preds = %for.end265.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i.i

land.lhs.true269.i.i:                             ; preds = %for.end265.i.i
  %type273.i.i = getelementptr inbounds %struct.ssb_bus, ptr %267, i32 0, i32 21, i32 1
  %270 = ptrtoint ptr %type273.i.i to i32
  call void @__asan_load2_noabort(i32 %270)
  %271 = load i16, ptr %type273.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1046, i16 %271)
  %cmp275.i.i = icmp eq i16 %271, 1046
  br i1 %cmp275.i.i, label %land.lhs.true277.i.i, label %land.lhs.true269.i.i.cleanup.sink.split.i.i_crit_edge

land.lhs.true269.i.i.cleanup.sink.split.i.i_crit_edge: ; preds = %land.lhs.true269.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i.i

land.lhs.true277.i.i:                             ; preds = %land.lhs.true269.i.i
  %board_rev281.i.i = getelementptr inbounds %struct.ssb_bus, ptr %267, i32 0, i32 22, i32 13
  %272 = ptrtoint ptr %board_rev281.i.i to i32
  call void @__asan_load2_noabort(i32 %272)
  %273 = load i16, ptr %board_rev281.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 23, i16 %273)
  %cmp283.i.i = icmp eq i16 %273, 23
  br i1 %cmp283.i.i, label %land.lhs.true277.i.i.b43legacy_phy_setupg.exit.i_crit_edge, label %land.lhs.true277.i.i.cleanup.sink.split.i.i_crit_edge

land.lhs.true277.i.i.cleanup.sink.split.i.i_crit_edge: ; preds = %land.lhs.true277.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i.i

land.lhs.true277.i.i.b43legacy_phy_setupg.exit.i_crit_edge: ; preds = %land.lhs.true277.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43legacy_phy_setupg.exit.i

cleanup.sink.split.i.i:                           ; preds = %land.lhs.true277.i.i.cleanup.sink.split.i.i_crit_edge, %land.lhs.true269.i.i.cleanup.sink.split.i.i_crit_edge, %for.end265.i.i.cleanup.sink.split.i.i_crit_edge, %land.lhs.true246.i.i.cleanup.sink.split.i.i_crit_edge, %land.lhs.true240.i.i.cleanup.sink.split.i.i_crit_edge, %for.body231.preheader.i.i.cleanup.sink.split.i.i_crit_edge
  %.sink482.i.i = phi i16 [ 20481, %land.lhs.true246.i.i.cleanup.sink.split.i.i_crit_edge ], [ 20481, %land.lhs.true240.i.i.cleanup.sink.split.i.i_crit_edge ], [ 20481, %for.body231.preheader.i.i.cleanup.sink.split.i.i_crit_edge ], [ 1025, %land.lhs.true277.i.i.cleanup.sink.split.i.i_crit_edge ], [ 1025, %land.lhs.true269.i.i.cleanup.sink.split.i.i_crit_edge ], [ 1025, %for.end265.i.i.cleanup.sink.split.i.i_crit_edge ]
  %.sink.i.i = phi i16 [ 20482, %land.lhs.true246.i.i.cleanup.sink.split.i.i_crit_edge ], [ 20482, %land.lhs.true240.i.i.cleanup.sink.split.i.i_crit_edge ], [ 20482, %for.body231.preheader.i.i.cleanup.sink.split.i.i_crit_edge ], [ 1026, %land.lhs.true277.i.i.cleanup.sink.split.i.i_crit_edge ], [ 1026, %land.lhs.true269.i.i.cleanup.sink.split.i.i_crit_edge ], [ 1026, %for.end265.i.i.cleanup.sink.split.i.i_crit_edge ]
  tail call void @b43legacy_ilt_write(ptr noundef %dev, i16 noundef zeroext %.sink482.i.i, i16 noundef zeroext 2) #7
  tail call void @b43legacy_ilt_write(ptr noundef %dev, i16 noundef zeroext %.sink.i.i, i16 noundef zeroext 1) #7
  br label %b43legacy_phy_setupg.exit.i

b43legacy_phy_setupg.exit.i:                      ; preds = %cleanup.sink.split.i.i, %land.lhs.true277.i.i.b43legacy_phy_setupg.exit.i_crit_edge, %land.lhs.true246.i.i.b43legacy_phy_setupg.exit.i_crit_edge
  %274 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %dev, align 4
  %bus.i = getelementptr inbounds %struct.ssb_device, ptr %275, i32 0, i32 3
  %276 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %bus.i, align 4
  %boardflags_lo.i = getelementptr inbounds %struct.ssb_bus, ptr %277, i32 0, i32 22, i32 70
  %278 = ptrtoint ptr %boardflags_lo.i to i32
  call void @__asan_load2_noabort(i32 %278)
  %279 = load i16, ptr %boardflags_lo.i, align 4
  %280 = and i16 %279, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %280)
  %tobool.not.i = icmp eq i16 %280, 0
  br i1 %tobool.not.i, label %b43legacy_phy_setupg.exit.i.if.end9_crit_edge, label %if.then.i

b43legacy_phy_setupg.exit.i.if.end9_crit_edge:    ; preds = %b43legacy_phy_setupg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then.i:                                        ; preds = %b43legacy_phy_setupg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %281 = ptrtoint ptr %275 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %275, align 4
  %write16.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %282, i32 0, i32 4
  %283 = ptrtoint ptr %write16.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %write16.i.i.i.i, align 4
  tail call void %284(ptr noundef %275, i16 noundef zeroext 1020, i16 noundef zeroext 1134) #7
  %285 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %dev, align 4
  %287 = ptrtoint ptr %286 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %286, align 4
  %write16.i.i2.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %288, i32 0, i32 4
  %289 = ptrtoint ptr %write16.i.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %write16.i.i2.i.i, align 4
  tail call void %290(ptr noundef %286, i16 noundef zeroext 1022, i16 noundef zeroext 975) #7
  br label %if.end9

if.end9:                                          ; preds = %if.then.i, %b43legacy_phy_setupg.exit.i.if.end9_crit_edge, %land.lhs.true.if.end9_crit_edge
  %291 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %291)
  %.pr = load i8, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %.pr)
  %cmp12 = icmp ugt i8 %.pr, 1
  br i1 %cmp12, label %if.end15, label %if.end9.if.end21thread-pre-split_crit_edge

if.end9.if.end21thread-pre-split_crit_edge:       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21thread-pre-split

if.end15:                                         ; preds = %if.end9
  %292 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %dev, align 4
  %294 = ptrtoint ptr %293 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %293, align 4
  %write16.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %295, i32 0, i32 4
  %296 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %write16.i.i.i, align 4
  tail call void %297(ptr noundef %293, i16 noundef zeroext 1020, i16 noundef zeroext 2068) #7
  %298 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %dev, align 4
  %300 = ptrtoint ptr %299 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %299, align 4
  %write16.i.i2.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %301, i32 0, i32 4
  %302 = ptrtoint ptr %write16.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %write16.i.i2.i, align 4
  tail call void %303(ptr noundef %299, i16 noundef zeroext 1022, i16 noundef zeroext 0) #7
  %304 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %dev, align 4
  %306 = ptrtoint ptr %305 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %305, align 4
  %write16.i.i.i356 = getelementptr inbounds %struct.ssb_bus_ops, ptr %307, i32 0, i32 4
  %308 = ptrtoint ptr %write16.i.i.i356 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %write16.i.i.i356, align 4
  tail call void %309(ptr noundef %305, i16 noundef zeroext 1020, i16 noundef zeroext 2069) #7
  %310 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %dev, align 4
  %312 = ptrtoint ptr %311 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %311, align 4
  %write16.i.i2.i357 = getelementptr inbounds %struct.ssb_bus_ops, ptr %313, i32 0, i32 4
  %314 = ptrtoint ptr %write16.i.i2.i357 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %write16.i.i2.i357, align 4
  tail call void %315(ptr noundef %311, i16 noundef zeroext 1022, i16 noundef zeroext 0) #7
  %316 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %316)
  %.pr428 = load i8, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.pr428)
  %cmp18 = icmp eq i8 %.pr428, 2
  br i1 %cmp18, label %if.then20, label %if.end15.if.end21_crit_edge

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %317 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %dev, align 4
  %319 = ptrtoint ptr %318 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %318, align 4
  %write16.i.i.i358 = getelementptr inbounds %struct.ssb_bus_ops, ptr %320, i32 0, i32 4
  %321 = ptrtoint ptr %write16.i.i.i358 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %write16.i.i.i358, align 4
  tail call void %322(ptr noundef %318, i16 noundef zeroext 1020, i16 noundef zeroext 2065) #7
  %323 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %dev, align 4
  %325 = ptrtoint ptr %324 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %324, align 4
  %write16.i.i2.i359 = getelementptr inbounds %struct.ssb_bus_ops, ptr %326, i32 0, i32 4
  %327 = ptrtoint ptr %write16.i.i2.i359 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %write16.i.i2.i359, align 4
  tail call void %328(ptr noundef %324, i16 noundef zeroext 1022, i16 noundef zeroext 0) #7
  %329 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %dev, align 4
  %331 = ptrtoint ptr %330 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %330, align 4
  %write16.i.i.i360 = getelementptr inbounds %struct.ssb_bus_ops, ptr %332, i32 0, i32 4
  %333 = ptrtoint ptr %write16.i.i.i360 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %write16.i.i.i360, align 4
  tail call void %334(ptr noundef %330, i16 noundef zeroext 1020, i16 noundef zeroext 21) #7
  %335 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %dev, align 4
  %337 = ptrtoint ptr %336 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %336, align 4
  %write16.i.i2.i361 = getelementptr inbounds %struct.ssb_bus_ops, ptr %338, i32 0, i32 4
  %339 = ptrtoint ptr %write16.i.i2.i361 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %write16.i.i2.i361, align 4
  tail call void %340(ptr noundef %336, i16 noundef zeroext 1022, i16 noundef zeroext 192) #7
  br label %if.end21thread-pre-split

if.end21thread-pre-split:                         ; preds = %if.then20, %if.end9.if.end21thread-pre-split_crit_edge, %if.end.if.end21thread-pre-split_crit_edge
  %341 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %341)
  %.pr430 = load i8, ptr %rev, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end21thread-pre-split, %if.end15.if.end21_crit_edge
  %342 = phi i8 [ %.pr430, %if.end21thread-pre-split ], [ %.pr428, %if.end15.if.end21_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %342)
  %cmp24 = icmp ugt i8 %342, 5
  br i1 %cmp24, label %if.then26, label %if.end21.if.end27_crit_edge

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %343 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %dev, align 4
  %345 = ptrtoint ptr %344 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %344, align 4
  %write16.i.i.i362 = getelementptr inbounds %struct.ssb_bus_ops, ptr %346, i32 0, i32 4
  %347 = ptrtoint ptr %write16.i.i.i362 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %write16.i.i.i362, align 4
  tail call void %348(ptr noundef %344, i16 noundef zeroext 1020, i16 noundef zeroext 2065) #7
  %349 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %dev, align 4
  %351 = ptrtoint ptr %350 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %350, align 4
  %write16.i.i2.i363 = getelementptr inbounds %struct.ssb_bus_ops, ptr %352, i32 0, i32 4
  %353 = ptrtoint ptr %write16.i.i2.i363 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %write16.i.i2.i363, align 4
  tail call void %354(ptr noundef %350, i16 noundef zeroext 1022, i16 noundef zeroext 1024) #7
  %355 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %dev, align 4
  %357 = ptrtoint ptr %356 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %356, align 4
  %write16.i.i.i364 = getelementptr inbounds %struct.ssb_bus_ops, ptr %358, i32 0, i32 4
  %359 = ptrtoint ptr %write16.i.i.i364 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %write16.i.i.i364, align 4
  tail call void %360(ptr noundef %356, i16 noundef zeroext 1020, i16 noundef zeroext 21) #7
  %361 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %dev, align 4
  %363 = ptrtoint ptr %362 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %362, align 4
  %write16.i.i2.i365 = getelementptr inbounds %struct.ssb_bus_ops, ptr %364, i32 0, i32 4
  %365 = ptrtoint ptr %write16.i.i2.i365 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %write16.i.i2.i365, align 4
  tail call void %366(ptr noundef %362, i16 noundef zeroext 1022, i16 noundef zeroext 192) #7
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end21.if.end27_crit_edge
  %gmode28 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 1
  %367 = ptrtoint ptr %gmode28 to i32
  call void @__asan_load1_noabort(i32 %367)
  %368 = load i8, ptr %gmode28, align 1, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %368)
  %tobool29.not = icmp eq i8 %368, 0
  br i1 %tobool29.not, label %if.end27.if.end56_crit_edge, label %if.then30

if.end27.if.end56_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.then30:                                        ; preds = %if.end27
  %369 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %dev, align 4
  %371 = ptrtoint ptr %370 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %370, align 4
  %write16.i.i.i366 = getelementptr inbounds %struct.ssb_bus_ops, ptr %372, i32 0, i32 4
  %373 = ptrtoint ptr %write16.i.i.i366 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %write16.i.i.i366, align 4
  tail call void %374(ptr noundef %370, i16 noundef zeroext 1020, i16 noundef zeroext 1024) #7
  %375 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %dev, align 4
  %377 = ptrtoint ptr %376 to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %376, align 4
  %read16.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %378, i32 0, i32 1
  %379 = ptrtoint ptr %read16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %read16.i.i.i, align 4
  %call.i.i.i = tail call zeroext i16 %380(ptr noundef %376, i16 noundef zeroext 1022) #7
  %trunc = trunc i16 %call.i.i.i to i8
  %381 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %381, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %if.then30.if.end49_crit_edge [
    i8 3, label %if.then36
    i8 4, label %if.then30.if.then44_crit_edge
    i8 5, label %if.then30.if.then44_crit_edge447
  ]

if.then30.if.then44_crit_edge447:                 ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then44

if.then30.if.then44_crit_edge:                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then44

if.then30.if.end49_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then36:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  %382 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %dev, align 4
  %384 = ptrtoint ptr %383 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %383, align 4
  %write16.i.i.i367 = getelementptr inbounds %struct.ssb_bus_ops, ptr %385, i32 0, i32 4
  %386 = ptrtoint ptr %write16.i.i.i367 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %write16.i.i.i367, align 4
  tail call void %387(ptr noundef %383, i16 noundef zeroext 1020, i16 noundef zeroext 1218) #7
  %388 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %dev, align 4
  %390 = ptrtoint ptr %389 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %389, align 4
  %write16.i.i2.i368 = getelementptr inbounds %struct.ssb_bus_ops, ptr %391, i32 0, i32 4
  %392 = ptrtoint ptr %write16.i.i2.i368 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %write16.i.i2.i368, align 4
  tail call void %393(ptr noundef %389, i16 noundef zeroext 1022, i16 noundef zeroext 6166) #7
  %394 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %dev, align 4
  %396 = ptrtoint ptr %395 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %395, align 4
  %write16.i.i.i369 = getelementptr inbounds %struct.ssb_bus_ops, ptr %397, i32 0, i32 4
  %398 = ptrtoint ptr %write16.i.i.i369 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %write16.i.i.i369, align 4
  tail call void %399(ptr noundef %395, i16 noundef zeroext 1020, i16 noundef zeroext 1219) #7
  %400 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %dev, align 4
  %402 = ptrtoint ptr %401 to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %401, align 4
  %write16.i.i2.i370 = getelementptr inbounds %struct.ssb_bus_ops, ptr %403, i32 0, i32 4
  %404 = ptrtoint ptr %write16.i.i2.i370 to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %write16.i.i2.i370, align 4
  tail call void %405(ptr noundef %401, i16 noundef zeroext 1022, i16 noundef zeroext -31226) #7
  br label %if.end49

if.then44:                                        ; preds = %if.then30.if.then44_crit_edge, %if.then30.if.then44_crit_edge447
  %406 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %dev, align 4
  %408 = ptrtoint ptr %407 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %407, align 4
  %write16.i.i.i371 = getelementptr inbounds %struct.ssb_bus_ops, ptr %409, i32 0, i32 4
  %410 = ptrtoint ptr %write16.i.i.i371 to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %write16.i.i.i371, align 4
  tail call void %411(ptr noundef %407, i16 noundef zeroext 1020, i16 noundef zeroext 1218) #7
  %412 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %dev, align 4
  %414 = ptrtoint ptr %413 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %413, align 4
  %write16.i.i2.i372 = getelementptr inbounds %struct.ssb_bus_ops, ptr %415, i32 0, i32 4
  %416 = ptrtoint ptr %write16.i.i2.i372 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %write16.i.i2.i372, align 4
  tail call void %417(ptr noundef %413, i16 noundef zeroext 1022, i16 noundef zeroext 6166) #7
  %418 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %dev, align 4
  %420 = ptrtoint ptr %419 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %419, align 4
  %write16.i.i.i373 = getelementptr inbounds %struct.ssb_bus_ops, ptr %421, i32 0, i32 4
  %422 = ptrtoint ptr %write16.i.i.i373 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %write16.i.i.i373, align 4
  tail call void %423(ptr noundef %419, i16 noundef zeroext 1020, i16 noundef zeroext 1219) #7
  %424 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %dev, align 4
  %426 = ptrtoint ptr %425 to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %425, align 4
  %write16.i.i2.i374 = getelementptr inbounds %struct.ssb_bus_ops, ptr %427, i32 0, i32 4
  %428 = ptrtoint ptr %write16.i.i2.i374 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %write16.i.i2.i374, align 4
  tail call void %429(ptr noundef %425, i16 noundef zeroext 1022, i16 noundef zeroext -32762) #7
  %430 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %dev, align 4
  %432 = ptrtoint ptr %431 to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %431, align 4
  %write16.i.i.i375 = getelementptr inbounds %struct.ssb_bus_ops, ptr %433, i32 0, i32 4
  %434 = ptrtoint ptr %write16.i.i.i375 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %write16.i.i.i375, align 4
  tail call void %435(ptr noundef %431, i16 noundef zeroext 1020, i16 noundef zeroext 1228) #7
  %436 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %dev, align 4
  %438 = ptrtoint ptr %437 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %437, align 4
  %read16.i.i.i376 = getelementptr inbounds %struct.ssb_bus_ops, ptr %439, i32 0, i32 1
  %440 = ptrtoint ptr %read16.i.i.i376 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %read16.i.i.i376, align 4
  %call.i.i.i377 = tail call zeroext i16 %441(ptr noundef %437, i16 noundef zeroext 1022) #7
  %442 = and i16 %call.i.i.i377, 255
  %443 = or i16 %442, 7936
  %444 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %dev, align 4
  %446 = ptrtoint ptr %445 to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %445, align 4
  %write16.i.i.i378 = getelementptr inbounds %struct.ssb_bus_ops, ptr %447, i32 0, i32 4
  %448 = ptrtoint ptr %write16.i.i.i378 to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %write16.i.i.i378, align 4
  tail call void %449(ptr noundef %445, i16 noundef zeroext 1020, i16 noundef zeroext 1228) #7
  %450 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %dev, align 4
  %452 = ptrtoint ptr %451 to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %451, align 4
  %write16.i.i2.i379 = getelementptr inbounds %struct.ssb_bus_ops, ptr %453, i32 0, i32 4
  %454 = ptrtoint ptr %write16.i.i2.i379 to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %write16.i.i2.i379, align 4
  tail call void %455(ptr noundef %451, i16 noundef zeroext 1022, i16 noundef zeroext %443) #7
  br label %if.end49

if.end49:                                         ; preds = %if.then44, %if.then36, %if.then30.if.end49_crit_edge
  %456 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %456)
  %457 = load i8, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %457)
  %cmp52 = icmp ugt i8 %457, 1
  br i1 %cmp52, label %if.then54, label %if.end49.if.end56_crit_edge

if.end49.if.end56_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.then54:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %458 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %dev, align 4
  %460 = ptrtoint ptr %459 to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %459, align 4
  %write16.i.i.i380 = getelementptr inbounds %struct.ssb_bus_ops, ptr %461, i32 0, i32 4
  %462 = ptrtoint ptr %write16.i.i.i380 to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %write16.i.i.i380, align 4
  tail call void %463(ptr noundef %459, i16 noundef zeroext 1020, i16 noundef zeroext 1150) #7
  %464 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %dev, align 4
  %466 = ptrtoint ptr %465 to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %465, align 4
  %write16.i.i2.i381 = getelementptr inbounds %struct.ssb_bus_ops, ptr %467, i32 0, i32 4
  %468 = ptrtoint ptr %write16.i.i2.i381 to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %write16.i.i2.i381, align 4
  tail call void %469(ptr noundef %465, i16 noundef zeroext 1022, i16 noundef zeroext 120) #7
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.end49.if.end56_crit_edge, %if.end27.if.end56_crit_edge
  %radio_rev = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 10
  %470 = ptrtoint ptr %radio_rev to i32
  call void @__asan_load1_noabort(i32 %470)
  %471 = load i8, ptr %radio_rev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %471)
  %cmp58 = icmp eq i8 %471, 8
  br i1 %cmp58, label %if.then60, label %if.end56.if.end69_crit_edge

if.end56.if.end69_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then60:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  %472 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %dev, align 4
  %474 = ptrtoint ptr %473 to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %473, align 4
  %write16.i.i.i382 = getelementptr inbounds %struct.ssb_bus_ops, ptr %475, i32 0, i32 4
  %476 = ptrtoint ptr %write16.i.i.i382 to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %write16.i.i.i382, align 4
  tail call void %477(ptr noundef %473, i16 noundef zeroext 1020, i16 noundef zeroext 2049) #7
  %478 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %dev, align 4
  %480 = ptrtoint ptr %479 to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %479, align 4
  %read16.i.i.i383 = getelementptr inbounds %struct.ssb_bus_ops, ptr %481, i32 0, i32 1
  %482 = ptrtoint ptr %read16.i.i.i383 to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %read16.i.i.i383, align 4
  %call.i.i.i384 = tail call zeroext i16 %483(ptr noundef %479, i16 noundef zeroext 1022) #7
  %484 = or i16 %call.i.i.i384, 128
  %485 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load ptr, ptr %dev, align 4
  %487 = ptrtoint ptr %486 to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %486, align 4
  %write16.i.i.i385 = getelementptr inbounds %struct.ssb_bus_ops, ptr %488, i32 0, i32 4
  %489 = ptrtoint ptr %write16.i.i.i385 to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load ptr, ptr %write16.i.i.i385, align 4
  tail call void %490(ptr noundef %486, i16 noundef zeroext 1020, i16 noundef zeroext 2049) #7
  %491 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %dev, align 4
  %493 = ptrtoint ptr %492 to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %492, align 4
  %write16.i.i2.i386 = getelementptr inbounds %struct.ssb_bus_ops, ptr %494, i32 0, i32 4
  %495 = ptrtoint ptr %write16.i.i2.i386 to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load ptr, ptr %write16.i.i2.i386, align 4
  tail call void %496(ptr noundef %492, i16 noundef zeroext 1022, i16 noundef zeroext %484) #7
  %497 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load ptr, ptr %dev, align 4
  %499 = ptrtoint ptr %498 to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load ptr, ptr %498, align 4
  %write16.i.i.i387 = getelementptr inbounds %struct.ssb_bus_ops, ptr %500, i32 0, i32 4
  %501 = ptrtoint ptr %write16.i.i.i387 to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %write16.i.i.i387, align 4
  tail call void %502(ptr noundef %498, i16 noundef zeroext 1020, i16 noundef zeroext 1086) #7
  %503 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load ptr, ptr %dev, align 4
  %505 = ptrtoint ptr %504 to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %504, align 4
  %read16.i.i.i388 = getelementptr inbounds %struct.ssb_bus_ops, ptr %506, i32 0, i32 1
  %507 = ptrtoint ptr %read16.i.i.i388 to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load ptr, ptr %read16.i.i.i388, align 4
  %call.i.i.i389 = tail call zeroext i16 %508(ptr noundef %504, i16 noundef zeroext 1022) #7
  %509 = or i16 %call.i.i.i389, 4
  %510 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %dev, align 4
  %512 = ptrtoint ptr %511 to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %511, align 4
  %write16.i.i.i390 = getelementptr inbounds %struct.ssb_bus_ops, ptr %513, i32 0, i32 4
  %514 = ptrtoint ptr %write16.i.i.i390 to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %write16.i.i.i390, align 4
  tail call void %515(ptr noundef %511, i16 noundef zeroext 1020, i16 noundef zeroext 1086) #7
  %516 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %dev, align 4
  %518 = ptrtoint ptr %517 to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %517, align 4
  %write16.i.i2.i391 = getelementptr inbounds %struct.ssb_bus_ops, ptr %519, i32 0, i32 4
  %520 = ptrtoint ptr %write16.i.i2.i391 to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %write16.i.i2.i391, align 4
  tail call void %521(ptr noundef %517, i16 noundef zeroext 1022, i16 noundef zeroext %509) #7
  br label %if.end69

if.end69:                                         ; preds = %if.then60, %if.end56.if.end69_crit_edge
  %522 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %522)
  %523 = load i8, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %523)
  %cmp72 = icmp ugt i8 %523, 1
  br i1 %cmp72, label %land.lhs.true74, label %if.end69.if.end79_crit_edge

if.end69.if.end79_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79

land.lhs.true74:                                  ; preds = %if.end69
  %524 = ptrtoint ptr %gmode28 to i32
  call void @__asan_load1_noabort(i32 %524)
  %525 = load i8, ptr %gmode28, align 1, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %525)
  %tobool76.not = icmp eq i8 %525, 0
  br i1 %tobool76.not, label %land.lhs.true74.if.end79_crit_edge, label %if.then78

land.lhs.true74.if.end79_crit_edge:               ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79

if.then78:                                        ; preds = %land.lhs.true74
  %526 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %dev, align 4
  %528 = ptrtoint ptr %527 to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %527, align 4
  %write16.i.i.i.i392 = getelementptr inbounds %struct.ssb_bus_ops, ptr %529, i32 0, i32 4
  %530 = ptrtoint ptr %write16.i.i.i.i392 to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %write16.i.i.i.i392, align 4
  tail call void %531(ptr noundef %527, i16 noundef zeroext 1020, i16 noundef zeroext 1065) #7
  %532 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %dev, align 4
  %534 = ptrtoint ptr %533 to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load ptr, ptr %533, align 4
  %read16.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %535, i32 0, i32 1
  %536 = ptrtoint ptr %read16.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %read16.i.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i16 %537(ptr noundef %533, i16 noundef zeroext 1022) #7
  %538 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %dev, align 4
  %540 = ptrtoint ptr %539 to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %539, align 4
  %write16.i.i.i455.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %541, i32 0, i32 4
  %542 = ptrtoint ptr %write16.i.i.i455.i to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %write16.i.i.i455.i, align 4
  tail call void %543(ptr noundef %539, i16 noundef zeroext 1020, i16 noundef zeroext 1) #7
  %544 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %dev, align 4
  %546 = ptrtoint ptr %545 to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load ptr, ptr %545, align 4
  %read16.i.i.i456.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %547, i32 0, i32 1
  %548 = ptrtoint ptr %read16.i.i.i456.i to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load ptr, ptr %read16.i.i.i456.i, align 4
  %call.i.i.i457.i = tail call zeroext i16 %549(ptr noundef %545, i16 noundef zeroext 1022) #7
  %550 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %dev, align 4
  %552 = ptrtoint ptr %551 to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %551, align 4
  %write16.i.i.i458.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %553, i32 0, i32 4
  %554 = ptrtoint ptr %write16.i.i.i458.i to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %write16.i.i.i458.i, align 4
  tail call void %555(ptr noundef %551, i16 noundef zeroext 1020, i16 noundef zeroext 2065) #7
  %556 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load ptr, ptr %dev, align 4
  %558 = ptrtoint ptr %557 to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %557, align 4
  %read16.i.i.i459.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %559, i32 0, i32 1
  %560 = ptrtoint ptr %read16.i.i.i459.i to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load ptr, ptr %read16.i.i.i459.i, align 4
  %call.i.i.i460.i = tail call zeroext i16 %561(ptr noundef %557, i16 noundef zeroext 1022) #7
  %562 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load ptr, ptr %dev, align 4
  %564 = ptrtoint ptr %563 to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load ptr, ptr %563, align 4
  %write16.i.i.i461.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %565, i32 0, i32 4
  %566 = ptrtoint ptr %write16.i.i.i461.i to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load ptr, ptr %write16.i.i.i461.i, align 4
  tail call void %567(ptr noundef %563, i16 noundef zeroext 1020, i16 noundef zeroext 2066) #7
  %568 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load ptr, ptr %dev, align 4
  %570 = ptrtoint ptr %569 to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load ptr, ptr %569, align 4
  %read16.i.i.i462.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %571, i32 0, i32 1
  %572 = ptrtoint ptr %read16.i.i.i462.i to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load ptr, ptr %read16.i.i.i462.i, align 4
  %call.i.i.i463.i = tail call zeroext i16 %573(ptr noundef %569, i16 noundef zeroext 1022) #7
  %574 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %574)
  %575 = load i8, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %575)
  %cmp.not.i = icmp eq i8 %575, 1
  br i1 %cmp.not.i, label %if.then78.if.end.i_crit_edge, label %if.then.i393

if.then78.if.end.i_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i393:                                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #9
  %576 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load ptr, ptr %dev, align 4
  %578 = ptrtoint ptr %577 to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load ptr, ptr %577, align 4
  %write16.i.i.i464.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %579, i32 0, i32 4
  %580 = ptrtoint ptr %write16.i.i.i464.i to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load ptr, ptr %write16.i.i.i464.i, align 4
  tail call void %581(ptr noundef %577, i16 noundef zeroext 1020, i16 noundef zeroext 2068) #7
  %582 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load ptr, ptr %dev, align 4
  %584 = ptrtoint ptr %583 to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load ptr, ptr %583, align 4
  %read16.i.i.i465.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %585, i32 0, i32 1
  %586 = ptrtoint ptr %read16.i.i.i465.i to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load ptr, ptr %read16.i.i.i465.i, align 4
  %call.i.i.i466.i = tail call zeroext i16 %587(ptr noundef %583, i16 noundef zeroext 1022) #7
  %588 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load ptr, ptr %dev, align 4
  %590 = ptrtoint ptr %589 to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load ptr, ptr %589, align 4
  %write16.i.i.i467.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %591, i32 0, i32 4
  %592 = ptrtoint ptr %write16.i.i.i467.i to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load ptr, ptr %write16.i.i.i467.i, align 4
  tail call void %593(ptr noundef %589, i16 noundef zeroext 1020, i16 noundef zeroext 2069) #7
  %594 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load ptr, ptr %dev, align 4
  %596 = ptrtoint ptr %595 to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load ptr, ptr %595, align 4
  %read16.i.i.i468.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %597, i32 0, i32 1
  %598 = ptrtoint ptr %read16.i.i.i468.i to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load ptr, ptr %read16.i.i.i468.i, align 4
  %call.i.i.i469.i = tail call zeroext i16 %599(ptr noundef %595, i16 noundef zeroext 1022) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i393, %if.then78.if.end.i_crit_edge
  %backup_phy.sroa.12.0.i = phi i16 [ %call.i.i.i466.i, %if.then.i393 ], [ 0, %if.then78.if.end.i_crit_edge ]
  %backup_phy.sroa.14.0.i = phi i16 [ %call.i.i.i469.i, %if.then.i393 ], [ 0, %if.then78.if.end.i_crit_edge ]
  %600 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load ptr, ptr %dev, align 4
  %602 = ptrtoint ptr %601 to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load ptr, ptr %601, align 4
  %write16.i.i.i470.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %603, i32 0, i32 4
  %604 = ptrtoint ptr %write16.i.i.i470.i to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load ptr, ptr %write16.i.i.i470.i, align 4
  tail call void %605(ptr noundef %601, i16 noundef zeroext 1020, i16 noundef zeroext 90) #7
  %606 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load ptr, ptr %dev, align 4
  %608 = ptrtoint ptr %607 to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load ptr, ptr %607, align 4
  %read16.i.i.i471.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %609, i32 0, i32 1
  %610 = ptrtoint ptr %read16.i.i.i471.i to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load ptr, ptr %read16.i.i.i471.i, align 4
  %call.i.i.i472.i = tail call zeroext i16 %611(ptr noundef %607, i16 noundef zeroext 1022) #7
  %612 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load ptr, ptr %dev, align 4
  %614 = ptrtoint ptr %613 to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load ptr, ptr %613, align 4
  %write16.i.i.i473.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %615, i32 0, i32 4
  %616 = ptrtoint ptr %write16.i.i.i473.i to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load ptr, ptr %write16.i.i.i473.i, align 4
  tail call void %617(ptr noundef %613, i16 noundef zeroext 1020, i16 noundef zeroext 89) #7
  %618 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load ptr, ptr %dev, align 4
  %620 = ptrtoint ptr %619 to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load ptr, ptr %619, align 4
  %read16.i.i.i474.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %621, i32 0, i32 1
  %622 = ptrtoint ptr %read16.i.i.i474.i to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load ptr, ptr %read16.i.i.i474.i, align 4
  %call.i.i.i475.i = tail call zeroext i16 %623(ptr noundef %619, i16 noundef zeroext 1022) #7
  %624 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load ptr, ptr %dev, align 4
  %626 = ptrtoint ptr %625 to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load ptr, ptr %625, align 4
  %write16.i.i.i476.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %627, i32 0, i32 4
  %628 = ptrtoint ptr %write16.i.i.i476.i to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load ptr, ptr %write16.i.i.i476.i, align 4
  tail call void %629(ptr noundef %625, i16 noundef zeroext 1020, i16 noundef zeroext 88) #7
  %630 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load ptr, ptr %dev, align 4
  %632 = ptrtoint ptr %631 to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load ptr, ptr %631, align 4
  %read16.i.i.i477.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %633, i32 0, i32 1
  %634 = ptrtoint ptr %read16.i.i.i477.i to i32
  call void @__asan_load4_noabort(i32 %634)
  %635 = load ptr, ptr %read16.i.i.i477.i, align 4
  %call.i.i.i478.i = tail call zeroext i16 %635(ptr noundef %631, i16 noundef zeroext 1022) #7
  %636 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load ptr, ptr %dev, align 4
  %638 = ptrtoint ptr %637 to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load ptr, ptr %637, align 4
  %write16.i.i.i479.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %639, i32 0, i32 4
  %640 = ptrtoint ptr %write16.i.i.i479.i to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load ptr, ptr %write16.i.i.i479.i, align 4
  tail call void %641(ptr noundef %637, i16 noundef zeroext 1020, i16 noundef zeroext 10) #7
  %642 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load ptr, ptr %dev, align 4
  %644 = ptrtoint ptr %643 to i32
  call void @__asan_load4_noabort(i32 %644)
  %645 = load ptr, ptr %643, align 4
  %read16.i.i.i480.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %645, i32 0, i32 1
  %646 = ptrtoint ptr %read16.i.i.i480.i to i32
  call void @__asan_load4_noabort(i32 %646)
  %647 = load ptr, ptr %read16.i.i.i480.i, align 4
  %call.i.i.i481.i = tail call zeroext i16 %647(ptr noundef %643, i16 noundef zeroext 1022) #7
  %648 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %648)
  %649 = load ptr, ptr %dev, align 4
  %650 = ptrtoint ptr %649 to i32
  call void @__asan_load4_noabort(i32 %650)
  %651 = load ptr, ptr %649, align 4
  %write16.i.i.i482.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %651, i32 0, i32 4
  %652 = ptrtoint ptr %write16.i.i.i482.i to i32
  call void @__asan_load4_noabort(i32 %652)
  %653 = load ptr, ptr %write16.i.i.i482.i, align 4
  tail call void %653(ptr noundef %649, i16 noundef zeroext 1020, i16 noundef zeroext 3) #7
  %654 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %654)
  %655 = load ptr, ptr %dev, align 4
  %656 = ptrtoint ptr %655 to i32
  call void @__asan_load4_noabort(i32 %656)
  %657 = load ptr, ptr %655, align 4
  %read16.i.i.i483.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %657, i32 0, i32 1
  %658 = ptrtoint ptr %read16.i.i.i483.i to i32
  call void @__asan_load4_noabort(i32 %658)
  %659 = load ptr, ptr %read16.i.i.i483.i, align 4
  %call.i.i.i484.i = tail call zeroext i16 %659(ptr noundef %655, i16 noundef zeroext 1022) #7
  %660 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %660)
  %661 = load ptr, ptr %dev, align 4
  %662 = ptrtoint ptr %661 to i32
  call void @__asan_load4_noabort(i32 %662)
  %663 = load ptr, ptr %661, align 4
  %write16.i.i.i485.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %663, i32 0, i32 4
  %664 = ptrtoint ptr %write16.i.i.i485.i to i32
  call void @__asan_load4_noabort(i32 %664)
  %665 = load ptr, ptr %write16.i.i.i485.i, align 4
  tail call void %665(ptr noundef %661, i16 noundef zeroext 1020, i16 noundef zeroext 2063) #7
  %666 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %666)
  %667 = load ptr, ptr %dev, align 4
  %668 = ptrtoint ptr %667 to i32
  call void @__asan_load4_noabort(i32 %668)
  %669 = load ptr, ptr %667, align 4
  %read16.i.i.i486.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %669, i32 0, i32 1
  %670 = ptrtoint ptr %read16.i.i.i486.i to i32
  call void @__asan_load4_noabort(i32 %670)
  %671 = load ptr, ptr %read16.i.i.i486.i, align 4
  %call.i.i.i487.i = tail call zeroext i16 %671(ptr noundef %667, i16 noundef zeroext 1022) #7
  %672 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %672)
  %673 = load ptr, ptr %dev, align 4
  %674 = ptrtoint ptr %673 to i32
  call void @__asan_load4_noabort(i32 %674)
  %675 = load ptr, ptr %673, align 4
  %write16.i.i.i488.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %675, i32 0, i32 4
  %676 = ptrtoint ptr %write16.i.i.i488.i to i32
  call void @__asan_load4_noabort(i32 %676)
  %677 = load ptr, ptr %write16.i.i.i488.i, align 4
  tail call void %677(ptr noundef %673, i16 noundef zeroext 1020, i16 noundef zeroext 2064) #7
  %678 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %678)
  %679 = load ptr, ptr %dev, align 4
  %680 = ptrtoint ptr %679 to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load ptr, ptr %679, align 4
  %read16.i.i.i489.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %681, i32 0, i32 1
  %682 = ptrtoint ptr %read16.i.i.i489.i to i32
  call void @__asan_load4_noabort(i32 %682)
  %683 = load ptr, ptr %read16.i.i.i489.i, align 4
  %call.i.i.i490.i = tail call zeroext i16 %683(ptr noundef %679, i16 noundef zeroext 1022) #7
  %684 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %684)
  %685 = load ptr, ptr %dev, align 4
  %686 = ptrtoint ptr %685 to i32
  call void @__asan_load4_noabort(i32 %686)
  %687 = load ptr, ptr %685, align 4
  %write16.i.i.i491.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %687, i32 0, i32 4
  %688 = ptrtoint ptr %write16.i.i.i491.i to i32
  call void @__asan_load4_noabort(i32 %688)
  %689 = load ptr, ptr %write16.i.i.i491.i, align 4
  tail call void %689(ptr noundef %685, i16 noundef zeroext 1020, i16 noundef zeroext 43) #7
  %690 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %690)
  %691 = load ptr, ptr %dev, align 4
  %692 = ptrtoint ptr %691 to i32
  call void @__asan_load4_noabort(i32 %692)
  %693 = load ptr, ptr %691, align 4
  %read16.i.i.i492.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %693, i32 0, i32 1
  %694 = ptrtoint ptr %read16.i.i.i492.i to i32
  call void @__asan_load4_noabort(i32 %694)
  %695 = load ptr, ptr %read16.i.i.i492.i, align 4
  %call.i.i.i493.i = tail call zeroext i16 %695(ptr noundef %691, i16 noundef zeroext 1022) #7
  %696 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %696)
  %697 = load ptr, ptr %dev, align 4
  %698 = ptrtoint ptr %697 to i32
  call void @__asan_load4_noabort(i32 %698)
  %699 = load ptr, ptr %697, align 4
  %write16.i.i.i494.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %699, i32 0, i32 4
  %700 = ptrtoint ptr %write16.i.i.i494.i to i32
  call void @__asan_load4_noabort(i32 %700)
  %701 = load ptr, ptr %write16.i.i.i494.i, align 4
  tail call void %701(ptr noundef %697, i16 noundef zeroext 1020, i16 noundef zeroext 21) #7
  %702 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %702)
  %703 = load ptr, ptr %dev, align 4
  %704 = ptrtoint ptr %703 to i32
  call void @__asan_load4_noabort(i32 %704)
  %705 = load ptr, ptr %703, align 4
  %read16.i.i.i495.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %705, i32 0, i32 1
  %706 = ptrtoint ptr %read16.i.i.i495.i to i32
  call void @__asan_load4_noabort(i32 %706)
  %707 = load ptr, ptr %read16.i.i.i495.i, align 4
  %call.i.i.i496.i = tail call zeroext i16 %707(ptr noundef %703, i16 noundef zeroext 1022) #7
  %708 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %708)
  %709 = load ptr, ptr %dev, align 4
  %710 = ptrtoint ptr %709 to i32
  call void @__asan_load4_noabort(i32 %710)
  %711 = load ptr, ptr %709, align 4
  %write16.i.i.i497.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %711, i32 0, i32 4
  %712 = ptrtoint ptr %write16.i.i.i497.i to i32
  call void @__asan_load4_noabort(i32 %712)
  %713 = load ptr, ptr %write16.i.i.i497.i, align 4
  tail call void %713(ptr noundef %709, i16 noundef zeroext 1020, i16 noundef zeroext 45) #7
  %714 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %714)
  %715 = load ptr, ptr %dev, align 4
  %716 = ptrtoint ptr %715 to i32
  call void @__asan_load4_noabort(i32 %716)
  %717 = load ptr, ptr %715, align 4
  %read16.i.i.i498.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %717, i32 0, i32 1
  %718 = ptrtoint ptr %read16.i.i.i498.i to i32
  call void @__asan_load4_noabort(i32 %718)
  %719 = load ptr, ptr %read16.i.i.i498.i, align 4
  %call.i.i.i499.i = tail call zeroext i16 %719(ptr noundef %715, i16 noundef zeroext 1022) #7
  %bbatt.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 32, i32 1
  %720 = ptrtoint ptr %bbatt.i to i32
  call void @__asan_load2_noabort(i32 %720)
  %721 = load i16, ptr %bbatt.i, align 2
  %call32.i = tail call zeroext i16 @b43legacy_radio_read16(ptr noundef %dev, i16 noundef zeroext 82) #7
  %call34.i = tail call zeroext i16 @b43legacy_radio_read16(ptr noundef %dev, i16 noundef zeroext 67) #7
  %call36.i = tail call zeroext i16 @b43legacy_radio_read16(ptr noundef %dev, i16 noundef zeroext 122) #7
  %722 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %722)
  %723 = load ptr, ptr %dev, align 4
  %724 = ptrtoint ptr %723 to i32
  call void @__asan_load4_noabort(i32 %724)
  %725 = load ptr, ptr %723, align 4
  %write16.i.i.i500.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %725, i32 0, i32 4
  %726 = ptrtoint ptr %write16.i.i.i500.i to i32
  call void @__asan_load4_noabort(i32 %726)
  %727 = load ptr, ptr %write16.i.i.i500.i, align 4
  tail call void %727(ptr noundef %723, i16 noundef zeroext 1020, i16 noundef zeroext 1065) #7
  %728 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %728)
  %729 = load ptr, ptr %dev, align 4
  %730 = ptrtoint ptr %729 to i32
  call void @__asan_load4_noabort(i32 %730)
  %731 = load ptr, ptr %729, align 4
  %read16.i.i.i501.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %731, i32 0, i32 1
  %732 = ptrtoint ptr %read16.i.i.i501.i to i32
  call void @__asan_load4_noabort(i32 %732)
  %733 = load ptr, ptr %read16.i.i.i501.i, align 4
  %call.i.i.i502.i = tail call zeroext i16 %733(ptr noundef %729, i16 noundef zeroext 1022) #7
  %734 = and i16 %call.i.i.i502.i, 16383
  %735 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %735)
  %736 = load ptr, ptr %dev, align 4
  %737 = ptrtoint ptr %736 to i32
  call void @__asan_load4_noabort(i32 %737)
  %738 = load ptr, ptr %736, align 4
  %write16.i.i.i503.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %738, i32 0, i32 4
  %739 = ptrtoint ptr %write16.i.i.i503.i to i32
  call void @__asan_load4_noabort(i32 %739)
  %740 = load ptr, ptr %write16.i.i.i503.i, align 4
  tail call void %740(ptr noundef %736, i16 noundef zeroext 1020, i16 noundef zeroext 1065) #7
  %741 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %741)
  %742 = load ptr, ptr %dev, align 4
  %743 = ptrtoint ptr %742 to i32
  call void @__asan_load4_noabort(i32 %743)
  %744 = load ptr, ptr %742, align 4
  %write16.i.i2.i.i394 = getelementptr inbounds %struct.ssb_bus_ops, ptr %744, i32 0, i32 4
  %745 = ptrtoint ptr %write16.i.i2.i.i394 to i32
  call void @__asan_load4_noabort(i32 %745)
  %746 = load ptr, ptr %write16.i.i2.i.i394, align 4
  tail call void %746(ptr noundef %742, i16 noundef zeroext 1022, i16 noundef zeroext %734) #7
  %747 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %747)
  %748 = load ptr, ptr %dev, align 4
  %749 = ptrtoint ptr %748 to i32
  call void @__asan_load4_noabort(i32 %749)
  %750 = load ptr, ptr %748, align 4
  %write16.i.i.i504.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %750, i32 0, i32 4
  %751 = ptrtoint ptr %write16.i.i.i504.i to i32
  call void @__asan_load4_noabort(i32 %751)
  %752 = load ptr, ptr %write16.i.i.i504.i, align 4
  tail call void %752(ptr noundef %748, i16 noundef zeroext 1020, i16 noundef zeroext 1) #7
  %753 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %753)
  %754 = load ptr, ptr %dev, align 4
  %755 = ptrtoint ptr %754 to i32
  call void @__asan_load4_noabort(i32 %755)
  %756 = load ptr, ptr %754, align 4
  %read16.i.i.i505.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %756, i32 0, i32 1
  %757 = ptrtoint ptr %read16.i.i.i505.i to i32
  call void @__asan_load4_noabort(i32 %757)
  %758 = load ptr, ptr %read16.i.i.i505.i, align 4
  %call.i.i.i506.i = tail call zeroext i16 %758(ptr noundef %754, i16 noundef zeroext 1022) #7
  %759 = and i16 %call.i.i.i506.i, -32768
  %760 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %760)
  %761 = load ptr, ptr %dev, align 4
  %762 = ptrtoint ptr %761 to i32
  call void @__asan_load4_noabort(i32 %762)
  %763 = load ptr, ptr %761, align 4
  %write16.i.i.i507.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %763, i32 0, i32 4
  %764 = ptrtoint ptr %write16.i.i.i507.i to i32
  call void @__asan_load4_noabort(i32 %764)
  %765 = load ptr, ptr %write16.i.i.i507.i, align 4
  tail call void %765(ptr noundef %761, i16 noundef zeroext 1020, i16 noundef zeroext 1) #7
  %766 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %766)
  %767 = load ptr, ptr %dev, align 4
  %768 = ptrtoint ptr %767 to i32
  call void @__asan_load4_noabort(i32 %768)
  %769 = load ptr, ptr %767, align 4
  %write16.i.i2.i508.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %769, i32 0, i32 4
  %770 = ptrtoint ptr %write16.i.i2.i508.i to i32
  call void @__asan_load4_noabort(i32 %770)
  %771 = load ptr, ptr %write16.i.i2.i508.i, align 4
  tail call void %771(ptr noundef %767, i16 noundef zeroext 1022, i16 noundef zeroext %759) #7
  %772 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %772)
  %773 = load ptr, ptr %dev, align 4
  %774 = ptrtoint ptr %773 to i32
  call void @__asan_load4_noabort(i32 %774)
  %775 = load ptr, ptr %773, align 4
  %write16.i.i.i509.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %775, i32 0, i32 4
  %776 = ptrtoint ptr %write16.i.i.i509.i to i32
  call void @__asan_load4_noabort(i32 %776)
  %777 = load ptr, ptr %write16.i.i.i509.i, align 4
  tail call void %777(ptr noundef %773, i16 noundef zeroext 1020, i16 noundef zeroext 2065) #7
  %778 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %778)
  %779 = load ptr, ptr %dev, align 4
  %780 = ptrtoint ptr %779 to i32
  call void @__asan_load4_noabort(i32 %780)
  %781 = load ptr, ptr %779, align 4
  %read16.i.i.i510.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %781, i32 0, i32 1
  %782 = ptrtoint ptr %read16.i.i.i510.i to i32
  call void @__asan_load4_noabort(i32 %782)
  %783 = load ptr, ptr %read16.i.i.i510.i, align 4
  %call.i.i.i511.i = tail call zeroext i16 %783(ptr noundef %779, i16 noundef zeroext 1022) #7
  %784 = or i16 %call.i.i.i511.i, 2
  %785 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %785)
  %786 = load ptr, ptr %dev, align 4
  %787 = ptrtoint ptr %786 to i32
  call void @__asan_load4_noabort(i32 %787)
  %788 = load ptr, ptr %786, align 4
  %write16.i.i.i512.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %788, i32 0, i32 4
  %789 = ptrtoint ptr %write16.i.i.i512.i to i32
  call void @__asan_load4_noabort(i32 %789)
  %790 = load ptr, ptr %write16.i.i.i512.i, align 4
  tail call void %790(ptr noundef %786, i16 noundef zeroext 1020, i16 noundef zeroext 2065) #7
  %791 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %791)
  %792 = load ptr, ptr %dev, align 4
  %793 = ptrtoint ptr %792 to i32
  call void @__asan_load4_noabort(i32 %793)
  %794 = load ptr, ptr %792, align 4
  %write16.i.i2.i513.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %794, i32 0, i32 4
  %795 = ptrtoint ptr %write16.i.i2.i513.i to i32
  call void @__asan_load4_noabort(i32 %795)
  %796 = load ptr, ptr %write16.i.i2.i513.i, align 4
  tail call void %796(ptr noundef %792, i16 noundef zeroext 1022, i16 noundef zeroext %784) #7
  %797 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %797)
  %798 = load ptr, ptr %dev, align 4
  %799 = ptrtoint ptr %798 to i32
  call void @__asan_load4_noabort(i32 %799)
  %800 = load ptr, ptr %798, align 4
  %write16.i.i.i514.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %800, i32 0, i32 4
  %801 = ptrtoint ptr %write16.i.i.i514.i to i32
  call void @__asan_load4_noabort(i32 %801)
  %802 = load ptr, ptr %write16.i.i.i514.i, align 4
  tail call void %802(ptr noundef %798, i16 noundef zeroext 1020, i16 noundef zeroext 2066) #7
  %803 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %803)
  %804 = load ptr, ptr %dev, align 4
  %805 = ptrtoint ptr %804 to i32
  call void @__asan_load4_noabort(i32 %805)
  %806 = load ptr, ptr %804, align 4
  %read16.i.i.i515.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %806, i32 0, i32 1
  %807 = ptrtoint ptr %read16.i.i.i515.i to i32
  call void @__asan_load4_noabort(i32 %807)
  %808 = load ptr, ptr %read16.i.i.i515.i, align 4
  %call.i.i.i516.i = tail call zeroext i16 %808(ptr noundef %804, i16 noundef zeroext 1022) #7
  %809 = and i16 %call.i.i.i516.i, -3
  %810 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %810)
  %811 = load ptr, ptr %dev, align 4
  %812 = ptrtoint ptr %811 to i32
  call void @__asan_load4_noabort(i32 %812)
  %813 = load ptr, ptr %811, align 4
  %write16.i.i.i517.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %813, i32 0, i32 4
  %814 = ptrtoint ptr %write16.i.i.i517.i to i32
  call void @__asan_load4_noabort(i32 %814)
  %815 = load ptr, ptr %write16.i.i.i517.i, align 4
  tail call void %815(ptr noundef %811, i16 noundef zeroext 1020, i16 noundef zeroext 2066) #7
  %816 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %816)
  %817 = load ptr, ptr %dev, align 4
  %818 = ptrtoint ptr %817 to i32
  call void @__asan_load4_noabort(i32 %818)
  %819 = load ptr, ptr %817, align 4
  %write16.i.i2.i518.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %819, i32 0, i32 4
  %820 = ptrtoint ptr %write16.i.i2.i518.i to i32
  call void @__asan_load4_noabort(i32 %820)
  %821 = load ptr, ptr %write16.i.i2.i518.i, align 4
  tail call void %821(ptr noundef %817, i16 noundef zeroext 1022, i16 noundef zeroext %809) #7
  %822 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %822)
  %823 = load ptr, ptr %dev, align 4
  %824 = ptrtoint ptr %823 to i32
  call void @__asan_load4_noabort(i32 %824)
  %825 = load ptr, ptr %823, align 4
  %write16.i.i.i519.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %825, i32 0, i32 4
  %826 = ptrtoint ptr %write16.i.i.i519.i to i32
  call void @__asan_load4_noabort(i32 %826)
  %827 = load ptr, ptr %write16.i.i.i519.i, align 4
  tail call void %827(ptr noundef %823, i16 noundef zeroext 1020, i16 noundef zeroext 2065) #7
  %828 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %828)
  %829 = load ptr, ptr %dev, align 4
  %830 = ptrtoint ptr %829 to i32
  call void @__asan_load4_noabort(i32 %830)
  %831 = load ptr, ptr %829, align 4
  %read16.i.i.i520.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %831, i32 0, i32 1
  %832 = ptrtoint ptr %read16.i.i.i520.i to i32
  call void @__asan_load4_noabort(i32 %832)
  %833 = load ptr, ptr %read16.i.i.i520.i, align 4
  %call.i.i.i521.i = tail call zeroext i16 %833(ptr noundef %829, i16 noundef zeroext 1022) #7
  %834 = or i16 %call.i.i.i521.i, 1
  %835 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %835)
  %836 = load ptr, ptr %dev, align 4
  %837 = ptrtoint ptr %836 to i32
  call void @__asan_load4_noabort(i32 %837)
  %838 = load ptr, ptr %836, align 4
  %write16.i.i.i522.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %838, i32 0, i32 4
  %839 = ptrtoint ptr %write16.i.i.i522.i to i32
  call void @__asan_load4_noabort(i32 %839)
  %840 = load ptr, ptr %write16.i.i.i522.i, align 4
  tail call void %840(ptr noundef %836, i16 noundef zeroext 1020, i16 noundef zeroext 2065) #7
  %841 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %841)
  %842 = load ptr, ptr %dev, align 4
  %843 = ptrtoint ptr %842 to i32
  call void @__asan_load4_noabort(i32 %843)
  %844 = load ptr, ptr %842, align 4
  %write16.i.i2.i523.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %844, i32 0, i32 4
  %845 = ptrtoint ptr %write16.i.i2.i523.i to i32
  call void @__asan_load4_noabort(i32 %845)
  %846 = load ptr, ptr %write16.i.i2.i523.i, align 4
  tail call void %846(ptr noundef %842, i16 noundef zeroext 1022, i16 noundef zeroext %834) #7
  %847 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %847)
  %848 = load ptr, ptr %dev, align 4
  %849 = ptrtoint ptr %848 to i32
  call void @__asan_load4_noabort(i32 %849)
  %850 = load ptr, ptr %848, align 4
  %write16.i.i.i524.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %850, i32 0, i32 4
  %851 = ptrtoint ptr %write16.i.i.i524.i to i32
  call void @__asan_load4_noabort(i32 %851)
  %852 = load ptr, ptr %write16.i.i.i524.i, align 4
  tail call void %852(ptr noundef %848, i16 noundef zeroext 1020, i16 noundef zeroext 2066) #7
  %853 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %853)
  %854 = load ptr, ptr %dev, align 4
  %855 = ptrtoint ptr %854 to i32
  call void @__asan_load4_noabort(i32 %855)
  %856 = load ptr, ptr %854, align 4
  %read16.i.i.i525.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %856, i32 0, i32 1
  %857 = ptrtoint ptr %read16.i.i.i525.i to i32
  call void @__asan_load4_noabort(i32 %857)
  %858 = load ptr, ptr %read16.i.i.i525.i, align 4
  %call.i.i.i526.i = tail call zeroext i16 %858(ptr noundef %854, i16 noundef zeroext 1022) #7
  %859 = and i16 %call.i.i.i526.i, -2
  %860 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %860)
  %861 = load ptr, ptr %dev, align 4
  %862 = ptrtoint ptr %861 to i32
  call void @__asan_load4_noabort(i32 %862)
  %863 = load ptr, ptr %861, align 4
  %write16.i.i.i527.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %863, i32 0, i32 4
  %864 = ptrtoint ptr %write16.i.i.i527.i to i32
  call void @__asan_load4_noabort(i32 %864)
  %865 = load ptr, ptr %write16.i.i.i527.i, align 4
  tail call void %865(ptr noundef %861, i16 noundef zeroext 1020, i16 noundef zeroext 2066) #7
  %866 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %866)
  %867 = load ptr, ptr %dev, align 4
  %868 = ptrtoint ptr %867 to i32
  call void @__asan_load4_noabort(i32 %868)
  %869 = load ptr, ptr %867, align 4
  %write16.i.i2.i528.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %869, i32 0, i32 4
  %870 = ptrtoint ptr %write16.i.i2.i528.i to i32
  call void @__asan_load4_noabort(i32 %870)
  %871 = load ptr, ptr %write16.i.i2.i528.i, align 4
  tail call void %871(ptr noundef %867, i16 noundef zeroext 1022, i16 noundef zeroext %859) #7
  %872 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %872)
  %873 = load i8, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %873)
  %cmp62.not.i = icmp eq i8 %873, 1
  br i1 %cmp62.not.i, label %if.end.i.if.end81.i_crit_edge, label %if.then64.i

if.end.i.if.end81.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81.i

if.then64.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %874 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %874)
  %875 = load ptr, ptr %dev, align 4
  %876 = ptrtoint ptr %875 to i32
  call void @__asan_load4_noabort(i32 %876)
  %877 = load ptr, ptr %875, align 4
  %write16.i.i.i529.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %877, i32 0, i32 4
  %878 = ptrtoint ptr %write16.i.i.i529.i to i32
  call void @__asan_load4_noabort(i32 %878)
  %879 = load ptr, ptr %write16.i.i.i529.i, align 4
  tail call void %879(ptr noundef %875, i16 noundef zeroext 1020, i16 noundef zeroext 2068) #7
  %880 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %880)
  %881 = load ptr, ptr %dev, align 4
  %882 = ptrtoint ptr %881 to i32
  call void @__asan_load4_noabort(i32 %882)
  %883 = load ptr, ptr %881, align 4
  %read16.i.i.i530.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %883, i32 0, i32 1
  %884 = ptrtoint ptr %read16.i.i.i530.i to i32
  call void @__asan_load4_noabort(i32 %884)
  %885 = load ptr, ptr %read16.i.i.i530.i, align 4
  %call.i.i.i531.i = tail call zeroext i16 %885(ptr noundef %881, i16 noundef zeroext 1022) #7
  %886 = or i16 %call.i.i.i531.i, 1
  %887 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %887)
  %888 = load ptr, ptr %dev, align 4
  %889 = ptrtoint ptr %888 to i32
  call void @__asan_load4_noabort(i32 %889)
  %890 = load ptr, ptr %888, align 4
  %write16.i.i.i532.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %890, i32 0, i32 4
  %891 = ptrtoint ptr %write16.i.i.i532.i to i32
  call void @__asan_load4_noabort(i32 %891)
  %892 = load ptr, ptr %write16.i.i.i532.i, align 4
  tail call void %892(ptr noundef %888, i16 noundef zeroext 1020, i16 noundef zeroext 2068) #7
  %893 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %893)
  %894 = load ptr, ptr %dev, align 4
  %895 = ptrtoint ptr %894 to i32
  call void @__asan_load4_noabort(i32 %895)
  %896 = load ptr, ptr %894, align 4
  %write16.i.i2.i533.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %896, i32 0, i32 4
  %897 = ptrtoint ptr %write16.i.i2.i533.i to i32
  call void @__asan_load4_noabort(i32 %897)
  %898 = load ptr, ptr %write16.i.i2.i533.i, align 4
  tail call void %898(ptr noundef %894, i16 noundef zeroext 1022, i16 noundef zeroext %886) #7
  %899 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %899)
  %900 = load ptr, ptr %dev, align 4
  %901 = ptrtoint ptr %900 to i32
  call void @__asan_load4_noabort(i32 %901)
  %902 = load ptr, ptr %900, align 4
  %write16.i.i.i534.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %902, i32 0, i32 4
  %903 = ptrtoint ptr %write16.i.i.i534.i to i32
  call void @__asan_load4_noabort(i32 %903)
  %904 = load ptr, ptr %write16.i.i.i534.i, align 4
  tail call void %904(ptr noundef %900, i16 noundef zeroext 1020, i16 noundef zeroext 2069) #7
  %905 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %905)
  %906 = load ptr, ptr %dev, align 4
  %907 = ptrtoint ptr %906 to i32
  call void @__asan_load4_noabort(i32 %907)
  %908 = load ptr, ptr %906, align 4
  %read16.i.i.i535.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %908, i32 0, i32 1
  %909 = ptrtoint ptr %read16.i.i.i535.i to i32
  call void @__asan_load4_noabort(i32 %909)
  %910 = load ptr, ptr %read16.i.i.i535.i, align 4
  %call.i.i.i536.i = tail call zeroext i16 %910(ptr noundef %906, i16 noundef zeroext 1022) #7
  %911 = and i16 %call.i.i.i536.i, -2
  %912 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %912)
  %913 = load ptr, ptr %dev, align 4
  %914 = ptrtoint ptr %913 to i32
  call void @__asan_load4_noabort(i32 %914)
  %915 = load ptr, ptr %913, align 4
  %write16.i.i.i537.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %915, i32 0, i32 4
  %916 = ptrtoint ptr %write16.i.i.i537.i to i32
  call void @__asan_load4_noabort(i32 %916)
  %917 = load ptr, ptr %write16.i.i.i537.i, align 4
  tail call void %917(ptr noundef %913, i16 noundef zeroext 1020, i16 noundef zeroext 2069) #7
  %918 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %918)
  %919 = load ptr, ptr %dev, align 4
  %920 = ptrtoint ptr %919 to i32
  call void @__asan_load4_noabort(i32 %920)
  %921 = load ptr, ptr %919, align 4
  %write16.i.i2.i538.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %921, i32 0, i32 4
  %922 = ptrtoint ptr %write16.i.i2.i538.i to i32
  call void @__asan_load4_noabort(i32 %922)
  %923 = load ptr, ptr %write16.i.i2.i538.i, align 4
  tail call void %923(ptr noundef %919, i16 noundef zeroext 1022, i16 noundef zeroext %911) #7
  %924 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %924)
  %925 = load ptr, ptr %dev, align 4
  %926 = ptrtoint ptr %925 to i32
  call void @__asan_load4_noabort(i32 %926)
  %927 = load ptr, ptr %925, align 4
  %write16.i.i.i539.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %927, i32 0, i32 4
  %928 = ptrtoint ptr %write16.i.i.i539.i to i32
  call void @__asan_load4_noabort(i32 %928)
  %929 = load ptr, ptr %write16.i.i.i539.i, align 4
  tail call void %929(ptr noundef %925, i16 noundef zeroext 1020, i16 noundef zeroext 2068) #7
  %930 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %930)
  %931 = load ptr, ptr %dev, align 4
  %932 = ptrtoint ptr %931 to i32
  call void @__asan_load4_noabort(i32 %932)
  %933 = load ptr, ptr %931, align 4
  %read16.i.i.i540.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %933, i32 0, i32 1
  %934 = ptrtoint ptr %read16.i.i.i540.i to i32
  call void @__asan_load4_noabort(i32 %934)
  %935 = load ptr, ptr %read16.i.i.i540.i, align 4
  %call.i.i.i541.i = tail call zeroext i16 %935(ptr noundef %931, i16 noundef zeroext 1022) #7
  %936 = or i16 %call.i.i.i541.i, 2
  %937 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %937)
  %938 = load ptr, ptr %dev, align 4
  %939 = ptrtoint ptr %938 to i32
  call void @__asan_load4_noabort(i32 %939)
  %940 = load ptr, ptr %938, align 4
  %write16.i.i.i542.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %940, i32 0, i32 4
  %941 = ptrtoint ptr %write16.i.i.i542.i to i32
  call void @__asan_load4_noabort(i32 %941)
  %942 = load ptr, ptr %write16.i.i.i542.i, align 4
  tail call void %942(ptr noundef %938, i16 noundef zeroext 1020, i16 noundef zeroext 2068) #7
  %943 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %943)
  %944 = load ptr, ptr %dev, align 4
  %945 = ptrtoint ptr %944 to i32
  call void @__asan_load4_noabort(i32 %945)
  %946 = load ptr, ptr %944, align 4
  %write16.i.i2.i543.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %946, i32 0, i32 4
  %947 = ptrtoint ptr %write16.i.i2.i543.i to i32
  call void @__asan_load4_noabort(i32 %947)
  %948 = load ptr, ptr %write16.i.i2.i543.i, align 4
  tail call void %948(ptr noundef %944, i16 noundef zeroext 1022, i16 noundef zeroext %936) #7
  %949 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %949)
  %950 = load ptr, ptr %dev, align 4
  %951 = ptrtoint ptr %950 to i32
  call void @__asan_load4_noabort(i32 %951)
  %952 = load ptr, ptr %950, align 4
  %write16.i.i.i544.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %952, i32 0, i32 4
  %953 = ptrtoint ptr %write16.i.i.i544.i to i32
  call void @__asan_load4_noabort(i32 %953)
  %954 = load ptr, ptr %write16.i.i.i544.i, align 4
  tail call void %954(ptr noundef %950, i16 noundef zeroext 1020, i16 noundef zeroext 2069) #7
  %955 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %955)
  %956 = load ptr, ptr %dev, align 4
  %957 = ptrtoint ptr %956 to i32
  call void @__asan_load4_noabort(i32 %957)
  %958 = load ptr, ptr %956, align 4
  %read16.i.i.i545.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %958, i32 0, i32 1
  %959 = ptrtoint ptr %read16.i.i.i545.i to i32
  call void @__asan_load4_noabort(i32 %959)
  %960 = load ptr, ptr %read16.i.i.i545.i, align 4
  %call.i.i.i546.i = tail call zeroext i16 %960(ptr noundef %956, i16 noundef zeroext 1022) #7
  %961 = and i16 %call.i.i.i546.i, -3
  %962 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %962)
  %963 = load ptr, ptr %dev, align 4
  %964 = ptrtoint ptr %963 to i32
  call void @__asan_load4_noabort(i32 %964)
  %965 = load ptr, ptr %963, align 4
  %write16.i.i.i547.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %965, i32 0, i32 4
  %966 = ptrtoint ptr %write16.i.i.i547.i to i32
  call void @__asan_load4_noabort(i32 %966)
  %967 = load ptr, ptr %write16.i.i.i547.i, align 4
  tail call void %967(ptr noundef %963, i16 noundef zeroext 1020, i16 noundef zeroext 2069) #7
  %968 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %968)
  %969 = load ptr, ptr %dev, align 4
  %970 = ptrtoint ptr %969 to i32
  call void @__asan_load4_noabort(i32 %970)
  %971 = load ptr, ptr %969, align 4
  %write16.i.i2.i548.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %971, i32 0, i32 4
  %972 = ptrtoint ptr %write16.i.i2.i548.i to i32
  call void @__asan_load4_noabort(i32 %972)
  %973 = load ptr, ptr %write16.i.i2.i548.i, align 4
  tail call void %973(ptr noundef %969, i16 noundef zeroext 1022, i16 noundef zeroext %961) #7
  br label %if.end81.i

if.end81.i:                                       ; preds = %if.then64.i, %if.end.i.if.end81.i_crit_edge
  %974 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %974)
  %975 = load ptr, ptr %dev, align 4
  %976 = ptrtoint ptr %975 to i32
  call void @__asan_load4_noabort(i32 %976)
  %977 = load ptr, ptr %975, align 4
  %write16.i.i.i549.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %977, i32 0, i32 4
  %978 = ptrtoint ptr %write16.i.i.i549.i to i32
  call void @__asan_load4_noabort(i32 %978)
  %979 = load ptr, ptr %write16.i.i.i549.i, align 4
  tail call void %979(ptr noundef %975, i16 noundef zeroext 1020, i16 noundef zeroext 2065) #7
  %980 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %980)
  %981 = load ptr, ptr %dev, align 4
  %982 = ptrtoint ptr %981 to i32
  call void @__asan_load4_noabort(i32 %982)
  %983 = load ptr, ptr %981, align 4
  %read16.i.i.i550.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %983, i32 0, i32 1
  %984 = ptrtoint ptr %read16.i.i.i550.i to i32
  call void @__asan_load4_noabort(i32 %984)
  %985 = load ptr, ptr %read16.i.i.i550.i, align 4
  %call.i.i.i551.i = tail call zeroext i16 %985(ptr noundef %981, i16 noundef zeroext 1022) #7
  %986 = or i16 %call.i.i.i551.i, 12
  %987 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %987)
  %988 = load ptr, ptr %dev, align 4
  %989 = ptrtoint ptr %988 to i32
  call void @__asan_load4_noabort(i32 %989)
  %990 = load ptr, ptr %988, align 4
  %write16.i.i.i552.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %990, i32 0, i32 4
  %991 = ptrtoint ptr %write16.i.i.i552.i to i32
  call void @__asan_load4_noabort(i32 %991)
  %992 = load ptr, ptr %write16.i.i.i552.i, align 4
  tail call void %992(ptr noundef %988, i16 noundef zeroext 1020, i16 noundef zeroext 2065) #7
  %993 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %993)
  %994 = load ptr, ptr %dev, align 4
  %995 = ptrtoint ptr %994 to i32
  call void @__asan_load4_noabort(i32 %995)
  %996 = load ptr, ptr %994, align 4
  %write16.i.i2.i553.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %996, i32 0, i32 4
  %997 = ptrtoint ptr %write16.i.i2.i553.i to i32
  call void @__asan_load4_noabort(i32 %997)
  %998 = load ptr, ptr %write16.i.i2.i553.i, align 4
  tail call void %998(ptr noundef %994, i16 noundef zeroext 1022, i16 noundef zeroext %986) #7
  %999 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %999)
  %1000 = load ptr, ptr %dev, align 4
  %1001 = ptrtoint ptr %1000 to i32
  call void @__asan_load4_noabort(i32 %1001)
  %1002 = load ptr, ptr %1000, align 4
  %write16.i.i.i554.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1002, i32 0, i32 4
  %1003 = ptrtoint ptr %write16.i.i.i554.i to i32
  call void @__asan_load4_noabort(i32 %1003)
  %1004 = load ptr, ptr %write16.i.i.i554.i, align 4
  tail call void %1004(ptr noundef %1000, i16 noundef zeroext 1020, i16 noundef zeroext 2066) #7
  %1005 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1005)
  %1006 = load ptr, ptr %dev, align 4
  %1007 = ptrtoint ptr %1006 to i32
  call void @__asan_load4_noabort(i32 %1007)
  %1008 = load ptr, ptr %1006, align 4
  %read16.i.i.i555.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1008, i32 0, i32 1
  %1009 = ptrtoint ptr %read16.i.i.i555.i to i32
  call void @__asan_load4_noabort(i32 %1009)
  %1010 = load ptr, ptr %read16.i.i.i555.i, align 4
  %call.i.i.i556.i = tail call zeroext i16 %1010(ptr noundef %1006, i16 noundef zeroext 1022) #7
  %1011 = or i16 %call.i.i.i556.i, 12
  %1012 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1012)
  %1013 = load ptr, ptr %dev, align 4
  %1014 = ptrtoint ptr %1013 to i32
  call void @__asan_load4_noabort(i32 %1014)
  %1015 = load ptr, ptr %1013, align 4
  %write16.i.i.i557.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1015, i32 0, i32 4
  %1016 = ptrtoint ptr %write16.i.i.i557.i to i32
  call void @__asan_load4_noabort(i32 %1016)
  %1017 = load ptr, ptr %write16.i.i.i557.i, align 4
  tail call void %1017(ptr noundef %1013, i16 noundef zeroext 1020, i16 noundef zeroext 2066) #7
  %1018 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1018)
  %1019 = load ptr, ptr %dev, align 4
  %1020 = ptrtoint ptr %1019 to i32
  call void @__asan_load4_noabort(i32 %1020)
  %1021 = load ptr, ptr %1019, align 4
  %write16.i.i2.i558.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1021, i32 0, i32 4
  %1022 = ptrtoint ptr %write16.i.i2.i558.i to i32
  call void @__asan_load4_noabort(i32 %1022)
  %1023 = load ptr, ptr %write16.i.i2.i558.i, align 4
  tail call void %1023(ptr noundef %1019, i16 noundef zeroext 1022, i16 noundef zeroext %1011) #7
  %1024 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1024)
  %1025 = load ptr, ptr %dev, align 4
  %1026 = ptrtoint ptr %1025 to i32
  call void @__asan_load4_noabort(i32 %1026)
  %1027 = load ptr, ptr %1025, align 4
  %write16.i.i.i559.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1027, i32 0, i32 4
  %1028 = ptrtoint ptr %write16.i.i.i559.i to i32
  call void @__asan_load4_noabort(i32 %1028)
  %1029 = load ptr, ptr %write16.i.i.i559.i, align 4
  tail call void %1029(ptr noundef %1025, i16 noundef zeroext 1020, i16 noundef zeroext 2065) #7
  %1030 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1030)
  %1031 = load ptr, ptr %dev, align 4
  %1032 = ptrtoint ptr %1031 to i32
  call void @__asan_load4_noabort(i32 %1032)
  %1033 = load ptr, ptr %1031, align 4
  %read16.i.i.i560.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1033, i32 0, i32 1
  %1034 = ptrtoint ptr %read16.i.i.i560.i to i32
  call void @__asan_load4_noabort(i32 %1034)
  %1035 = load ptr, ptr %read16.i.i.i560.i, align 4
  %call.i.i.i561.i = tail call zeroext i16 %1035(ptr noundef %1031, i16 noundef zeroext 1022) #7
  %1036 = or i16 %call.i.i.i561.i, 48
  %1037 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1037)
  %1038 = load ptr, ptr %dev, align 4
  %1039 = ptrtoint ptr %1038 to i32
  call void @__asan_load4_noabort(i32 %1039)
  %1040 = load ptr, ptr %1038, align 4
  %write16.i.i.i562.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1040, i32 0, i32 4
  %1041 = ptrtoint ptr %write16.i.i.i562.i to i32
  call void @__asan_load4_noabort(i32 %1041)
  %1042 = load ptr, ptr %write16.i.i.i562.i, align 4
  tail call void %1042(ptr noundef %1038, i16 noundef zeroext 1020, i16 noundef zeroext 2065) #7
  %1043 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1043)
  %1044 = load ptr, ptr %dev, align 4
  %1045 = ptrtoint ptr %1044 to i32
  call void @__asan_load4_noabort(i32 %1045)
  %1046 = load ptr, ptr %1044, align 4
  %write16.i.i2.i563.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1046, i32 0, i32 4
  %1047 = ptrtoint ptr %write16.i.i2.i563.i to i32
  call void @__asan_load4_noabort(i32 %1047)
  %1048 = load ptr, ptr %write16.i.i2.i563.i, align 4
  tail call void %1048(ptr noundef %1044, i16 noundef zeroext 1022, i16 noundef zeroext %1036) #7
  %1049 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1049)
  %1050 = load ptr, ptr %dev, align 4
  %1051 = ptrtoint ptr %1050 to i32
  call void @__asan_load4_noabort(i32 %1051)
  %1052 = load ptr, ptr %1050, align 4
  %write16.i.i.i564.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1052, i32 0, i32 4
  %1053 = ptrtoint ptr %write16.i.i.i564.i to i32
  call void @__asan_load4_noabort(i32 %1053)
  %1054 = load ptr, ptr %write16.i.i.i564.i, align 4
  tail call void %1054(ptr noundef %1050, i16 noundef zeroext 1020, i16 noundef zeroext 2066) #7
  %1055 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1055)
  %1056 = load ptr, ptr %dev, align 4
  %1057 = ptrtoint ptr %1056 to i32
  call void @__asan_load4_noabort(i32 %1057)
  %1058 = load ptr, ptr %1056, align 4
  %read16.i.i.i565.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1058, i32 0, i32 1
  %1059 = ptrtoint ptr %read16.i.i.i565.i to i32
  call void @__asan_load4_noabort(i32 %1059)
  %1060 = load ptr, ptr %read16.i.i.i565.i, align 4
  %call.i.i.i566.i = tail call zeroext i16 %1060(ptr noundef %1056, i16 noundef zeroext 1022) #7
  %1061 = and i16 %call.i.i.i566.i, -49
  %1062 = or i16 %1061, 16
  %1063 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1063)
  %1064 = load ptr, ptr %dev, align 4
  %1065 = ptrtoint ptr %1064 to i32
  call void @__asan_load4_noabort(i32 %1065)
  %1066 = load ptr, ptr %1064, align 4
  %write16.i.i.i567.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1066, i32 0, i32 4
  %1067 = ptrtoint ptr %write16.i.i.i567.i to i32
  call void @__asan_load4_noabort(i32 %1067)
  %1068 = load ptr, ptr %write16.i.i.i567.i, align 4
  tail call void %1068(ptr noundef %1064, i16 noundef zeroext 1020, i16 noundef zeroext 2066) #7
  %1069 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1069)
  %1070 = load ptr, ptr %dev, align 4
  %1071 = ptrtoint ptr %1070 to i32
  call void @__asan_load4_noabort(i32 %1071)
  %1072 = load ptr, ptr %1070, align 4
  %write16.i.i2.i568.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1072, i32 0, i32 4
  %1073 = ptrtoint ptr %write16.i.i2.i568.i to i32
  call void @__asan_load4_noabort(i32 %1073)
  %1074 = load ptr, ptr %write16.i.i2.i568.i, align 4
  tail call void %1074(ptr noundef %1070, i16 noundef zeroext 1022, i16 noundef zeroext %1062) #7
  %1075 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1075)
  %1076 = load ptr, ptr %dev, align 4
  %1077 = ptrtoint ptr %1076 to i32
  call void @__asan_load4_noabort(i32 %1077)
  %1078 = load ptr, ptr %1076, align 4
  %write16.i.i.i569.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1078, i32 0, i32 4
  %1079 = ptrtoint ptr %write16.i.i.i569.i to i32
  call void @__asan_load4_noabort(i32 %1079)
  %1080 = load ptr, ptr %write16.i.i.i569.i, align 4
  tail call void %1080(ptr noundef %1076, i16 noundef zeroext 1020, i16 noundef zeroext 90) #7
  %1081 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1081)
  %1082 = load ptr, ptr %dev, align 4
  %1083 = ptrtoint ptr %1082 to i32
  call void @__asan_load4_noabort(i32 %1083)
  %1084 = load ptr, ptr %1082, align 4
  %write16.i.i2.i570.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1084, i32 0, i32 4
  %1085 = ptrtoint ptr %write16.i.i2.i570.i to i32
  call void @__asan_load4_noabort(i32 %1085)
  %1086 = load ptr, ptr %write16.i.i2.i570.i, align 4
  tail call void %1086(ptr noundef %1082, i16 noundef zeroext 1022, i16 noundef zeroext 1920) #7
  %1087 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1087)
  %1088 = load ptr, ptr %dev, align 4
  %1089 = ptrtoint ptr %1088 to i32
  call void @__asan_load4_noabort(i32 %1089)
  %1090 = load ptr, ptr %1088, align 4
  %write16.i.i.i571.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1090, i32 0, i32 4
  %1091 = ptrtoint ptr %write16.i.i.i571.i to i32
  call void @__asan_load4_noabort(i32 %1091)
  %1092 = load ptr, ptr %write16.i.i.i571.i, align 4
  tail call void %1092(ptr noundef %1088, i16 noundef zeroext 1020, i16 noundef zeroext 89) #7
  %1093 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1093)
  %1094 = load ptr, ptr %dev, align 4
  %1095 = ptrtoint ptr %1094 to i32
  call void @__asan_load4_noabort(i32 %1095)
  %1096 = load ptr, ptr %1094, align 4
  %write16.i.i2.i572.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1096, i32 0, i32 4
  %1097 = ptrtoint ptr %write16.i.i2.i572.i to i32
  call void @__asan_load4_noabort(i32 %1097)
  %1098 = load ptr, ptr %write16.i.i2.i572.i, align 4
  tail call void %1098(ptr noundef %1094, i16 noundef zeroext 1022, i16 noundef zeroext -14320) #7
  %1099 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1099)
  %1100 = load ptr, ptr %dev, align 4
  %1101 = ptrtoint ptr %1100 to i32
  call void @__asan_load4_noabort(i32 %1101)
  %1102 = load ptr, ptr %1100, align 4
  %write16.i.i.i573.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1102, i32 0, i32 4
  %1103 = ptrtoint ptr %write16.i.i.i573.i to i32
  call void @__asan_load4_noabort(i32 %1103)
  %1104 = load ptr, ptr %write16.i.i.i573.i, align 4
  tail call void %1104(ptr noundef %1100, i16 noundef zeroext 1020, i16 noundef zeroext 88) #7
  %1105 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1105)
  %1106 = load ptr, ptr %dev, align 4
  %1107 = ptrtoint ptr %1106 to i32
  call void @__asan_load4_noabort(i32 %1107)
  %1108 = load ptr, ptr %1106, align 4
  %write16.i.i2.i574.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1108, i32 0, i32 4
  %1109 = ptrtoint ptr %write16.i.i2.i574.i to i32
  call void @__asan_load4_noabort(i32 %1109)
  %1110 = load ptr, ptr %write16.i.i2.i574.i, align 4
  tail call void %1110(ptr noundef %1106, i16 noundef zeroext 1022, i16 noundef zeroext 13) #7
  %analog.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 2
  %1111 = ptrtoint ptr %analog.i to i32
  call void @__asan_load1_noabort(i32 %1111)
  %1112 = load i8, ptr %analog.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1112)
  %cmp101.i = icmp eq i8 %1112, 0
  %1113 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1113)
  %1114 = load ptr, ptr %dev, align 4
  %1115 = ptrtoint ptr %1114 to i32
  call void @__asan_load4_noabort(i32 %1115)
  %1116 = load ptr, ptr %1114, align 4
  %write16.i.i.i575.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1116, i32 0, i32 4
  %1117 = ptrtoint ptr %write16.i.i.i575.i to i32
  call void @__asan_load4_noabort(i32 %1117)
  %1118 = load ptr, ptr %write16.i.i.i575.i, align 4
  br i1 %cmp101.i, label %if.then103.i, label %if.else.i

if.then103.i:                                     ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %1118(ptr noundef %1114, i16 noundef zeroext 1020, i16 noundef zeroext 3) #7
  %1119 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1119)
  %1120 = load ptr, ptr %dev, align 4
  %1121 = ptrtoint ptr %1120 to i32
  call void @__asan_load4_noabort(i32 %1121)
  %1122 = load ptr, ptr %1120, align 4
  %write16.i.i2.i576.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1122, i32 0, i32 4
  %1123 = ptrtoint ptr %write16.i.i2.i576.i to i32
  call void @__asan_load4_noabort(i32 %1123)
  %1124 = load ptr, ptr %write16.i.i2.i576.i, align 4
  tail call void %1124(ptr noundef %1120, i16 noundef zeroext 1022, i16 noundef zeroext 290) #7
  br label %if.end108.i

if.else.i:                                        ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %1118(ptr noundef %1114, i16 noundef zeroext 1020, i16 noundef zeroext 10) #7
  %1125 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1125)
  %1126 = load ptr, ptr %dev, align 4
  %1127 = ptrtoint ptr %1126 to i32
  call void @__asan_load4_noabort(i32 %1127)
  %1128 = load ptr, ptr %1126, align 4
  %read16.i.i.i578.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1128, i32 0, i32 1
  %1129 = ptrtoint ptr %read16.i.i.i578.i to i32
  call void @__asan_load4_noabort(i32 %1129)
  %1130 = load ptr, ptr %read16.i.i.i578.i, align 4
  %call.i.i.i579.i = tail call zeroext i16 %1130(ptr noundef %1126, i16 noundef zeroext 1022) #7
  %1131 = or i16 %call.i.i.i579.i, 8192
  %1132 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1132)
  %1133 = load ptr, ptr %dev, align 4
  %1134 = ptrtoint ptr %1133 to i32
  call void @__asan_load4_noabort(i32 %1134)
  %1135 = load ptr, ptr %1133, align 4
  %write16.i.i.i580.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1135, i32 0, i32 4
  %1136 = ptrtoint ptr %write16.i.i.i580.i to i32
  call void @__asan_load4_noabort(i32 %1136)
  %1137 = load ptr, ptr %write16.i.i.i580.i, align 4
  tail call void %1137(ptr noundef %1133, i16 noundef zeroext 1020, i16 noundef zeroext 10) #7
  %1138 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1138)
  %1139 = load ptr, ptr %dev, align 4
  %1140 = ptrtoint ptr %1139 to i32
  call void @__asan_load4_noabort(i32 %1140)
  %1141 = load ptr, ptr %1139, align 4
  %write16.i.i2.i581.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1141, i32 0, i32 4
  %1142 = ptrtoint ptr %write16.i.i2.i581.i to i32
  call void @__asan_load4_noabort(i32 %1142)
  %1143 = load ptr, ptr %write16.i.i2.i581.i, align 4
  tail call void %1143(ptr noundef %1139, i16 noundef zeroext 1022, i16 noundef zeroext %1131) #7
  br label %if.end108.i

if.end108.i:                                      ; preds = %if.else.i, %if.then103.i
  %1144 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %1144)
  %1145 = load i8, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1145)
  %cmp111.not.i = icmp eq i8 %1145, 1
  br i1 %cmp111.not.i, label %if.end108.i.if.end122.i_crit_edge, label %if.then113.i

if.end108.i.if.end122.i_crit_edge:                ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122.i

if.then113.i:                                     ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #9
  %1146 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1146)
  %1147 = load ptr, ptr %dev, align 4
  %1148 = ptrtoint ptr %1147 to i32
  call void @__asan_load4_noabort(i32 %1148)
  %1149 = load ptr, ptr %1147, align 4
  %write16.i.i.i582.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1149, i32 0, i32 4
  %1150 = ptrtoint ptr %write16.i.i.i582.i to i32
  call void @__asan_load4_noabort(i32 %1150)
  %1151 = load ptr, ptr %write16.i.i.i582.i, align 4
  tail call void %1151(ptr noundef %1147, i16 noundef zeroext 1020, i16 noundef zeroext 2068) #7
  %1152 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1152)
  %1153 = load ptr, ptr %dev, align 4
  %1154 = ptrtoint ptr %1153 to i32
  call void @__asan_load4_noabort(i32 %1154)
  %1155 = load ptr, ptr %1153, align 4
  %read16.i.i.i583.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1155, i32 0, i32 1
  %1156 = ptrtoint ptr %read16.i.i.i583.i to i32
  call void @__asan_load4_noabort(i32 %1156)
  %1157 = load ptr, ptr %read16.i.i.i583.i, align 4
  %call.i.i.i584.i = tail call zeroext i16 %1157(ptr noundef %1153, i16 noundef zeroext 1022) #7
  %1158 = or i16 %call.i.i.i584.i, 4
  %1159 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1159)
  %1160 = load ptr, ptr %dev, align 4
  %1161 = ptrtoint ptr %1160 to i32
  call void @__asan_load4_noabort(i32 %1161)
  %1162 = load ptr, ptr %1160, align 4
  %write16.i.i.i585.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1162, i32 0, i32 4
  %1163 = ptrtoint ptr %write16.i.i.i585.i to i32
  call void @__asan_load4_noabort(i32 %1163)
  %1164 = load ptr, ptr %write16.i.i.i585.i, align 4
  tail call void %1164(ptr noundef %1160, i16 noundef zeroext 1020, i16 noundef zeroext 2068) #7
  %1165 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1165)
  %1166 = load ptr, ptr %dev, align 4
  %1167 = ptrtoint ptr %1166 to i32
  call void @__asan_load4_noabort(i32 %1167)
  %1168 = load ptr, ptr %1166, align 4
  %write16.i.i2.i586.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1168, i32 0, i32 4
  %1169 = ptrtoint ptr %write16.i.i2.i586.i to i32
  call void @__asan_load4_noabort(i32 %1169)
  %1170 = load ptr, ptr %write16.i.i2.i586.i, align 4
  tail call void %1170(ptr noundef %1166, i16 noundef zeroext 1022, i16 noundef zeroext %1158) #7
  %1171 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1171)
  %1172 = load ptr, ptr %dev, align 4
  %1173 = ptrtoint ptr %1172 to i32
  call void @__asan_load4_noabort(i32 %1173)
  %1174 = load ptr, ptr %1172, align 4
  %write16.i.i.i587.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1174, i32 0, i32 4
  %1175 = ptrtoint ptr %write16.i.i.i587.i to i32
  call void @__asan_load4_noabort(i32 %1175)
  %1176 = load ptr, ptr %write16.i.i.i587.i, align 4
  tail call void %1176(ptr noundef %1172, i16 noundef zeroext 1020, i16 noundef zeroext 2069) #7
  %1177 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1177)
  %1178 = load ptr, ptr %dev, align 4
  %1179 = ptrtoint ptr %1178 to i32
  call void @__asan_load4_noabort(i32 %1179)
  %1180 = load ptr, ptr %1178, align 4
  %read16.i.i.i588.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1180, i32 0, i32 1
  %1181 = ptrtoint ptr %read16.i.i.i588.i to i32
  call void @__asan_load4_noabort(i32 %1181)
  %1182 = load ptr, ptr %read16.i.i.i588.i, align 4
  %call.i.i.i589.i = tail call zeroext i16 %1182(ptr noundef %1178, i16 noundef zeroext 1022) #7
  %1183 = and i16 %call.i.i.i589.i, -5
  %1184 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1184)
  %1185 = load ptr, ptr %dev, align 4
  %1186 = ptrtoint ptr %1185 to i32
  call void @__asan_load4_noabort(i32 %1186)
  %1187 = load ptr, ptr %1185, align 4
  %write16.i.i.i590.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1187, i32 0, i32 4
  %1188 = ptrtoint ptr %write16.i.i.i590.i to i32
  call void @__asan_load4_noabort(i32 %1188)
  %1189 = load ptr, ptr %write16.i.i.i590.i, align 4
  tail call void %1189(ptr noundef %1185, i16 noundef zeroext 1020, i16 noundef zeroext 2069) #7
  %1190 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1190)
  %1191 = load ptr, ptr %dev, align 4
  %1192 = ptrtoint ptr %1191 to i32
  call void @__asan_load4_noabort(i32 %1192)
  %1193 = load ptr, ptr %1191, align 4
  %write16.i.i2.i591.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1193, i32 0, i32 4
  %1194 = ptrtoint ptr %write16.i.i2.i591.i to i32
  call void @__asan_load4_noabort(i32 %1194)
  %1195 = load ptr, ptr %write16.i.i2.i591.i, align 4
  tail call void %1195(ptr noundef %1191, i16 noundef zeroext 1022, i16 noundef zeroext %1183) #7
  br label %if.end122.i

if.end122.i:                                      ; preds = %if.then113.i, %if.end108.i.if.end122.i_crit_edge
  %1196 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1196)
  %1197 = load ptr, ptr %dev, align 4
  %1198 = ptrtoint ptr %1197 to i32
  call void @__asan_load4_noabort(i32 %1198)
  %1199 = load ptr, ptr %1197, align 4
  %write16.i.i.i592.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1199, i32 0, i32 4
  %1200 = ptrtoint ptr %write16.i.i.i592.i to i32
  call void @__asan_load4_noabort(i32 %1200)
  %1201 = load ptr, ptr %write16.i.i.i592.i, align 4
  tail call void %1201(ptr noundef %1197, i16 noundef zeroext 1020, i16 noundef zeroext 3) #7
  %1202 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1202)
  %1203 = load ptr, ptr %dev, align 4
  %1204 = ptrtoint ptr %1203 to i32
  call void @__asan_load4_noabort(i32 %1204)
  %1205 = load ptr, ptr %1203, align 4
  %read16.i.i.i593.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1205, i32 0, i32 1
  %1206 = ptrtoint ptr %read16.i.i.i593.i to i32
  call void @__asan_load4_noabort(i32 %1206)
  %1207 = load ptr, ptr %read16.i.i.i593.i, align 4
  %call.i.i.i594.i = tail call zeroext i16 %1207(ptr noundef %1203, i16 noundef zeroext 1022) #7
  %1208 = and i16 %call.i.i.i594.i, -97
  %1209 = or i16 %1208, 64
  %1210 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1210)
  %1211 = load ptr, ptr %dev, align 4
  %1212 = ptrtoint ptr %1211 to i32
  call void @__asan_load4_noabort(i32 %1212)
  %1213 = load ptr, ptr %1211, align 4
  %write16.i.i.i595.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1213, i32 0, i32 4
  %1214 = ptrtoint ptr %write16.i.i.i595.i to i32
  call void @__asan_load4_noabort(i32 %1214)
  %1215 = load ptr, ptr %write16.i.i.i595.i, align 4
  tail call void %1215(ptr noundef %1211, i16 noundef zeroext 1020, i16 noundef zeroext 3) #7
  %1216 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1216)
  %1217 = load ptr, ptr %dev, align 4
  %1218 = ptrtoint ptr %1217 to i32
  call void @__asan_load4_noabort(i32 %1218)
  %1219 = load ptr, ptr %1217, align 4
  %write16.i.i2.i596.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1219, i32 0, i32 4
  %1220 = ptrtoint ptr %write16.i.i2.i596.i to i32
  call void @__asan_load4_noabort(i32 %1220)
  %1221 = load ptr, ptr %write16.i.i2.i596.i, align 4
  tail call void %1221(ptr noundef %1217, i16 noundef zeroext 1022, i16 noundef zeroext %1209) #7
  %radio_ver.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 8
  %1222 = ptrtoint ptr %radio_ver.i to i32
  call void @__asan_load2_noabort(i32 %1222)
  %1223 = load i16, ptr %radio_ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8272, i16 %1223)
  %cmp129.i = icmp eq i16 %1223, 8272
  %1224 = ptrtoint ptr %radio_rev to i32
  call void @__asan_load1_noabort(i32 %1224)
  %1225 = load i8, ptr %radio_rev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1225)
  %cmp132.i = icmp eq i8 %1225, 2
  %or.cond = select i1 %cmp129.i, i1 %cmp132.i, i1 false
  br i1 %or.cond, label %if.then134.i, label %if.else140.i

if.then134.i:                                     ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 82, i16 noundef zeroext 0) #7
  %call135.i = tail call zeroext i16 @b43legacy_radio_read16(ptr noundef %dev, i16 noundef zeroext 67) #7
  %1226 = and i16 %call135.i, -16
  %1227 = or i16 %1226, 9
  br label %if.end148.sink.split.i

if.else140.i:                                     ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %1225)
  %cmp143.i = icmp eq i8 %1225, 8
  br i1 %cmp143.i, label %if.else140.i.if.end148.sink.split.i_crit_edge, label %if.else140.i.if.end148.i_crit_edge

if.else140.i.if.end148.i_crit_edge:               ; preds = %if.else140.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end148.i

if.else140.i.if.end148.sink.split.i_crit_edge:    ; preds = %if.else140.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end148.sink.split.i

if.end148.sink.split.i:                           ; preds = %if.else140.i.if.end148.sink.split.i_crit_edge, %if.then134.i
  %.sink.i = phi i16 [ %1227, %if.then134.i ], [ 15, %if.else140.i.if.end148.sink.split.i_crit_edge ]
  %loop1_cnt.0.ph.i = phi i16 [ 9, %if.then134.i ], [ 15, %if.else140.i.if.end148.sink.split.i_crit_edge ]
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 67, i16 noundef zeroext %.sink.i) #7
  br label %if.end148.i

if.end148.i:                                      ; preds = %if.end148.sink.split.i, %if.else140.i.if.end148.i_crit_edge
  %cmp199709.i = phi i1 [ false, %if.else140.i.if.end148.i_crit_edge ], [ true, %if.end148.sink.split.i ]
  %loop1_cnt.0.i = phi i16 [ 0, %if.else140.i.if.end148.i_crit_edge ], [ %loop1_cnt.0.ph.i, %if.end148.sink.split.i ]
  %1228 = ptrtoint ptr %analog.i to i32
  call void @__asan_load1_noabort(i32 %1228)
  %1229 = load i8, ptr %analog.i, align 2
  %1230 = zext i8 %1229 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1230, ptr @__sancov_gen_cov_switch_values.16)
  switch i8 %1229, label %if.end148.i.if.end33.i.i_crit_edge [
    i8 0, label %if.then.i.i
    i8 1, label %if.else.i.i395
  ]

if.end148.i.if.end33.i.i_crit_edge:               ; preds = %if.end148.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33.i.i

if.then.i.i:                                      ; preds = %if.end148.i
  call void @__sanitizer_cov_trace_pc() #9
  %1231 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1231)
  %1232 = load ptr, ptr %dev, align 4
  %1233 = ptrtoint ptr %1232 to i32
  call void @__asan_load4_noabort(i32 %1233)
  %1234 = load ptr, ptr %1232, align 4
  %read16.i.i.i597.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1234, i32 0, i32 1
  %1235 = ptrtoint ptr %read16.i.i.i597.i to i32
  call void @__asan_load4_noabort(i32 %1235)
  %1236 = load ptr, ptr %read16.i.i.i597.i, align 4
  %call.i.i.i598.i = tail call zeroext i16 %1236(ptr noundef %1232, i16 noundef zeroext 998) #7
  %1237 = and i16 %call.i.i.i598.i, -16
  %or47.i.i = or i16 %1237, 11
  %1238 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1238)
  %1239 = load ptr, ptr %dev, align 4
  %1240 = ptrtoint ptr %1239 to i32
  call void @__asan_load4_noabort(i32 %1240)
  %1241 = load ptr, ptr %1239, align 4
  %write16.i.i.i599.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1241, i32 0, i32 4
  %1242 = ptrtoint ptr %write16.i.i.i599.i to i32
  call void @__asan_load4_noabort(i32 %1242)
  %1243 = load ptr, ptr %write16.i.i.i599.i, align 4
  tail call void %1243(ptr noundef %1239, i16 noundef zeroext 998, i16 noundef zeroext %or47.i.i) #7
  br label %b43legacy_phy_set_baseband_attenuation.exit.i

if.else.i.i395:                                   ; preds = %if.end148.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33.i.i

if.end33.i.i:                                     ; preds = %if.else.i.i395, %if.end148.i.if.end33.i.i_crit_edge
  %.sink54.i.i = phi i16 [ -121, %if.else.i.i395 ], [ -61, %if.end148.i.if.end33.i.i_crit_edge ]
  %.sink53.i.i = phi i16 [ 3, %if.else.i.i395 ], [ 2, %if.end148.i.if.end33.i.i_crit_edge ]
  %.sink52.i.i = phi i16 [ 120, %if.else.i.i395 ], [ 60, %if.end148.i.if.end33.i.i_crit_edge ]
  %1244 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1244)
  %1245 = load ptr, ptr %dev, align 4
  %1246 = ptrtoint ptr %1245 to i32
  call void @__asan_load4_noabort(i32 %1246)
  %1247 = load ptr, ptr %1245, align 4
  %write16.i.i.i48.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1247, i32 0, i32 4
  %1248 = ptrtoint ptr %write16.i.i.i48.i.i to i32
  call void @__asan_load4_noabort(i32 %1248)
  %1249 = load ptr, ptr %write16.i.i.i48.i.i, align 4
  tail call void %1249(ptr noundef %1245, i16 noundef zeroext 1020, i16 noundef zeroext 96) #7
  %1250 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1250)
  %1251 = load ptr, ptr %dev, align 4
  %1252 = ptrtoint ptr %1251 to i32
  call void @__asan_load4_noabort(i32 %1252)
  %1253 = load ptr, ptr %1251, align 4
  %read16.i.i.i49.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1253, i32 0, i32 1
  %1254 = ptrtoint ptr %read16.i.i.i49.i.i to i32
  call void @__asan_load4_noabort(i32 %1254)
  %1255 = load ptr, ptr %read16.i.i.i49.i.i, align 4
  %call.i.i.i50.i.i = tail call zeroext i16 %1255(ptr noundef %1251, i16 noundef zeroext 1022) #7
  %1256 = and i16 %call.i.i.i50.i.i, %.sink54.i.i
  %shl28.i.i = shl nuw nsw i16 11, %.sink53.i.i
  %and29.i.i = and i16 %shl28.i.i, %.sink52.i.i
  %or31.i.i = or i16 %1256, %and29.i.i
  %1257 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1257)
  %1258 = load ptr, ptr %dev, align 4
  %1259 = ptrtoint ptr %1258 to i32
  call void @__asan_load4_noabort(i32 %1259)
  %1260 = load ptr, ptr %1258, align 4
  %write16.i.i.i51.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1260, i32 0, i32 4
  %1261 = ptrtoint ptr %write16.i.i.i51.i.i to i32
  call void @__asan_load4_noabort(i32 %1261)
  %1262 = load ptr, ptr %write16.i.i.i51.i.i, align 4
  tail call void %1262(ptr noundef %1258, i16 noundef zeroext 1020, i16 noundef zeroext 96) #7
  %1263 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1263)
  %1264 = load ptr, ptr %dev, align 4
  %1265 = ptrtoint ptr %1264 to i32
  call void @__asan_load4_noabort(i32 %1265)
  %1266 = load ptr, ptr %1264, align 4
  %write16.i.i2.i.i.i396 = getelementptr inbounds %struct.ssb_bus_ops, ptr %1266, i32 0, i32 4
  %1267 = ptrtoint ptr %write16.i.i2.i.i.i396 to i32
  call void @__asan_load4_noabort(i32 %1267)
  %1268 = load ptr, ptr %write16.i.i2.i.i.i396, align 4
  tail call void %1268(ptr noundef %1264, i16 noundef zeroext 1022, i16 noundef zeroext %or31.i.i) #7
  br label %b43legacy_phy_set_baseband_attenuation.exit.i

b43legacy_phy_set_baseband_attenuation.exit.i:    ; preds = %if.end33.i.i, %if.then.i.i
  %1269 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %1269)
  %1270 = load i8, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1270)
  %cmp151.i = icmp ugt i8 %1270, 2
  %1271 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1271)
  %1272 = load ptr, ptr %dev, align 4
  %1273 = ptrtoint ptr %1272 to i32
  call void @__asan_load4_noabort(i32 %1273)
  %1274 = load ptr, ptr %1272, align 4
  %write16.i.i.i600.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1274, i32 0, i32 4
  %1275 = ptrtoint ptr %write16.i.i.i600.i to i32
  call void @__asan_load4_noabort(i32 %1275)
  %1276 = load ptr, ptr %write16.i.i.i600.i, align 4
  tail call void %1276(ptr noundef %1272, i16 noundef zeroext 1020, i16 noundef zeroext 2063) #7
  %1277 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1277)
  %1278 = load ptr, ptr %dev, align 4
  %1279 = ptrtoint ptr %1278 to i32
  call void @__asan_load4_noabort(i32 %1279)
  %1280 = load ptr, ptr %1278, align 4
  %write16.i.i2.i601.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1280, i32 0, i32 4
  %1281 = ptrtoint ptr %write16.i.i2.i601.i to i32
  call void @__asan_load4_noabort(i32 %1281)
  %1282 = load ptr, ptr %write16.i.i2.i601.i, align 4
  %..i = select i1 %cmp151.i, i16 -16352, i16 -32736
  tail call void %1282(ptr noundef %1278, i16 noundef zeroext 1022, i16 noundef zeroext %..i) #7
  %1283 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1283)
  %1284 = load ptr, ptr %dev, align 4
  %1285 = ptrtoint ptr %1284 to i32
  call void @__asan_load4_noabort(i32 %1285)
  %1286 = load ptr, ptr %1284, align 4
  %write16.i.i.i604.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1286, i32 0, i32 4
  %1287 = ptrtoint ptr %write16.i.i.i604.i to i32
  call void @__asan_load4_noabort(i32 %1287)
  %1288 = load ptr, ptr %write16.i.i.i604.i, align 4
  tail call void %1288(ptr noundef %1284, i16 noundef zeroext 1020, i16 noundef zeroext 2064) #7
  %1289 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1289)
  %1290 = load ptr, ptr %dev, align 4
  %1291 = ptrtoint ptr %1290 to i32
  call void @__asan_load4_noabort(i32 %1291)
  %1292 = load ptr, ptr %1290, align 4
  %write16.i.i2.i605.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1292, i32 0, i32 4
  %1293 = ptrtoint ptr %write16.i.i2.i605.i to i32
  call void @__asan_load4_noabort(i32 %1293)
  %1294 = load ptr, ptr %write16.i.i2.i605.i, align 4
  tail call void %1294(ptr noundef %1290, i16 noundef zeroext 1022, i16 noundef zeroext 0) #7
  %1295 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1295)
  %1296 = load ptr, ptr %dev, align 4
  %1297 = ptrtoint ptr %1296 to i32
  call void @__asan_load4_noabort(i32 %1297)
  %1298 = load ptr, ptr %1296, align 4
  %write16.i.i.i606.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1298, i32 0, i32 4
  %1299 = ptrtoint ptr %write16.i.i.i606.i to i32
  call void @__asan_load4_noabort(i32 %1299)
  %1300 = load ptr, ptr %write16.i.i.i606.i, align 4
  tail call void %1300(ptr noundef %1296, i16 noundef zeroext 1020, i16 noundef zeroext 43) #7
  %1301 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1301)
  %1302 = load ptr, ptr %dev, align 4
  %1303 = ptrtoint ptr %1302 to i32
  call void @__asan_load4_noabort(i32 %1303)
  %1304 = load ptr, ptr %1302, align 4
  %read16.i.i.i607.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1304, i32 0, i32 1
  %1305 = ptrtoint ptr %read16.i.i.i607.i to i32
  call void @__asan_load4_noabort(i32 %1305)
  %1306 = load ptr, ptr %read16.i.i.i607.i, align 4
  %call.i.i.i608.i = tail call zeroext i16 %1306(ptr noundef %1302, i16 noundef zeroext 1022) #7
  %1307 = and i16 %call.i.i.i608.i, -64
  %1308 = or i16 %1307, 1
  %1309 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1309)
  %1310 = load ptr, ptr %dev, align 4
  %1311 = ptrtoint ptr %1310 to i32
  call void @__asan_load4_noabort(i32 %1311)
  %1312 = load ptr, ptr %1310, align 4
  %write16.i.i.i609.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1312, i32 0, i32 4
  %1313 = ptrtoint ptr %write16.i.i.i609.i to i32
  call void @__asan_load4_noabort(i32 %1313)
  %1314 = load ptr, ptr %write16.i.i.i609.i, align 4
  tail call void %1314(ptr noundef %1310, i16 noundef zeroext 1020, i16 noundef zeroext 43) #7
  %1315 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1315)
  %1316 = load ptr, ptr %dev, align 4
  %1317 = ptrtoint ptr %1316 to i32
  call void @__asan_load4_noabort(i32 %1317)
  %1318 = load ptr, ptr %1316, align 4
  %write16.i.i2.i610.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1318, i32 0, i32 4
  %1319 = ptrtoint ptr %write16.i.i2.i610.i to i32
  call void @__asan_load4_noabort(i32 %1319)
  %1320 = load ptr, ptr %write16.i.i2.i610.i, align 4
  tail call void %1320(ptr noundef %1316, i16 noundef zeroext 1022, i16 noundef zeroext %1308) #7
  %1321 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1321)
  %1322 = load ptr, ptr %dev, align 4
  %1323 = ptrtoint ptr %1322 to i32
  call void @__asan_load4_noabort(i32 %1323)
  %1324 = load ptr, ptr %1322, align 4
  %write16.i.i.i611.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1324, i32 0, i32 4
  %1325 = ptrtoint ptr %write16.i.i.i611.i to i32
  call void @__asan_load4_noabort(i32 %1325)
  %1326 = load ptr, ptr %write16.i.i.i611.i, align 4
  tail call void %1326(ptr noundef %1322, i16 noundef zeroext 1020, i16 noundef zeroext 43) #7
  %1327 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1327)
  %1328 = load ptr, ptr %dev, align 4
  %1329 = ptrtoint ptr %1328 to i32
  call void @__asan_load4_noabort(i32 %1329)
  %1330 = load ptr, ptr %1328, align 4
  %read16.i.i.i612.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1330, i32 0, i32 1
  %1331 = ptrtoint ptr %read16.i.i.i612.i to i32
  call void @__asan_load4_noabort(i32 %1331)
  %1332 = load ptr, ptr %read16.i.i.i612.i, align 4
  %call.i.i.i613.i = tail call zeroext i16 %1332(ptr noundef %1328, i16 noundef zeroext 1022) #7
  %1333 = and i16 %call.i.i.i613.i, -16129
  %1334 = or i16 %1333, 2048
  %1335 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1335)
  %1336 = load ptr, ptr %dev, align 4
  %1337 = ptrtoint ptr %1336 to i32
  call void @__asan_load4_noabort(i32 %1337)
  %1338 = load ptr, ptr %1336, align 4
  %write16.i.i.i614.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1338, i32 0, i32 4
  %1339 = ptrtoint ptr %write16.i.i.i614.i to i32
  call void @__asan_load4_noabort(i32 %1339)
  %1340 = load ptr, ptr %write16.i.i.i614.i, align 4
  tail call void %1340(ptr noundef %1336, i16 noundef zeroext 1020, i16 noundef zeroext 43) #7
  %1341 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1341)
  %1342 = load ptr, ptr %dev, align 4
  %1343 = ptrtoint ptr %1342 to i32
  call void @__asan_load4_noabort(i32 %1343)
  %1344 = load ptr, ptr %1342, align 4
  %write16.i.i2.i615.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1344, i32 0, i32 4
  %1345 = ptrtoint ptr %write16.i.i2.i615.i to i32
  call void @__asan_load4_noabort(i32 %1345)
  %1346 = load ptr, ptr %write16.i.i2.i615.i, align 4
  tail call void %1346(ptr noundef %1342, i16 noundef zeroext 1022, i16 noundef zeroext %1334) #7
  %1347 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1347)
  %1348 = load ptr, ptr %dev, align 4
  %1349 = ptrtoint ptr %1348 to i32
  call void @__asan_load4_noabort(i32 %1349)
  %1350 = load ptr, ptr %1348, align 4
  %write16.i.i.i616.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1350, i32 0, i32 4
  %1351 = ptrtoint ptr %write16.i.i.i616.i to i32
  call void @__asan_load4_noabort(i32 %1351)
  %1352 = load ptr, ptr %write16.i.i.i616.i, align 4
  tail call void %1352(ptr noundef %1348, i16 noundef zeroext 1020, i16 noundef zeroext 2065) #7
  %1353 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1353)
  %1354 = load ptr, ptr %dev, align 4
  %1355 = ptrtoint ptr %1354 to i32
  call void @__asan_load4_noabort(i32 %1355)
  %1356 = load ptr, ptr %1354, align 4
  %read16.i.i.i617.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1356, i32 0, i32 1
  %1357 = ptrtoint ptr %read16.i.i.i617.i to i32
  call void @__asan_load4_noabort(i32 %1357)
  %1358 = load ptr, ptr %read16.i.i.i617.i, align 4
  %call.i.i.i618.i = tail call zeroext i16 %1358(ptr noundef %1354, i16 noundef zeroext 1022) #7
  %1359 = or i16 %call.i.i.i618.i, 256
  %1360 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1360)
  %1361 = load ptr, ptr %dev, align 4
  %1362 = ptrtoint ptr %1361 to i32
  call void @__asan_load4_noabort(i32 %1362)
  %1363 = load ptr, ptr %1361, align 4
  %write16.i.i.i619.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1363, i32 0, i32 4
  %1364 = ptrtoint ptr %write16.i.i.i619.i to i32
  call void @__asan_load4_noabort(i32 %1364)
  %1365 = load ptr, ptr %write16.i.i.i619.i, align 4
  tail call void %1365(ptr noundef %1361, i16 noundef zeroext 1020, i16 noundef zeroext 2065) #7
  %1366 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1366)
  %1367 = load ptr, ptr %dev, align 4
  %1368 = ptrtoint ptr %1367 to i32
  call void @__asan_load4_noabort(i32 %1368)
  %1369 = load ptr, ptr %1367, align 4
  %write16.i.i2.i620.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1369, i32 0, i32 4
  %1370 = ptrtoint ptr %write16.i.i2.i620.i to i32
  call void @__asan_load4_noabort(i32 %1370)
  %1371 = load ptr, ptr %write16.i.i2.i620.i, align 4
  tail call void %1371(ptr noundef %1367, i16 noundef zeroext 1022, i16 noundef zeroext %1359) #7
  %1372 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1372)
  %1373 = load ptr, ptr %dev, align 4
  %1374 = ptrtoint ptr %1373 to i32
  call void @__asan_load4_noabort(i32 %1374)
  %1375 = load ptr, ptr %1373, align 4
  %write16.i.i.i621.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1375, i32 0, i32 4
  %1376 = ptrtoint ptr %write16.i.i.i621.i to i32
  call void @__asan_load4_noabort(i32 %1376)
  %1377 = load ptr, ptr %write16.i.i.i621.i, align 4
  tail call void %1377(ptr noundef %1373, i16 noundef zeroext 1020, i16 noundef zeroext 2066) #7
  %1378 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1378)
  %1379 = load ptr, ptr %dev, align 4
  %1380 = ptrtoint ptr %1379 to i32
  call void @__asan_load4_noabort(i32 %1380)
  %1381 = load ptr, ptr %1379, align 4
  %read16.i.i.i622.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1381, i32 0, i32 1
  %1382 = ptrtoint ptr %read16.i.i.i622.i to i32
  call void @__asan_load4_noabort(i32 %1382)
  %1383 = load ptr, ptr %read16.i.i.i622.i, align 4
  %call.i.i.i623.i = tail call zeroext i16 %1383(ptr noundef %1379, i16 noundef zeroext 1022) #7
  %1384 = and i16 %call.i.i.i623.i, -12289
  %1385 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1385)
  %1386 = load ptr, ptr %dev, align 4
  %1387 = ptrtoint ptr %1386 to i32
  call void @__asan_load4_noabort(i32 %1387)
  %1388 = load ptr, ptr %1386, align 4
  %write16.i.i.i624.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1388, i32 0, i32 4
  %1389 = ptrtoint ptr %write16.i.i.i624.i to i32
  call void @__asan_load4_noabort(i32 %1389)
  %1390 = load ptr, ptr %write16.i.i.i624.i, align 4
  tail call void %1390(ptr noundef %1386, i16 noundef zeroext 1020, i16 noundef zeroext 2066) #7
  %1391 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1391)
  %1392 = load ptr, ptr %dev, align 4
  %1393 = ptrtoint ptr %1392 to i32
  call void @__asan_load4_noabort(i32 %1393)
  %1394 = load ptr, ptr %1392, align 4
  %write16.i.i2.i625.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1394, i32 0, i32 4
  %1395 = ptrtoint ptr %write16.i.i2.i625.i to i32
  call void @__asan_load4_noabort(i32 %1395)
  %1396 = load ptr, ptr %write16.i.i2.i625.i, align 4
  tail call void %1396(ptr noundef %1392, i16 noundef zeroext 1022, i16 noundef zeroext %1384) #7
  %1397 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1397)
  %1398 = load ptr, ptr %dev, align 4
  %bus.i397 = getelementptr inbounds %struct.ssb_device, ptr %1398, i32 0, i32 3
  %1399 = ptrtoint ptr %bus.i397 to i32
  call void @__asan_load4_noabort(i32 %1399)
  %1400 = load ptr, ptr %bus.i397, align 4
  %boardflags_lo.i398 = getelementptr inbounds %struct.ssb_bus, ptr %1400, i32 0, i32 22, i32 70
  %1401 = ptrtoint ptr %boardflags_lo.i398 to i32
  call void @__asan_load2_noabort(i32 %1401)
  %1402 = load i16, ptr %boardflags_lo.i398, align 4
  %1403 = and i16 %1402, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1403)
  %tobool.not.i399 = icmp eq i16 %1403, 0
  br i1 %tobool.not.i399, label %b43legacy_phy_set_baseband_attenuation.exit.i.if.end192.i_crit_edge, label %if.then177.i

b43legacy_phy_set_baseband_attenuation.exit.i.if.end192.i_crit_edge: ; preds = %b43legacy_phy_set_baseband_attenuation.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end192.i

if.then177.i:                                     ; preds = %b43legacy_phy_set_baseband_attenuation.exit.i
  %1404 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %1404)
  %1405 = load i8, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %1405)
  %cmp180.i = icmp ugt i8 %1405, 6
  br i1 %cmp180.i, label %if.then182.i, label %if.then177.i.if.end192.i_crit_edge

if.then177.i.if.end192.i_crit_edge:               ; preds = %if.then177.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end192.i

if.then182.i:                                     ; preds = %if.then177.i
  call void @__sanitizer_cov_trace_pc() #9
  %1406 = ptrtoint ptr %1398 to i32
  call void @__asan_load4_noabort(i32 %1406)
  %1407 = load ptr, ptr %1398, align 4
  %write16.i.i.i626.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1407, i32 0, i32 4
  %1408 = ptrtoint ptr %write16.i.i.i626.i to i32
  call void @__asan_load4_noabort(i32 %1408)
  %1409 = load ptr, ptr %write16.i.i.i626.i, align 4
  tail call void %1409(ptr noundef %1398, i16 noundef zeroext 1020, i16 noundef zeroext 2065) #7
  %1410 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1410)
  %1411 = load ptr, ptr %dev, align 4
  %1412 = ptrtoint ptr %1411 to i32
  call void @__asan_load4_noabort(i32 %1412)
  %1413 = load ptr, ptr %1411, align 4
  %read16.i.i.i627.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1413, i32 0, i32 1
  %1414 = ptrtoint ptr %read16.i.i.i627.i to i32
  call void @__asan_load4_noabort(i32 %1414)
  %1415 = load ptr, ptr %read16.i.i.i627.i, align 4
  %call.i.i.i628.i = tail call zeroext i16 %1415(ptr noundef %1411, i16 noundef zeroext 1022) #7
  %1416 = or i16 %call.i.i.i628.i, 2048
  %1417 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1417)
  %1418 = load ptr, ptr %dev, align 4
  %1419 = ptrtoint ptr %1418 to i32
  call void @__asan_load4_noabort(i32 %1419)
  %1420 = load ptr, ptr %1418, align 4
  %write16.i.i.i629.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1420, i32 0, i32 4
  %1421 = ptrtoint ptr %write16.i.i.i629.i to i32
  call void @__asan_load4_noabort(i32 %1421)
  %1422 = load ptr, ptr %write16.i.i.i629.i, align 4
  tail call void %1422(ptr noundef %1418, i16 noundef zeroext 1020, i16 noundef zeroext 2065) #7
  %1423 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1423)
  %1424 = load ptr, ptr %dev, align 4
  %1425 = ptrtoint ptr %1424 to i32
  call void @__asan_load4_noabort(i32 %1425)
  %1426 = load ptr, ptr %1424, align 4
  %write16.i.i2.i630.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1426, i32 0, i32 4
  %1427 = ptrtoint ptr %write16.i.i2.i630.i to i32
  call void @__asan_load4_noabort(i32 %1427)
  %1428 = load ptr, ptr %write16.i.i2.i630.i, align 4
  tail call void %1428(ptr noundef %1424, i16 noundef zeroext 1022, i16 noundef zeroext %1416) #7
  %1429 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1429)
  %1430 = load ptr, ptr %dev, align 4
  %1431 = ptrtoint ptr %1430 to i32
  call void @__asan_load4_noabort(i32 %1431)
  %1432 = load ptr, ptr %1430, align 4
  %write16.i.i.i631.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1432, i32 0, i32 4
  %1433 = ptrtoint ptr %write16.i.i.i631.i to i32
  call void @__asan_load4_noabort(i32 %1433)
  %1434 = load ptr, ptr %write16.i.i.i631.i, align 4
  tail call void %1434(ptr noundef %1430, i16 noundef zeroext 1020, i16 noundef zeroext 2066) #7
  %1435 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1435)
  %1436 = load ptr, ptr %dev, align 4
  %1437 = ptrtoint ptr %1436 to i32
  call void @__asan_load4_noabort(i32 %1437)
  %1438 = load ptr, ptr %1436, align 4
  %read16.i.i.i632.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1438, i32 0, i32 1
  %1439 = ptrtoint ptr %read16.i.i.i632.i to i32
  call void @__asan_load4_noabort(i32 %1439)
  %1440 = load ptr, ptr %read16.i.i.i632.i, align 4
  %call.i.i.i633.i = tail call zeroext i16 %1440(ptr noundef %1436, i16 noundef zeroext 1022) #7
  %1441 = or i16 %call.i.i.i633.i, -32768
  %1442 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1442)
  %1443 = load ptr, ptr %dev, align 4
  %1444 = ptrtoint ptr %1443 to i32
  call void @__asan_load4_noabort(i32 %1444)
  %1445 = load ptr, ptr %1443, align 4
  %write16.i.i.i634.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1445, i32 0, i32 4
  %1446 = ptrtoint ptr %write16.i.i.i634.i to i32
  call void @__asan_load4_noabort(i32 %1446)
  %1447 = load ptr, ptr %write16.i.i.i634.i, align 4
  tail call void %1447(ptr noundef %1443, i16 noundef zeroext 1020, i16 noundef zeroext 2066) #7
  %1448 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1448)
  %1449 = load ptr, ptr %dev, align 4
  %1450 = ptrtoint ptr %1449 to i32
  call void @__asan_load4_noabort(i32 %1450)
  %1451 = load ptr, ptr %1449, align 4
  %write16.i.i2.i635.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1451, i32 0, i32 4
  %1452 = ptrtoint ptr %write16.i.i2.i635.i to i32
  call void @__asan_load4_noabort(i32 %1452)
  %1453 = load ptr, ptr %write16.i.i2.i635.i, align 4
  tail call void %1453(ptr noundef %1449, i16 noundef zeroext 1022, i16 noundef zeroext %1441) #7
  br label %if.end192.i

if.end192.i:                                      ; preds = %if.then182.i, %if.then177.i.if.end192.i_crit_edge, %b43legacy_phy_set_baseband_attenuation.exit.i.if.end192.i_crit_edge
  %call193.i = tail call zeroext i16 @b43legacy_radio_read16(ptr noundef %dev, i16 noundef zeroext 122) #7
  %1454 = and i16 %call193.i, 247
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 122, i16 noundef zeroext %1454) #7
  br i1 %cmp199709.i, label %if.end192.i.for.body.i_crit_edge, label %if.end192.i.if.end268.i_crit_edge

if.end192.i.if.end268.i_crit_edge:                ; preds = %if.end192.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end268.i

if.end192.i.for.body.i_crit_edge:                 ; preds = %if.end192.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end192.i.for.body.i_crit_edge
  %i.0710.i = phi i16 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end192.i.for.body.i_crit_edge ]
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 67, i16 noundef zeroext %loop1_cnt.0.i) #7
  %1455 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1455)
  %1456 = load ptr, ptr %dev, align 4
  %1457 = ptrtoint ptr %1456 to i32
  call void @__asan_load4_noabort(i32 %1457)
  %1458 = load ptr, ptr %1456, align 4
  %write16.i.i.i636.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1458, i32 0, i32 4
  %1459 = ptrtoint ptr %write16.i.i.i636.i to i32
  call void @__asan_load4_noabort(i32 %1459)
  %1460 = load ptr, ptr %write16.i.i.i636.i, align 4
  tail call void %1460(ptr noundef %1456, i16 noundef zeroext 1020, i16 noundef zeroext 2066) #7
  %1461 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1461)
  %1462 = load ptr, ptr %dev, align 4
  %1463 = ptrtoint ptr %1462 to i32
  call void @__asan_load4_noabort(i32 %1463)
  %1464 = load ptr, ptr %1462, align 4
  %read16.i.i.i637.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1464, i32 0, i32 1
  %1465 = ptrtoint ptr %read16.i.i.i637.i to i32
  call void @__asan_load4_noabort(i32 %1465)
  %1466 = load ptr, ptr %read16.i.i.i637.i, align 4
  %call.i.i.i638.i = tail call zeroext i16 %1466(ptr noundef %1462, i16 noundef zeroext 1022) #7
  %1467 = and i16 %call.i.i.i638.i, -3841
  %shl.i = shl i16 %i.0710.i, 8
  %or205.i = or i16 %1467, %shl.i
  %1468 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1468)
  %1469 = load ptr, ptr %dev, align 4
  %1470 = ptrtoint ptr %1469 to i32
  call void @__asan_load4_noabort(i32 %1470)
  %1471 = load ptr, ptr %1469, align 4
  %write16.i.i.i639.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1471, i32 0, i32 4
  %1472 = ptrtoint ptr %write16.i.i.i639.i to i32
  call void @__asan_load4_noabort(i32 %1472)
  %1473 = load ptr, ptr %write16.i.i.i639.i, align 4
  tail call void %1473(ptr noundef %1469, i16 noundef zeroext 1020, i16 noundef zeroext 2066) #7
  %1474 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1474)
  %1475 = load ptr, ptr %dev, align 4
  %1476 = ptrtoint ptr %1475 to i32
  call void @__asan_load4_noabort(i32 %1476)
  %1477 = load ptr, ptr %1475, align 4
  %write16.i.i2.i640.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1477, i32 0, i32 4
  %1478 = ptrtoint ptr %write16.i.i2.i640.i to i32
  call void @__asan_load4_noabort(i32 %1478)
  %1479 = load ptr, ptr %write16.i.i2.i640.i, align 4
  tail call void %1479(ptr noundef %1475, i16 noundef zeroext 1022, i16 noundef zeroext %or205.i) #7
  %1480 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1480)
  %1481 = load ptr, ptr %dev, align 4
  %1482 = ptrtoint ptr %1481 to i32
  call void @__asan_load4_noabort(i32 %1482)
  %1483 = load ptr, ptr %1481, align 4
  %write16.i.i.i641.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1483, i32 0, i32 4
  %1484 = ptrtoint ptr %write16.i.i.i641.i to i32
  call void @__asan_load4_noabort(i32 %1484)
  %1485 = load ptr, ptr %write16.i.i.i641.i, align 4
  tail call void %1485(ptr noundef %1481, i16 noundef zeroext 1020, i16 noundef zeroext 21) #7
  %1486 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1486)
  %1487 = load ptr, ptr %dev, align 4
  %1488 = ptrtoint ptr %1487 to i32
  call void @__asan_load4_noabort(i32 %1488)
  %1489 = load ptr, ptr %1487, align 4
  %read16.i.i.i642.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1489, i32 0, i32 1
  %1490 = ptrtoint ptr %read16.i.i.i642.i to i32
  call void @__asan_load4_noabort(i32 %1490)
  %1491 = load ptr, ptr %read16.i.i.i642.i, align 4
  %call.i.i.i643.i = tail call zeroext i16 %1491(ptr noundef %1487, i16 noundef zeroext 1022) #7
  %1492 = and i16 %call.i.i.i643.i, 4095
  %1493 = or i16 %1492, -24576
  %1494 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1494)
  %1495 = load ptr, ptr %dev, align 4
  %1496 = ptrtoint ptr %1495 to i32
  call void @__asan_load4_noabort(i32 %1496)
  %1497 = load ptr, ptr %1495, align 4
  %write16.i.i.i644.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1497, i32 0, i32 4
  %1498 = ptrtoint ptr %write16.i.i.i644.i to i32
  call void @__asan_load4_noabort(i32 %1498)
  %1499 = load ptr, ptr %write16.i.i.i644.i, align 4
  tail call void %1499(ptr noundef %1495, i16 noundef zeroext 1020, i16 noundef zeroext 21) #7
  %1500 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1500)
  %1501 = load ptr, ptr %dev, align 4
  %1502 = ptrtoint ptr %1501 to i32
  call void @__asan_load4_noabort(i32 %1502)
  %1503 = load ptr, ptr %1501, align 4
  %write16.i.i2.i645.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1503, i32 0, i32 4
  %1504 = ptrtoint ptr %write16.i.i2.i645.i to i32
  call void @__asan_load4_noabort(i32 %1504)
  %1505 = load ptr, ptr %write16.i.i2.i645.i, align 4
  tail call void %1505(ptr noundef %1501, i16 noundef zeroext 1022, i16 noundef zeroext %1493) #7
  %1506 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1506)
  %1507 = load ptr, ptr %dev, align 4
  %1508 = ptrtoint ptr %1507 to i32
  call void @__asan_load4_noabort(i32 %1508)
  %1509 = load ptr, ptr %1507, align 4
  %write16.i.i.i646.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1509, i32 0, i32 4
  %1510 = ptrtoint ptr %write16.i.i.i646.i to i32
  call void @__asan_load4_noabort(i32 %1510)
  %1511 = load ptr, ptr %write16.i.i.i646.i, align 4
  tail call void %1511(ptr noundef %1507, i16 noundef zeroext 1020, i16 noundef zeroext 21) #7
  %1512 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1512)
  %1513 = load ptr, ptr %dev, align 4
  %1514 = ptrtoint ptr %1513 to i32
  call void @__asan_load4_noabort(i32 %1514)
  %1515 = load ptr, ptr %1513, align 4
  %read16.i.i.i647.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1515, i32 0, i32 1
  %1516 = ptrtoint ptr %read16.i.i.i647.i to i32
  call void @__asan_load4_noabort(i32 %1516)
  %1517 = load ptr, ptr %read16.i.i.i647.i, align 4
  %call.i.i.i648.i = tail call zeroext i16 %1517(ptr noundef %1513, i16 noundef zeroext 1022) #7
  %1518 = or i16 %call.i.i.i648.i, -4096
  %1519 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1519)
  %1520 = load ptr, ptr %dev, align 4
  %1521 = ptrtoint ptr %1520 to i32
  call void @__asan_load4_noabort(i32 %1521)
  %1522 = load ptr, ptr %1520, align 4
  %write16.i.i.i649.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1522, i32 0, i32 4
  %1523 = ptrtoint ptr %write16.i.i.i649.i to i32
  call void @__asan_load4_noabort(i32 %1523)
  %1524 = load ptr, ptr %write16.i.i.i649.i, align 4
  tail call void %1524(ptr noundef %1520, i16 noundef zeroext 1020, i16 noundef zeroext 21) #7
  %1525 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1525)
  %1526 = load ptr, ptr %dev, align 4
  %1527 = ptrtoint ptr %1526 to i32
  call void @__asan_load4_noabort(i32 %1527)
  %1528 = load ptr, ptr %1526, align 4
  %write16.i.i2.i650.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1528, i32 0, i32 4
  %1529 = ptrtoint ptr %write16.i.i2.i650.i to i32
  call void @__asan_load4_noabort(i32 %1529)
  %1530 = load ptr, ptr %write16.i.i2.i650.i, align 4
  tail call void %1530(ptr noundef %1526, i16 noundef zeroext 1022, i16 noundef zeroext %1518) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1531 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1531(i32 noundef 4294960) #7
  %1532 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1532)
  %1533 = load ptr, ptr %dev, align 4
  %1534 = ptrtoint ptr %1533 to i32
  call void @__asan_load4_noabort(i32 %1534)
  %1535 = load ptr, ptr %1533, align 4
  %write16.i.i.i651.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1535, i32 0, i32 4
  %1536 = ptrtoint ptr %write16.i.i.i651.i to i32
  call void @__asan_load4_noabort(i32 %1536)
  %1537 = load ptr, ptr %write16.i.i.i651.i, align 4
  tail call void %1537(ptr noundef %1533, i16 noundef zeroext 1020, i16 noundef zeroext 45) #7
  %1538 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1538)
  %1539 = load ptr, ptr %dev, align 4
  %1540 = ptrtoint ptr %1539 to i32
  call void @__asan_load4_noabort(i32 %1540)
  %1541 = load ptr, ptr %1539, align 4
  %read16.i.i.i652.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1541, i32 0, i32 1
  %1542 = ptrtoint ptr %read16.i.i.i652.i to i32
  call void @__asan_load4_noabort(i32 %1542)
  %1543 = load ptr, ptr %read16.i.i.i652.i, align 4
  %call.i.i.i653.i = tail call zeroext i16 %1543(ptr noundef %1539, i16 noundef zeroext 1022) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 3579, i16 %call.i.i.i653.i)
  %cmp219.i = icmp ugt i16 %call.i.i.i653.i, 3579
  br i1 %cmp219.i, label %for.body.i.for.end.i_crit_edge, label %for.inc.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i16 %i.0710.i, 1
  %cmp199.i = icmp ult i16 %inc.i, %loop1_cnt.0.i
  br i1 %cmp199.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i16 [ %inc.i, %for.inc.i.for.end.i_crit_edge ], [ %i.0710.i, %for.body.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %i.0.lcssa.i)
  %cmp227.i = icmp ugt i16 %i.0.lcssa.i, 7
  br i1 %cmp227.i, label %if.then229.i, label %for.end.i.if.end268.i_crit_edge

for.end.i.if.end268.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end268.i

if.then229.i:                                     ; preds = %for.end.i
  %1544 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1544)
  %1545 = load ptr, ptr %dev, align 4
  %1546 = ptrtoint ptr %1545 to i32
  call void @__asan_load4_noabort(i32 %1546)
  %1547 = load ptr, ptr %1545, align 4
  %write16.i.i.i654.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1547, i32 0, i32 4
  %1548 = ptrtoint ptr %write16.i.i.i654.i to i32
  call void @__asan_load4_noabort(i32 %1548)
  %1549 = load ptr, ptr %write16.i.i.i654.i, align 4
  tail call void %1549(ptr noundef %1545, i16 noundef zeroext 1020, i16 noundef zeroext 2066) #7
  %1550 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1550)
  %1551 = load ptr, ptr %dev, align 4
  %1552 = ptrtoint ptr %1551 to i32
  call void @__asan_load4_noabort(i32 %1552)
  %1553 = load ptr, ptr %1551, align 4
  %read16.i.i.i655.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1553, i32 0, i32 1
  %1554 = ptrtoint ptr %read16.i.i.i655.i to i32
  call void @__asan_load4_noabort(i32 %1554)
  %1555 = load ptr, ptr %read16.i.i.i655.i, align 4
  %call.i.i.i656.i = tail call zeroext i16 %1555(ptr noundef %1551, i16 noundef zeroext 1022) #7
  %1556 = or i16 %call.i.i.i656.i, 48
  %1557 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1557)
  %1558 = load ptr, ptr %dev, align 4
  %1559 = ptrtoint ptr %1558 to i32
  call void @__asan_load4_noabort(i32 %1559)
  %1560 = load ptr, ptr %1558, align 4
  %write16.i.i.i657.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1560, i32 0, i32 4
  %1561 = ptrtoint ptr %write16.i.i.i657.i to i32
  call void @__asan_load4_noabort(i32 %1561)
  %1562 = load ptr, ptr %write16.i.i.i657.i, align 4
  tail call void %1562(ptr noundef %1558, i16 noundef zeroext 1020, i16 noundef zeroext 2066) #7
  %1563 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1563)
  %1564 = load ptr, ptr %dev, align 4
  %1565 = ptrtoint ptr %1564 to i32
  call void @__asan_load4_noabort(i32 %1565)
  %1566 = load ptr, ptr %1564, align 4
  %write16.i.i2.i658.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1566, i32 0, i32 4
  %1567 = ptrtoint ptr %write16.i.i2.i658.i to i32
  call void @__asan_load4_noabort(i32 %1567)
  %1568 = load ptr, ptr %write16.i.i2.i658.i, align 4
  tail call void %1568(ptr noundef %1564, i16 noundef zeroext 1022, i16 noundef zeroext %1556) #7
  %sub235.i = add i16 %i.0.lcssa.i, -8
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %sub235.i)
  %cmp239712.i = icmp ult i16 %sub235.i, 16
  br i1 %cmp239712.i, label %if.then229.i.for.body241.i_crit_edge, label %if.then229.i.if.end268.i_crit_edge

if.then229.i.if.end268.i_crit_edge:               ; preds = %if.then229.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end268.i

if.then229.i.for.body241.i_crit_edge:             ; preds = %if.then229.i
  br label %for.body241.i

for.body241.i:                                    ; preds = %for.body241.i.for.body241.i_crit_edge, %if.then229.i.for.body241.i_crit_edge
  %i.1713.i = phi i16 [ %inc266.i, %for.body241.i.for.body241.i_crit_edge ], [ %sub235.i, %if.then229.i.for.body241.i_crit_edge ]
  %1569 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1569)
  %1570 = load ptr, ptr %dev, align 4
  %1571 = ptrtoint ptr %1570 to i32
  call void @__asan_load4_noabort(i32 %1571)
  %1572 = load ptr, ptr %1570, align 4
  %write16.i.i.i659.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1572, i32 0, i32 4
  %1573 = ptrtoint ptr %write16.i.i.i659.i to i32
  call void @__asan_load4_noabort(i32 %1573)
  %1574 = load ptr, ptr %write16.i.i.i659.i, align 4
  tail call void %1574(ptr noundef %1570, i16 noundef zeroext 1020, i16 noundef zeroext 2066) #7
  %1575 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1575)
  %1576 = load ptr, ptr %dev, align 4
  %1577 = ptrtoint ptr %1576 to i32
  call void @__asan_load4_noabort(i32 %1577)
  %1578 = load ptr, ptr %1576, align 4
  %read16.i.i.i660.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1578, i32 0, i32 1
  %1579 = ptrtoint ptr %read16.i.i.i660.i to i32
  call void @__asan_load4_noabort(i32 %1579)
  %1580 = load ptr, ptr %read16.i.i.i660.i, align 4
  %call.i.i.i661.i = tail call zeroext i16 %1580(ptr noundef %1576, i16 noundef zeroext 1022) #7
  %1581 = and i16 %call.i.i.i661.i, -3841
  %shl246.i = shl nuw nsw i16 %i.1713.i, 8
  %or247.i = or i16 %1581, %shl246.i
  %1582 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1582)
  %1583 = load ptr, ptr %dev, align 4
  %1584 = ptrtoint ptr %1583 to i32
  call void @__asan_load4_noabort(i32 %1584)
  %1585 = load ptr, ptr %1583, align 4
  %write16.i.i.i662.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1585, i32 0, i32 4
  %1586 = ptrtoint ptr %write16.i.i.i662.i to i32
  call void @__asan_load4_noabort(i32 %1586)
  %1587 = load ptr, ptr %write16.i.i.i662.i, align 4
  tail call void %1587(ptr noundef %1583, i16 noundef zeroext 1020, i16 noundef zeroext 2066) #7
  %1588 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1588)
  %1589 = load ptr, ptr %dev, align 4
  %1590 = ptrtoint ptr %1589 to i32
  call void @__asan_load4_noabort(i32 %1590)
  %1591 = load ptr, ptr %1589, align 4
  %write16.i.i2.i663.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1591, i32 0, i32 4
  %1592 = ptrtoint ptr %write16.i.i2.i663.i to i32
  call void @__asan_load4_noabort(i32 %1592)
  %1593 = load ptr, ptr %write16.i.i2.i663.i, align 4
  tail call void %1593(ptr noundef %1589, i16 noundef zeroext 1022, i16 noundef zeroext %or247.i) #7
  %1594 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1594)
  %1595 = load ptr, ptr %dev, align 4
  %1596 = ptrtoint ptr %1595 to i32
  call void @__asan_load4_noabort(i32 %1596)
  %1597 = load ptr, ptr %1595, align 4
  %write16.i.i.i664.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1597, i32 0, i32 4
  %1598 = ptrtoint ptr %write16.i.i.i664.i to i32
  call void @__asan_load4_noabort(i32 %1598)
  %1599 = load ptr, ptr %write16.i.i.i664.i, align 4
  tail call void %1599(ptr noundef %1595, i16 noundef zeroext 1020, i16 noundef zeroext 21) #7
  %1600 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1600)
  %1601 = load ptr, ptr %dev, align 4
  %1602 = ptrtoint ptr %1601 to i32
  call void @__asan_load4_noabort(i32 %1602)
  %1603 = load ptr, ptr %1601, align 4
  %read16.i.i.i665.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1603, i32 0, i32 1
  %1604 = ptrtoint ptr %read16.i.i.i665.i to i32
  call void @__asan_load4_noabort(i32 %1604)
  %1605 = load ptr, ptr %read16.i.i.i665.i, align 4
  %call.i.i.i666.i = tail call zeroext i16 %1605(ptr noundef %1601, i16 noundef zeroext 1022) #7
  %1606 = and i16 %call.i.i.i666.i, 4095
  %1607 = or i16 %1606, -24576
  %1608 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1608)
  %1609 = load ptr, ptr %dev, align 4
  %1610 = ptrtoint ptr %1609 to i32
  call void @__asan_load4_noabort(i32 %1610)
  %1611 = load ptr, ptr %1609, align 4
  %write16.i.i.i667.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1611, i32 0, i32 4
  %1612 = ptrtoint ptr %write16.i.i.i667.i to i32
  call void @__asan_load4_noabort(i32 %1612)
  %1613 = load ptr, ptr %write16.i.i.i667.i, align 4
  tail call void %1613(ptr noundef %1609, i16 noundef zeroext 1020, i16 noundef zeroext 21) #7
  %1614 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1614)
  %1615 = load ptr, ptr %dev, align 4
  %1616 = ptrtoint ptr %1615 to i32
  call void @__asan_load4_noabort(i32 %1616)
  %1617 = load ptr, ptr %1615, align 4
  %write16.i.i2.i668.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1617, i32 0, i32 4
  %1618 = ptrtoint ptr %write16.i.i2.i668.i to i32
  call void @__asan_load4_noabort(i32 %1618)
  %1619 = load ptr, ptr %write16.i.i2.i668.i, align 4
  tail call void %1619(ptr noundef %1615, i16 noundef zeroext 1022, i16 noundef zeroext %1607) #7
  %1620 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1620)
  %1621 = load ptr, ptr %dev, align 4
  %1622 = ptrtoint ptr %1621 to i32
  call void @__asan_load4_noabort(i32 %1622)
  %1623 = load ptr, ptr %1621, align 4
  %write16.i.i.i669.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1623, i32 0, i32 4
  %1624 = ptrtoint ptr %write16.i.i.i669.i to i32
  call void @__asan_load4_noabort(i32 %1624)
  %1625 = load ptr, ptr %write16.i.i.i669.i, align 4
  tail call void %1625(ptr noundef %1621, i16 noundef zeroext 1020, i16 noundef zeroext 21) #7
  %1626 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1626)
  %1627 = load ptr, ptr %dev, align 4
  %1628 = ptrtoint ptr %1627 to i32
  call void @__asan_load4_noabort(i32 %1628)
  %1629 = load ptr, ptr %1627, align 4
  %read16.i.i.i670.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1629, i32 0, i32 1
  %1630 = ptrtoint ptr %read16.i.i.i670.i to i32
  call void @__asan_load4_noabort(i32 %1630)
  %1631 = load ptr, ptr %read16.i.i.i670.i, align 4
  %call.i.i.i671.i = tail call zeroext i16 %1631(ptr noundef %1627, i16 noundef zeroext 1022) #7
  %1632 = or i16 %call.i.i.i671.i, -4096
  %1633 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1633)
  %1634 = load ptr, ptr %dev, align 4
  %1635 = ptrtoint ptr %1634 to i32
  call void @__asan_load4_noabort(i32 %1635)
  %1636 = load ptr, ptr %1634, align 4
  %write16.i.i.i672.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1636, i32 0, i32 4
  %1637 = ptrtoint ptr %write16.i.i.i672.i to i32
  call void @__asan_load4_noabort(i32 %1637)
  %1638 = load ptr, ptr %write16.i.i.i672.i, align 4
  tail call void %1638(ptr noundef %1634, i16 noundef zeroext 1020, i16 noundef zeroext 21) #7
  %1639 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1639)
  %1640 = load ptr, ptr %dev, align 4
  %1641 = ptrtoint ptr %1640 to i32
  call void @__asan_load4_noabort(i32 %1641)
  %1642 = load ptr, ptr %1640, align 4
  %write16.i.i2.i673.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1642, i32 0, i32 4
  %1643 = ptrtoint ptr %write16.i.i2.i673.i to i32
  call void @__asan_load4_noabort(i32 %1643)
  %1644 = load ptr, ptr %write16.i.i2.i673.i, align 4
  tail call void %1644(ptr noundef %1640, i16 noundef zeroext 1022, i16 noundef zeroext %1632) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1645 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1645(i32 noundef 4294960) #7
  %1646 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1646)
  %1647 = load ptr, ptr %dev, align 4
  %1648 = ptrtoint ptr %1647 to i32
  call void @__asan_load4_noabort(i32 %1648)
  %1649 = load ptr, ptr %1647, align 4
  %write16.i.i.i674.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1649, i32 0, i32 4
  %1650 = ptrtoint ptr %write16.i.i.i674.i to i32
  call void @__asan_load4_noabort(i32 %1650)
  %1651 = load ptr, ptr %write16.i.i.i674.i, align 4
  tail call void %1651(ptr noundef %1647, i16 noundef zeroext 1020, i16 noundef zeroext 45) #7
  %1652 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1652)
  %1653 = load ptr, ptr %dev, align 4
  %1654 = ptrtoint ptr %1653 to i32
  call void @__asan_load4_noabort(i32 %1654)
  %1655 = load ptr, ptr %1653, align 4
  %read16.i.i.i675.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1655, i32 0, i32 1
  %1656 = ptrtoint ptr %read16.i.i.i675.i to i32
  call void @__asan_load4_noabort(i32 %1656)
  %1657 = load ptr, ptr %read16.i.i.i675.i, align 4
  %call.i.i.i676.i = tail call zeroext i16 %1657(ptr noundef %1653, i16 noundef zeroext 1022) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 3580, i16 %call.i.i.i676.i)
  %cmp261.i = icmp ult i16 %call.i.i.i676.i, 3580
  %inc266.i = add nuw nsw i16 %i.1713.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %i.1713.i)
  %cmp239.i = icmp ult i16 %i.1713.i, 15
  %or.cond.i = select i1 %cmp261.i, i1 %cmp239.i, i1 false
  br i1 %or.cond.i, label %for.body241.i.for.body241.i_crit_edge, label %for.body241.i.if.end268.i_crit_edge

for.body241.i.if.end268.i_crit_edge:              ; preds = %for.body241.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end268.i

for.body241.i.for.body241.i_crit_edge:            ; preds = %for.body241.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body241.i

if.end268.i:                                      ; preds = %for.body241.i.if.end268.i_crit_edge, %if.then229.i.if.end268.i_crit_edge, %for.end.i.if.end268.i_crit_edge, %if.end192.i.if.end268.i_crit_edge
  %i.0.lcssa716.i = phi i16 [ %i.0.lcssa.i, %if.then229.i.if.end268.i_crit_edge ], [ %i.0.lcssa.i, %for.end.i.if.end268.i_crit_edge ], [ 0, %if.end192.i.if.end268.i_crit_edge ], [ %i.0.lcssa.i, %for.body241.i.if.end268.i_crit_edge ]
  %1658 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %1658)
  %1659 = load i8, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1659)
  %cmp271.not.i = icmp eq i8 %1659, 1
  br i1 %cmp271.not.i, label %if.end268.i.b43legacy_calc_loopback_gain.exit_crit_edge, label %if.then273.i

if.end268.i.b43legacy_calc_loopback_gain.exit_crit_edge: ; preds = %if.end268.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43legacy_calc_loopback_gain.exit

if.then273.i:                                     ; preds = %if.end268.i
  call void @__sanitizer_cov_trace_pc() #9
  %1660 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1660)
  %1661 = load ptr, ptr %dev, align 4
  %1662 = ptrtoint ptr %1661 to i32
  call void @__asan_load4_noabort(i32 %1662)
  %1663 = load ptr, ptr %1661, align 4
  %write16.i.i.i677.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1663, i32 0, i32 4
  %1664 = ptrtoint ptr %write16.i.i.i677.i to i32
  call void @__asan_load4_noabort(i32 %1664)
  %1665 = load ptr, ptr %write16.i.i.i677.i, align 4
  tail call void %1665(ptr noundef %1661, i16 noundef zeroext 1020, i16 noundef zeroext 2068) #7
  %1666 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1666)
  %1667 = load ptr, ptr %dev, align 4
  %1668 = ptrtoint ptr %1667 to i32
  call void @__asan_load4_noabort(i32 %1668)
  %1669 = load ptr, ptr %1667, align 4
  %write16.i.i2.i678.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1669, i32 0, i32 4
  %1670 = ptrtoint ptr %write16.i.i2.i678.i to i32
  call void @__asan_load4_noabort(i32 %1670)
  %1671 = load ptr, ptr %write16.i.i2.i678.i, align 4
  tail call void %1671(ptr noundef %1667, i16 noundef zeroext 1022, i16 noundef zeroext %backup_phy.sroa.12.0.i) #7
  %1672 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1672)
  %1673 = load ptr, ptr %dev, align 4
  %1674 = ptrtoint ptr %1673 to i32
  call void @__asan_load4_noabort(i32 %1674)
  %1675 = load ptr, ptr %1673, align 4
  %write16.i.i.i679.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1675, i32 0, i32 4
  %1676 = ptrtoint ptr %write16.i.i.i679.i to i32
  call void @__asan_load4_noabort(i32 %1676)
  %1677 = load ptr, ptr %write16.i.i.i679.i, align 4
  tail call void %1677(ptr noundef %1673, i16 noundef zeroext 1020, i16 noundef zeroext 2069) #7
  %1678 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1678)
  %1679 = load ptr, ptr %dev, align 4
  %1680 = ptrtoint ptr %1679 to i32
  call void @__asan_load4_noabort(i32 %1680)
  %1681 = load ptr, ptr %1679, align 4
  %write16.i.i2.i680.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1681, i32 0, i32 4
  %1682 = ptrtoint ptr %write16.i.i2.i680.i to i32
  call void @__asan_load4_noabort(i32 %1682)
  %1683 = load ptr, ptr %write16.i.i2.i680.i, align 4
  tail call void %1683(ptr noundef %1679, i16 noundef zeroext 1022, i16 noundef zeroext %backup_phy.sroa.14.0.i) #7
  br label %b43legacy_calc_loopback_gain.exit

b43legacy_calc_loopback_gain.exit:                ; preds = %if.then273.i, %if.end268.i.b43legacy_calc_loopback_gain.exit_crit_edge
  %sub.neg.i = sub i16 %i.0.lcssa716.i, %loop1_cnt.0.i
  %1684 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1684)
  %1685 = load ptr, ptr %dev, align 4
  %1686 = ptrtoint ptr %1685 to i32
  call void @__asan_load4_noabort(i32 %1686)
  %1687 = load ptr, ptr %1685, align 4
  %write16.i.i.i681.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1687, i32 0, i32 4
  %1688 = ptrtoint ptr %write16.i.i.i681.i to i32
  call void @__asan_load4_noabort(i32 %1688)
  %1689 = load ptr, ptr %write16.i.i.i681.i, align 4
  tail call void %1689(ptr noundef %1685, i16 noundef zeroext 1020, i16 noundef zeroext 90) #7
  %1690 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1690)
  %1691 = load ptr, ptr %dev, align 4
  %1692 = ptrtoint ptr %1691 to i32
  call void @__asan_load4_noabort(i32 %1692)
  %1693 = load ptr, ptr %1691, align 4
  %write16.i.i2.i682.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1693, i32 0, i32 4
  %1694 = ptrtoint ptr %write16.i.i2.i682.i to i32
  call void @__asan_load4_noabort(i32 %1694)
  %1695 = load ptr, ptr %write16.i.i2.i682.i, align 4
  tail call void %1695(ptr noundef %1691, i16 noundef zeroext 1022, i16 noundef zeroext %call.i.i.i472.i) #7
  %1696 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1696)
  %1697 = load ptr, ptr %dev, align 4
  %1698 = ptrtoint ptr %1697 to i32
  call void @__asan_load4_noabort(i32 %1698)
  %1699 = load ptr, ptr %1697, align 4
  %write16.i.i.i683.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1699, i32 0, i32 4
  %1700 = ptrtoint ptr %write16.i.i.i683.i to i32
  call void @__asan_load4_noabort(i32 %1700)
  %1701 = load ptr, ptr %write16.i.i.i683.i, align 4
  tail call void %1701(ptr noundef %1697, i16 noundef zeroext 1020, i16 noundef zeroext 89) #7
  %1702 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1702)
  %1703 = load ptr, ptr %dev, align 4
  %1704 = ptrtoint ptr %1703 to i32
  call void @__asan_load4_noabort(i32 %1704)
  %1705 = load ptr, ptr %1703, align 4
  %write16.i.i2.i684.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1705, i32 0, i32 4
  %1706 = ptrtoint ptr %write16.i.i2.i684.i to i32
  call void @__asan_load4_noabort(i32 %1706)
  %1707 = load ptr, ptr %write16.i.i2.i684.i, align 4
  tail call void %1707(ptr noundef %1703, i16 noundef zeroext 1022, i16 noundef zeroext %call.i.i.i475.i) #7
  %1708 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1708)
  %1709 = load ptr, ptr %dev, align 4
  %1710 = ptrtoint ptr %1709 to i32
  call void @__asan_load4_noabort(i32 %1710)
  %1711 = load ptr, ptr %1709, align 4
  %write16.i.i.i685.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1711, i32 0, i32 4
  %1712 = ptrtoint ptr %write16.i.i.i685.i to i32
  call void @__asan_load4_noabort(i32 %1712)
  %1713 = load ptr, ptr %write16.i.i.i685.i, align 4
  tail call void %1713(ptr noundef %1709, i16 noundef zeroext 1020, i16 noundef zeroext 88) #7
  %1714 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1714)
  %1715 = load ptr, ptr %dev, align 4
  %1716 = ptrtoint ptr %1715 to i32
  call void @__asan_load4_noabort(i32 %1716)
  %1717 = load ptr, ptr %1715, align 4
  %write16.i.i2.i686.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1717, i32 0, i32 4
  %1718 = ptrtoint ptr %write16.i.i2.i686.i to i32
  call void @__asan_load4_noabort(i32 %1718)
  %1719 = load ptr, ptr %write16.i.i2.i686.i, align 4
  tail call void %1719(ptr noundef %1715, i16 noundef zeroext 1022, i16 noundef zeroext %call.i.i.i478.i) #7
  %1720 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1720)
  %1721 = load ptr, ptr %dev, align 4
  %1722 = ptrtoint ptr %1721 to i32
  call void @__asan_load4_noabort(i32 %1722)
  %1723 = load ptr, ptr %1721, align 4
  %write16.i.i.i687.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1723, i32 0, i32 4
  %1724 = ptrtoint ptr %write16.i.i.i687.i to i32
  call void @__asan_load4_noabort(i32 %1724)
  %1725 = load ptr, ptr %write16.i.i.i687.i, align 4
  tail call void %1725(ptr noundef %1721, i16 noundef zeroext 1020, i16 noundef zeroext 10) #7
  %1726 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1726)
  %1727 = load ptr, ptr %dev, align 4
  %1728 = ptrtoint ptr %1727 to i32
  call void @__asan_load4_noabort(i32 %1728)
  %1729 = load ptr, ptr %1727, align 4
  %write16.i.i2.i688.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1729, i32 0, i32 4
  %1730 = ptrtoint ptr %write16.i.i2.i688.i to i32
  call void @__asan_load4_noabort(i32 %1730)
  %1731 = load ptr, ptr %write16.i.i2.i688.i, align 4
  tail call void %1731(ptr noundef %1727, i16 noundef zeroext 1022, i16 noundef zeroext %call.i.i.i481.i) #7
  %1732 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1732)
  %1733 = load ptr, ptr %dev, align 4
  %1734 = ptrtoint ptr %1733 to i32
  call void @__asan_load4_noabort(i32 %1734)
  %1735 = load ptr, ptr %1733, align 4
  %write16.i.i.i689.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1735, i32 0, i32 4
  %1736 = ptrtoint ptr %write16.i.i.i689.i to i32
  call void @__asan_load4_noabort(i32 %1736)
  %1737 = load ptr, ptr %write16.i.i.i689.i, align 4
  tail call void %1737(ptr noundef %1733, i16 noundef zeroext 1020, i16 noundef zeroext 3) #7
  %1738 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1738)
  %1739 = load ptr, ptr %dev, align 4
  %1740 = ptrtoint ptr %1739 to i32
  call void @__asan_load4_noabort(i32 %1740)
  %1741 = load ptr, ptr %1739, align 4
  %write16.i.i2.i690.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1741, i32 0, i32 4
  %1742 = ptrtoint ptr %write16.i.i2.i690.i to i32
  call void @__asan_load4_noabort(i32 %1742)
  %1743 = load ptr, ptr %write16.i.i2.i690.i, align 4
  tail call void %1743(ptr noundef %1739, i16 noundef zeroext 1022, i16 noundef zeroext %call.i.i.i484.i) #7
  %1744 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1744)
  %1745 = load ptr, ptr %dev, align 4
  %1746 = ptrtoint ptr %1745 to i32
  call void @__asan_load4_noabort(i32 %1746)
  %1747 = load ptr, ptr %1745, align 4
  %write16.i.i.i691.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1747, i32 0, i32 4
  %1748 = ptrtoint ptr %write16.i.i.i691.i to i32
  call void @__asan_load4_noabort(i32 %1748)
  %1749 = load ptr, ptr %write16.i.i.i691.i, align 4
  tail call void %1749(ptr noundef %1745, i16 noundef zeroext 1020, i16 noundef zeroext 2063) #7
  %1750 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1750)
  %1751 = load ptr, ptr %dev, align 4
  %1752 = ptrtoint ptr %1751 to i32
  call void @__asan_load4_noabort(i32 %1752)
  %1753 = load ptr, ptr %1751, align 4
  %write16.i.i2.i692.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1753, i32 0, i32 4
  %1754 = ptrtoint ptr %write16.i.i2.i692.i to i32
  call void @__asan_load4_noabort(i32 %1754)
  %1755 = load ptr, ptr %write16.i.i2.i692.i, align 4
  tail call void %1755(ptr noundef %1751, i16 noundef zeroext 1022, i16 noundef zeroext %call.i.i.i487.i) #7
  %1756 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1756)
  %1757 = load ptr, ptr %dev, align 4
  %1758 = ptrtoint ptr %1757 to i32
  call void @__asan_load4_noabort(i32 %1758)
  %1759 = load ptr, ptr %1757, align 4
  %write16.i.i.i693.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1759, i32 0, i32 4
  %1760 = ptrtoint ptr %write16.i.i.i693.i to i32
  call void @__asan_load4_noabort(i32 %1760)
  %1761 = load ptr, ptr %write16.i.i.i693.i, align 4
  tail call void %1761(ptr noundef %1757, i16 noundef zeroext 1020, i16 noundef zeroext 2064) #7
  %1762 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1762)
  %1763 = load ptr, ptr %dev, align 4
  %1764 = ptrtoint ptr %1763 to i32
  call void @__asan_load4_noabort(i32 %1764)
  %1765 = load ptr, ptr %1763, align 4
  %write16.i.i2.i694.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1765, i32 0, i32 4
  %1766 = ptrtoint ptr %write16.i.i2.i694.i to i32
  call void @__asan_load4_noabort(i32 %1766)
  %1767 = load ptr, ptr %write16.i.i2.i694.i, align 4
  tail call void %1767(ptr noundef %1763, i16 noundef zeroext 1022, i16 noundef zeroext %call.i.i.i490.i) #7
  %1768 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1768)
  %1769 = load ptr, ptr %dev, align 4
  %1770 = ptrtoint ptr %1769 to i32
  call void @__asan_load4_noabort(i32 %1770)
  %1771 = load ptr, ptr %1769, align 4
  %write16.i.i.i695.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1771, i32 0, i32 4
  %1772 = ptrtoint ptr %write16.i.i.i695.i to i32
  call void @__asan_load4_noabort(i32 %1772)
  %1773 = load ptr, ptr %write16.i.i.i695.i, align 4
  tail call void %1773(ptr noundef %1769, i16 noundef zeroext 1020, i16 noundef zeroext 43) #7
  %1774 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1774)
  %1775 = load ptr, ptr %dev, align 4
  %1776 = ptrtoint ptr %1775 to i32
  call void @__asan_load4_noabort(i32 %1776)
  %1777 = load ptr, ptr %1775, align 4
  %write16.i.i2.i696.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1777, i32 0, i32 4
  %1778 = ptrtoint ptr %write16.i.i2.i696.i to i32
  call void @__asan_load4_noabort(i32 %1778)
  %1779 = load ptr, ptr %write16.i.i2.i696.i, align 4
  tail call void %1779(ptr noundef %1775, i16 noundef zeroext 1022, i16 noundef zeroext %call.i.i.i493.i) #7
  %1780 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1780)
  %1781 = load ptr, ptr %dev, align 4
  %1782 = ptrtoint ptr %1781 to i32
  call void @__asan_load4_noabort(i32 %1782)
  %1783 = load ptr, ptr %1781, align 4
  %write16.i.i.i697.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1783, i32 0, i32 4
  %1784 = ptrtoint ptr %write16.i.i.i697.i to i32
  call void @__asan_load4_noabort(i32 %1784)
  %1785 = load ptr, ptr %write16.i.i.i697.i, align 4
  tail call void %1785(ptr noundef %1781, i16 noundef zeroext 1020, i16 noundef zeroext 21) #7
  %1786 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1786)
  %1787 = load ptr, ptr %dev, align 4
  %1788 = ptrtoint ptr %1787 to i32
  call void @__asan_load4_noabort(i32 %1788)
  %1789 = load ptr, ptr %1787, align 4
  %write16.i.i2.i698.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1789, i32 0, i32 4
  %1790 = ptrtoint ptr %write16.i.i2.i698.i to i32
  call void @__asan_load4_noabort(i32 %1790)
  %1791 = load ptr, ptr %write16.i.i2.i698.i, align 4
  tail call void %1791(ptr noundef %1787, i16 noundef zeroext 1022, i16 noundef zeroext %call.i.i.i496.i) #7
  tail call void @b43legacy_phy_set_baseband_attenuation(ptr noundef %dev, i16 noundef zeroext %721) #7
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 82, i16 noundef zeroext %call32.i) #7
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 67, i16 noundef zeroext %call34.i) #7
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 122, i16 noundef zeroext %call36.i) #7
  %1792 = or i16 %call.i.i.i460.i, 3
  %1793 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1793)
  %1794 = load ptr, ptr %dev, align 4
  %1795 = ptrtoint ptr %1794 to i32
  call void @__asan_load4_noabort(i32 %1795)
  %1796 = load ptr, ptr %1794, align 4
  %write16.i.i.i699.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1796, i32 0, i32 4
  %1797 = ptrtoint ptr %write16.i.i.i699.i to i32
  call void @__asan_load4_noabort(i32 %1797)
  %1798 = load ptr, ptr %write16.i.i.i699.i, align 4
  tail call void %1798(ptr noundef %1794, i16 noundef zeroext 1020, i16 noundef zeroext 2065) #7
  %1799 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1799)
  %1800 = load ptr, ptr %dev, align 4
  %1801 = ptrtoint ptr %1800 to i32
  call void @__asan_load4_noabort(i32 %1801)
  %1802 = load ptr, ptr %1800, align 4
  %write16.i.i2.i700.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1802, i32 0, i32 4
  %1803 = ptrtoint ptr %write16.i.i2.i700.i to i32
  call void @__asan_load4_noabort(i32 %1803)
  %1804 = load ptr, ptr %write16.i.i2.i700.i, align 4
  tail call void %1804(ptr noundef %1800, i16 noundef zeroext 1022, i16 noundef zeroext %1792) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1805 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1805(i32 noundef 2147480) #7
  %1806 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1806)
  %1807 = load ptr, ptr %dev, align 4
  %1808 = ptrtoint ptr %1807 to i32
  call void @__asan_load4_noabort(i32 %1808)
  %1809 = load ptr, ptr %1807, align 4
  %write16.i.i.i701.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1809, i32 0, i32 4
  %1810 = ptrtoint ptr %write16.i.i.i701.i to i32
  call void @__asan_load4_noabort(i32 %1810)
  %1811 = load ptr, ptr %write16.i.i.i701.i, align 4
  tail call void %1811(ptr noundef %1807, i16 noundef zeroext 1020, i16 noundef zeroext 2065) #7
  %1812 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1812)
  %1813 = load ptr, ptr %dev, align 4
  %1814 = ptrtoint ptr %1813 to i32
  call void @__asan_load4_noabort(i32 %1814)
  %1815 = load ptr, ptr %1813, align 4
  %write16.i.i2.i702.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1815, i32 0, i32 4
  %1816 = ptrtoint ptr %write16.i.i2.i702.i to i32
  call void @__asan_load4_noabort(i32 %1816)
  %1817 = load ptr, ptr %write16.i.i2.i702.i, align 4
  tail call void %1817(ptr noundef %1813, i16 noundef zeroext 1022, i16 noundef zeroext %call.i.i.i460.i) #7
  %1818 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1818)
  %1819 = load ptr, ptr %dev, align 4
  %1820 = ptrtoint ptr %1819 to i32
  call void @__asan_load4_noabort(i32 %1820)
  %1821 = load ptr, ptr %1819, align 4
  %write16.i.i.i703.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1821, i32 0, i32 4
  %1822 = ptrtoint ptr %write16.i.i.i703.i to i32
  call void @__asan_load4_noabort(i32 %1822)
  %1823 = load ptr, ptr %write16.i.i.i703.i, align 4
  tail call void %1823(ptr noundef %1819, i16 noundef zeroext 1020, i16 noundef zeroext 2066) #7
  %1824 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1824)
  %1825 = load ptr, ptr %dev, align 4
  %1826 = ptrtoint ptr %1825 to i32
  call void @__asan_load4_noabort(i32 %1826)
  %1827 = load ptr, ptr %1825, align 4
  %write16.i.i2.i704.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1827, i32 0, i32 4
  %1828 = ptrtoint ptr %write16.i.i2.i704.i to i32
  call void @__asan_load4_noabort(i32 %1828)
  %1829 = load ptr, ptr %write16.i.i2.i704.i, align 4
  tail call void %1829(ptr noundef %1825, i16 noundef zeroext 1022, i16 noundef zeroext %call.i.i.i463.i) #7
  %1830 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1830)
  %1831 = load ptr, ptr %dev, align 4
  %1832 = ptrtoint ptr %1831 to i32
  call void @__asan_load4_noabort(i32 %1832)
  %1833 = load ptr, ptr %1831, align 4
  %write16.i.i.i705.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1833, i32 0, i32 4
  %1834 = ptrtoint ptr %write16.i.i.i705.i to i32
  call void @__asan_load4_noabort(i32 %1834)
  %1835 = load ptr, ptr %write16.i.i.i705.i, align 4
  tail call void %1835(ptr noundef %1831, i16 noundef zeroext 1020, i16 noundef zeroext 1065) #7
  %1836 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1836)
  %1837 = load ptr, ptr %dev, align 4
  %1838 = ptrtoint ptr %1837 to i32
  call void @__asan_load4_noabort(i32 %1838)
  %1839 = load ptr, ptr %1837, align 4
  %write16.i.i2.i706.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1839, i32 0, i32 4
  %1840 = ptrtoint ptr %write16.i.i2.i706.i to i32
  call void @__asan_load4_noabort(i32 %1840)
  %1841 = load ptr, ptr %write16.i.i2.i706.i, align 4
  tail call void %1841(ptr noundef %1837, i16 noundef zeroext 1022, i16 noundef zeroext %call.i.i.i.i) #7
  %1842 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1842)
  %1843 = load ptr, ptr %dev, align 4
  %1844 = ptrtoint ptr %1843 to i32
  call void @__asan_load4_noabort(i32 %1844)
  %1845 = load ptr, ptr %1843, align 4
  %write16.i.i.i707.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1845, i32 0, i32 4
  %1846 = ptrtoint ptr %write16.i.i.i707.i to i32
  call void @__asan_load4_noabort(i32 %1846)
  %1847 = load ptr, ptr %write16.i.i.i707.i, align 4
  tail call void %1847(ptr noundef %1843, i16 noundef zeroext 1020, i16 noundef zeroext 1) #7
  %1848 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1848)
  %1849 = load ptr, ptr %dev, align 4
  %1850 = ptrtoint ptr %1849 to i32
  call void @__asan_load4_noabort(i32 %1850)
  %1851 = load ptr, ptr %1849, align 4
  %write16.i.i2.i708.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %1851, i32 0, i32 4
  %1852 = ptrtoint ptr %write16.i.i2.i708.i to i32
  call void @__asan_load4_noabort(i32 %1852)
  %1853 = load ptr, ptr %write16.i.i2.i708.i, align 4
  tail call void %1853(ptr noundef %1849, i16 noundef zeroext 1022, i16 noundef zeroext %call.i.i.i457.i) #7
  %mul.i = mul i16 %i.0.lcssa716.i, 6
  %mul299.neg.i = shl i16 %sub.neg.i, 2
  %sub300.i = add i16 %mul.i, -11
  %sub301.i = add i16 %sub300.i, %mul299.neg.i
  %loopback_gain.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 31
  %1854 = ptrtoint ptr %loopback_gain.i to i32
  call void @__asan_store2_noabort(i32 %1854)
  store i16 %sub301.i, ptr %loopback_gain.i, align 4
  %arrayidx310.i = getelementptr %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 31, i32 1
  %1855 = ptrtoint ptr %arrayidx310.i to i32
  call void @__asan_store2_noabort(i32 %1855)
  store i16 48, ptr %arrayidx310.i, align 2
  br label %if.end79

if.end79:                                         ; preds = %b43legacy_calc_loopback_gain.exit, %land.lhs.true74.if.end79_crit_edge, %if.end69.if.end79_crit_edge
  %1856 = ptrtoint ptr %radio_rev to i32
  call void @__asan_load1_noabort(i32 %1856)
  %1857 = load i8, ptr %radio_rev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %1857)
  %cmp82.not = icmp eq i8 %1857, 8
  br i1 %cmp82.not, label %if.end79.if.end94_crit_edge, label %if.then84

if.end79.if.end94_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94

if.then84:                                        ; preds = %if.end79
  %initval = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 41
  %1858 = ptrtoint ptr %initval to i32
  call void @__asan_load2_noabort(i32 %1858)
  %1859 = load i16, ptr %initval, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %1859)
  %cmp86 = icmp eq i16 %1859, -1
  br i1 %cmp86, label %if.then88, label %if.else91

if.then88:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #9
  %call89 = tail call zeroext i16 @b43legacy_radio_init2050(ptr noundef %dev) #7
  %1860 = ptrtoint ptr %initval to i32
  call void @__asan_store2_noabort(i32 %1860)
  store i16 %call89, ptr %initval, align 4
  br label %if.end94

if.else91:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 120, i16 noundef zeroext %1859) #7
  br label %if.end94

if.end94:                                         ; preds = %if.else91, %if.then88, %if.end79.if.end94_crit_edge
  %txctl2 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 32, i32 3
  %1861 = ptrtoint ptr %txctl2 to i32
  call void @__asan_load2_noabort(i32 %1861)
  %1862 = load i16, ptr %txctl2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %1862)
  %cmp96 = icmp eq i16 %1862, -1
  br i1 %cmp96, label %if.then98, label %if.else99

if.then98:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @b43legacy_phy_lo_g_measure(ptr noundef %dev)
  br label %if.end151

if.else99:                                        ; preds = %if.end94
  %radio_ver = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 8
  %1863 = ptrtoint ptr %radio_ver to i32
  call void @__asan_load2_noabort(i32 %1863)
  %1864 = load i16, ptr %radio_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8272, i16 %1864)
  %cmp101 = icmp eq i16 %1864, 8272
  br i1 %cmp101, label %land.lhs.true103, label %if.else99.if.else114_crit_edge

if.else99.if.else114_crit_edge:                   ; preds = %if.else99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else114

land.lhs.true103:                                 ; preds = %if.else99
  %1865 = ptrtoint ptr %radio_rev to i32
  call void @__asan_load1_noabort(i32 %1865)
  %1866 = load i8, ptr %radio_rev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %1866)
  %cmp106 = icmp eq i8 %1866, 8
  br i1 %cmp106, label %if.then108, label %land.lhs.true103.if.else114_crit_edge

land.lhs.true103.if.else114_crit_edge:            ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else114

if.then108:                                       ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #9
  %txctl1 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 32, i32 2
  %1867 = ptrtoint ptr %txctl1 to i32
  call void @__asan_load2_noabort(i32 %1867)
  %1868 = load i16, ptr %txctl1, align 4
  %shl = shl i16 %1868, 4
  %or112 = or i16 %shl, %1862
  br label %if.end122

if.else114:                                       ; preds = %land.lhs.true103.if.else114_crit_edge, %if.else99.if.else114_crit_edge
  %call115 = tail call zeroext i16 @b43legacy_radio_read16(ptr noundef %dev, i16 noundef zeroext 82) #7
  %1869 = and i16 %call115, -16
  %txctl1118 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 32, i32 2
  %1870 = ptrtoint ptr %txctl1118 to i32
  call void @__asan_load2_noabort(i32 %1870)
  %1871 = load i16, ptr %txctl1118, align 4
  %or120355 = or i16 %1869, %1871
  br label %if.end122

if.end122:                                        ; preds = %if.else114, %if.then108
  %or120355.sink = phi i16 [ %or120355, %if.else114 ], [ %or112, %if.then108 ]
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 82, i16 noundef zeroext %or120355.sink) #7
  %1872 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %1872)
  %1873 = load i8, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %1873)
  %cmp125 = icmp ugt i8 %1873, 5
  br i1 %cmp125, label %if.then127, label %if.end122.if.end136_crit_edge

if.end122.if.end136_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end136

if.then127:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #9
  %1874 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1874)
  %1875 = load ptr, ptr %dev, align 4
  %1876 = ptrtoint ptr %1875 to i32
  call void @__asan_load4_noabort(i32 %1876)
  %1877 = load ptr, ptr %1875, align 4
  %write16.i.i.i400 = getelementptr inbounds %struct.ssb_bus_ops, ptr %1877, i32 0, i32 4
  %1878 = ptrtoint ptr %write16.i.i.i400 to i32
  call void @__asan_load4_noabort(i32 %1878)
  %1879 = load ptr, ptr %write16.i.i.i400, align 4
  tail call void %1879(ptr noundef %1875, i16 noundef zeroext 1020, i16 noundef zeroext 54) #7
  %1880 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1880)
  %1881 = load ptr, ptr %dev, align 4
  %1882 = ptrtoint ptr %1881 to i32
  call void @__asan_load4_noabort(i32 %1882)
  %1883 = load ptr, ptr %1881, align 4
  %read16.i.i.i401 = getelementptr inbounds %struct.ssb_bus_ops, ptr %1883, i32 0, i32 1
  %1884 = ptrtoint ptr %read16.i.i.i401 to i32
  call void @__asan_load4_noabort(i32 %1884)
  %1885 = load ptr, ptr %read16.i.i.i401, align 4
  %call.i.i.i402 = tail call zeroext i16 %1885(ptr noundef %1881, i16 noundef zeroext 1022) #7
  %1886 = and i16 %call.i.i.i402, 4095
  %1887 = ptrtoint ptr %txctl2 to i32
  call void @__asan_load2_noabort(i32 %1887)
  %1888 = load i16, ptr %txctl2, align 2
  %shl133 = shl i16 %1888, 12
  %or134 = or i16 %shl133, %1886
  %1889 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1889)
  %1890 = load ptr, ptr %dev, align 4
  %1891 = ptrtoint ptr %1890 to i32
  call void @__asan_load4_noabort(i32 %1891)
  %1892 = load ptr, ptr %1890, align 4
  %write16.i.i.i403 = getelementptr inbounds %struct.ssb_bus_ops, ptr %1892, i32 0, i32 4
  %1893 = ptrtoint ptr %write16.i.i.i403 to i32
  call void @__asan_load4_noabort(i32 %1893)
  %1894 = load ptr, ptr %write16.i.i.i403, align 4
  tail call void %1894(ptr noundef %1890, i16 noundef zeroext 1020, i16 noundef zeroext 54) #7
  %1895 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1895)
  %1896 = load ptr, ptr %dev, align 4
  %1897 = ptrtoint ptr %1896 to i32
  call void @__asan_load4_noabort(i32 %1897)
  %1898 = load ptr, ptr %1896, align 4
  %write16.i.i2.i404 = getelementptr inbounds %struct.ssb_bus_ops, ptr %1898, i32 0, i32 4
  %1899 = ptrtoint ptr %write16.i.i2.i404 to i32
  call void @__asan_load4_noabort(i32 %1899)
  %1900 = load ptr, ptr %write16.i.i2.i404, align 4
  tail call void %1900(ptr noundef %1896, i16 noundef zeroext 1022, i16 noundef zeroext %or134) #7
  br label %if.end136

if.end136:                                        ; preds = %if.then127, %if.end122.if.end136_crit_edge
  %1901 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1901)
  %1902 = load ptr, ptr %dev, align 4
  %bus = getelementptr inbounds %struct.ssb_device, ptr %1902, i32 0, i32 3
  %1903 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %1903)
  %1904 = load ptr, ptr %bus, align 4
  %boardflags_lo = getelementptr inbounds %struct.ssb_bus, ptr %1904, i32 0, i32 22, i32 70
  %1905 = ptrtoint ptr %boardflags_lo to i32
  call void @__asan_load2_noabort(i32 %1905)
  %1906 = load i16, ptr %boardflags_lo, align 4
  %1907 = and i16 %1906, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1907)
  %tobool140.not = icmp eq i16 %1907, 0
  %1908 = ptrtoint ptr %1902 to i32
  call void @__asan_load4_noabort(i32 %1908)
  %1909 = load ptr, ptr %1902, align 4
  %write16.i.i.i407 = getelementptr inbounds %struct.ssb_bus_ops, ptr %1909, i32 0, i32 4
  %1910 = ptrtoint ptr %write16.i.i.i407 to i32
  call void @__asan_load4_noabort(i32 %1910)
  %1911 = load ptr, ptr %write16.i.i.i407, align 4
  tail call void %1911(ptr noundef %1902, i16 noundef zeroext 1020, i16 noundef zeroext 46) #7
  %1912 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1912)
  %1913 = load ptr, ptr %dev, align 4
  %1914 = ptrtoint ptr %1913 to i32
  call void @__asan_load4_noabort(i32 %1914)
  %1915 = load ptr, ptr %1913, align 4
  %write16.i.i2.i408 = getelementptr inbounds %struct.ssb_bus_ops, ptr %1915, i32 0, i32 4
  %1916 = ptrtoint ptr %write16.i.i2.i408 to i32
  call void @__asan_load4_noabort(i32 %1916)
  %1917 = load ptr, ptr %write16.i.i2.i408, align 4
  %. = select i1 %tobool140.not, i16 -32641, i16 -32651
  tail call void %1917(ptr noundef %1913, i16 noundef zeroext 1022, i16 noundef zeroext %.) #7
  %1918 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %1918)
  %1919 = load i8, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1919)
  %cmp146 = icmp ult i8 %1919, 2
  %1920 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1920)
  %1921 = load ptr, ptr %dev, align 4
  %1922 = ptrtoint ptr %1921 to i32
  call void @__asan_load4_noabort(i32 %1922)
  %1923 = load ptr, ptr %1921, align 4
  %write16.i.i.i409 = getelementptr inbounds %struct.ssb_bus_ops, ptr %1923, i32 0, i32 4
  %1924 = ptrtoint ptr %write16.i.i.i409 to i32
  call void @__asan_load4_noabort(i32 %1924)
  %1925 = load ptr, ptr %write16.i.i.i409, align 4
  tail call void %1925(ptr noundef %1921, i16 noundef zeroext 1020, i16 noundef zeroext 47) #7
  %1926 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1926)
  %1927 = load ptr, ptr %dev, align 4
  %1928 = ptrtoint ptr %1927 to i32
  call void @__asan_load4_noabort(i32 %1928)
  %1929 = load ptr, ptr %1927, align 4
  %write16.i.i2.i410 = getelementptr inbounds %struct.ssb_bus_ops, ptr %1929, i32 0, i32 4
  %1930 = ptrtoint ptr %write16.i.i2.i410 to i32
  call void @__asan_load4_noabort(i32 %1930)
  %1931 = load ptr, ptr %write16.i.i2.i410, align 4
  br i1 %cmp146, label %if.then148, label %if.else149

if.then148:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %1931(ptr noundef %1927, i16 noundef zeroext 1022, i16 noundef zeroext 257) #7
  br label %if.end151

if.else149:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %1931(ptr noundef %1927, i16 noundef zeroext 1022, i16 noundef zeroext 514) #7
  br label %if.end151

if.end151:                                        ; preds = %if.else149, %if.then148, %if.then98
  %1932 = ptrtoint ptr %gmode28 to i32
  call void @__asan_load1_noabort(i32 %1932)
  %1933 = load i8, ptr %gmode28, align 1, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1933)
  %tobool153.not = icmp eq i8 %1933, 0
  br i1 %tobool153.not, label %if.end151.if.end155_crit_edge, label %if.then154

if.end151.if.end155_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end155

if.then154:                                       ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @b43legacy_phy_lo_adjust(ptr noundef %dev, i32 noundef 0)
  %1934 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1934)
  %1935 = load ptr, ptr %dev, align 4
  %1936 = ptrtoint ptr %1935 to i32
  call void @__asan_load4_noabort(i32 %1936)
  %1937 = load ptr, ptr %1935, align 4
  %write16.i.i.i413 = getelementptr inbounds %struct.ssb_bus_ops, ptr %1937, i32 0, i32 4
  %1938 = ptrtoint ptr %write16.i.i.i413 to i32
  call void @__asan_load4_noabort(i32 %1938)
  %1939 = load ptr, ptr %write16.i.i.i413, align 4
  tail call void %1939(ptr noundef %1935, i16 noundef zeroext 1020, i16 noundef zeroext 2063) #7
  %1940 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1940)
  %1941 = load ptr, ptr %dev, align 4
  %1942 = ptrtoint ptr %1941 to i32
  call void @__asan_load4_noabort(i32 %1942)
  %1943 = load ptr, ptr %1941, align 4
  %write16.i.i2.i414 = getelementptr inbounds %struct.ssb_bus_ops, ptr %1943, i32 0, i32 4
  %1944 = ptrtoint ptr %write16.i.i2.i414 to i32
  call void @__asan_load4_noabort(i32 %1944)
  %1945 = load ptr, ptr %write16.i.i2.i414, align 4
  tail call void %1945(ptr noundef %1941, i16 noundef zeroext 1022, i16 noundef zeroext -32648) #7
  br label %if.end155

if.end155:                                        ; preds = %if.then154, %if.end151.if.end155_crit_edge
  %1946 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1946)
  %1947 = load ptr, ptr %dev, align 4
  %bus157 = getelementptr inbounds %struct.ssb_device, ptr %1947, i32 0, i32 3
  %1948 = ptrtoint ptr %bus157 to i32
  call void @__asan_load4_noabort(i32 %1948)
  %1949 = load ptr, ptr %bus157, align 4
  %boardflags_lo159 = getelementptr inbounds %struct.ssb_bus, ptr %1949, i32 0, i32 22, i32 70
  %1950 = ptrtoint ptr %boardflags_lo159 to i32
  call void @__asan_load2_noabort(i32 %1950)
  %1951 = load i16, ptr %boardflags_lo159, align 4
  %1952 = and i16 %1951, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1952)
  %tobool162.not = icmp eq i16 %1952, 0
  br i1 %tobool162.not, label %if.then163, label %if.else164

if.then163:                                       ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @b43legacy_nrssi_hw_update(ptr noundef %dev, i16 noundef zeroext -1) #7
  tail call void @b43legacy_calc_nrssi_threshold(ptr noundef %dev) #7
  br label %if.end243

if.else164:                                       ; preds = %if.end155
  %1953 = ptrtoint ptr %gmode28 to i32
  call void @__asan_load1_noabort(i32 %1953)
  %1954 = load i8, ptr %gmode28, align 1, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1954)
  %tobool166.not = icmp eq i8 %1954, 0
  br i1 %tobool166.not, label %lor.lhs.false168, label %if.else164.if.then173_crit_edge

if.else164.if.then173_crit_edge:                  ; preds = %if.else164
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then173

lor.lhs.false168:                                 ; preds = %if.else164
  %1955 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %1955)
  %1956 = load i8, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1956)
  %cmp171 = icmp ugt i8 %1956, 1
  br i1 %cmp171, label %lor.lhs.false168.if.then173_crit_edge, label %lor.lhs.false168.if.end243_crit_edge

lor.lhs.false168.if.end243_crit_edge:             ; preds = %lor.lhs.false168
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end243

lor.lhs.false168.if.then173_crit_edge:            ; preds = %lor.lhs.false168
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then173

if.then173:                                       ; preds = %lor.lhs.false168.if.then173_crit_edge, %if.else164.if.then173_crit_edge
  %nrssi = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 36
  %1957 = ptrtoint ptr %nrssi to i32
  call void @__asan_load2_noabort(i32 %1957)
  %1958 = load i16, ptr %nrssi, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1000, i16 %1958)
  %cmp175 = icmp eq i16 %1958, -1000
  %arrayidx179 = getelementptr %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 36, i32 1
  %1959 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_load2_noabort(i32 %1959)
  %1960 = load i16, ptr %arrayidx179, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1000, i16 %1960)
  %cmp181.not = icmp eq i16 %1960, -1000
  br i1 %cmp175, label %if.then177, label %if.else205

if.then177:                                       ; preds = %if.then173
  br i1 %cmp181.not, label %if.then177.if.end197_crit_edge, label %do.end, !prof !56

if.then177.if.end197_crit_edge:                   ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end197

do.end:                                           ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1080, i32 noundef 9, ptr noundef null) #7
  br label %if.end197

if.end197:                                        ; preds = %do.end, %if.then177.if.end197_crit_edge
  tail call void @b43legacy_calc_nrssi_slope(ptr noundef %dev) #7
  br label %if.end243

if.else205:                                       ; preds = %if.then173
  br i1 %cmp181.not, label %do.end227, label %if.else205.if.end233_crit_edge, !prof !57

if.else205.if.end233_crit_edge:                   ; preds = %if.else205
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end233

do.end227:                                        ; preds = %if.else205
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1083, i32 noundef 9, ptr noundef null) #7
  br label %if.end233

if.end233:                                        ; preds = %do.end227, %if.else205.if.end233_crit_edge
  tail call void @b43legacy_calc_nrssi_threshold(ptr noundef %dev) #7
  br label %if.end243

if.end243:                                        ; preds = %if.end233, %if.end197, %lor.lhs.false168.if.end243_crit_edge, %if.then163
  %1961 = ptrtoint ptr %radio_rev to i32
  call void @__asan_load1_noabort(i32 %1961)
  %1962 = load i8, ptr %radio_rev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %1962)
  %cmp246 = icmp eq i8 %1962, 8
  br i1 %cmp246, label %if.then248, label %if.end243.if.end249_crit_edge

if.end243.if.end249_crit_edge:                    ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end249

if.then248:                                       ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #9
  %1963 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1963)
  %1964 = load ptr, ptr %dev, align 4
  %1965 = ptrtoint ptr %1964 to i32
  call void @__asan_load4_noabort(i32 %1965)
  %1966 = load ptr, ptr %1964, align 4
  %write16.i.i.i415 = getelementptr inbounds %struct.ssb_bus_ops, ptr %1966, i32 0, i32 4
  %1967 = ptrtoint ptr %write16.i.i.i415 to i32
  call void @__asan_load4_noabort(i32 %1967)
  %1968 = load ptr, ptr %write16.i.i.i415, align 4
  tail call void %1968(ptr noundef %1964, i16 noundef zeroext 1020, i16 noundef zeroext 2053) #7
  %1969 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1969)
  %1970 = load ptr, ptr %dev, align 4
  %1971 = ptrtoint ptr %1970 to i32
  call void @__asan_load4_noabort(i32 %1971)
  %1972 = load ptr, ptr %1970, align 4
  %write16.i.i2.i416 = getelementptr inbounds %struct.ssb_bus_ops, ptr %1972, i32 0, i32 4
  %1973 = ptrtoint ptr %write16.i.i2.i416 to i32
  call void @__asan_load4_noabort(i32 %1973)
  %1974 = load ptr, ptr %write16.i.i2.i416, align 4
  tail call void %1974(ptr noundef %1970, i16 noundef zeroext 1022, i16 noundef zeroext 12848) #7
  br label %if.end249

if.end249:                                        ; preds = %if.then248, %if.end243.if.end249_crit_edge
  tail call fastcc void @b43legacy_phy_init_pctl(ptr noundef %dev)
  %1975 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1975)
  %1976 = load ptr, ptr %dev, align 4
  %bus251 = getelementptr inbounds %struct.ssb_device, ptr %1976, i32 0, i32 3
  %1977 = ptrtoint ptr %bus251 to i32
  call void @__asan_load4_noabort(i32 %1977)
  %1978 = load ptr, ptr %bus251, align 4
  %chip_id = getelementptr inbounds %struct.ssb_bus, ptr %1978, i32 0, i32 9
  %1979 = ptrtoint ptr %chip_id to i32
  call void @__asan_load2_noabort(i32 %1979)
  %1980 = load i16, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 17158, i16 %1980)
  %cmp253 = icmp eq i16 %1980, 17158
  br i1 %cmp253, label %land.lhs.true255, label %if.end249.if.end270_crit_edge

if.end249.if.end270_crit_edge:                    ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end270

land.lhs.true255:                                 ; preds = %if.end249
  %chip_package = getelementptr inbounds %struct.ssb_bus, ptr %1978, i32 0, i32 13
  %1981 = ptrtoint ptr %chip_package to i32
  call void @__asan_load1_noabort(i32 %1981)
  %1982 = load i8, ptr %chip_package, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1982)
  %cmp259 = icmp eq i8 %1982, 2
  br i1 %cmp259, label %if.then261, label %land.lhs.true255.if.end270_crit_edge

land.lhs.true255.if.end270_crit_edge:             ; preds = %land.lhs.true255
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end270

if.then261:                                       ; preds = %land.lhs.true255
  call void @__sanitizer_cov_trace_pc() #9
  %1983 = ptrtoint ptr %1976 to i32
  call void @__asan_load4_noabort(i32 %1983)
  %1984 = load ptr, ptr %1976, align 4
  %write16.i.i.i417 = getelementptr inbounds %struct.ssb_bus_ops, ptr %1984, i32 0, i32 4
  %1985 = ptrtoint ptr %write16.i.i.i417 to i32
  call void @__asan_load4_noabort(i32 %1985)
  %1986 = load ptr, ptr %write16.i.i.i417, align 4
  tail call void %1986(ptr noundef %1976, i16 noundef zeroext 1020, i16 noundef zeroext 1065) #7
  %1987 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1987)
  %1988 = load ptr, ptr %dev, align 4
  %1989 = ptrtoint ptr %1988 to i32
  call void @__asan_load4_noabort(i32 %1989)
  %1990 = load ptr, ptr %1988, align 4
  %read16.i.i.i418 = getelementptr inbounds %struct.ssb_bus_ops, ptr %1990, i32 0, i32 1
  %1991 = ptrtoint ptr %read16.i.i.i418 to i32
  call void @__asan_load4_noabort(i32 %1991)
  %1992 = load ptr, ptr %read16.i.i.i418, align 4
  %call.i.i.i419 = tail call zeroext i16 %1992(ptr noundef %1988, i16 noundef zeroext 1022) #7
  %1993 = and i16 %call.i.i.i419, -16385
  %1994 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1994)
  %1995 = load ptr, ptr %dev, align 4
  %1996 = ptrtoint ptr %1995 to i32
  call void @__asan_load4_noabort(i32 %1996)
  %1997 = load ptr, ptr %1995, align 4
  %write16.i.i.i420 = getelementptr inbounds %struct.ssb_bus_ops, ptr %1997, i32 0, i32 4
  %1998 = ptrtoint ptr %write16.i.i.i420 to i32
  call void @__asan_load4_noabort(i32 %1998)
  %1999 = load ptr, ptr %write16.i.i.i420, align 4
  tail call void %1999(ptr noundef %1995, i16 noundef zeroext 1020, i16 noundef zeroext 1065) #7
  %2000 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2000)
  %2001 = load ptr, ptr %dev, align 4
  %2002 = ptrtoint ptr %2001 to i32
  call void @__asan_load4_noabort(i32 %2002)
  %2003 = load ptr, ptr %2001, align 4
  %write16.i.i2.i421 = getelementptr inbounds %struct.ssb_bus_ops, ptr %2003, i32 0, i32 4
  %2004 = ptrtoint ptr %write16.i.i2.i421 to i32
  call void @__asan_load4_noabort(i32 %2004)
  %2005 = load ptr, ptr %write16.i.i2.i421, align 4
  tail call void %2005(ptr noundef %2001, i16 noundef zeroext 1022, i16 noundef zeroext %1993) #7
  %2006 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2006)
  %2007 = load ptr, ptr %dev, align 4
  %2008 = ptrtoint ptr %2007 to i32
  call void @__asan_load4_noabort(i32 %2008)
  %2009 = load ptr, ptr %2007, align 4
  %write16.i.i.i422 = getelementptr inbounds %struct.ssb_bus_ops, ptr %2009, i32 0, i32 4
  %2010 = ptrtoint ptr %write16.i.i.i422 to i32
  call void @__asan_load4_noabort(i32 %2010)
  %2011 = load ptr, ptr %write16.i.i.i422, align 4
  tail call void %2011(ptr noundef %2007, i16 noundef zeroext 1020, i16 noundef zeroext 1219) #7
  %2012 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2012)
  %2013 = load ptr, ptr %dev, align 4
  %2014 = ptrtoint ptr %2013 to i32
  call void @__asan_load4_noabort(i32 %2014)
  %2015 = load ptr, ptr %2013, align 4
  %read16.i.i.i423 = getelementptr inbounds %struct.ssb_bus_ops, ptr %2015, i32 0, i32 1
  %2016 = ptrtoint ptr %read16.i.i.i423 to i32
  call void @__asan_load4_noabort(i32 %2016)
  %2017 = load ptr, ptr %read16.i.i.i423, align 4
  %call.i.i.i424 = tail call zeroext i16 %2017(ptr noundef %2013, i16 noundef zeroext 1022) #7
  %2018 = and i16 %call.i.i.i424, 32767
  %2019 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2019)
  %2020 = load ptr, ptr %dev, align 4
  %2021 = ptrtoint ptr %2020 to i32
  call void @__asan_load4_noabort(i32 %2021)
  %2022 = load ptr, ptr %2020, align 4
  %write16.i.i.i425 = getelementptr inbounds %struct.ssb_bus_ops, ptr %2022, i32 0, i32 4
  %2023 = ptrtoint ptr %write16.i.i.i425 to i32
  call void @__asan_load4_noabort(i32 %2023)
  %2024 = load ptr, ptr %write16.i.i.i425, align 4
  tail call void %2024(ptr noundef %2020, i16 noundef zeroext 1020, i16 noundef zeroext 1219) #7
  %2025 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2025)
  %2026 = load ptr, ptr %dev, align 4
  %2027 = ptrtoint ptr %2026 to i32
  call void @__asan_load4_noabort(i32 %2027)
  %2028 = load ptr, ptr %2026, align 4
  %write16.i.i2.i426 = getelementptr inbounds %struct.ssb_bus_ops, ptr %2028, i32 0, i32 4
  %2029 = ptrtoint ptr %write16.i.i2.i426 to i32
  call void @__asan_load4_noabort(i32 %2029)
  %2030 = load ptr, ptr %write16.i.i2.i426, align 4
  tail call void %2030(ptr noundef %2026, i16 noundef zeroext 1022, i16 noundef zeroext %2018) #7
  br label %if.end270

if.end270:                                        ; preds = %if.then261, %land.lhs.true255.if.end270_crit_edge, %if.end249.if.end270_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43legacy_phy_lo_b_measure(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %write16.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write16.i.i.i, align 4
  tail call void %5(ptr noundef %1, i16 noundef zeroext 1020, i16 noundef zeroext 21) #7
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %read16.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %read16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read16.i.i.i, align 4
  %call.i.i.i = tail call zeroext i16 %11(ptr noundef %7, i16 noundef zeroext 1022) #7
  %call2 = tail call zeroext i16 @b43legacy_radio_read16(ptr noundef %dev, i16 noundef zeroext 82) #7
  %12 = and i16 %call2, -16
  %radio_ver = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 8
  %13 = ptrtoint ptr %radio_ver to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %radio_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8275, i16 %14)
  %cmp = icmp eq i16 %14, 8275
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %write16.i.i.i235 = getelementptr inbounds %struct.ssb_bus_ops, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %write16.i.i.i235 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write16.i.i.i235, align 4
  tail call void %20(ptr noundef %16, i16 noundef zeroext 1020, i16 noundef zeroext 10) #7
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %read16.i.i.i236 = getelementptr inbounds %struct.ssb_bus_ops, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %read16.i.i.i236 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read16.i.i.i236, align 4
  %call.i.i.i237 = tail call zeroext i16 %26(ptr noundef %22, i16 noundef zeroext 1022) #7
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %write16.i.i.i238 = getelementptr inbounds %struct.ssb_bus_ops, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %write16.i.i.i238 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write16.i.i.i238, align 4
  tail call void %32(ptr noundef %28, i16 noundef zeroext 1020, i16 noundef zeroext 42) #7
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %read16.i.i.i239 = getelementptr inbounds %struct.ssb_bus_ops, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %read16.i.i.i239 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read16.i.i.i239, align 4
  %call.i.i.i240 = tail call zeroext i16 %38(ptr noundef %34, i16 noundef zeroext 1022) #7
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %write16.i.i.i241 = getelementptr inbounds %struct.ssb_bus_ops, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %write16.i.i.i241 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write16.i.i.i241, align 4
  tail call void %44(ptr noundef %40, i16 noundef zeroext 1020, i16 noundef zeroext 53) #7
  %45 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %read16.i.i.i242 = getelementptr inbounds %struct.ssb_bus_ops, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %read16.i.i.i242 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %read16.i.i.i242, align 4
  %call.i.i.i243 = tail call zeroext i16 %50(ptr noundef %46, i16 noundef zeroext 1022) #7
  %51 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %write16.i.i.i244 = getelementptr inbounds %struct.ssb_bus_ops, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %write16.i.i.i244 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write16.i.i.i244, align 4
  tail call void %56(ptr noundef %52, i16 noundef zeroext 1020, i16 noundef zeroext 3) #7
  %57 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %read16.i.i.i245 = getelementptr inbounds %struct.ssb_bus_ops, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %read16.i.i.i245 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %read16.i.i.i245, align 4
  %call.i.i.i246 = tail call zeroext i16 %62(ptr noundef %58, i16 noundef zeroext 1022) #7
  %63 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %write16.i.i.i247 = getelementptr inbounds %struct.ssb_bus_ops, ptr %66, i32 0, i32 4
  %67 = ptrtoint ptr %write16.i.i.i247 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %write16.i.i.i247, align 4
  tail call void %68(ptr noundef %64, i16 noundef zeroext 1020, i16 noundef zeroext 1) #7
  %69 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %read16.i.i.i248 = getelementptr inbounds %struct.ssb_bus_ops, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %read16.i.i.i248 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %read16.i.i.i248, align 4
  %call.i.i.i249 = tail call zeroext i16 %74(ptr noundef %70, i16 noundef zeroext 1022) #7
  %75 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 4
  %write16.i.i.i250 = getelementptr inbounds %struct.ssb_bus_ops, ptr %78, i32 0, i32 4
  %79 = ptrtoint ptr %write16.i.i.i250 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %write16.i.i.i250, align 4
  tail call void %80(ptr noundef %76, i16 noundef zeroext 1020, i16 noundef zeroext 48) #7
  %81 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 4
  %read16.i.i.i251 = getelementptr inbounds %struct.ssb_bus_ops, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %read16.i.i.i251 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %read16.i.i.i251, align 4
  %call.i.i.i252 = tail call zeroext i16 %86(ptr noundef %82, i16 noundef zeroext 1022) #7
  %call19 = tail call zeroext i16 @b43legacy_radio_read16(ptr noundef %dev, i16 noundef zeroext 67) #7
  %call21 = tail call zeroext i16 @b43legacy_radio_read16(ptr noundef %dev, i16 noundef zeroext 122) #7
  %87 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 4
  %read16.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %read16.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %read16.i.i, align 4
  %call.i.i = tail call zeroext i16 %92(ptr noundef %88, i16 noundef zeroext 1004) #7
  %call25 = tail call zeroext i16 @b43legacy_radio_read16(ptr noundef %dev, i16 noundef zeroext 82) #7
  %and27 = and i16 %call25, 240
  %93 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 4
  %write16.i.i.i253 = getelementptr inbounds %struct.ssb_bus_ops, ptr %96, i32 0, i32 4
  %97 = ptrtoint ptr %write16.i.i.i253 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %write16.i.i.i253, align 4
  tail call void %98(ptr noundef %94, i16 noundef zeroext 1020, i16 noundef zeroext 48) #7
  %99 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %100, align 4
  %write16.i.i2.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %102, i32 0, i32 4
  %103 = ptrtoint ptr %write16.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %write16.i.i2.i, align 4
  tail call void %104(ptr noundef %100, i16 noundef zeroext 1022, i16 noundef zeroext 255) #7
  %105 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %106, align 4
  %write16.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %108, i32 0, i32 4
  %109 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %write16.i.i, align 4
  tail call void %110(ptr noundef %106, i16 noundef zeroext 1004, i16 noundef zeroext 16191) #7
  %111 = and i16 %call.i.i.i243, -129
  %112 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev, align 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %113, align 4
  %write16.i.i.i254 = getelementptr inbounds %struct.ssb_bus_ops, ptr %115, i32 0, i32 4
  %116 = ptrtoint ptr %write16.i.i.i254 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %write16.i.i.i254, align 4
  tail call void %117(ptr noundef %113, i16 noundef zeroext 1020, i16 noundef zeroext 53) #7
  %118 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev, align 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %119, align 4
  %write16.i.i2.i255 = getelementptr inbounds %struct.ssb_bus_ops, ptr %121, i32 0, i32 4
  %122 = ptrtoint ptr %write16.i.i2.i255 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %write16.i.i2.i255, align 4
  tail call void %123(ptr noundef %119, i16 noundef zeroext 1022, i16 noundef zeroext %111) #7
  %124 = and i16 %call21, -16
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 122, i16 noundef zeroext %124) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %regstack.sroa.9.0 = phi i16 [ %call.i.i.i237, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %regstack.sroa.11.0 = phi i16 [ %call.i.i.i240, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %regstack.sroa.13.0 = phi i16 [ %call.i.i.i243, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %regstack.sroa.16.0 = phi i16 [ %call.i.i.i246, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %regstack.sroa.18.0 = phi i16 [ %call.i.i.i249, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %regstack.sroa.20.0 = phi i16 [ %call.i.i.i252, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %regstack.sroa.22.0 = phi i16 [ %call19, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %regstack.sroa.24.0 = phi i16 [ %call21, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %regstack.sroa.27.0 = phi i16 [ %call.i.i, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %regstack.sroa.29.0 = phi i16 [ %and27, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %125 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev, align 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %126, align 4
  %write16.i.i.i256 = getelementptr inbounds %struct.ssb_bus_ops, ptr %128, i32 0, i32 4
  %129 = ptrtoint ptr %write16.i.i.i256 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %write16.i.i.i256, align 4
  tail call void %130(ptr noundef %126, i16 noundef zeroext 1020, i16 noundef zeroext 21) #7
  %131 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dev, align 4
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %132, align 4
  %write16.i.i2.i257 = getelementptr inbounds %struct.ssb_bus_ops, ptr %134, i32 0, i32 4
  %135 = ptrtoint ptr %write16.i.i2.i257 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %write16.i.i2.i257, align 4
  tail call void %136(ptr noundef %132, i16 noundef zeroext 1022, i16 noundef zeroext -20480) #7
  %137 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dev, align 4
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %138, align 4
  %write16.i.i.i258 = getelementptr inbounds %struct.ssb_bus_ops, ptr %140, i32 0, i32 4
  %141 = ptrtoint ptr %write16.i.i.i258 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %write16.i.i.i258, align 4
  tail call void %142(ptr noundef %138, i16 noundef zeroext 1020, i16 noundef zeroext 43) #7
  %143 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dev, align 4
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %144, align 4
  %write16.i.i2.i259 = getelementptr inbounds %struct.ssb_bus_ops, ptr %146, i32 0, i32 4
  %147 = ptrtoint ptr %write16.i.i2.i259 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %write16.i.i2.i259, align 4
  tail call void %148(ptr noundef %144, i16 noundef zeroext 1022, i16 noundef zeroext 4) #7
  %149 = ptrtoint ptr %radio_ver to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %radio_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8275, i16 %150)
  %cmp40 = icmp eq i16 %150, 8275
  br i1 %cmp40, label %if.then42, label %if.end.if.end43_crit_edge

if.end.if.end43_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then42:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %151 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %dev, align 4
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %152, align 4
  %write16.i.i.i260 = getelementptr inbounds %struct.ssb_bus_ops, ptr %154, i32 0, i32 4
  %155 = ptrtoint ptr %write16.i.i.i260 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %write16.i.i.i260, align 4
  tail call void %156(ptr noundef %152, i16 noundef zeroext 1020, i16 noundef zeroext 43) #7
  %157 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %dev, align 4
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %158, align 4
  %write16.i.i2.i261 = getelementptr inbounds %struct.ssb_bus_ops, ptr %160, i32 0, i32 4
  %161 = ptrtoint ptr %write16.i.i2.i261 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %write16.i.i2.i261, align 4
  tail call void %162(ptr noundef %158, i16 noundef zeroext 1022, i16 noundef zeroext 515) #7
  %163 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %dev, align 4
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %164, align 4
  %write16.i.i.i262 = getelementptr inbounds %struct.ssb_bus_ops, ptr %166, i32 0, i32 4
  %167 = ptrtoint ptr %write16.i.i.i262 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %write16.i.i.i262, align 4
  tail call void %168(ptr noundef %164, i16 noundef zeroext 1020, i16 noundef zeroext 42) #7
  %169 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %dev, align 4
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %170, align 4
  %write16.i.i2.i263 = getelementptr inbounds %struct.ssb_bus_ops, ptr %172, i32 0, i32 4
  %173 = ptrtoint ptr %write16.i.i2.i263 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %write16.i.i2.i263, align 4
  tail call void %174(ptr noundef %170, i16 noundef zeroext 1022, i16 noundef zeroext 2211) #7
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end.if.end43_crit_edge
  %minlowsig = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 17
  %175 = ptrtoint ptr %minlowsig to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 -1, ptr %minlowsig, align 4
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 82, i16 noundef zeroext %12) #7
  %call50 = tail call fastcc zeroext i16 @b43legacy_phy_lo_b_r15_loop(ptr noundef %dev)
  %conv49.1 = or i16 %12, 1
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 82, i16 noundef zeroext %conv49.1) #7
  %call50.1 = tail call fastcc zeroext i16 @b43legacy_phy_lo_b_r15_loop(ptr noundef %dev)
  %conv49.2 = or i16 %12, 2
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 82, i16 noundef zeroext %conv49.2) #7
  %call50.2 = tail call fastcc zeroext i16 @b43legacy_phy_lo_b_r15_loop(ptr noundef %dev)
  %conv49.3 = or i16 %12, 3
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 82, i16 noundef zeroext %conv49.3) #7
  %call50.3 = tail call fastcc zeroext i16 @b43legacy_phy_lo_b_r15_loop(ptr noundef %dev)
  %minlowsigpos = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 18
  br label %for.body54

for.body54:                                       ; preds = %for.inc74.for.body54_crit_edge, %if.end43
  %i.1284 = phi i32 [ 0, %if.end43 ], [ %inc75, %for.inc74.for.body54_crit_edge ]
  %176 = trunc i32 %i.1284 to i16
  %conv58 = or i16 %12, %176
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 82, i16 noundef zeroext %conv58) #7
  %call59 = tail call fastcc zeroext i16 @b43legacy_phy_lo_b_r15_loop(ptr noundef %dev)
  %177 = udiv i16 %call59, 10
  %178 = ptrtoint ptr %minlowsig to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %minlowsig, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %177, i16 %179)
  %cmp66 = icmp ult i16 %177, %179
  br i1 %cmp66, label %if.then68, label %for.body54.for.inc74_crit_edge

for.body54.for.inc74_crit_edge:                   ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc74

if.then68:                                        ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #9
  %180 = ptrtoint ptr %minlowsig to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 %177, ptr %minlowsig, align 4
  %181 = ptrtoint ptr %minlowsigpos to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 %176, ptr %minlowsigpos, align 4
  br label %for.inc74

for.inc74:                                        ; preds = %if.then68, %for.body54.for.inc74_crit_edge
  %inc75 = add nuw nsw i32 %i.1284, 1
  %exitcond.not = icmp eq i32 %inc75, 10
  br i1 %exitcond.not, label %for.end76, label %for.inc74.for.body54_crit_edge

for.inc74.for.body54_crit_edge:                   ; preds = %for.inc74
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body54

for.end76:                                        ; preds = %for.inc74
  %182 = ptrtoint ptr %minlowsigpos to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %minlowsigpos, align 4
  %or82234 = or i16 %183, %12
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 82, i16 noundef zeroext %or82234) #7
  %arrayidx85 = getelementptr %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 17, i32 1
  %184 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 -1, ptr %arrayidx85, align 2
  %arrayidx117 = getelementptr %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 18, i32 1
  br label %for.cond90.preheader

for.cond90.preheader:                             ; preds = %for.inc119.4.for.cond90.preheader_crit_edge, %for.end76
  %i.2286 = phi i32 [ -4, %for.end76 ], [ %add123, %for.inc119.4.for.cond90.preheader_crit_edge ]
  %mul = shl i32 %i.2286, 8
  %185 = trunc i32 %mul to i16
  %fval.0 = or i16 %185, 252
  %186 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %dev, align 4
  %188 = ptrtoint ptr %187 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %187, align 4
  %write16.i.i.i264 = getelementptr inbounds %struct.ssb_bus_ops, ptr %189, i32 0, i32 4
  %190 = ptrtoint ptr %write16.i.i.i264 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %write16.i.i.i264, align 4
  tail call void %191(ptr noundef %187, i16 noundef zeroext 1020, i16 noundef zeroext 47) #7
  %192 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %dev, align 4
  %194 = ptrtoint ptr %193 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %193, align 4
  %write16.i.i2.i265 = getelementptr inbounds %struct.ssb_bus_ops, ptr %195, i32 0, i32 4
  %196 = ptrtoint ptr %write16.i.i2.i265 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %write16.i.i2.i265, align 4
  tail call void %197(ptr noundef %193, i16 noundef zeroext 1022, i16 noundef zeroext %fval.0) #7
  %call103 = tail call fastcc zeroext i16 @b43legacy_phy_lo_b_r15_loop(ptr noundef %dev)
  %198 = udiv i16 %call103, 10
  %199 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %arrayidx85, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %198, i16 %200)
  %cmp111 = icmp ult i16 %198, %200
  br i1 %cmp111, label %if.then113, label %for.cond90.preheader.for.inc119_crit_edge

for.cond90.preheader.for.inc119_crit_edge:        ; preds = %for.cond90.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc119

if.then113:                                       ; preds = %for.cond90.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %201 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_store2_noabort(i32 %201)
  store i16 %198, ptr %arrayidx85, align 2
  %202 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_store2_noabort(i32 %202)
  store i16 %fval.0, ptr %arrayidx117, align 2
  br label %for.inc119

for.inc119:                                       ; preds = %if.then113, %for.cond90.preheader.for.inc119_crit_edge
  %203 = trunc i32 %mul to i16
  %fval.0.1 = or i16 %203, 254
  %204 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %dev, align 4
  %206 = ptrtoint ptr %205 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %205, align 4
  %write16.i.i.i264.1 = getelementptr inbounds %struct.ssb_bus_ops, ptr %207, i32 0, i32 4
  %208 = ptrtoint ptr %write16.i.i.i264.1 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %write16.i.i.i264.1, align 4
  tail call void %209(ptr noundef %205, i16 noundef zeroext 1020, i16 noundef zeroext 47) #7
  %210 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %dev, align 4
  %212 = ptrtoint ptr %211 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %211, align 4
  %write16.i.i2.i265.1 = getelementptr inbounds %struct.ssb_bus_ops, ptr %213, i32 0, i32 4
  %214 = ptrtoint ptr %write16.i.i2.i265.1 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %write16.i.i2.i265.1, align 4
  tail call void %215(ptr noundef %211, i16 noundef zeroext 1022, i16 noundef zeroext %fval.0.1) #7
  %call103.1 = tail call fastcc zeroext i16 @b43legacy_phy_lo_b_r15_loop(ptr noundef %dev)
  %216 = udiv i16 %call103.1, 10
  %217 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load2_noabort(i32 %217)
  %218 = load i16, ptr %arrayidx85, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %216, i16 %218)
  %cmp111.1 = icmp ult i16 %216, %218
  br i1 %cmp111.1, label %if.then113.1, label %for.inc119.for.inc119.1_crit_edge

for.inc119.for.inc119.1_crit_edge:                ; preds = %for.inc119
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc119.1

if.then113.1:                                     ; preds = %for.inc119
  call void @__sanitizer_cov_trace_pc() #9
  %219 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_store2_noabort(i32 %219)
  store i16 %216, ptr %arrayidx85, align 2
  %220 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_store2_noabort(i32 %220)
  store i16 %fval.0.1, ptr %arrayidx117, align 2
  br label %for.inc119.1

for.inc119.1:                                     ; preds = %if.then113.1, %for.inc119.for.inc119.1_crit_edge
  %fval.0.2 = trunc i32 %mul to i16
  %221 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %dev, align 4
  %223 = ptrtoint ptr %222 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %222, align 4
  %write16.i.i.i264.2 = getelementptr inbounds %struct.ssb_bus_ops, ptr %224, i32 0, i32 4
  %225 = ptrtoint ptr %write16.i.i.i264.2 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %write16.i.i.i264.2, align 4
  tail call void %226(ptr noundef %222, i16 noundef zeroext 1020, i16 noundef zeroext 47) #7
  %227 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %dev, align 4
  %229 = ptrtoint ptr %228 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %228, align 4
  %write16.i.i2.i265.2 = getelementptr inbounds %struct.ssb_bus_ops, ptr %230, i32 0, i32 4
  %231 = ptrtoint ptr %write16.i.i2.i265.2 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %write16.i.i2.i265.2, align 4
  tail call void %232(ptr noundef %228, i16 noundef zeroext 1022, i16 noundef zeroext %fval.0.2) #7
  %call103.2 = tail call fastcc zeroext i16 @b43legacy_phy_lo_b_r15_loop(ptr noundef %dev)
  %233 = udiv i16 %call103.2, 10
  %234 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load2_noabort(i32 %234)
  %235 = load i16, ptr %arrayidx85, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %233, i16 %235)
  %cmp111.2 = icmp ult i16 %233, %235
  br i1 %cmp111.2, label %if.then113.2, label %for.inc119.1.for.inc119.2_crit_edge

for.inc119.1.for.inc119.2_crit_edge:              ; preds = %for.inc119.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc119.2

if.then113.2:                                     ; preds = %for.inc119.1
  call void @__sanitizer_cov_trace_pc() #9
  %236 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_store2_noabort(i32 %236)
  store i16 %233, ptr %arrayidx85, align 2
  %237 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_store2_noabort(i32 %237)
  store i16 %fval.0.2, ptr %arrayidx117, align 2
  br label %for.inc119.2

for.inc119.2:                                     ; preds = %if.then113.2, %for.inc119.1.for.inc119.2_crit_edge
  %238 = trunc i32 %mul to i16
  %fval.0.3 = or i16 %238, 2
  %239 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %dev, align 4
  %241 = ptrtoint ptr %240 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %240, align 4
  %write16.i.i.i264.3 = getelementptr inbounds %struct.ssb_bus_ops, ptr %242, i32 0, i32 4
  %243 = ptrtoint ptr %write16.i.i.i264.3 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %write16.i.i.i264.3, align 4
  tail call void %244(ptr noundef %240, i16 noundef zeroext 1020, i16 noundef zeroext 47) #7
  %245 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %dev, align 4
  %247 = ptrtoint ptr %246 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %246, align 4
  %write16.i.i2.i265.3 = getelementptr inbounds %struct.ssb_bus_ops, ptr %248, i32 0, i32 4
  %249 = ptrtoint ptr %write16.i.i2.i265.3 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %write16.i.i2.i265.3, align 4
  tail call void %250(ptr noundef %246, i16 noundef zeroext 1022, i16 noundef zeroext %fval.0.3) #7
  %call103.3 = tail call fastcc zeroext i16 @b43legacy_phy_lo_b_r15_loop(ptr noundef %dev)
  %251 = udiv i16 %call103.3, 10
  %252 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load2_noabort(i32 %252)
  %253 = load i16, ptr %arrayidx85, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %251, i16 %253)
  %cmp111.3 = icmp ult i16 %251, %253
  br i1 %cmp111.3, label %if.then113.3, label %for.inc119.2.for.inc119.3_crit_edge

for.inc119.2.for.inc119.3_crit_edge:              ; preds = %for.inc119.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc119.3

if.then113.3:                                     ; preds = %for.inc119.2
  call void @__sanitizer_cov_trace_pc() #9
  %254 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_store2_noabort(i32 %254)
  store i16 %251, ptr %arrayidx85, align 2
  %255 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_store2_noabort(i32 %255)
  store i16 %fval.0.3, ptr %arrayidx117, align 2
  br label %for.inc119.3

for.inc119.3:                                     ; preds = %if.then113.3, %for.inc119.2.for.inc119.3_crit_edge
  %256 = trunc i32 %mul to i16
  %fval.0.4 = or i16 %256, 4
  %257 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %dev, align 4
  %259 = ptrtoint ptr %258 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %258, align 4
  %write16.i.i.i264.4 = getelementptr inbounds %struct.ssb_bus_ops, ptr %260, i32 0, i32 4
  %261 = ptrtoint ptr %write16.i.i.i264.4 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %write16.i.i.i264.4, align 4
  tail call void %262(ptr noundef %258, i16 noundef zeroext 1020, i16 noundef zeroext 47) #7
  %263 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %dev, align 4
  %265 = ptrtoint ptr %264 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %264, align 4
  %write16.i.i2.i265.4 = getelementptr inbounds %struct.ssb_bus_ops, ptr %266, i32 0, i32 4
  %267 = ptrtoint ptr %write16.i.i2.i265.4 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %write16.i.i2.i265.4, align 4
  tail call void %268(ptr noundef %264, i16 noundef zeroext 1022, i16 noundef zeroext %fval.0.4) #7
  %call103.4 = tail call fastcc zeroext i16 @b43legacy_phy_lo_b_r15_loop(ptr noundef %dev)
  %269 = udiv i16 %call103.4, 10
  %270 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load2_noabort(i32 %270)
  %271 = load i16, ptr %arrayidx85, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %269, i16 %271)
  %cmp111.4 = icmp ult i16 %269, %271
  br i1 %cmp111.4, label %if.then113.4, label %for.inc119.3.for.inc119.4_crit_edge

for.inc119.3.for.inc119.4_crit_edge:              ; preds = %for.inc119.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc119.4

if.then113.4:                                     ; preds = %for.inc119.3
  call void @__sanitizer_cov_trace_pc() #9
  %272 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_store2_noabort(i32 %272)
  store i16 %269, ptr %arrayidx85, align 2
  %273 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_store2_noabort(i32 %273)
  store i16 %fval.0.4, ptr %arrayidx117, align 2
  br label %for.inc119.4

for.inc119.4:                                     ; preds = %if.then113.4, %for.inc119.3.for.inc119.4_crit_edge
  %add123 = add nsw i32 %i.2286, 2
  %cmp87 = icmp slt i32 %i.2286, 3
  br i1 %cmp87, label %for.inc119.4.for.cond90.preheader_crit_edge, label %for.end124

for.inc119.4.for.cond90.preheader_crit_edge:      ; preds = %for.inc119.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond90.preheader

for.end124:                                       ; preds = %for.inc119.4
  %274 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load2_noabort(i32 %274)
  %275 = load i16, ptr %arrayidx117, align 2
  %add128 = add i16 %275, 257
  store i16 %add128, ptr %arrayidx117, align 2
  %276 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %dev, align 4
  %278 = ptrtoint ptr %277 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %277, align 4
  %write16.i.i.i266 = getelementptr inbounds %struct.ssb_bus_ops, ptr %279, i32 0, i32 4
  %280 = ptrtoint ptr %write16.i.i.i266 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %write16.i.i.i266, align 4
  tail call void %281(ptr noundef %277, i16 noundef zeroext 1020, i16 noundef zeroext 47) #7
  %282 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %dev, align 4
  %284 = ptrtoint ptr %283 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %283, align 4
  %write16.i.i2.i267 = getelementptr inbounds %struct.ssb_bus_ops, ptr %285, i32 0, i32 4
  %286 = ptrtoint ptr %write16.i.i2.i267 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %write16.i.i2.i267, align 4
  tail call void %287(ptr noundef %283, i16 noundef zeroext 1022, i16 noundef zeroext %add128) #7
  %288 = ptrtoint ptr %radio_ver to i32
  call void @__asan_load2_noabort(i32 %288)
  %289 = load i16, ptr %radio_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8275, i16 %289)
  %cmp134 = icmp eq i16 %289, 8275
  br i1 %cmp134, label %if.then136, label %for.end124.if.end153_crit_edge

for.end124.if.end153_crit_edge:                   ; preds = %for.end124
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end153

if.then136:                                       ; preds = %for.end124
  call void @__sanitizer_cov_trace_pc() #9
  %290 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %dev, align 4
  %292 = ptrtoint ptr %291 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %291, align 4
  %write16.i.i.i268 = getelementptr inbounds %struct.ssb_bus_ops, ptr %293, i32 0, i32 4
  %294 = ptrtoint ptr %write16.i.i.i268 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %write16.i.i.i268, align 4
  tail call void %295(ptr noundef %291, i16 noundef zeroext 1020, i16 noundef zeroext 10) #7
  %296 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %dev, align 4
  %298 = ptrtoint ptr %297 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %297, align 4
  %write16.i.i2.i269 = getelementptr inbounds %struct.ssb_bus_ops, ptr %299, i32 0, i32 4
  %300 = ptrtoint ptr %write16.i.i2.i269 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %write16.i.i2.i269, align 4
  tail call void %301(ptr noundef %297, i16 noundef zeroext 1022, i16 noundef zeroext %regstack.sroa.9.0) #7
  %302 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %dev, align 4
  %304 = ptrtoint ptr %303 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %303, align 4
  %write16.i.i.i270 = getelementptr inbounds %struct.ssb_bus_ops, ptr %305, i32 0, i32 4
  %306 = ptrtoint ptr %write16.i.i.i270 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %write16.i.i.i270, align 4
  tail call void %307(ptr noundef %303, i16 noundef zeroext 1020, i16 noundef zeroext 42) #7
  %308 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %dev, align 4
  %310 = ptrtoint ptr %309 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %309, align 4
  %write16.i.i2.i271 = getelementptr inbounds %struct.ssb_bus_ops, ptr %311, i32 0, i32 4
  %312 = ptrtoint ptr %write16.i.i2.i271 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %write16.i.i2.i271, align 4
  tail call void %313(ptr noundef %309, i16 noundef zeroext 1022, i16 noundef zeroext %regstack.sroa.11.0) #7
  %314 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %dev, align 4
  %316 = ptrtoint ptr %315 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %315, align 4
  %write16.i.i.i272 = getelementptr inbounds %struct.ssb_bus_ops, ptr %317, i32 0, i32 4
  %318 = ptrtoint ptr %write16.i.i.i272 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %write16.i.i.i272, align 4
  tail call void %319(ptr noundef %315, i16 noundef zeroext 1020, i16 noundef zeroext 53) #7
  %320 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %dev, align 4
  %322 = ptrtoint ptr %321 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %321, align 4
  %write16.i.i2.i273 = getelementptr inbounds %struct.ssb_bus_ops, ptr %323, i32 0, i32 4
  %324 = ptrtoint ptr %write16.i.i2.i273 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %write16.i.i2.i273, align 4
  tail call void %325(ptr noundef %321, i16 noundef zeroext 1022, i16 noundef zeroext %regstack.sroa.13.0) #7
  %326 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %dev, align 4
  %328 = ptrtoint ptr %327 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %327, align 4
  %write16.i.i.i274 = getelementptr inbounds %struct.ssb_bus_ops, ptr %329, i32 0, i32 4
  %330 = ptrtoint ptr %write16.i.i.i274 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %write16.i.i.i274, align 4
  tail call void %331(ptr noundef %327, i16 noundef zeroext 1020, i16 noundef zeroext 3) #7
  %332 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %dev, align 4
  %334 = ptrtoint ptr %333 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %333, align 4
  %write16.i.i2.i275 = getelementptr inbounds %struct.ssb_bus_ops, ptr %335, i32 0, i32 4
  %336 = ptrtoint ptr %write16.i.i2.i275 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %write16.i.i2.i275, align 4
  tail call void %337(ptr noundef %333, i16 noundef zeroext 1022, i16 noundef zeroext %regstack.sroa.16.0) #7
  %338 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %dev, align 4
  %340 = ptrtoint ptr %339 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %339, align 4
  %write16.i.i.i276 = getelementptr inbounds %struct.ssb_bus_ops, ptr %341, i32 0, i32 4
  %342 = ptrtoint ptr %write16.i.i.i276 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %write16.i.i.i276, align 4
  tail call void %343(ptr noundef %339, i16 noundef zeroext 1020, i16 noundef zeroext 1) #7
  %344 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %dev, align 4
  %346 = ptrtoint ptr %345 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %345, align 4
  %write16.i.i2.i277 = getelementptr inbounds %struct.ssb_bus_ops, ptr %347, i32 0, i32 4
  %348 = ptrtoint ptr %write16.i.i2.i277 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %write16.i.i2.i277, align 4
  tail call void %349(ptr noundef %345, i16 noundef zeroext 1022, i16 noundef zeroext %regstack.sroa.18.0) #7
  %350 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %dev, align 4
  %352 = ptrtoint ptr %351 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %351, align 4
  %write16.i.i.i278 = getelementptr inbounds %struct.ssb_bus_ops, ptr %353, i32 0, i32 4
  %354 = ptrtoint ptr %write16.i.i.i278 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %write16.i.i.i278, align 4
  tail call void %355(ptr noundef %351, i16 noundef zeroext 1020, i16 noundef zeroext 48) #7
  %356 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %dev, align 4
  %358 = ptrtoint ptr %357 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %357, align 4
  %write16.i.i2.i279 = getelementptr inbounds %struct.ssb_bus_ops, ptr %359, i32 0, i32 4
  %360 = ptrtoint ptr %write16.i.i2.i279 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %write16.i.i2.i279, align 4
  tail call void %361(ptr noundef %357, i16 noundef zeroext 1022, i16 noundef zeroext %regstack.sroa.20.0) #7
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 67, i16 noundef zeroext %regstack.sroa.22.0) #7
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 122, i16 noundef zeroext %regstack.sroa.24.0) #7
  %call145 = tail call zeroext i16 @b43legacy_radio_read16(ptr noundef %dev, i16 noundef zeroext 82) #7
  %362 = and i16 %call145, 15
  %or150 = or i16 %362, %regstack.sroa.29.0
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 82, i16 noundef zeroext %or150) #7
  %363 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %dev, align 4
  %365 = ptrtoint ptr %364 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %364, align 4
  %write16.i.i280 = getelementptr inbounds %struct.ssb_bus_ops, ptr %366, i32 0, i32 4
  %367 = ptrtoint ptr %write16.i.i280 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %write16.i.i280, align 4
  tail call void %368(ptr noundef %364, i16 noundef zeroext 1004, i16 noundef zeroext %regstack.sroa.27.0) #7
  br label %if.end153

if.end153:                                        ; preds = %if.then136, %for.end124.if.end153_crit_edge
  %369 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %dev, align 4
  %371 = ptrtoint ptr %370 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %370, align 4
  %write16.i.i.i281 = getelementptr inbounds %struct.ssb_bus_ops, ptr %372, i32 0, i32 4
  %373 = ptrtoint ptr %write16.i.i.i281 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %write16.i.i.i281, align 4
  tail call void %374(ptr noundef %370, i16 noundef zeroext 1020, i16 noundef zeroext 21) #7
  %375 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %dev, align 4
  %377 = ptrtoint ptr %376 to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %376, align 4
  %write16.i.i2.i282 = getelementptr inbounds %struct.ssb_bus_ops, ptr %378, i32 0, i32 4
  %379 = ptrtoint ptr %write16.i.i2.i282 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %write16.i.i2.i282, align 4
  tail call void %380(ptr noundef %376, i16 noundef zeroext 1022, i16 noundef zeroext %call.i.i.i) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @b43legacy_radio_read16(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_radio_write16(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @b43legacy_phy_lo_b_r15_loop(ptr nocapture noundef readonly %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !59
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.for.body.preheader_crit_edge

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_off() #7
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then, %entry.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.065 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %ret.064 = phi i16 [ %add, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %write16.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write16.i.i.i, align 4
  tail call void %6(ptr noundef %2, i16 noundef zeroext 1020, i16 noundef zeroext 21) #7
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %write16.i.i2.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %write16.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write16.i.i2.i, align 4
  tail call void %12(ptr noundef %8, i16 noundef zeroext 1022, i16 noundef zeroext -20576) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #7
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %write16.i.i.i58 = getelementptr inbounds %struct.ssb_bus_ops, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %write16.i.i.i58 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write16.i.i.i58, align 4
  tail call void %19(ptr noundef %15, i16 noundef zeroext 1020, i16 noundef zeroext 21) #7
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %write16.i.i2.i59 = getelementptr inbounds %struct.ssb_bus_ops, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %write16.i.i2.i59 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write16.i.i2.i59, align 4
  tail call void %25(ptr noundef %21, i16 noundef zeroext 1022, i16 noundef zeroext -4192) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 2147480) #7
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %write16.i.i.i60 = getelementptr inbounds %struct.ssb_bus_ops, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %write16.i.i.i60 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write16.i.i.i60, align 4
  tail call void %32(ptr noundef %28, i16 noundef zeroext 1020, i16 noundef zeroext 21) #7
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %write16.i.i2.i61 = getelementptr inbounds %struct.ssb_bus_ops, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %write16.i.i2.i61 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write16.i.i2.i61, align 4
  tail call void %38(ptr noundef %34, i16 noundef zeroext 1022, i16 noundef zeroext -96) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 8589920) #7
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %write16.i.i.i62 = getelementptr inbounds %struct.ssb_bus_ops, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %write16.i.i.i62 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write16.i.i.i62, align 4
  tail call void %45(ptr noundef %41, i16 noundef zeroext 1020, i16 noundef zeroext 44) #7
  %46 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %read16.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %read16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %read16.i.i.i, align 4
  %call.i.i.i = tail call zeroext i16 %51(ptr noundef %47, i16 noundef zeroext 1022) #7
  %add = add i16 %call.i.i.i, %ret.064
  %inc = add nuw nsw i32 %i.065, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %do.body18, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.body18:                                        ; preds = %for.body
  br i1 %tobool.not, label %if.then27, label %do.body18.do.body29_crit_edge

do.body18.do.body29_crit_edge:                    ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body29

if.then27:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_on() #7
  br label %do.body29

do.body29:                                        ; preds = %if.then27, %do.body18.do.body29_crit_edge
  %52 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !60
  %and.i.i = and i32 %52, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool37.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool37.not, label %if.then41, label %do.body29.do.end44_crit_edge, !prof !57

do.body29.do.end44_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end44

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %do.end44

do.end44:                                         ; preds = %if.then41, %do.body29.do.end44_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #7, !srcloc !61
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 1116, i32 noundef 0) #7
  %call.i = tail call i32 @__cond_resched() #7
  ret i16 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43legacy_phy_lo_adjust(ptr nocapture noundef readonly %dev, i32 noundef %fixed) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fixed)
  %tobool.not = icmp eq i32 %fixed, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %.sink.in.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 19
  %0 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.sink.i = load ptr, ptr %.sink.in.i, align 4
  %add.ptr.i44.i = getelementptr %struct.b43legacy_lopair, ptr %.sink.i, i32 26
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 32
  %bbatt.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 32, i32 1
  %2 = ptrtoint ptr %bbatt.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %bbatt.i, align 2
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %1, align 4
  %txctl1.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 32, i32 2
  %6 = ptrtoint ptr %txctl1.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %txctl1.i, align 4
  %8 = tail call i16 @llvm.umin.i16(i16 %3, i16 6) #7
  %conv3.i.i = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %5)
  %cmp4.i.i = icmp ugt i16 %5, 9
  br i1 %cmp4.i.i, label %do.end.i.i, label %if.else.if.end19.i.i_crit_edge, !prof !57

if.else.if.end19.i.i_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i.i

do.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1298, i32 noundef 9, ptr noundef null) #7
  br label %if.end19.i.i

if.end19.i.i:                                     ; preds = %do.end.i.i, %if.else.if.end19.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %7)
  %cmp27.i.i = icmp eq i16 %7, 3
  br i1 %cmp27.i.i, label %if.then29.i.i, label %if.end30.i.i

if.then29.i.i:                                    ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %9 = lshr i16 %8, 1
  %narrow45.i.i = mul nuw nsw i16 %9, 14
  %mul.i.i.i = zext i16 %narrow45.i.i to i32
  br label %b43legacy_current_lopair.exit

if.end30.i.i:                                     ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i = getelementptr [10 x i8], ptr @b43legacy_find_lopair.dict, i32 0, i32 %conv3.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i40.i.i = zext i8 %11 to i32
  %12 = lshr i16 %8, 1
  %narrow.i.i = mul nuw nsw i16 %12, 14
  %mul.i42.i.i = zext i16 %narrow.i.i to i32
  br label %b43legacy_current_lopair.exit

b43legacy_current_lopair.exit:                    ; preds = %if.end30.i.i, %if.then29.i.i
  %mul.i42.sink.i.i = phi i32 [ %mul.i42.i.i, %if.end30.i.i ], [ %conv3.i.i, %if.then29.i.i ]
  %conv.i40.sink.i.i = phi i32 [ %conv.i40.i.i, %if.end30.i.i ], [ %mul.i.i.i, %if.then29.i.i ]
  %.sink.in.i.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 19
  %13 = ptrtoint ptr %.sink.in.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.sink.i.i = load ptr, ptr %.sink.in.i.i, align 4
  %add.i43.i.i = add nuw nsw i32 %conv.i40.sink.i.i, %mul.i42.sink.i.i
  %add.ptr.i44.i.i = getelementptr %struct.b43legacy_lopair, ptr %.sink.i.i, i32 %add.i43.i.i
  br label %if.end

if.end:                                           ; preds = %b43legacy_current_lopair.exit, %if.then
  %pair.0 = phi ptr [ %add.ptr.i44.i, %if.then ], [ %add.ptr.i44.i.i, %b43legacy_current_lopair.exit ]
  %14 = ptrtoint ptr %pair.0 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pair.0, align 1
  %high.i = getelementptr inbounds %struct.b43legacy_lopair, ptr %pair.0, i32 0, i32 1
  %16 = ptrtoint ptr %high.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %high.i, align 1
  %18 = add i8 %15, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %18)
  %19 = icmp ult i8 %18, -17
  call void @__sanitizer_cov_trace_const_cmp1(i8 -8, i8 %17)
  %cmp14.i = icmp slt i8 %17, -8
  %or.cond34.i = select i1 %19, i1 true, i1 %cmp14.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %17)
  %cmp19.i = icmp sgt i8 %17, 8
  %or.cond35.i = select i1 %or.cond34.i, i1 true, i1 %cmp19.i
  br i1 %or.cond35.i, label %if.then.i, label %if.end.b43legacy_lo_write.exit_crit_edge

if.end.b43legacy_lo_write.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43legacy_lo_write.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %wl.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  %20 = ptrtoint ptr %wl.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wl.i, align 4
  %conv22.i = sext i8 %15 to i32
  %conv24.i = sext i8 %17 to i32
  tail call void (ptr, ptr, ...) @b43legacydbg(ptr noundef %21, ptr noundef nonnull @.str.13, i32 noundef %conv22.i, i32 noundef %conv24.i) #7
  tail call void @dump_stack() #10
  br label %b43legacy_lo_write.exit

b43legacy_lo_write.exit:                          ; preds = %if.then.i, %if.end.b43legacy_lo_write.exit_crit_edge
  %conv1.i = zext i8 %17 to i16
  %shl.i = shl nuw i16 %conv1.i, 8
  %conv2.i = zext i8 %15 to i16
  %or.i = or i16 %shl.i, %conv2.i
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %write16.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %write16.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write16.i.i.i.i, align 4
  tail call void %27(ptr noundef %23, i16 noundef zeroext 1020, i16 noundef zeroext 2064) #7
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %write16.i.i2.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %write16.i.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write16.i.i2.i.i, align 4
  tail call void %33(ptr noundef %29, i16 noundef zeroext 1022, i16 noundef zeroext %or.i) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43legacy_phy_set_baseband_attenuation(ptr nocapture noundef readonly %dev, i16 noundef zeroext %bbatt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %analog = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 2
  %0 = ptrtoint ptr %analog to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %analog, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %1, label %entry.if.end33_crit_edge [
    i8 0, label %if.then
    i8 1, label %if.else
  ]

entry.if.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %read16.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %read16.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read16.i.i, align 4
  %call.i.i = tail call zeroext i16 %8(ptr noundef %4, i16 noundef zeroext 998) #7
  %9 = and i16 %call.i.i, -16
  %10 = and i16 %bbatt, 15
  %or47 = or i16 %9, %10
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %write16.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write16.i.i, align 4
  tail call void %16(ptr noundef %12, i16 noundef zeroext 998, i16 noundef zeroext %or47) #7
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.end33:                                         ; preds = %if.else, %entry.if.end33_crit_edge
  %.sink54 = phi i16 [ -121, %if.else ], [ -61, %entry.if.end33_crit_edge ]
  %.sink53 = phi i16 [ 3, %if.else ], [ 2, %entry.if.end33_crit_edge ]
  %.sink52 = phi i16 [ 120, %if.else ], [ 60, %entry.if.end33_crit_edge ]
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %write16.i.i.i48 = getelementptr inbounds %struct.ssb_bus_ops, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %write16.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write16.i.i.i48, align 4
  tail call void %22(ptr noundef %18, i16 noundef zeroext 1020, i16 noundef zeroext 96) #7
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %read16.i.i.i49 = getelementptr inbounds %struct.ssb_bus_ops, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %read16.i.i.i49 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read16.i.i.i49, align 4
  %call.i.i.i50 = tail call zeroext i16 %28(ptr noundef %24, i16 noundef zeroext 1022) #7
  %29 = and i16 %call.i.i.i50, %.sink54
  %shl28 = shl i16 %bbatt, %.sink53
  %and29 = and i16 %shl28, %.sink52
  %or31 = or i16 %29, %and29
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %write16.i.i.i51 = getelementptr inbounds %struct.ssb_bus_ops, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %write16.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write16.i.i.i51, align 4
  tail call void %35(ptr noundef %31, i16 noundef zeroext 1020, i16 noundef zeroext 96) #7
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %write16.i.i2.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %write16.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write16.i.i2.i, align 4
  tail call void %41(ptr noundef %37, i16 noundef zeroext 1022, i16 noundef zeroext %or31) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43legacy_phy_lo_g_measure(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %control = alloca %struct.b43legacy_lopair, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__init_status = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %__init_status, i32 noundef 4) #7
  %0 = ptrtoint ptr %__init_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %__init_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp slt i32 %1, 2
  %conv = zext i1 %cmp to i32
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %control) #7
  %2 = ptrtoint ptr %control to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %control, align 1, !annotation !62
  %3 = getelementptr inbounds %struct.b43legacy_lopair, ptr %control, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !62
  %5 = getelementptr inbounds %struct.b43legacy_lopair, ptr %control, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !62
  %channel = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 39
  %7 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %channel, align 4
  %gmode = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 1
  %9 = ptrtoint ptr %gmode to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %gmode, align 1, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %write16.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write16.i.i.i, align 4
  tail call void %16(ptr noundef %12, i16 noundef zeroext 1020, i16 noundef zeroext 1065) #7
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %read16.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %read16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read16.i.i.i, align 4
  %call.i.i.i = tail call zeroext i16 %22(ptr noundef %18, i16 noundef zeroext 1022) #7
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %write16.i.i.i548 = getelementptr inbounds %struct.ssb_bus_ops, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %write16.i.i.i548 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write16.i.i.i548, align 4
  tail call void %28(ptr noundef %24, i16 noundef zeroext 1020, i16 noundef zeroext 2050) #7
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %read16.i.i.i549 = getelementptr inbounds %struct.ssb_bus_ops, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %read16.i.i.i549 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %read16.i.i.i549, align 4
  %call.i.i.i550 = tail call zeroext i16 %34(ptr noundef %30, i16 noundef zeroext 1022) #7
  %35 = and i16 %call.i.i.i, 32767
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %write16.i.i.i551 = getelementptr inbounds %struct.ssb_bus_ops, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %write16.i.i.i551 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write16.i.i.i551, align 4
  tail call void %41(ptr noundef %37, i16 noundef zeroext 1020, i16 noundef zeroext 1065) #7
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %write16.i.i2.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %write16.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write16.i.i2.i, align 4
  tail call void %47(ptr noundef %43, i16 noundef zeroext 1022, i16 noundef zeroext %35) #7
  %48 = and i16 %call.i.i.i550, -4
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %write16.i.i.i552 = getelementptr inbounds %struct.ssb_bus_ops, ptr %52, i32 0, i32 4
  %53 = ptrtoint ptr %write16.i.i.i552 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write16.i.i.i552, align 4
  tail call void %54(ptr noundef %50, i16 noundef zeroext 1020, i16 noundef zeroext 2050) #7
  %55 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %write16.i.i2.i553 = getelementptr inbounds %struct.ssb_bus_ops, ptr %58, i32 0, i32 4
  %59 = ptrtoint ptr %write16.i.i2.i553 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %write16.i.i2.i553, align 4
  tail call void %60(ptr noundef %56, i16 noundef zeroext 1022, i16 noundef zeroext %48) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %regstack.sroa.0.0 = phi i16 [ %call.i.i.i, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %regstack.sroa.7.0 = phi i16 [ %call.i.i.i550, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %61 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  %read16.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %read16.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %read16.i.i, align 4
  %call.i.i554 = tail call zeroext i16 %66(ptr noundef %62, i16 noundef zeroext 994) #7
  %67 = or i16 %call.i.i554, -32768
  %68 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %write16.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %71, i32 0, i32 4
  %72 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %write16.i.i, align 4
  tail call void %73(ptr noundef %69, i16 noundef zeroext 994, i16 noundef zeroext %67) #7
  %74 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %read16.i.i555 = getelementptr inbounds %struct.ssb_bus_ops, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %read16.i.i555 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %read16.i.i555, align 4
  %call.i.i556 = tail call zeroext i16 %79(ptr noundef %75, i16 noundef zeroext 1012) #7
  %80 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  %write16.i.i.i557 = getelementptr inbounds %struct.ssb_bus_ops, ptr %83, i32 0, i32 4
  %84 = ptrtoint ptr %write16.i.i.i557 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %write16.i.i.i557, align 4
  tail call void %85(ptr noundef %81, i16 noundef zeroext 1020, i16 noundef zeroext 21) #7
  %86 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 4
  %read16.i.i.i558 = getelementptr inbounds %struct.ssb_bus_ops, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %read16.i.i.i558 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %read16.i.i.i558, align 4
  %call.i.i.i559 = tail call zeroext i16 %91(ptr noundef %87, i16 noundef zeroext 1022) #7
  %92 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %93, align 4
  %write16.i.i.i560 = getelementptr inbounds %struct.ssb_bus_ops, ptr %95, i32 0, i32 4
  %96 = ptrtoint ptr %write16.i.i.i560 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %write16.i.i.i560, align 4
  tail call void %97(ptr noundef %93, i16 noundef zeroext 1020, i16 noundef zeroext 42) #7
  %98 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %99, align 4
  %read16.i.i.i561 = getelementptr inbounds %struct.ssb_bus_ops, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %read16.i.i.i561 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %read16.i.i.i561, align 4
  %call.i.i.i562 = tail call zeroext i16 %103(ptr noundef %99, i16 noundef zeroext 1022) #7
  %104 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %105, align 4
  %write16.i.i.i563 = getelementptr inbounds %struct.ssb_bus_ops, ptr %107, i32 0, i32 4
  %108 = ptrtoint ptr %write16.i.i.i563 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %write16.i.i.i563, align 4
  tail call void %109(ptr noundef %105, i16 noundef zeroext 1020, i16 noundef zeroext 53) #7
  %110 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %111, align 4
  %read16.i.i.i564 = getelementptr inbounds %struct.ssb_bus_ops, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %read16.i.i.i564 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %read16.i.i.i564, align 4
  %call.i.i.i565 = tail call zeroext i16 %115(ptr noundef %111, i16 noundef zeroext 1022) #7
  %116 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %117, align 4
  %write16.i.i.i566 = getelementptr inbounds %struct.ssb_bus_ops, ptr %119, i32 0, i32 4
  %120 = ptrtoint ptr %write16.i.i.i566 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %write16.i.i.i566, align 4
  tail call void %121(ptr noundef %117, i16 noundef zeroext 1020, i16 noundef zeroext 96) #7
  %122 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %123, align 4
  %read16.i.i.i567 = getelementptr inbounds %struct.ssb_bus_ops, ptr %125, i32 0, i32 1
  %126 = ptrtoint ptr %read16.i.i.i567 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %read16.i.i.i567, align 4
  %call.i.i.i568 = tail call zeroext i16 %127(ptr noundef %123, i16 noundef zeroext 1022) #7
  %call27 = tail call zeroext i16 @b43legacy_radio_read16(ptr noundef %dev, i16 noundef zeroext 67) #7
  %call29 = tail call zeroext i16 @b43legacy_radio_read16(ptr noundef %dev, i16 noundef zeroext 122) #7
  %call31 = tail call zeroext i16 @b43legacy_radio_read16(ptr noundef %dev, i16 noundef zeroext 82) #7
  %128 = ptrtoint ptr %gmode to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %gmode, align 1, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool34.not = icmp eq i8 %129, 0
  br i1 %tobool34.not, label %if.end.if.end44_crit_edge, label %if.then35

if.end.if.end44_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then35:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %130 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev, align 4
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %131, align 4
  %write16.i.i.i569 = getelementptr inbounds %struct.ssb_bus_ops, ptr %133, i32 0, i32 4
  %134 = ptrtoint ptr %write16.i.i.i569 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %write16.i.i.i569, align 4
  tail call void %135(ptr noundef %131, i16 noundef zeroext 1020, i16 noundef zeroext 2065) #7
  %136 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dev, align 4
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %137, align 4
  %read16.i.i.i570 = getelementptr inbounds %struct.ssb_bus_ops, ptr %139, i32 0, i32 1
  %140 = ptrtoint ptr %read16.i.i.i570 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %read16.i.i.i570, align 4
  %call.i.i.i571 = tail call zeroext i16 %141(ptr noundef %137, i16 noundef zeroext 1022) #7
  %142 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dev, align 4
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %143, align 4
  %write16.i.i.i572 = getelementptr inbounds %struct.ssb_bus_ops, ptr %145, i32 0, i32 4
  %146 = ptrtoint ptr %write16.i.i.i572 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %write16.i.i.i572, align 4
  tail call void %147(ptr noundef %143, i16 noundef zeroext 1020, i16 noundef zeroext 2066) #7
  %148 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %dev, align 4
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %149, align 4
  %read16.i.i.i573 = getelementptr inbounds %struct.ssb_bus_ops, ptr %151, i32 0, i32 1
  %152 = ptrtoint ptr %read16.i.i.i573 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %read16.i.i.i573, align 4
  %call.i.i.i574 = tail call zeroext i16 %153(ptr noundef %149, i16 noundef zeroext 1022) #7
  %154 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %dev, align 4
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %155, align 4
  %write16.i.i.i575 = getelementptr inbounds %struct.ssb_bus_ops, ptr %157, i32 0, i32 4
  %158 = ptrtoint ptr %write16.i.i.i575 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %write16.i.i.i575, align 4
  tail call void %159(ptr noundef %155, i16 noundef zeroext 1020, i16 noundef zeroext 2068) #7
  %160 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %dev, align 4
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %161, align 4
  %read16.i.i.i576 = getelementptr inbounds %struct.ssb_bus_ops, ptr %163, i32 0, i32 1
  %164 = ptrtoint ptr %read16.i.i.i576 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %read16.i.i.i576, align 4
  %call.i.i.i577 = tail call zeroext i16 %165(ptr noundef %161, i16 noundef zeroext 1022) #7
  %166 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %dev, align 4
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %167, align 4
  %write16.i.i.i578 = getelementptr inbounds %struct.ssb_bus_ops, ptr %169, i32 0, i32 4
  %170 = ptrtoint ptr %write16.i.i.i578 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %write16.i.i.i578, align 4
  tail call void %171(ptr noundef %167, i16 noundef zeroext 1020, i16 noundef zeroext 2069) #7
  %172 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %dev, align 4
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %173, align 4
  %read16.i.i.i579 = getelementptr inbounds %struct.ssb_bus_ops, ptr %175, i32 0, i32 1
  %176 = ptrtoint ptr %read16.i.i.i579 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %read16.i.i.i579, align 4
  %call.i.i.i580 = tail call zeroext i16 %177(ptr noundef %173, i16 noundef zeroext 1022) #7
  br label %if.end44

if.end44:                                         ; preds = %if.then35, %if.end.if.end44_crit_edge
  %regstack.sroa.38.0 = phi i16 [ %call.i.i.i571, %if.then35 ], [ 0, %if.end.if.end44_crit_edge ]
  %regstack.sroa.40.0 = phi i16 [ %call.i.i.i574, %if.then35 ], [ 0, %if.end.if.end44_crit_edge ]
  %regstack.sroa.42.0 = phi i16 [ %call.i.i.i577, %if.then35 ], [ 0, %if.end.if.end44_crit_edge ]
  %regstack.sroa.45.0 = phi i16 [ %call.i.i.i580, %if.then35 ], [ 0, %if.end.if.end44_crit_edge ]
  %call45 = tail call i32 @b43legacy_radio_selectchannel(ptr noundef %dev, i8 noundef zeroext 6, i32 noundef 0) #7
  %178 = ptrtoint ptr %gmode to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %gmode, align 1, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %179)
  %tobool47.not = icmp eq i8 %179, 0
  br i1 %tobool47.not, label %if.end44.if.end57_crit_edge, label %if.then48

if.end44.if.end57_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

if.then48:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %180 = and i16 %regstack.sroa.0.0, 32767
  %181 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %dev, align 4
  %183 = ptrtoint ptr %182 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %182, align 4
  %write16.i.i.i581 = getelementptr inbounds %struct.ssb_bus_ops, ptr %184, i32 0, i32 4
  %185 = ptrtoint ptr %write16.i.i.i581 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %write16.i.i.i581, align 4
  tail call void %186(ptr noundef %182, i16 noundef zeroext 1020, i16 noundef zeroext 1065) #7
  %187 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %dev, align 4
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %188, align 4
  %write16.i.i2.i582 = getelementptr inbounds %struct.ssb_bus_ops, ptr %190, i32 0, i32 4
  %191 = ptrtoint ptr %write16.i.i2.i582 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %write16.i.i2.i582, align 4
  tail call void %192(ptr noundef %188, i16 noundef zeroext 1022, i16 noundef zeroext %180) #7
  %193 = and i16 %regstack.sroa.7.0, -4
  %194 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %dev, align 4
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %195, align 4
  %write16.i.i.i583 = getelementptr inbounds %struct.ssb_bus_ops, ptr %197, i32 0, i32 4
  %198 = ptrtoint ptr %write16.i.i.i583 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %write16.i.i.i583, align 4
  tail call void %199(ptr noundef %195, i16 noundef zeroext 1020, i16 noundef zeroext 2050) #7
  %200 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %dev, align 4
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %201, align 4
  %write16.i.i2.i584 = getelementptr inbounds %struct.ssb_bus_ops, ptr %203, i32 0, i32 4
  %204 = ptrtoint ptr %write16.i.i2.i584 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %write16.i.i2.i584, align 4
  tail call void %205(ptr noundef %201, i16 noundef zeroext 1022, i16 noundef zeroext %193) #7
  tail call void @b43legacy_dummy_transmission(ptr noundef %dev) #7
  br label %if.end57

if.end57:                                         ; preds = %if.then48, %if.end44.if.end57_crit_edge
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 67, i16 noundef zeroext 6) #7
  %analog.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 2
  %206 = ptrtoint ptr %analog.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %analog.i, align 2
  %208 = zext i8 %207 to i64
  call void @__sanitizer_cov_trace_switch(i64 %208, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %207, label %if.end57.if.end33.i_crit_edge [
    i8 0, label %if.then.i
    i8 1, label %if.else.i
  ]

if.end57.if.end33.i_crit_edge:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33.i

if.then.i:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  %209 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %dev, align 4
  %211 = ptrtoint ptr %210 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %210, align 4
  %read16.i.i.i585 = getelementptr inbounds %struct.ssb_bus_ops, ptr %212, i32 0, i32 1
  %213 = ptrtoint ptr %read16.i.i.i585 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %read16.i.i.i585, align 4
  %call.i.i.i586 = tail call zeroext i16 %214(ptr noundef %210, i16 noundef zeroext 998) #7
  %215 = and i16 %call.i.i.i586, -16
  %or47.i = or i16 %215, 2
  %216 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %dev, align 4
  %218 = ptrtoint ptr %217 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %217, align 4
  %write16.i.i.i587 = getelementptr inbounds %struct.ssb_bus_ops, ptr %219, i32 0, i32 4
  %220 = ptrtoint ptr %write16.i.i.i587 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %write16.i.i.i587, align 4
  tail call void %221(ptr noundef %217, i16 noundef zeroext 998, i16 noundef zeroext %or47.i) #7
  br label %b43legacy_phy_set_baseband_attenuation.exit

if.else.i:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.else.i, %if.end57.if.end33.i_crit_edge
  %.sink54.i = phi i16 [ -121, %if.else.i ], [ -61, %if.end57.if.end33.i_crit_edge ]
  %.sink53.i = phi i16 [ 3, %if.else.i ], [ 2, %if.end57.if.end33.i_crit_edge ]
  %222 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %dev, align 4
  %224 = ptrtoint ptr %223 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %223, align 4
  %write16.i.i.i48.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %225, i32 0, i32 4
  %226 = ptrtoint ptr %write16.i.i.i48.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %write16.i.i.i48.i, align 4
  tail call void %227(ptr noundef %223, i16 noundef zeroext 1020, i16 noundef zeroext 96) #7
  %228 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %dev, align 4
  %230 = ptrtoint ptr %229 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %229, align 4
  %read16.i.i.i49.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %231, i32 0, i32 1
  %232 = ptrtoint ptr %read16.i.i.i49.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %read16.i.i.i49.i, align 4
  %call.i.i.i50.i = tail call zeroext i16 %233(ptr noundef %229, i16 noundef zeroext 1022) #7
  %234 = and i16 %call.i.i.i50.i, %.sink54.i
  %shl28.i = shl nuw nsw i16 2, %.sink53.i
  %or31.i = or i16 %234, %shl28.i
  %235 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %dev, align 4
  %237 = ptrtoint ptr %236 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %236, align 4
  %write16.i.i.i51.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %238, i32 0, i32 4
  %239 = ptrtoint ptr %write16.i.i.i51.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %write16.i.i.i51.i, align 4
  tail call void %240(ptr noundef %236, i16 noundef zeroext 1020, i16 noundef zeroext 96) #7
  %241 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %dev, align 4
  %243 = ptrtoint ptr %242 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %242, align 4
  %write16.i.i2.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %244, i32 0, i32 4
  %245 = ptrtoint ptr %write16.i.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %write16.i.i2.i.i, align 4
  tail call void %246(ptr noundef %242, i16 noundef zeroext 1022, i16 noundef zeroext %or31.i) #7
  br label %b43legacy_phy_set_baseband_attenuation.exit

b43legacy_phy_set_baseband_attenuation.exit:      ; preds = %if.end33.i, %if.then.i
  %247 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %dev, align 4
  %249 = ptrtoint ptr %248 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %248, align 4
  %write16.i.i588 = getelementptr inbounds %struct.ssb_bus_ops, ptr %250, i32 0, i32 4
  %251 = ptrtoint ptr %write16.i.i588 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %write16.i.i588, align 4
  tail call void %252(ptr noundef %248, i16 noundef zeroext 1012, i16 noundef zeroext 0) #7
  %253 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %dev, align 4
  %255 = ptrtoint ptr %254 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %254, align 4
  %write16.i.i.i589 = getelementptr inbounds %struct.ssb_bus_ops, ptr %256, i32 0, i32 4
  %257 = ptrtoint ptr %write16.i.i.i589 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %write16.i.i.i589, align 4
  tail call void %258(ptr noundef %254, i16 noundef zeroext 1020, i16 noundef zeroext 46) #7
  %259 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %dev, align 4
  %261 = ptrtoint ptr %260 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %260, align 4
  %write16.i.i2.i590 = getelementptr inbounds %struct.ssb_bus_ops, ptr %262, i32 0, i32 4
  %263 = ptrtoint ptr %write16.i.i2.i590 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %write16.i.i2.i590, align 4
  tail call void %264(ptr noundef %260, i16 noundef zeroext 1022, i16 noundef zeroext 127) #7
  %265 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %dev, align 4
  %267 = ptrtoint ptr %266 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %266, align 4
  %write16.i.i.i591 = getelementptr inbounds %struct.ssb_bus_ops, ptr %268, i32 0, i32 4
  %269 = ptrtoint ptr %write16.i.i.i591 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %write16.i.i.i591, align 4
  tail call void %270(ptr noundef %266, i16 noundef zeroext 1020, i16 noundef zeroext 2063) #7
  %271 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %dev, align 4
  %273 = ptrtoint ptr %272 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %272, align 4
  %write16.i.i2.i592 = getelementptr inbounds %struct.ssb_bus_ops, ptr %274, i32 0, i32 4
  %275 = ptrtoint ptr %write16.i.i2.i592 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %write16.i.i2.i592, align 4
  tail call void %276(ptr noundef %272, i16 noundef zeroext 1022, i16 noundef zeroext 120) #7
  %277 = and i16 %call.i.i.i565, -129
  %278 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %dev, align 4
  %280 = ptrtoint ptr %279 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %279, align 4
  %write16.i.i.i593 = getelementptr inbounds %struct.ssb_bus_ops, ptr %281, i32 0, i32 4
  %282 = ptrtoint ptr %write16.i.i.i593 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %write16.i.i.i593, align 4
  tail call void %283(ptr noundef %279, i16 noundef zeroext 1020, i16 noundef zeroext 53) #7
  %284 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %dev, align 4
  %286 = ptrtoint ptr %285 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %285, align 4
  %write16.i.i2.i594 = getelementptr inbounds %struct.ssb_bus_ops, ptr %287, i32 0, i32 4
  %288 = ptrtoint ptr %write16.i.i2.i594 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %write16.i.i2.i594, align 4
  tail call void %289(ptr noundef %285, i16 noundef zeroext 1022, i16 noundef zeroext %277) #7
  %290 = and i16 %call29, -16
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 122, i16 noundef zeroext %290) #7
  %291 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %dev, align 4
  %293 = ptrtoint ptr %292 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %292, align 4
  %write16.i.i.i595 = getelementptr inbounds %struct.ssb_bus_ops, ptr %294, i32 0, i32 4
  %295 = ptrtoint ptr %write16.i.i.i595 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %write16.i.i.i595, align 4
  tail call void %296(ptr noundef %292, i16 noundef zeroext 1020, i16 noundef zeroext 43) #7
  %297 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %dev, align 4
  %299 = ptrtoint ptr %298 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %298, align 4
  %write16.i.i2.i596 = getelementptr inbounds %struct.ssb_bus_ops, ptr %300, i32 0, i32 4
  %301 = ptrtoint ptr %write16.i.i2.i596 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %write16.i.i2.i596, align 4
  tail call void %302(ptr noundef %298, i16 noundef zeroext 1022, i16 noundef zeroext 515) #7
  %303 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %dev, align 4
  %305 = ptrtoint ptr %304 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %304, align 4
  %write16.i.i.i597 = getelementptr inbounds %struct.ssb_bus_ops, ptr %306, i32 0, i32 4
  %307 = ptrtoint ptr %write16.i.i.i597 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %write16.i.i.i597, align 4
  tail call void %308(ptr noundef %304, i16 noundef zeroext 1020, i16 noundef zeroext 42) #7
  %309 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %dev, align 4
  %311 = ptrtoint ptr %310 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %310, align 4
  %write16.i.i2.i598 = getelementptr inbounds %struct.ssb_bus_ops, ptr %312, i32 0, i32 4
  %313 = ptrtoint ptr %write16.i.i2.i598 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %write16.i.i2.i598, align 4
  tail call void %314(ptr noundef %310, i16 noundef zeroext 1022, i16 noundef zeroext 2211) #7
  %315 = ptrtoint ptr %gmode to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %gmode, align 1, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %316)
  %tobool67.not = icmp eq i8 %316, 0
  br i1 %tobool67.not, label %b43legacy_phy_set_baseband_attenuation.exit.if.end77_crit_edge, label %if.then68

b43legacy_phy_set_baseband_attenuation.exit.if.end77_crit_edge: ; preds = %b43legacy_phy_set_baseband_attenuation.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

if.then68:                                        ; preds = %b43legacy_phy_set_baseband_attenuation.exit
  call void @__sanitizer_cov_trace_pc() #9
  %317 = or i16 %regstack.sroa.42.0, 3
  %318 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %dev, align 4
  %320 = ptrtoint ptr %319 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %319, align 4
  %write16.i.i.i599 = getelementptr inbounds %struct.ssb_bus_ops, ptr %321, i32 0, i32 4
  %322 = ptrtoint ptr %write16.i.i.i599 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %write16.i.i.i599, align 4
  tail call void %323(ptr noundef %319, i16 noundef zeroext 1020, i16 noundef zeroext 2068) #7
  %324 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %dev, align 4
  %326 = ptrtoint ptr %325 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %325, align 4
  %write16.i.i2.i600 = getelementptr inbounds %struct.ssb_bus_ops, ptr %327, i32 0, i32 4
  %328 = ptrtoint ptr %write16.i.i2.i600 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %write16.i.i2.i600, align 4
  tail call void %329(ptr noundef %325, i16 noundef zeroext 1022, i16 noundef zeroext %317) #7
  %330 = and i16 %regstack.sroa.45.0, -4
  %331 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %dev, align 4
  %333 = ptrtoint ptr %332 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %332, align 4
  %write16.i.i.i601 = getelementptr inbounds %struct.ssb_bus_ops, ptr %334, i32 0, i32 4
  %335 = ptrtoint ptr %write16.i.i.i601 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %write16.i.i.i601, align 4
  tail call void %336(ptr noundef %332, i16 noundef zeroext 1020, i16 noundef zeroext 2069) #7
  %337 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %dev, align 4
  %339 = ptrtoint ptr %338 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %338, align 4
  %write16.i.i2.i602 = getelementptr inbounds %struct.ssb_bus_ops, ptr %340, i32 0, i32 4
  %341 = ptrtoint ptr %write16.i.i2.i602 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %write16.i.i2.i602, align 4
  tail call void %342(ptr noundef %338, i16 noundef zeroext 1022, i16 noundef zeroext %330) #7
  %343 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %dev, align 4
  %345 = ptrtoint ptr %344 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %344, align 4
  %write16.i.i.i603 = getelementptr inbounds %struct.ssb_bus_ops, ptr %346, i32 0, i32 4
  %347 = ptrtoint ptr %write16.i.i.i603 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %write16.i.i.i603, align 4
  tail call void %348(ptr noundef %344, i16 noundef zeroext 1020, i16 noundef zeroext 2065) #7
  %349 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %dev, align 4
  %351 = ptrtoint ptr %350 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %350, align 4
  %write16.i.i2.i604 = getelementptr inbounds %struct.ssb_bus_ops, ptr %352, i32 0, i32 4
  %353 = ptrtoint ptr %write16.i.i2.i604 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %write16.i.i2.i604, align 4
  tail call void %354(ptr noundef %350, i16 noundef zeroext 1022, i16 noundef zeroext 435) #7
  %355 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %dev, align 4
  %357 = ptrtoint ptr %356 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %356, align 4
  %write16.i.i.i605 = getelementptr inbounds %struct.ssb_bus_ops, ptr %358, i32 0, i32 4
  %359 = ptrtoint ptr %write16.i.i.i605 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %write16.i.i.i605, align 4
  tail call void %360(ptr noundef %356, i16 noundef zeroext 1020, i16 noundef zeroext 2066) #7
  %361 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %dev, align 4
  %363 = ptrtoint ptr %362 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %362, align 4
  %write16.i.i2.i606 = getelementptr inbounds %struct.ssb_bus_ops, ptr %364, i32 0, i32 4
  %365 = ptrtoint ptr %write16.i.i2.i606 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %write16.i.i2.i606, align 4
  tail call void %366(ptr noundef %362, i16 noundef zeroext 1022, i16 noundef zeroext 178) #7
  br label %if.end77

if.end77:                                         ; preds = %if.then68, %b43legacy_phy_set_baseband_attenuation.exit.if.end77_crit_edge
  br i1 %cmp, label %if.then79, label %if.end77.if.end80_crit_edge

if.end77.if.end80_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

if.then79:                                        ; preds = %if.end77
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 82, i16 noundef zeroext 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %367 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %367(i32 noundef 2147480) #7
  %call.i = tail call fastcc i32 @b43legacy_phy_lo_g_singledeviation(ptr noundef %dev, i16 noundef zeroext 0) #7
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then79
  %smallest.018.i = phi i32 [ %call.i, %if.then79 ], [ %369, %for.body.i.for.body.i_crit_edge ]
  %i.017.i = phi i16 [ 0, %if.then79 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %txctl2.016.i = phi i16 [ 0, %if.then79 ], [ %spec.select.i, %for.body.i.for.body.i_crit_edge ]
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 82, i16 noundef zeroext %i.017.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %368 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %368(i32 noundef 2147480) #7
  %call3.i = tail call fastcc i32 @b43legacy_phy_lo_g_singledeviation(ptr noundef %dev, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i, i32 %smallest.018.i)
  %cmp4.i = icmp ult i32 %call3.i, %smallest.018.i
  %spec.select.i = select i1 %cmp4.i, i16 %i.017.i, i16 %txctl2.016.i
  %369 = tail call i32 @llvm.umin.i32(i32 %call3.i, i32 %smallest.018.i) #7
  %inc.i = add nuw nsw i16 %i.017.i, 1
  %cmp.i = icmp ult i16 %i.017.i, 15
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %b43legacy_phy_lo_g_measure_txctl2.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

b43legacy_phy_lo_g_measure_txctl2.exit:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %txctl26.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 32, i32 3
  %370 = ptrtoint ptr %txctl26.i to i32
  call void @__asan_store2_noabort(i32 %370)
  store i16 %spec.select.i, ptr %txctl26.i, align 2
  br label %if.end80

if.end80:                                         ; preds = %b43legacy_phy_lo_g_measure_txctl2.exit, %if.end77.if.end80_crit_edge
  %371 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %dev, align 4
  %373 = ptrtoint ptr %372 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %372, align 4
  %write16.i.i.i607 = getelementptr inbounds %struct.ssb_bus_ops, ptr %374, i32 0, i32 4
  %375 = ptrtoint ptr %write16.i.i.i607 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %write16.i.i.i607, align 4
  tail call void %376(ptr noundef %372, i16 noundef zeroext 1020, i16 noundef zeroext 2063) #7
  %377 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %dev, align 4
  %379 = ptrtoint ptr %378 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %378, align 4
  %write16.i.i2.i608 = getelementptr inbounds %struct.ssb_bus_ops, ptr %380, i32 0, i32 4
  %381 = ptrtoint ptr %write16.i.i2.i608 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %write16.i.i2.i608, align 4
  tail call void %382(ptr noundef %378, i16 noundef zeroext 1022, i16 noundef zeroext -32648) #7
  %383 = ptrtoint ptr %control to i32
  call void @__asan_store1_noabort(i32 %383)
  store i8 0, ptr %control, align 1
  %384 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %384)
  store i8 0, ptr %3, align 1
  %_lo_pairs.i611 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 19
  %txctl2 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 32, i32 3
  %385 = or i16 %290, 8
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %if.end80
  %indvars.iv699 = phi i32 [ 0, %if.end80 ], [ %indvars.iv.next700, %for.end.for.body_crit_edge ]
  %r27.0685 = phi i8 [ 0, %if.end80 ], [ %r27.4, %for.end.for.body_crit_edge ]
  %oldi.0684 = phi i16 [ 0, %if.end80 ], [ %conv85, %for.end.for.body_crit_edge ]
  %arrayidx84 = getelementptr [10 x i8], ptr @b43legacy_phy_lo_g_measure.pairorder, i32 0, i32 %indvars.iv699
  %386 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load1_noabort(i32 %386)
  %387 = load i8, ptr %arrayidx84, align 1
  %conv85 = zext i8 %387 to i16
  br i1 %cmp, label %if.then87, label %for.body.if.end116_crit_edge

for.body.if.end116_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end116

if.then87:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %indvars.iv699)
  %cmp89 = icmp eq i32 %indvars.iv699, 0
  br i1 %cmp89, label %if.then91, label %if.else

if.then91:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #9
  %388 = ptrtoint ptr %control to i32
  call void @__asan_store1_noabort(i32 %388)
  store i8 0, ptr %control, align 1
  %389 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %389)
  store i8 0, ptr %3, align 1
  br label %if.end116

if.else:                                          ; preds = %if.then87
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %indvars.iv699)
  %cmp95 = icmp ugt i32 %indvars.iv699, 4
  %390 = and i16 %oldi.0684, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %390)
  %cmp99.not = icmp eq i16 %390, 0
  %or.cond = select i1 %cmp95, i1 true, i1 %cmp99.not
  br i1 %or.cond, label %lor.lhs.false, label %if.else.if.then110_crit_edge

if.else.if.then110_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then110

lor.lhs.false:                                    ; preds = %if.else
  %391 = add nsw i32 %indvars.iv699, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %391)
  %cmp103 = icmp ult i32 %391, 5
  %or.cond540 = select i1 %cmp103, i1 %cmp99.not, i1 false
  br i1 %or.cond540, label %lor.lhs.false.if.then110_crit_edge, label %if.else112

lor.lhs.false.if.then110_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then110

if.then110:                                       ; preds = %lor.lhs.false.if.then110_crit_edge, %if.else.if.then110_crit_edge
  %392 = ptrtoint ptr %_lo_pairs.i611 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %_lo_pairs.i611, align 4
  %conv.i = zext i16 %oldi.0684 to i32
  %add.ptr.i = getelementptr %struct.b43legacy_lopair, ptr %393, i32 %conv.i
  %394 = call ptr @memcpy(ptr %control, ptr %add.ptr.i, i32 3)
  br label %if.end116

if.else112:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %395 = ptrtoint ptr %_lo_pairs.i611 to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %_lo_pairs.i611, align 4
  %add.ptr.i610 = getelementptr %struct.b43legacy_lopair, ptr %396, i32 3
  %397 = call ptr @memcpy(ptr %control, ptr %add.ptr.i610, i32 3)
  br label %if.end116

if.end116:                                        ; preds = %if.else112, %if.then110, %if.then91, %for.body.if.end116_crit_edge
  %conv.i612 = zext i8 %387 to i32
  %mul = shl nuw nsw i16 %conv85, 1
  %398 = zext i16 %mul to i32
  br label %for.body121

for.body121:                                      ; preds = %for.inc.for.body121_crit_edge, %if.end116
  %indvars.iv = phi i32 [ 0, %if.end116 ], [ %indvars.iv.next, %for.inc.for.body121_crit_edge ]
  %r27.1683 = phi i8 [ %r27.0685, %if.end116 ], [ %r27.4, %for.inc.for.body121_crit_edge ]
  br i1 %cmp, label %if.then123, label %if.else142

if.then123:                                       ; preds = %for.body121
  %399 = add nuw nsw i32 %indvars.iv, %398
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %399)
  %cmp128 = icmp ugt i32 %399, 14
  br i1 %cmp128, label %if.then130, label %if.then123.if.end150_crit_edge

if.then123.if.end150_crit_edge:                   ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end150

if.then130:                                       ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %399)
  %cmp132 = icmp ugt i32 %399, 17
  %spec.select = zext i1 %cmp132 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %399)
  %cmp137 = icmp ugt i32 %399, 19
  %spec.select546 = select i1 %cmp137, i8 2, i8 %spec.select
  br label %if.end150

if.else142:                                       ; preds = %for.body121
  %400 = ptrtoint ptr %_lo_pairs.i611 to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %_lo_pairs.i611, align 4
  %mul.i = mul nuw nsw i32 %indvars.iv, 14
  %add.i = add nuw nsw i32 %mul.i, %conv.i612
  %used = getelementptr %struct.b43legacy_lopair, ptr %401, i32 %add.i, i32 2
  %402 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %402)
  %bf.load = load i8, ptr %used, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool147.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool147.not, label %if.else142.for.inc_crit_edge, label %if.end149

if.else142.for.inc_crit_edge:                     ; preds = %if.else142
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end149:                                        ; preds = %if.else142
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i613 = getelementptr %struct.b43legacy_lopair, ptr %401, i32 %add.i
  %403 = call ptr @memcpy(ptr %control, ptr %add.ptr.i613, i32 3)
  br label %if.end150

if.end150:                                        ; preds = %if.end149, %if.then130, %if.then123.if.end150_crit_edge
  %r27.3 = phi i8 [ 0, %if.then123.if.end150_crit_edge ], [ 3, %if.end149 ], [ %spec.select546, %if.then130 ]
  %tobool160.not = phi i16 [ %290, %if.then123.if.end150_crit_edge ], [ %290, %if.end149 ], [ %385, %if.then130 ]
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 67, i16 noundef zeroext %conv85) #7
  %404 = ptrtoint ptr %txctl2 to i32
  call void @__asan_load2_noabort(i32 %404)
  %405 = load i16, ptr %txctl2, align 2
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 82, i16 noundef zeroext %405) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %406 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %406(i32 noundef 2147480) #7
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 1583, i32 noundef 0) #7
  %call.i614 = tail call i32 @__cond_resched() #7
  %indvars.iv.tr = trunc i32 %indvars.iv to i16
  %407 = shl i16 %indvars.iv.tr, 1
  tail call void @b43legacy_phy_set_baseband_attenuation(ptr noundef %dev, i16 noundef zeroext %407)
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 122, i16 noundef zeroext %tobool160.not) #7
  %408 = ptrtoint ptr %_lo_pairs.i611 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %_lo_pairs.i611, align 4
  %mul.i618 = mul nuw nsw i32 %indvars.iv, 14
  %add.i619 = add nuw nsw i32 %mul.i618, %conv.i612
  %add.ptr.i620 = getelementptr %struct.b43legacy_lopair, ptr %409, i32 %add.i619
  %conv170 = zext i8 %r27.3 to i16
  call fastcc void @b43legacy_phy_lo_g_state(ptr noundef %dev, ptr noundef nonnull %control, ptr noundef %add.ptr.i620, i16 noundef zeroext %conv170)
  br label %for.inc

for.inc:                                          ; preds = %if.end150, %if.else142.for.inc_crit_edge
  %r27.4 = phi i8 [ %r27.3, %if.end150 ], [ %r27.1683, %if.else142.for.inc_crit_edge ]
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 4
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body121_crit_edge

for.inc.for.body121_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body121

for.end:                                          ; preds = %for.inc
  %indvars.iv.next700 = add nuw nsw i32 %indvars.iv699, 1
  %exitcond701.not = icmp eq i32 %indvars.iv.next700, 10
  br i1 %exitcond701.not, label %for.end.for.cond179.preheader_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end.for.cond179.preheader_crit_edge:          ; preds = %for.end
  br label %for.cond179.preheader

for.cond179.preheader:                            ; preds = %for.inc259.for.cond179.preheader_crit_edge, %for.end.for.cond179.preheader_crit_edge
  %indvars.iv707 = phi i32 [ %indvars.iv.next708, %for.inc259.for.cond179.preheader_crit_edge ], [ 10, %for.end.for.cond179.preheader_crit_edge ]
  %r27.5693 = phi i8 [ %r27.9, %for.inc259.for.cond179.preheader_crit_edge ], [ %r27.4, %for.end.for.cond179.preheader_crit_edge ]
  %410 = add nsw i32 %indvars.iv707, -9
  %411 = shl i32 %410, 1
  %412 = add i32 %411, 65531
  %413 = trunc i32 %410 to i16
  br label %for.body183

for.body183:                                      ; preds = %for.inc256.for.body183_crit_edge, %for.cond179.preheader
  %indvars.iv702 = phi i32 [ 0, %for.cond179.preheader ], [ %indvars.iv.next703, %for.inc256.for.body183_crit_edge ]
  %r27.6691 = phi i8 [ %r27.5693, %for.cond179.preheader ], [ %r27.9, %for.inc256.for.body183_crit_edge ]
  %414 = ptrtoint ptr %_lo_pairs.i611 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %_lo_pairs.i611, align 4
  %mul.i624 = mul nuw nsw i32 %indvars.iv702, 14
  %add.i625 = add nuw nsw i32 %mul.i624, %410
  br i1 %cmp, label %if.then185, label %if.else214

if.then185:                                       ; preds = %for.body183
  %add.ptr.i626 = getelementptr %struct.b43legacy_lopair, ptr %415, i32 %add.i625
  %416 = call ptr @memcpy(ptr %control, ptr %add.ptr.i626, i32 3)
  %417 = add i32 %412, %indvars.iv702
  %418 = trunc i32 %417 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %418)
  %cmp200 = icmp ugt i16 %418, 14
  br i1 %cmp200, label %if.then202, label %if.then185.if.end228_crit_edge

if.then185.if.end228_crit_edge:                   ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end228

if.then202:                                       ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %418)
  %cmp204 = icmp ugt i16 %418, 17
  %spec.select542 = zext i1 %cmp204 to i8
  call void @__sanitizer_cov_trace_const_cmp2(i16 19, i16 %418)
  %cmp209 = icmp ugt i16 %418, 19
  %spec.select547 = select i1 %cmp209, i8 2, i8 %spec.select542
  br label %if.end228

if.else214:                                       ; preds = %for.body183
  %used222 = getelementptr %struct.b43legacy_lopair, ptr %415, i32 %add.i625, i32 2
  %419 = ptrtoint ptr %used222 to i32
  call void @__asan_load1_noabort(i32 %419)
  %bf.load223 = load i8, ptr %used222, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load223)
  %tobool225.not = icmp sgt i8 %bf.load223, -1
  br i1 %tobool225.not, label %if.else214.for.inc256_crit_edge, label %if.end227

if.else214.for.inc256_crit_edge:                  ; preds = %if.else214
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc256

if.end227:                                        ; preds = %if.else214
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i632 = getelementptr %struct.b43legacy_lopair, ptr %415, i32 %add.i625
  %420 = call ptr @memcpy(ptr %control, ptr %add.ptr.i632, i32 3)
  br label %if.end228

if.end228:                                        ; preds = %if.end227, %if.then202, %if.then185.if.end228_crit_edge
  %r27.8 = phi i8 [ %spec.select547, %if.then202 ], [ 0, %if.then185.if.end228_crit_edge ], [ 3, %if.end227 ]
  %tobool245.not = phi i16 [ %385, %if.then202 ], [ %290, %if.then185.if.end228_crit_edge ], [ %290, %if.end227 ]
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 67, i16 noundef zeroext %413) #7
  %421 = ptrtoint ptr %txctl2 to i32
  call void @__asan_load2_noabort(i32 %421)
  %422 = load i16, ptr %txctl2, align 2
  %423 = or i16 %422, 48
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 82, i16 noundef zeroext %423) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %424 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %424(i32 noundef 2147480) #7
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 1634, i32 noundef 0) #7
  %call.i633 = tail call i32 @__cond_resched() #7
  %indvars.iv702.tr = trunc i32 %indvars.iv702 to i16
  %425 = shl i16 %indvars.iv702.tr, 1
  tail call void @b43legacy_phy_set_baseband_attenuation(ptr noundef %dev, i16 noundef zeroext %425)
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 122, i16 noundef zeroext %tobool245.not) #7
  %426 = ptrtoint ptr %_lo_pairs.i611 to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %_lo_pairs.i611, align 4
  %add.i638 = add nuw nsw i32 %mul.i624, %indvars.iv707
  %add.ptr.i639 = getelementptr %struct.b43legacy_lopair, ptr %427, i32 %add.i638
  %conv255 = zext i8 %r27.8 to i16
  call fastcc void @b43legacy_phy_lo_g_state(ptr noundef %dev, ptr noundef nonnull %control, ptr noundef %add.ptr.i639, i16 noundef zeroext %conv255)
  br label %for.inc256

for.inc256:                                       ; preds = %if.end228, %if.else214.for.inc256_crit_edge
  %r27.9 = phi i8 [ %r27.8, %if.end228 ], [ %r27.6691, %if.else214.for.inc256_crit_edge ]
  %indvars.iv.next703 = add nuw nsw i32 %indvars.iv702, 1
  %exitcond706.not = icmp eq i32 %indvars.iv.next703, 4
  br i1 %exitcond706.not, label %for.inc259, label %for.inc256.for.body183_crit_edge

for.inc256.for.body183_crit_edge:                 ; preds = %for.inc256
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body183

for.inc259:                                       ; preds = %for.inc256
  %indvars.iv.next708 = add nuw nsw i32 %indvars.iv707, 1
  %exitcond712.not = icmp eq i32 %indvars.iv.next708, 14
  br i1 %exitcond712.not, label %for.end261, label %for.inc259.for.cond179.preheader_crit_edge

for.inc259.for.cond179.preheader_crit_edge:       ; preds = %for.inc259
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond179.preheader

for.end261:                                       ; preds = %for.inc259
  %428 = ptrtoint ptr %gmode to i32
  call void @__asan_load1_noabort(i32 %428)
  %429 = load i8, ptr %gmode, align 1, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %429)
  %tobool263.not = icmp eq i8 %429, 0
  br i1 %tobool263.not, label %if.else278, label %if.then264

if.then264:                                       ; preds = %for.end261
  call void @__sanitizer_cov_trace_pc() #9
  %430 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %dev, align 4
  %432 = ptrtoint ptr %431 to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %431, align 4
  %write16.i.i.i640 = getelementptr inbounds %struct.ssb_bus_ops, ptr %433, i32 0, i32 4
  %434 = ptrtoint ptr %write16.i.i.i640 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %write16.i.i.i640, align 4
  tail call void %435(ptr noundef %431, i16 noundef zeroext 1020, i16 noundef zeroext 21) #7
  %436 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %dev, align 4
  %438 = ptrtoint ptr %437 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %437, align 4
  %write16.i.i2.i641 = getelementptr inbounds %struct.ssb_bus_ops, ptr %439, i32 0, i32 4
  %440 = ptrtoint ptr %write16.i.i2.i641 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %write16.i.i2.i641, align 4
  tail call void %441(ptr noundef %437, i16 noundef zeroext 1022, i16 noundef zeroext -7424) #7
  %conv265 = zext i8 %r27.9 to i16
  %shl = shl nuw i16 %conv265, 8
  %conv267 = or i16 %shl, 160
  %442 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %dev, align 4
  %444 = ptrtoint ptr %443 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %443, align 4
  %write16.i.i.i642 = getelementptr inbounds %struct.ssb_bus_ops, ptr %445, i32 0, i32 4
  %446 = ptrtoint ptr %write16.i.i.i642 to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %write16.i.i.i642, align 4
  tail call void %447(ptr noundef %443, i16 noundef zeroext 1020, i16 noundef zeroext 2066) #7
  %448 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %dev, align 4
  %450 = ptrtoint ptr %449 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %449, align 4
  %write16.i.i2.i643 = getelementptr inbounds %struct.ssb_bus_ops, ptr %451, i32 0, i32 4
  %452 = ptrtoint ptr %write16.i.i2.i643 to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %write16.i.i2.i643, align 4
  tail call void %453(ptr noundef %449, i16 noundef zeroext 1022, i16 noundef zeroext %conv267) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %454 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %454(i32 noundef 1073740) #7
  %conv271 = or i16 %shl, 162
  %455 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %dev, align 4
  %457 = ptrtoint ptr %456 to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %456, align 4
  %write16.i.i.i644 = getelementptr inbounds %struct.ssb_bus_ops, ptr %458, i32 0, i32 4
  %459 = ptrtoint ptr %write16.i.i.i644 to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %write16.i.i.i644, align 4
  tail call void %460(ptr noundef %456, i16 noundef zeroext 1020, i16 noundef zeroext 2066) #7
  %461 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %dev, align 4
  %463 = ptrtoint ptr %462 to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %462, align 4
  %write16.i.i2.i645 = getelementptr inbounds %struct.ssb_bus_ops, ptr %464, i32 0, i32 4
  %465 = ptrtoint ptr %write16.i.i2.i645 to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %write16.i.i2.i645, align 4
  tail call void %466(ptr noundef %462, i16 noundef zeroext 1022, i16 noundef zeroext %conv271) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %467 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %467(i32 noundef 429496) #7
  %conv275 = or i16 %shl, 163
  %468 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %dev, align 4
  %470 = ptrtoint ptr %469 to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %469, align 4
  %write16.i.i.i646 = getelementptr inbounds %struct.ssb_bus_ops, ptr %471, i32 0, i32 4
  %472 = ptrtoint ptr %write16.i.i.i646 to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %write16.i.i.i646, align 4
  tail call void %473(ptr noundef %469, i16 noundef zeroext 1020, i16 noundef zeroext 2066) #7
  %474 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %dev, align 4
  %476 = ptrtoint ptr %475 to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %475, align 4
  %write16.i.i2.i647 = getelementptr inbounds %struct.ssb_bus_ops, ptr %477, i32 0, i32 4
  %478 = ptrtoint ptr %write16.i.i2.i647 to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %write16.i.i2.i647, align 4
  tail call void %479(ptr noundef %475, i16 noundef zeroext 1022, i16 noundef zeroext %conv275) #7
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 1657, i32 noundef 0) #7
  %call.i648 = tail call i32 @__cond_resched() #7
  br label %if.end282

if.else278:                                       ; preds = %for.end261
  call void @__sanitizer_cov_trace_pc() #9
  %conv279 = zext i8 %r27.9 to i16
  %or280 = or i16 %conv279, -4192
  %480 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %dev, align 4
  %482 = ptrtoint ptr %481 to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %481, align 4
  %write16.i.i.i649 = getelementptr inbounds %struct.ssb_bus_ops, ptr %483, i32 0, i32 4
  %484 = ptrtoint ptr %write16.i.i.i649 to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %write16.i.i.i649, align 4
  tail call void %485(ptr noundef %481, i16 noundef zeroext 1020, i16 noundef zeroext 21) #7
  %486 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %dev, align 4
  %488 = ptrtoint ptr %487 to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %487, align 4
  %write16.i.i2.i650 = getelementptr inbounds %struct.ssb_bus_ops, ptr %489, i32 0, i32 4
  %490 = ptrtoint ptr %write16.i.i2.i650 to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %write16.i.i2.i650, align 4
  tail call void %491(ptr noundef %487, i16 noundef zeroext 1022, i16 noundef zeroext %or280) #7
  br label %if.end282

if.end282:                                        ; preds = %if.else278, %if.then264
  tail call void @b43legacy_phy_lo_adjust(ptr noundef %dev, i32 noundef %conv)
  %492 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %dev, align 4
  %494 = ptrtoint ptr %493 to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %493, align 4
  %write16.i.i.i651 = getelementptr inbounds %struct.ssb_bus_ops, ptr %495, i32 0, i32 4
  %496 = ptrtoint ptr %write16.i.i.i651 to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %write16.i.i.i651, align 4
  tail call void %497(ptr noundef %493, i16 noundef zeroext 1020, i16 noundef zeroext 46) #7
  %498 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load ptr, ptr %dev, align 4
  %500 = ptrtoint ptr %499 to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %499, align 4
  %write16.i.i2.i652 = getelementptr inbounds %struct.ssb_bus_ops, ptr %501, i32 0, i32 4
  %502 = ptrtoint ptr %write16.i.i2.i652 to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %write16.i.i2.i652, align 4
  tail call void %503(ptr noundef %499, i16 noundef zeroext 1022, i16 noundef zeroext -32641) #7
  %504 = ptrtoint ptr %gmode to i32
  call void @__asan_load1_noabort(i32 %504)
  %505 = load i8, ptr %gmode, align 1, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %505)
  %tobool284.not = icmp eq i8 %505, 0
  %506 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %dev, align 4
  %508 = ptrtoint ptr %507 to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %507, align 4
  %write16.i.i.i655 = getelementptr inbounds %struct.ssb_bus_ops, ptr %509, i32 0, i32 4
  %510 = ptrtoint ptr %write16.i.i.i655 to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %write16.i.i.i655, align 4
  tail call void %511(ptr noundef %507, i16 noundef zeroext 1020, i16 noundef zeroext 47) #7
  %512 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %dev, align 4
  %514 = ptrtoint ptr %513 to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %513, align 4
  %write16.i.i2.i656 = getelementptr inbounds %struct.ssb_bus_ops, ptr %515, i32 0, i32 4
  %516 = ptrtoint ptr %write16.i.i2.i656 to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %write16.i.i2.i656, align 4
  %. = select i1 %tobool284.not, i16 257, i16 514
  tail call void %517(ptr noundef %513, i16 noundef zeroext 1022, i16 noundef zeroext %.) #7
  %518 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %dev, align 4
  %520 = ptrtoint ptr %519 to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %519, align 4
  %write16.i.i657 = getelementptr inbounds %struct.ssb_bus_ops, ptr %521, i32 0, i32 4
  %522 = ptrtoint ptr %write16.i.i657 to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %write16.i.i657, align 4
  tail call void %523(ptr noundef %519, i16 noundef zeroext 1012, i16 noundef zeroext %call.i.i556) #7
  %524 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %dev, align 4
  %526 = ptrtoint ptr %525 to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %525, align 4
  %write16.i.i.i658 = getelementptr inbounds %struct.ssb_bus_ops, ptr %527, i32 0, i32 4
  %528 = ptrtoint ptr %write16.i.i.i658 to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %write16.i.i.i658, align 4
  tail call void %529(ptr noundef %525, i16 noundef zeroext 1020, i16 noundef zeroext 21) #7
  %530 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %dev, align 4
  %532 = ptrtoint ptr %531 to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %531, align 4
  %write16.i.i2.i659 = getelementptr inbounds %struct.ssb_bus_ops, ptr %533, i32 0, i32 4
  %534 = ptrtoint ptr %write16.i.i2.i659 to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load ptr, ptr %write16.i.i2.i659, align 4
  tail call void %535(ptr noundef %531, i16 noundef zeroext 1022, i16 noundef zeroext %call.i.i.i559) #7
  %536 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %dev, align 4
  %538 = ptrtoint ptr %537 to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %537, align 4
  %write16.i.i.i660 = getelementptr inbounds %struct.ssb_bus_ops, ptr %539, i32 0, i32 4
  %540 = ptrtoint ptr %write16.i.i.i660 to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %write16.i.i.i660, align 4
  tail call void %541(ptr noundef %537, i16 noundef zeroext 1020, i16 noundef zeroext 42) #7
  %542 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %dev, align 4
  %544 = ptrtoint ptr %543 to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %543, align 4
  %write16.i.i2.i661 = getelementptr inbounds %struct.ssb_bus_ops, ptr %545, i32 0, i32 4
  %546 = ptrtoint ptr %write16.i.i2.i661 to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load ptr, ptr %write16.i.i2.i661, align 4
  tail call void %547(ptr noundef %543, i16 noundef zeroext 1022, i16 noundef zeroext %call.i.i.i562) #7
  %548 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load ptr, ptr %dev, align 4
  %550 = ptrtoint ptr %549 to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %549, align 4
  %write16.i.i.i662 = getelementptr inbounds %struct.ssb_bus_ops, ptr %551, i32 0, i32 4
  %552 = ptrtoint ptr %write16.i.i.i662 to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %write16.i.i.i662, align 4
  tail call void %553(ptr noundef %549, i16 noundef zeroext 1020, i16 noundef zeroext 53) #7
  %554 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %dev, align 4
  %556 = ptrtoint ptr %555 to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load ptr, ptr %555, align 4
  %write16.i.i2.i663 = getelementptr inbounds %struct.ssb_bus_ops, ptr %557, i32 0, i32 4
  %558 = ptrtoint ptr %write16.i.i2.i663 to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %write16.i.i2.i663, align 4
  tail call void %559(ptr noundef %555, i16 noundef zeroext 1022, i16 noundef zeroext %call.i.i.i565) #7
  %560 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load ptr, ptr %dev, align 4
  %562 = ptrtoint ptr %561 to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load ptr, ptr %561, align 4
  %write16.i.i.i664 = getelementptr inbounds %struct.ssb_bus_ops, ptr %563, i32 0, i32 4
  %564 = ptrtoint ptr %write16.i.i.i664 to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load ptr, ptr %write16.i.i.i664, align 4
  tail call void %565(ptr noundef %561, i16 noundef zeroext 1020, i16 noundef zeroext 96) #7
  %566 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load ptr, ptr %dev, align 4
  %568 = ptrtoint ptr %567 to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load ptr, ptr %567, align 4
  %write16.i.i2.i665 = getelementptr inbounds %struct.ssb_bus_ops, ptr %569, i32 0, i32 4
  %570 = ptrtoint ptr %write16.i.i2.i665 to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load ptr, ptr %write16.i.i2.i665, align 4
  tail call void %571(ptr noundef %567, i16 noundef zeroext 1022, i16 noundef zeroext %call.i.i.i568) #7
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 67, i16 noundef zeroext %call27) #7
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 122, i16 noundef zeroext %call29) #7
  %572 = and i16 %call31, 240
  %call299 = tail call zeroext i16 @b43legacy_radio_read16(ptr noundef %dev, i16 noundef zeroext 82) #7
  %573 = and i16 %call299, 15
  %or304539 = or i16 %573, %572
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 82, i16 noundef zeroext %or304539) #7
  %574 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load ptr, ptr %dev, align 4
  %576 = ptrtoint ptr %575 to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load ptr, ptr %575, align 4
  %write16.i.i666 = getelementptr inbounds %struct.ssb_bus_ops, ptr %577, i32 0, i32 4
  %578 = ptrtoint ptr %write16.i.i666 to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load ptr, ptr %write16.i.i666, align 4
  tail call void %579(ptr noundef %575, i16 noundef zeroext 994, i16 noundef zeroext %call.i.i554) #7
  %580 = ptrtoint ptr %gmode to i32
  call void @__asan_load1_noabort(i32 %580)
  %581 = load i8, ptr %gmode, align 1, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %581)
  %tobool309.not = icmp eq i8 %581, 0
  br i1 %tobool309.not, label %if.end282.if.end317_crit_edge, label %if.then310

if.end282.if.end317_crit_edge:                    ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end317

if.then310:                                       ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #9
  %582 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load ptr, ptr %dev, align 4
  %584 = ptrtoint ptr %583 to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load ptr, ptr %583, align 4
  %write16.i.i.i667 = getelementptr inbounds %struct.ssb_bus_ops, ptr %585, i32 0, i32 4
  %586 = ptrtoint ptr %write16.i.i.i667 to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load ptr, ptr %write16.i.i.i667, align 4
  tail call void %587(ptr noundef %583, i16 noundef zeroext 1020, i16 noundef zeroext 2065) #7
  %588 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load ptr, ptr %dev, align 4
  %590 = ptrtoint ptr %589 to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load ptr, ptr %589, align 4
  %write16.i.i2.i668 = getelementptr inbounds %struct.ssb_bus_ops, ptr %591, i32 0, i32 4
  %592 = ptrtoint ptr %write16.i.i2.i668 to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load ptr, ptr %write16.i.i2.i668, align 4
  tail call void %593(ptr noundef %589, i16 noundef zeroext 1022, i16 noundef zeroext %regstack.sroa.38.0) #7
  %594 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load ptr, ptr %dev, align 4
  %596 = ptrtoint ptr %595 to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load ptr, ptr %595, align 4
  %write16.i.i.i669 = getelementptr inbounds %struct.ssb_bus_ops, ptr %597, i32 0, i32 4
  %598 = ptrtoint ptr %write16.i.i.i669 to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load ptr, ptr %write16.i.i.i669, align 4
  tail call void %599(ptr noundef %595, i16 noundef zeroext 1020, i16 noundef zeroext 2066) #7
  %600 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load ptr, ptr %dev, align 4
  %602 = ptrtoint ptr %601 to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load ptr, ptr %601, align 4
  %write16.i.i2.i670 = getelementptr inbounds %struct.ssb_bus_ops, ptr %603, i32 0, i32 4
  %604 = ptrtoint ptr %write16.i.i2.i670 to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load ptr, ptr %write16.i.i2.i670, align 4
  tail call void %605(ptr noundef %601, i16 noundef zeroext 1022, i16 noundef zeroext %regstack.sroa.40.0) #7
  %606 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load ptr, ptr %dev, align 4
  %608 = ptrtoint ptr %607 to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load ptr, ptr %607, align 4
  %write16.i.i.i671 = getelementptr inbounds %struct.ssb_bus_ops, ptr %609, i32 0, i32 4
  %610 = ptrtoint ptr %write16.i.i.i671 to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load ptr, ptr %write16.i.i.i671, align 4
  tail call void %611(ptr noundef %607, i16 noundef zeroext 1020, i16 noundef zeroext 2068) #7
  %612 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load ptr, ptr %dev, align 4
  %614 = ptrtoint ptr %613 to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load ptr, ptr %613, align 4
  %write16.i.i2.i672 = getelementptr inbounds %struct.ssb_bus_ops, ptr %615, i32 0, i32 4
  %616 = ptrtoint ptr %write16.i.i2.i672 to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load ptr, ptr %write16.i.i2.i672, align 4
  tail call void %617(ptr noundef %613, i16 noundef zeroext 1022, i16 noundef zeroext %regstack.sroa.42.0) #7
  %618 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load ptr, ptr %dev, align 4
  %620 = ptrtoint ptr %619 to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load ptr, ptr %619, align 4
  %write16.i.i.i673 = getelementptr inbounds %struct.ssb_bus_ops, ptr %621, i32 0, i32 4
  %622 = ptrtoint ptr %write16.i.i.i673 to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load ptr, ptr %write16.i.i.i673, align 4
  tail call void %623(ptr noundef %619, i16 noundef zeroext 1020, i16 noundef zeroext 2069) #7
  %624 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load ptr, ptr %dev, align 4
  %626 = ptrtoint ptr %625 to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load ptr, ptr %625, align 4
  %write16.i.i2.i674 = getelementptr inbounds %struct.ssb_bus_ops, ptr %627, i32 0, i32 4
  %628 = ptrtoint ptr %write16.i.i2.i674 to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load ptr, ptr %write16.i.i2.i674, align 4
  tail call void %629(ptr noundef %625, i16 noundef zeroext 1022, i16 noundef zeroext %regstack.sroa.45.0) #7
  %630 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load ptr, ptr %dev, align 4
  %632 = ptrtoint ptr %631 to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load ptr, ptr %631, align 4
  %write16.i.i.i675 = getelementptr inbounds %struct.ssb_bus_ops, ptr %633, i32 0, i32 4
  %634 = ptrtoint ptr %write16.i.i.i675 to i32
  call void @__asan_load4_noabort(i32 %634)
  %635 = load ptr, ptr %write16.i.i.i675, align 4
  tail call void %635(ptr noundef %631, i16 noundef zeroext 1020, i16 noundef zeroext 1065) #7
  %636 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load ptr, ptr %dev, align 4
  %638 = ptrtoint ptr %637 to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load ptr, ptr %637, align 4
  %write16.i.i2.i676 = getelementptr inbounds %struct.ssb_bus_ops, ptr %639, i32 0, i32 4
  %640 = ptrtoint ptr %write16.i.i2.i676 to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load ptr, ptr %write16.i.i2.i676, align 4
  tail call void %641(ptr noundef %637, i16 noundef zeroext 1022, i16 noundef zeroext %regstack.sroa.0.0) #7
  %642 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load ptr, ptr %dev, align 4
  %644 = ptrtoint ptr %643 to i32
  call void @__asan_load4_noabort(i32 %644)
  %645 = load ptr, ptr %643, align 4
  %write16.i.i.i677 = getelementptr inbounds %struct.ssb_bus_ops, ptr %645, i32 0, i32 4
  %646 = ptrtoint ptr %write16.i.i.i677 to i32
  call void @__asan_load4_noabort(i32 %646)
  %647 = load ptr, ptr %write16.i.i.i677, align 4
  tail call void %647(ptr noundef %643, i16 noundef zeroext 1020, i16 noundef zeroext 2050) #7
  %648 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %648)
  %649 = load ptr, ptr %dev, align 4
  %650 = ptrtoint ptr %649 to i32
  call void @__asan_load4_noabort(i32 %650)
  %651 = load ptr, ptr %649, align 4
  %write16.i.i2.i678 = getelementptr inbounds %struct.ssb_bus_ops, ptr %651, i32 0, i32 4
  %652 = ptrtoint ptr %write16.i.i2.i678 to i32
  call void @__asan_load4_noabort(i32 %652)
  %653 = load ptr, ptr %write16.i.i2.i678, align 4
  tail call void %653(ptr noundef %649, i16 noundef zeroext 1022, i16 noundef zeroext %regstack.sroa.7.0) #7
  br label %if.end317

if.end317:                                        ; preds = %if.then310, %if.end282.if.end317_crit_edge
  %call318 = tail call i32 @b43legacy_radio_selectchannel(ptr noundef %dev, i8 noundef zeroext %8, i32 noundef 1) #7
  %wl = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  br label %for.body323

for.body323:                                      ; preds = %for.inc351.for.body323_crit_edge, %if.end317
  %indvars.iv713 = phi i32 [ 0, %if.end317 ], [ %indvars.iv.next714, %for.inc351.for.body323_crit_edge ]
  %654 = ptrtoint ptr %_lo_pairs.i611 to i32
  call void @__asan_load4_noabort(i32 %654)
  %655 = load ptr, ptr %_lo_pairs.i611, align 4
  %add.ptr = getelementptr %struct.b43legacy_lopair, ptr %655, i32 %indvars.iv713
  %656 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %656)
  %657 = load i8, ptr %add.ptr, align 1
  %658 = add i8 %657, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %658)
  %659 = icmp ult i8 %658, -17
  br i1 %659, label %for.body323.if.then344_crit_edge, label %lor.lhs.false334

for.body323.if.then344_crit_edge:                 ; preds = %for.body323
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then344

lor.lhs.false334:                                 ; preds = %for.body323
  %high335 = getelementptr %struct.b43legacy_lopair, ptr %655, i32 %indvars.iv713, i32 1
  %660 = ptrtoint ptr %high335 to i32
  call void @__asan_load1_noabort(i32 %660)
  %661 = load i8, ptr %high335, align 1
  %662 = add i8 %661, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %662)
  %663 = icmp ult i8 %662, -17
  br i1 %663, label %lor.lhs.false334.if.then344_crit_edge, label %lor.lhs.false334.for.inc351_crit_edge

lor.lhs.false334.for.inc351_crit_edge:            ; preds = %lor.lhs.false334
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc351

lor.lhs.false334.if.then344_crit_edge:            ; preds = %lor.lhs.false334
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then344

if.then344:                                       ; preds = %lor.lhs.false334.if.then344_crit_edge, %for.body323.if.then344_crit_edge
  %664 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %664)
  %665 = load ptr, ptr %wl, align 4
  %conv346 = sext i8 %657 to i32
  %high347 = getelementptr %struct.b43legacy_lopair, ptr %655, i32 %indvars.iv713, i32 1
  %666 = ptrtoint ptr %high347 to i32
  call void @__asan_load1_noabort(i32 %666)
  %667 = load i8, ptr %high347, align 1
  %conv348 = sext i8 %667 to i32
  tail call void (ptr, ptr, ...) @b43legacywarn(ptr noundef %665, ptr noundef nonnull @.str.1, i32 noundef %conv346, i32 noundef %conv348, i32 noundef %indvars.iv713) #7
  br label %for.inc351

for.inc351:                                       ; preds = %if.then344, %lor.lhs.false334.for.inc351_crit_edge
  %indvars.iv.next714 = add nuw nsw i32 %indvars.iv713, 1
  %exitcond715.not = icmp eq i32 %indvars.iv.next714, 56
  br i1 %exitcond715.not, label %for.end353, label %for.inc351.for.body323_crit_edge

for.inc351.for.body323_crit_edge:                 ; preds = %for.inc351
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body323

for.end353:                                       ; preds = %for.inc351
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %control) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b43legacy_radio_selectchannel(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_dummy_transmission(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @b43legacy_phy_lo_g_state(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %in_pair, ptr nocapture noundef writeonly %out_pair, i16 noundef zeroext %r27) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %in_pair to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %in_pair, align 1
  %high2 = getelementptr inbounds %struct.b43legacy_lopair, ptr %in_pair, i32 0, i32 1
  %2 = ptrtoint ptr %high2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %high2, align 1
  %4 = add i8 %1, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %4)
  %5 = icmp ult i8 %4, -17
  call void @__sanitizer_cov_trace_const_cmp1(i8 -8, i8 %3)
  %cmp14.i = icmp slt i8 %3, -8
  %or.cond34.i = select i1 %5, i1 true, i1 %cmp14.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %3)
  %cmp19.i = icmp sgt i8 %3, 8
  %or.cond35.i = select i1 %or.cond34.i, i1 true, i1 %cmp19.i
  br i1 %or.cond35.i, label %if.then.i, label %entry.b43legacy_lo_write.exit_crit_edge

entry.b43legacy_lo_write.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43legacy_lo_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %wl.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  %6 = ptrtoint ptr %wl.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wl.i, align 4
  %conv22.i = sext i8 %1 to i32
  %conv24.i = sext i8 %3 to i32
  tail call void (ptr, ptr, ...) @b43legacydbg(ptr noundef %7, ptr noundef nonnull @.str.13, i32 noundef %conv22.i, i32 noundef %conv24.i) #7
  tail call void @dump_stack() #10
  br label %b43legacy_lo_write.exit

b43legacy_lo_write.exit:                          ; preds = %if.then.i, %entry.b43legacy_lo_write.exit_crit_edge
  %conv1.i = zext i8 %3 to i16
  %shl.i = shl nuw i16 %conv1.i, 8
  %conv2.i = zext i8 %1 to i16
  %or.i = or i16 %shl.i, %conv2.i
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %write16.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %write16.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write16.i.i.i.i, align 4
  tail call void %13(ptr noundef %9, i16 noundef zeroext 1020, i16 noundef zeroext 2064) #7
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %write16.i.i2.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %write16.i.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write16.i.i2.i.i, align 4
  tail call void %19(ptr noundef %15, i16 noundef zeroext 1022, i16 noundef zeroext %or.i) #7
  %call = tail call fastcc i32 @b43legacy_phy_lo_g_singledeviation(ptr noundef %dev, i16 noundef zeroext %r27)
  %wl.i191 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %do.cond143.do.body_crit_edge, %b43legacy_lo_write.exit
  %lowest_transition.sroa.0.0 = phi i8 [ %1, %b43legacy_lo_write.exit ], [ %lowest_transition.sroa.0.2, %do.cond143.do.body_crit_edge ]
  %lowest_transition.sroa.8.0 = phi i8 [ %3, %b43legacy_lo_write.exit ], [ %lowest_transition.sroa.8.2, %do.cond143.do.body_crit_edge ]
  %lowest_deviation.0 = phi i32 [ %call, %b43legacy_lo_write.exit ], [ %lowest_deviation.2, %do.cond143.do.body_crit_edge ]
  %state.0 = phi i32 [ 0, %b43legacy_lo_write.exit ], [ %state.2, %do.cond143.do.body_crit_edge ]
  %i.0 = phi i32 [ 12, %b43legacy_lo_write.exit ], [ %dec, %do.cond143.do.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %state.0)
  %20 = icmp ult i32 %state.0, 9
  br i1 %20, label %if.end, label %if.end.thread, !prof !56

if.end.thread:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1388, i32 noundef 9, ptr noundef null) #7
  br label %if.else

if.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state.0)
  %cmp25 = icmp eq i32 %state.0, 0
  br i1 %cmp25, label %if.end..thread_crit_edge, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.end..thread_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %.thread

if.else:                                          ; preds = %if.end.if.else_crit_edge, %if.end.thread
  %21 = and i32 %state.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp27 = icmp eq i32 %21, 0
  %22 = xor i32 %21, -1
  %begin.0 = add i32 %state.0, %22
  %end.0.v = select i1 %cmp27, i32 1, i32 2
  %end.0 = add i32 %end.0.v, %state.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %begin.0)
  %cmp34 = icmp slt i32 %begin.0, 1
  %add36 = add i32 %begin.0, 8
  %23 = select i1 %cmp34, i32 %add36, i32 %begin.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %end.0)
  %cmp38 = icmp sgt i32 %end.0, 8
  %sub40 = add i32 %end.0, -8
  %spec.select218 = select i1 %cmp38, i32 %sub40, i32 %end.0
  br label %.thread

.thread:                                          ; preds = %if.else, %if.end..thread_crit_edge
  %24 = phi i32 [ 1, %if.end..thread_crit_edge ], [ %23, %if.else ]
  %25 = phi i32 [ 8, %if.end..thread_crit_edge ], [ %spec.select218, %if.else ]
  br label %while.cond

while.cond:                                       ; preds = %if.end137, %.thread
  %lowest_transition.sroa.0.1 = phi i8 [ %lowest_transition.sroa.0.0, %.thread ], [ %lowest_transition.sroa.0.2, %if.end137 ]
  %lowest_transition.sroa.8.1 = phi i8 [ %lowest_transition.sroa.8.0, %.thread ], [ %lowest_transition.sroa.8.2, %if.end137 ]
  %found_lower.0 = phi i32 [ 0, %.thread ], [ %found_lower.1, %if.end137 ]
  %j.0 = phi i32 [ %24, %.thread ], [ %j.1, %if.end137 ]
  %lowest_deviation.1 = phi i32 [ %lowest_deviation.0, %.thread ], [ %lowest_deviation.2, %if.end137 ]
  %state.1 = phi i32 [ %state.0, %.thread ], [ %state.2, %if.end137 ]
  %26 = add i32 %j.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %26)
  %27 = icmp ult i32 %26, 8
  br i1 %27, label %while.cond.if.end74_crit_edge, label %do.end68, !prof !56

while.cond.if.end74_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

do.end68:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1408, i32 noundef 9, ptr noundef null) #7
  br label %if.end74

if.end74:                                         ; preds = %do.end68, %while.cond.if.end74_crit_edge
  %arrayidx = getelementptr [8 x %struct.b43legacy_lopair], ptr @b43legacy_phy_lo_g_state.transitions, i32 0, i32 %26
  %high84 = getelementptr [8 x %struct.b43legacy_lopair], ptr @b43legacy_phy_lo_g_state.transitions, i32 0, i32 %26, i32 1
  %28 = ptrtoint ptr %high84 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %high84, align 1
  %add86 = add i8 %29, %lowest_transition.sroa.8.0
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx, align 1
  %add95 = add i8 %31, %lowest_transition.sroa.0.0
  %conv100 = sext i8 %add95 to i32
  %32 = tail call i32 @llvm.abs.i32(i32 %conv100, i1 true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %32)
  %cmp106 = icmp ult i32 %32, 9
  br i1 %cmp106, label %land.lhs.true, label %if.end74.if.end133_crit_edge

if.end74.if.end133_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end133

land.lhs.true:                                    ; preds = %if.end74
  %conv111 = sext i8 %add86 to i32
  %33 = tail call i32 @llvm.abs.i32(i32 %conv111, i1 true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %33)
  %cmp121 = icmp ult i32 %33, 9
  br i1 %cmp121, label %if.then123, label %land.lhs.true.if.end133_crit_edge

land.lhs.true.if.end133_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end133

if.then123:                                       ; preds = %land.lhs.true
  %34 = add i8 %add95, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %34)
  %35 = icmp ult i8 %34, -17
  call void @__sanitizer_cov_trace_const_cmp1(i8 -8, i8 %add86)
  %cmp14.i187 = icmp slt i8 %add86, -8
  %or.cond34.i188 = select i1 %35, i1 true, i1 %cmp14.i187
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %add86)
  %cmp19.i189 = icmp sgt i8 %add86, 8
  %or.cond35.i190 = select i1 %or.cond34.i188, i1 true, i1 %cmp19.i189
  br i1 %or.cond35.i190, label %if.then.i194, label %if.then123.b43legacy_lo_write.exit201_crit_edge

if.then123.b43legacy_lo_write.exit201_crit_edge:  ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43legacy_lo_write.exit201

if.then.i194:                                     ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %wl.i191 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %wl.i191, align 4
  tail call void (ptr, ptr, ...) @b43legacydbg(ptr noundef %37, ptr noundef nonnull @.str.13, i32 noundef %conv100, i32 noundef %conv111) #7
  tail call void @dump_stack() #10
  br label %b43legacy_lo_write.exit201

b43legacy_lo_write.exit201:                       ; preds = %if.then.i194, %if.then123.b43legacy_lo_write.exit201_crit_edge
  %conv1.i195 = zext i8 %add86 to i16
  %shl.i196 = shl nuw i16 %conv1.i195, 8
  %conv2.i197 = zext i8 %add95 to i16
  %or.i198 = or i16 %shl.i196, %conv2.i197
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %write16.i.i.i.i199 = getelementptr inbounds %struct.ssb_bus_ops, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %write16.i.i.i.i199 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write16.i.i.i.i199, align 4
  tail call void %43(ptr noundef %39, i16 noundef zeroext 1020, i16 noundef zeroext 2064) #7
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %write16.i.i2.i.i200 = getelementptr inbounds %struct.ssb_bus_ops, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %write16.i.i2.i.i200 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write16.i.i2.i.i200, align 4
  tail call void %49(ptr noundef %45, i16 noundef zeroext 1022, i16 noundef zeroext %or.i198) #7
  %call124 = tail call fastcc i32 @b43legacy_phy_lo_g_singledeviation(ptr noundef %dev, i16 noundef zeroext %r27)
  call void @__sanitizer_cov_trace_cmp4(i32 %call124, i32 %lowest_deviation.1)
  %cmp125 = icmp ult i32 %call124, %lowest_deviation.1
  br i1 %cmp125, label %if.then127, label %b43legacy_lo_write.exit201.if.end133_crit_edge

b43legacy_lo_write.exit201.if.end133_crit_edge:   ; preds = %b43legacy_lo_write.exit201
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end133

if.then127:                                       ; preds = %b43legacy_lo_write.exit201
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end133

if.end133:                                        ; preds = %if.then127, %b43legacy_lo_write.exit201.if.end133_crit_edge, %land.lhs.true.if.end133_crit_edge, %if.end74.if.end133_crit_edge
  %lowest_transition.sroa.0.2 = phi i8 [ %add95, %if.then127 ], [ %lowest_transition.sroa.0.1, %b43legacy_lo_write.exit201.if.end133_crit_edge ], [ %lowest_transition.sroa.0.1, %land.lhs.true.if.end133_crit_edge ], [ %lowest_transition.sroa.0.1, %if.end74.if.end133_crit_edge ]
  %lowest_transition.sroa.8.2 = phi i8 [ %add86, %if.then127 ], [ %lowest_transition.sroa.8.1, %b43legacy_lo_write.exit201.if.end133_crit_edge ], [ %lowest_transition.sroa.8.1, %land.lhs.true.if.end133_crit_edge ], [ %lowest_transition.sroa.8.1, %if.end74.if.end133_crit_edge ]
  %found_lower.1 = phi i32 [ 1, %if.then127 ], [ %found_lower.0, %b43legacy_lo_write.exit201.if.end133_crit_edge ], [ %found_lower.0, %land.lhs.true.if.end133_crit_edge ], [ %found_lower.0, %if.end74.if.end133_crit_edge ]
  %lowest_deviation.2 = phi i32 [ %call124, %if.then127 ], [ %lowest_deviation.1, %b43legacy_lo_write.exit201.if.end133_crit_edge ], [ %lowest_deviation.1, %land.lhs.true.if.end133_crit_edge ], [ %lowest_deviation.1, %if.end74.if.end133_crit_edge ]
  %state.2 = phi i32 [ %j.0, %if.then127 ], [ %state.1, %b43legacy_lo_write.exit201.if.end133_crit_edge ], [ %state.1, %land.lhs.true.if.end133_crit_edge ], [ %state.1, %if.end74.if.end133_crit_edge ]
  %cmp134 = icmp eq i32 %j.0, %25
  br i1 %cmp134, label %do.cond143, label %if.end137

if.end137:                                        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %j.0)
  %cmp138 = icmp eq i32 %j.0, 8
  %inc = add i32 %j.0, 1
  %j.1 = select i1 %cmp138, i32 1, i32 %inc
  br label %while.cond

do.cond143:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0)
  %tobool144.not = icmp eq i32 %i.0, 0
  %dec = add nsw i32 %i.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found_lower.1)
  %tobool146.not = icmp eq i32 %found_lower.1, 0
  %or.cond = select i1 %tobool144.not, i1 true, i1 %tobool146.not
  br i1 %or.cond, label %do.end148, label %do.cond143.do.body_crit_edge

do.cond143.do.body_crit_edge:                     ; preds = %do.cond143
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end148:                                        ; preds = %do.cond143
  call void @__sanitizer_cov_trace_pc() #9
  %high150 = getelementptr inbounds %struct.b43legacy_lopair, ptr %out_pair, i32 0, i32 1
  %50 = ptrtoint ptr %high150 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %lowest_transition.sroa.8.2, ptr %high150, align 1
  %51 = ptrtoint ptr %out_pair to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %lowest_transition.sroa.0.2, ptr %out_pair, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacywarn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43legacy_phy_lo_mark_all_unused(ptr nocapture noundef readonly %dev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %_lo_pairs = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 19
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.04 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %0 = ptrtoint ptr %_lo_pairs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_lo_pairs, align 4
  %used = getelementptr %struct.b43legacy_lopair, ptr %1, i32 %i.04, i32 2
  %2 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %used, align 1
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %used, align 1
  %inc = add nuw nsw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, 56
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43legacy_phy_xmitpower(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %savedpctlreg = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 6
  %0 = ptrtoint ptr %savedpctlreg to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %savedpctlreg, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %1)
  %cmp = icmp eq i16 %1, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %bus = getelementptr inbounds %struct.ssb_device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 4
  %type = getelementptr inbounds %struct.ssb_bus, ptr %5, i32 0, i32 21, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1046, i16 %7)
  %cmp5 = icmp eq i16 %7, 1046
  br i1 %cmp5, label %land.lhs.true, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %boardinfo.i = getelementptr inbounds %struct.ssb_bus, ptr %5, i32 0, i32 21
  %8 = ptrtoint ptr %boardinfo.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %boardinfo.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5348, i16 %9)
  %cmp.i = icmp eq i16 %9, 5348
  br i1 %cmp.i, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %manual_txpower_control = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 43
  %10 = ptrtoint ptr %manual_txpower_control to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %manual_txpower_control, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %do.body, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end9
  %type12 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 3
  %12 = ptrtoint ptr %type12 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %type12, align 1
  %.off = add i8 %13, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %do.body.do.end58_crit_edge, label %do.end

do.body.do.end58_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end58

do.end:                                           ; preds = %do.body
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4) #10
  %14 = ptrtoint ptr %type12 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %type12, align 1
  %.off616 = add i8 %15, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off616)
  %switch617 = icmp ult i8 %.off616, 2
  br i1 %switch617, label %do.end.do.end58_crit_edge, label %do.body47

do.end.do.end58_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end58

do.body47:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/broadcom/b43legacy/phy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1781, 0\0A.popsection", ""() #7, !srcloc !63
  unreachable

do.end58:                                         ; preds = %do.end.do.end58_crit_edge, %do.body.do.end58_crit_edge
  %call59 = tail call zeroext i16 @b43legacy_shm_read16(ptr noundef %dev, i16 noundef zeroext 1, i16 noundef zeroext 88) #7
  %conv61 = trunc i16 %call59 to i8
  %16 = lshr i16 %call59, 8
  %conv64 = trunc i16 %16 to i8
  %call65 = tail call zeroext i16 @b43legacy_shm_read16(ptr noundef %dev, i16 noundef zeroext 1, i16 noundef zeroext 90) #7
  %conv68 = trunc i16 %call65 to i8
  %17 = lshr i16 %call65, 8
  %conv72 = trunc i16 %17 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %conv61)
  %cmp74 = icmp eq i8 %conv61, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %conv64)
  %cmp77 = icmp eq i8 %conv64, 127
  %or.cond = select i1 %cmp74, i1 true, i1 %cmp77
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %conv68)
  %cmp81 = icmp eq i8 %conv68, 127
  %or.cond607 = select i1 %or.cond, i1 true, i1 %cmp81
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %conv72)
  %cmp85 = icmp eq i8 %conv72, 127
  %or.cond608 = select i1 %or.cond607, i1 true, i1 %cmp85
  br i1 %or.cond608, label %if.then87, label %do.end58.if.end136_crit_edge

do.end58.if.end136_crit_edge:                     ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end136

if.then87:                                        ; preds = %do.end58
  %call88 = tail call zeroext i16 @b43legacy_shm_read16(ptr noundef %dev, i16 noundef zeroext 1, i16 noundef zeroext 112) #7
  %call96 = tail call zeroext i16 @b43legacy_shm_read16(ptr noundef %dev, i16 noundef zeroext 1, i16 noundef zeroext 114) #7
  %18 = lshr i16 %call96, 8
  %19 = and i16 %call88, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %19)
  %cmp105 = icmp eq i16 %19, 127
  br i1 %cmp105, label %if.then87.cleanup_crit_edge, label %lor.lhs.false107

if.then87.cleanup_crit_edge:                      ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false107:                                 ; preds = %if.then87
  %20 = lshr i16 %call88, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %20)
  %cmp109 = icmp eq i16 %20, 127
  %21 = and i16 %call96, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %21)
  %cmp113 = icmp eq i16 %21, 127
  %or.cond609 = select i1 %cmp109, i1 true, i1 %cmp113
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %18)
  %cmp117 = icmp eq i16 %18, 127
  %or.cond610 = select i1 %or.cond609, i1 true, i1 %cmp117
  br i1 %or.cond610, label %lor.lhs.false107.cleanup_crit_edge, label %if.end120

lor.lhs.false107.cleanup_crit_edge:               ; preds = %lor.lhs.false107
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end120:                                        ; preds = %lor.lhs.false107
  call void @__sanitizer_cov_trace_pc() #9
  %22 = trunc i16 %call88 to i8
  %23 = add i8 %22, 32
  %conv123 = and i8 %23, 63
  %24 = trunc i16 %20 to i8
  %25 = add i8 %24, 32
  %conv127 = and i8 %25, 63
  %26 = trunc i16 %call96 to i8
  %27 = add i8 %26, 32
  %conv131 = and i8 %27, 63
  %28 = trunc i16 %18 to i8
  %29 = add i8 %28, 32
  %conv135 = and i8 %29, 63
  br label %if.end136

if.end136:                                        ; preds = %if.end120, %do.end58.if.end136_crit_edge
  %v3.0 = phi i8 [ %conv135, %if.end120 ], [ %conv72, %do.end58.if.end136_crit_edge ]
  %v2.0 = phi i8 [ %conv131, %if.end120 ], [ %conv68, %do.end58.if.end136_crit_edge ]
  %v1.0 = phi i8 [ %conv127, %if.end120 ], [ %conv64, %do.end58.if.end136_crit_edge ]
  %v0.0 = phi i8 [ %conv123, %if.end120 ], [ %conv61, %do.end58.if.end136_crit_edge ]
  tail call void @b43legacy_radio_clear_tssi(ptr noundef %dev) #7
  %conv137 = sext i8 %v0.0 to i16
  %conv138 = sext i8 %v1.0 to i16
  %conv140 = sext i8 %v2.0 to i16
  %conv142 = sext i8 %v3.0 to i16
  %add139 = add nsw i16 %conv142, 2
  %add141 = add nsw i16 %add139, %conv140
  %add143 = add nsw i16 %add141, %conv138
  %add144 = add nsw i16 %add143, %conv137
  %div662 = sdiv i16 %add144, 4
  %conv145 = trunc i16 %div662 to i8
  br i1 %or.cond608, label %land.lhs.true148, label %if.end136.if.end156_crit_edge

if.end136.if.end156_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end156

land.lhs.true148:                                 ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #9
  %call149 = tail call zeroext i16 @b43legacy_shm_read16(ptr noundef %dev, i16 noundef zeroext 1, i16 noundef zeroext 94) #7
  %30 = and i16 %call149, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool152.not = icmp eq i16 %30, 0
  %conv155 = add i8 %conv145, -13
  %spec.select = select i1 %tobool152.not, i8 %conv145, i8 %conv155
  br label %if.end156

if.end156:                                        ; preds = %land.lhs.true148, %if.end136.if.end156_crit_edge
  %average.0 = phi i8 [ %conv145, %if.end136.if.end156_crit_edge ], [ %spec.select, %land.lhs.true148 ]
  %31 = ptrtoint ptr %type12 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %type12, align 1
  %.off.i = add i8 %32, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 2
  br i1 %switch.i, label %b43legacy_phy_estimate_power_out.exit, label %do.end.i

do.end.i:                                         ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.15) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/broadcom/b43legacy/phy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1744, 0\0A.popsection", ""() #7, !srcloc !64
  unreachable

b43legacy_phy_estimate_power_out.exit:            ; preds = %if.end156
  %idle_tssi.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 21
  %33 = ptrtoint ptr %idle_tssi.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %idle_tssi.i, align 4
  %conv.i = sext i8 %34 to i32
  %conv2.i = sext i8 %average.0 to i32
  %add.i = add nsw i32 %conv.i, %conv2.i
  %35 = ptrtoint ptr %savedpctlreg to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %savedpctlreg, align 4
  %conv3.i = zext i16 %36 to i32
  %sub.i = sub nsw i32 %add.i, %conv3.i
  %37 = tail call i32 @llvm.smax.i32(i32 %sub.i, i32 0) #7
  %38 = tail call i32 @llvm.umin.i32(i32 %37, i32 63) #7
  %tssi2dbm.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 20
  %39 = ptrtoint ptr %tssi2dbm.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tssi2dbm.i, align 4
  %arrayidx.i = getelementptr i8, ptr %40, i32 %38
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.i, align 1
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 4
  %bus160 = getelementptr inbounds %struct.ssb_device, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %bus160 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bus160, align 4
  %maxpwr_bg = getelementptr inbounds %struct.ssb_bus, ptr %46, i32 0, i32 22, i32 38
  %47 = ptrtoint ptr %maxpwr_bg to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %maxpwr_bg, align 4
  %conv161 = zext i8 %48 to i32
  %boardflags_lo = getelementptr inbounds %struct.ssb_bus, ptr %46, i32 0, i32 22, i32 70
  %49 = ptrtoint ptr %boardflags_lo to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %boardflags_lo, align 4
  %51 = and i16 %50, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool167.not = icmp eq i16 %51, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %32)
  %cmp171 = icmp eq i8 %32, 2
  %sub174 = add nsw i32 %conv161, -3
  %spec.select611 = select i1 %cmp171, i32 %sub174, i32 %conv161
  %max_pwr.0 = select i1 %tobool167.not, i32 %conv161, i32 %spec.select611
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %max_pwr.0)
  %cmp176 = icmp slt i32 %max_pwr.0, 1
  br i1 %cmp176, label %if.then184, label %b43legacy_phy_estimate_power_out.exit.if.end190_crit_edge, !prof !57

b43legacy_phy_estimate_power_out.exit.if.end190_crit_edge: ; preds = %b43legacy_phy_estimate_power_out.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end190

if.then184:                                       ; preds = %b43legacy_phy_estimate_power_out.exit
  call void @__sanitizer_cov_trace_pc() #9
  %wl = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  %52 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %wl, align 4
  tail call void (ptr, ptr, ...) @b43legacywarn(ptr noundef %53, ptr noundef nonnull @.str.5) #7
  %54 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev, align 4
  %bus187 = getelementptr inbounds %struct.ssb_device, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %bus187 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bus187, align 4
  %maxpwr_bg189 = getelementptr inbounds %struct.ssb_bus, ptr %57, i32 0, i32 22, i32 38
  %58 = ptrtoint ptr %maxpwr_bg189 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 74, ptr %maxpwr_bg189, align 4
  br label %if.end190

if.end190:                                        ; preds = %if.then184, %b43legacy_phy_estimate_power_out.exit.if.end190_crit_edge
  %max_pwr.1 = phi i32 [ 74, %if.then184 ], [ %max_pwr.0, %b43legacy_phy_estimate_power_out.exit.if.end190_crit_edge ]
  %59 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev, align 4
  %bus192 = getelementptr inbounds %struct.ssb_device, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %bus192 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bus192, align 4
  %antenna_gain = getelementptr inbounds %struct.ssb_bus, ptr %62, i32 0, i32 22, i32 75
  %63 = ptrtoint ptr %antenna_gain to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %antenna_gain, align 4
  %conv194 = sext i8 %64 to i32
  %sub196 = sub nsw i32 74, %conv194
  %65 = tail call i32 @llvm.smin.i32(i32 %sub196, i32 %max_pwr.1)
  %power_level = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 30
  %66 = ptrtoint ptr %power_level to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %power_level, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %cmp202.not = icmp eq i8 %67, 0
  %conv200 = zext i8 %67 to i32
  %shl = shl nuw nsw i32 %conv200, 2
  %cond207 = select i1 %cmp202.not, i32 0, i32 %shl
  %68 = tail call i32 @llvm.smin.i32(i32 %cond207, i32 %65)
  %call216 = tail call i32 @b43legacy_debug(ptr noundef %dev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call216)
  %tobool217.not = icmp eq i32 %call216, 0
  br i1 %tobool217.not, label %if.end190.if.end231_crit_edge, label %if.then218

if.end190.if.end231_crit_edge:                    ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end231

if.then218:                                       ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #9
  %wl219 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  %69 = ptrtoint ptr %wl219 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %wl219, align 4
  %div221664 = sdiv i8 %42, 4
  %div221.sext = sext i8 %div221664 to i32
  %71 = and i8 %42, 3
  %narrow = mul nuw nsw i8 %71, 25
  %div224 = zext i8 %narrow to i32
  %div226.lhs.trunc = trunc i32 %68 to i16
  %div226665 = sdiv i16 %div226.lhs.trunc, 4
  %div226.sext = sext i16 %div226665 to i32
  %and228 = and i32 %68, 3
  %div230 = mul nuw nsw i32 %and228, 25
  tail call void (ptr, ptr, ...) @b43legacydbg(ptr noundef %70, ptr noundef nonnull @.str.6, i32 noundef %div221.sext, i32 noundef %div224, i32 noundef %div226.sext, i32 noundef %div230) #7
  br label %if.end231

if.end231:                                        ; preds = %if.then218, %if.end190.if.end231_crit_edge
  %conv233 = sext i8 %42 to i32
  %sub234 = sub nsw i32 %68, %conv233
  %div235.lhs.trunc = trunc i32 %sub234 to i16
  %div235663 = sdiv i16 %div235.lhs.trunc, 2
  %div235.sext = sext i16 %div235663 to i32
  %shr243 = ashr i32 %div235.sext, 1
  %.neg = mul nsw i32 %div235.sext, -8192
  %72 = add nsw i32 %.neg, -57344
  %conv245 = ashr i32 %72, 16
  %mul246.neg = mul nsw i32 %conv245, 65532
  %sub247 = sub nsw i32 %mul246.neg, %shr243
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %72)
  %cmp250 = icmp ult i32 %72, 65536
  %sext600.mask = and i32 %sub247, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext600.mask)
  %cmp254 = icmp eq i32 %sext600.mask, 0
  %or.cond612 = select i1 %cmp250, i1 %cmp254, i1 false
  %73 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 32
  %bbatt.i.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 32, i32 1
  %74 = ptrtoint ptr %bbatt.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %bbatt.i.i, align 2
  br i1 %or.cond612, label %if.then256, label %if.end257

if.then256:                                       ; preds = %if.end231
  %76 = ptrtoint ptr %73 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %73, align 4
  %txctl1.i.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 32, i32 2
  %78 = ptrtoint ptr %txctl1.i.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %txctl1.i.i, align 4
  %80 = tail call i16 @llvm.umin.i16(i16 %75, i16 6) #7
  %conv3.i.i.i = zext i16 %77 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %77)
  %cmp4.i.i.i = icmp ugt i16 %77, 9
  br i1 %cmp4.i.i.i, label %do.end.i.i.i, label %if.then256.if.end19.i.i.i_crit_edge, !prof !57

if.then256.if.end19.i.i.i_crit_edge:              ; preds = %if.then256
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i.i.i

do.end.i.i.i:                                     ; preds = %if.then256
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1298, i32 noundef 9, ptr noundef null) #7
  br label %if.end19.i.i.i

if.end19.i.i.i:                                   ; preds = %do.end.i.i.i, %if.then256.if.end19.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %79)
  %cmp27.i.i.i = icmp eq i16 %79, 3
  br i1 %cmp27.i.i.i, label %if.then29.i.i.i, label %if.end30.i.i.i

if.then29.i.i.i:                                  ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %81 = lshr i16 %80, 1
  %narrow45.i.i.i = mul nuw nsw i16 %81, 14
  %mul.i.i.i.i = zext i16 %narrow45.i.i.i to i32
  br label %b43legacy_phy_lo_mark_current_used.exit

if.end30.i.i.i:                                   ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i.i = getelementptr [10 x i8], ptr @b43legacy_find_lopair.dict, i32 0, i32 %conv3.i.i.i
  %82 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i40.i.i.i = zext i8 %83 to i32
  %84 = lshr i16 %80, 1
  %narrow.i.i.i = mul nuw nsw i16 %84, 14
  %mul.i42.i.i.i = zext i16 %narrow.i.i.i to i32
  br label %b43legacy_phy_lo_mark_current_used.exit

b43legacy_phy_lo_mark_current_used.exit:          ; preds = %if.end30.i.i.i, %if.then29.i.i.i
  %mul.i42.sink.i.i.i = phi i32 [ %mul.i42.i.i.i, %if.end30.i.i.i ], [ %conv3.i.i.i, %if.then29.i.i.i ]
  %conv.i40.sink.i.i.i = phi i32 [ %conv.i40.i.i.i, %if.end30.i.i.i ], [ %mul.i.i.i.i, %if.then29.i.i.i ]
  %.sink.in.i.i.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 19
  %85 = ptrtoint ptr %.sink.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %.sink.i.i.i = load ptr, ptr %.sink.in.i.i.i, align 4
  %add.i43.i.i.i = add nuw nsw i32 %conv.i40.sink.i.i.i, %mul.i42.sink.i.i.i
  %used.i = getelementptr %struct.b43legacy_lopair, ptr %.sink.i.i.i, i32 %add.i43.i.i.i, i32 2
  %86 = ptrtoint ptr %used.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %bf.load.i = load i8, ptr %used.i, align 1
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %used.i, align 1
  br label %cleanup

if.end257:                                        ; preds = %if.end231
  %87 = trunc i32 %sub247 to i16
  %conv261 = add i16 %75, %87
  %88 = ptrtoint ptr %73 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %73, align 4
  %90 = trunc i32 %conv245 to i16
  %conv265 = add i16 %89, %90
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv265)
  %cmp267 = icmp slt i16 %conv265, 0
  br i1 %cmp267, label %if.then269, label %if.else

if.then269:                                       ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #9
  %.neg.neg = shl i16 %conv265, 2
  %sub274 = add i16 %.neg.neg, %conv261
  br label %if.end311

if.else:                                          ; preds = %if.end257
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %conv265)
  %cmp277 = icmp ugt i16 %conv265, 9
  br i1 %cmp277, label %if.then279, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv261)
  %cmp288667 = icmp slt i16 %conv261, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv265)
  %cmp291668 = icmp ne i16 %conv265, 0
  %or.cond613669 = select i1 %cmp288667, i1 %cmp291668, i1 false
  br i1 %or.cond613669, label %while.body.preheader, label %while.cond.preheader.while.cond296.preheader_crit_edge

while.cond.preheader.while.cond296.preheader_crit_edge: ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond296.preheader

while.body.preheader:                             ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %smax = call i16 @llvm.smax.i16(i16 %conv261, i16 -4)
  %91 = shl nsw i16 %90, 2
  %92 = add i16 %smax, %91
  %93 = trunc i32 %shr243 to i16
  %94 = add i16 %92, %93
  %95 = add i16 %94, 3
  %96 = sub i16 %95, %75
  %97 = lshr i16 %96, 2
  %98 = add nsw i16 %conv265, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %96)
  %99 = icmp ult i16 %96, 4
  %umin = call i16 @llvm.umin.i16(i16 %98, i16 %97)
  %100 = select i1 %99, i16 0, i16 %umin
  %101 = shl nuw nsw i16 %100, 2
  %102 = add i16 %75, %101
  %103 = add i16 %102, 4
  %104 = add i16 %91, %93
  %105 = sub i16 %103, %104
  %106 = sub nsw i16 %98, %100
  br label %while.cond296.preheader

if.then279:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %sub281 = shl i16 %conv265, 2
  %mul282 = add i16 %conv261, -36
  %add284 = add i16 %mul282, %sub281
  br label %if.end311

while.cond296.preheader:                          ; preds = %while.body.preheader, %while.cond.preheader.while.cond296.preheader_crit_edge
  %radio_attenuation.0.lcssa = phi i16 [ %conv265, %while.cond.preheader.while.cond296.preheader_crit_edge ], [ %106, %while.body.preheader ]
  %baseband_attenuation.0.lcssa = phi i16 [ %conv261, %while.cond.preheader.while.cond296.preheader_crit_edge ], [ %105, %while.body.preheader ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %baseband_attenuation.0.lcssa)
  %cmp298673 = icmp sgt i16 %baseband_attenuation.0.lcssa, 11
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %radio_attenuation.0.lcssa)
  %cmp302674 = icmp slt i16 %radio_attenuation.0.lcssa, 9
  %or.cond614675 = select i1 %cmp298673, i1 %cmp302674, i1 false
  br i1 %or.cond614675, label %while.body305.preheader, label %while.cond296.preheader.if.end311_crit_edge

while.cond296.preheader.if.end311_crit_edge:      ; preds = %while.cond296.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end311

while.body305.preheader:                          ; preds = %while.cond296.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %107 = add nuw i16 %baseband_attenuation.0.lcssa, 3
  %smin = call i16 @llvm.smin.i16(i16 %baseband_attenuation.0.lcssa, i16 15)
  %108 = sub nuw i16 %107, %smin
  %109 = lshr i16 %108, 2
  %110 = sub nsw i16 8, %radio_attenuation.0.lcssa
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %108)
  %111 = icmp ult i16 %108, 4
  %umin680 = call i16 @llvm.umin.i16(i16 %110, i16 %109)
  %112 = select i1 %111, i16 0, i16 %umin680
  %.neg681 = mul nsw i16 %112, -4
  %113 = add nsw i16 %radio_attenuation.0.lcssa, %112
  %114 = add nsw i16 %baseband_attenuation.0.lcssa, -4
  %115 = add nsw i16 %.neg681, %114
  %116 = add nsw i16 %113, 1
  br label %if.end311

if.end311:                                        ; preds = %while.body305.preheader, %while.cond296.preheader.if.end311_crit_edge, %if.then279, %if.then269
  %radio_attenuation.2 = phi i16 [ 0, %if.then269 ], [ 9, %if.then279 ], [ %radio_attenuation.0.lcssa, %while.cond296.preheader.if.end311_crit_edge ], [ %116, %while.body305.preheader ]
  %baseband_attenuation.2 = phi i16 [ %sub274, %if.then269 ], [ %add284, %if.then279 ], [ %baseband_attenuation.0.lcssa, %while.cond296.preheader.if.end311_crit_edge ], [ %115, %while.body305.preheader ]
  %117 = tail call i16 @llvm.smax.i16(i16 %baseband_attenuation.2, i16 0)
  %118 = tail call i16 @llvm.umin.i16(i16 %117, i16 11)
  %txctl1 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 32, i32 2
  %119 = ptrtoint ptr %txctl1 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %txctl1, align 4
  %radio_ver = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 8
  %121 = ptrtoint ptr %radio_ver to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %radio_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8272, i16 %122)
  %cmp337 = icmp eq i16 %122, 8272
  br i1 %cmp337, label %land.lhs.true339, label %if.end311.if.end404_crit_edge

if.end311.if.end404_crit_edge:                    ; preds = %if.end311
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end404

land.lhs.true339:                                 ; preds = %if.end311
  %radio_rev = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 10
  %123 = ptrtoint ptr %radio_rev to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %radio_rev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %124)
  %cmp341 = icmp eq i8 %124, 2
  br i1 %cmp341, label %if.then343, label %land.lhs.true339.if.end404_crit_edge

land.lhs.true339.if.end404_crit_edge:             ; preds = %land.lhs.true339
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end404

if.then343:                                       ; preds = %land.lhs.true339
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %radio_attenuation.2)
  %cmp345 = icmp slt i16 %radio_attenuation.2, 2
  br i1 %cmp345, label %if.then347, label %if.else375

if.then347:                                       ; preds = %if.then343
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %120)
  %cmp349 = icmp eq i16 %120, 0
  br i1 %cmp349, label %if.then351, label %if.else358

if.then351:                                       ; preds = %if.then347
  call void @__sanitizer_cov_trace_pc() #9
  %add353 = add nsw i16 %radio_attenuation.2, 2
  %add356 = add nuw nsw i16 %118, 2
  br label %if.end404

if.else358:                                       ; preds = %if.then347
  %125 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev, align 4
  %bus360 = getelementptr inbounds %struct.ssb_device, ptr %126, i32 0, i32 3
  %127 = ptrtoint ptr %bus360 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %bus360, align 4
  %boardflags_lo362 = getelementptr inbounds %struct.ssb_bus, ptr %128, i32 0, i32 22, i32 70
  %129 = ptrtoint ptr %boardflags_lo362 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %boardflags_lo362, align 4
  %131 = and i16 %130, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %131)
  %tobool365.not = icmp eq i16 %131, 0
  br i1 %tobool365.not, label %if.else358.if.end404_crit_edge, label %if.then366

if.else358.if.end404_crit_edge:                   ; preds = %if.else358
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end404

if.then366:                                       ; preds = %if.else358
  call void @__sanitizer_cov_trace_pc() #9
  %sub368 = shl nsw i16 %radio_attenuation.2, 2
  %mul369 = add i16 %sub368, -8
  %add371 = add i16 %mul369, %118
  br label %if.end404.thread

if.else375:                                       ; preds = %if.then343
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %radio_attenuation.2)
  %cmp377 = icmp ult i16 %radio_attenuation.2, 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %120)
  %cmp381.not = icmp eq i16 %120, 0
  %or.cond615 = select i1 %cmp377, i1 true, i1 %cmp381.not
  br i1 %or.cond615, label %if.else375.if.end404.thread_crit_edge, label %if.then383

if.else375.if.end404.thread_crit_edge:            ; preds = %if.else375
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end404.thread

if.then383:                                       ; preds = %if.else375
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %118)
  %cmp385 = icmp ult i16 %118, 3
  br i1 %cmp385, label %if.then387, label %if.else394

if.then387:                                       ; preds = %if.then383
  call void @__sanitizer_cov_trace_pc() #9
  %sub389 = add nsw i16 %radio_attenuation.2, -3
  %add392 = add nuw nsw i16 %118, 2
  br label %if.end404.thread

if.else394:                                       ; preds = %if.then383
  call void @__sanitizer_cov_trace_pc() #9
  %sub396 = add nsw i16 %radio_attenuation.2, -2
  %sub399 = add nsw i16 %118, -2
  br label %if.end404.thread

if.end404.thread:                                 ; preds = %if.else394, %if.then387, %if.else375.if.end404.thread_crit_edge, %if.then366
  %radio_attenuation.3.ph = phi i16 [ %radio_attenuation.2, %if.else375.if.end404.thread_crit_edge ], [ %sub396, %if.else394 ], [ %sub389, %if.then387 ], [ 2, %if.then366 ]
  %baseband_attenuation.3.ph = phi i16 [ %118, %if.else375.if.end404.thread_crit_edge ], [ %sub399, %if.else394 ], [ %add392, %if.then387 ], [ %add371, %if.then366 ]
  %txpower.0.ph = phi i16 [ %120, %if.else375.if.end404.thread_crit_edge ], [ 0, %if.else394 ], [ 0, %if.then387 ], [ %120, %if.then366 ]
  %132 = ptrtoint ptr %txctl1 to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 %txpower.0.ph, ptr %txctl1, align 4
  %133 = tail call i16 @llvm.smax.i16(i16 %baseband_attenuation.3.ph, i16 0)
  %134 = tail call i16 @llvm.umin.i16(i16 %133, i16 11)
  br label %137

if.end404:                                        ; preds = %if.else358.if.end404_crit_edge, %if.then351, %land.lhs.true339.if.end404_crit_edge, %if.end311.if.end404_crit_edge
  %radio_attenuation.3 = phi i16 [ %add353, %if.then351 ], [ %radio_attenuation.2, %if.else358.if.end404_crit_edge ], [ %radio_attenuation.2, %land.lhs.true339.if.end404_crit_edge ], [ %radio_attenuation.2, %if.end311.if.end404_crit_edge ]
  %baseband_attenuation.3 = phi i16 [ %add356, %if.then351 ], [ %118, %if.else358.if.end404_crit_edge ], [ %118, %land.lhs.true339.if.end404_crit_edge ], [ %118, %if.end311.if.end404_crit_edge ]
  %txpower.0 = phi i16 [ 3, %if.then351 ], [ %120, %if.else358.if.end404_crit_edge ], [ %120, %land.lhs.true339.if.end404_crit_edge ], [ %120, %if.end311.if.end404_crit_edge ]
  %135 = ptrtoint ptr %txctl1 to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %txpower.0, ptr %txctl1, align 4
  %136 = tail call i16 @llvm.umin.i16(i16 %baseband_attenuation.3, i16 11)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %radio_attenuation.3)
  %cmp433 = icmp sgt i16 %radio_attenuation.3, 0
  br i1 %cmp433, label %if.end404._crit_edge, label %if.end404..thread_crit_edge

if.end404..thread_crit_edge:                      ; preds = %if.end404
  call void @__sanitizer_cov_trace_pc() #9
  br label %.thread

if.end404._crit_edge:                             ; preds = %if.end404
  call void @__sanitizer_cov_trace_pc() #9
  br label %137

137:                                              ; preds = %if.end404._crit_edge, %if.end404.thread
  %cond428654 = phi i16 [ %134, %if.end404.thread ], [ %136, %if.end404._crit_edge ]
  %txpower.0652 = phi i16 [ %txpower.0.ph, %if.end404.thread ], [ %txpower.0, %if.end404._crit_edge ]
  %radio_attenuation.3650 = phi i16 [ %radio_attenuation.3.ph, %if.end404.thread ], [ %radio_attenuation.3, %if.end404._crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %radio_attenuation.3650)
  %cmp445 = icmp ult i16 %radio_attenuation.3650, 9
  br i1 %cmp445, label %..thread_crit_edge, label %._crit_edge

._crit_edge:                                      ; preds = %137
  call void @__sanitizer_cov_trace_pc() #9
  br label %139

..thread_crit_edge:                               ; preds = %137
  call void @__sanitizer_cov_trace_pc() #9
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %if.end404..thread_crit_edge
  %138 = phi i16 [ %radio_attenuation.3650, %..thread_crit_edge ], [ 0, %if.end404..thread_crit_edge ]
  %txpower.0651661 = phi i16 [ %txpower.0652, %..thread_crit_edge ], [ %txpower.0, %if.end404..thread_crit_edge ]
  %cond428653659 = phi i16 [ %cond428654, %..thread_crit_edge ], [ %136, %if.end404..thread_crit_edge ]
  br label %139

139:                                              ; preds = %.thread, %._crit_edge
  %txpower.0651660 = phi i16 [ %txpower.0651661, %.thread ], [ %txpower.0652, %._crit_edge ]
  %cond428653658 = phi i16 [ %cond428653659, %.thread ], [ %cond428654, %._crit_edge ]
  %140 = phi i16 [ %138, %.thread ], [ 9, %._crit_edge ]
  %141 = ptrtoint ptr %73 to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 %140, ptr %73, align 4
  %142 = ptrtoint ptr %bbatt.i.i to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 %cond428653658, ptr %bbatt.i.i, align 2
  tail call void @b43legacy_phy_lock(ptr noundef %dev)
  tail call void @b43legacy_radio_lock(ptr noundef %dev) #7
  tail call void @b43legacy_radio_set_txpower_bg(ptr noundef %dev, i16 noundef zeroext %cond428653658, i16 noundef zeroext %140, i16 noundef zeroext %txpower.0651660) #7
  %143 = ptrtoint ptr %bbatt.i.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %bbatt.i.i, align 2
  %145 = ptrtoint ptr %73 to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %73, align 4
  %147 = ptrtoint ptr %txctl1 to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %txctl1, align 4
  %149 = tail call i16 @llvm.umin.i16(i16 %144, i16 6) #7
  %conv3.i.i.i620 = zext i16 %146 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %146)
  %cmp4.i.i.i621 = icmp ugt i16 %146, 9
  br i1 %cmp4.i.i.i621, label %do.end.i.i.i622, label %.if.end19.i.i.i624_crit_edge, !prof !57

.if.end19.i.i.i624_crit_edge:                     ; preds = %139
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i.i.i624

do.end.i.i.i622:                                  ; preds = %139
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1298, i32 noundef 9, ptr noundef null) #7
  br label %if.end19.i.i.i624

if.end19.i.i.i624:                                ; preds = %do.end.i.i.i622, %.if.end19.i.i.i624_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %148)
  %cmp27.i.i.i623 = icmp eq i16 %148, 3
  br i1 %cmp27.i.i.i623, label %if.then29.i.i.i627, label %if.end30.i.i.i632

if.then29.i.i.i627:                               ; preds = %if.end19.i.i.i624
  call void @__sanitizer_cov_trace_pc() #9
  %150 = lshr i16 %149, 1
  %narrow45.i.i.i625 = mul nuw nsw i16 %150, 14
  %mul.i.i.i.i626 = zext i16 %narrow45.i.i.i625 to i32
  br label %b43legacy_phy_lo_mark_current_used.exit641

if.end30.i.i.i632:                                ; preds = %if.end19.i.i.i624
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i.i628 = getelementptr [10 x i8], ptr @b43legacy_find_lopair.dict, i32 0, i32 %conv3.i.i.i620
  %151 = ptrtoint ptr %arrayidx.i.i.i628 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %arrayidx.i.i.i628, align 1
  %conv.i40.i.i.i629 = zext i8 %152 to i32
  %153 = lshr i16 %149, 1
  %narrow.i.i.i630 = mul nuw nsw i16 %153, 14
  %mul.i42.i.i.i631 = zext i16 %narrow.i.i.i630 to i32
  br label %b43legacy_phy_lo_mark_current_used.exit641

b43legacy_phy_lo_mark_current_used.exit641:       ; preds = %if.end30.i.i.i632, %if.then29.i.i.i627
  %mul.i42.sink.i.i.i633 = phi i32 [ %mul.i42.i.i.i631, %if.end30.i.i.i632 ], [ %conv3.i.i.i620, %if.then29.i.i.i627 ]
  %conv.i40.sink.i.i.i634 = phi i32 [ %conv.i40.i.i.i629, %if.end30.i.i.i632 ], [ %mul.i.i.i.i626, %if.then29.i.i.i627 ]
  %.sink.in.i.i.i635 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 19
  %154 = ptrtoint ptr %.sink.in.i.i.i635 to i32
  call void @__asan_load4_noabort(i32 %154)
  %.sink.i.i.i636 = load ptr, ptr %.sink.in.i.i.i635, align 4
  %add.i43.i.i.i637 = add nuw nsw i32 %conv.i40.sink.i.i.i634, %mul.i42.sink.i.i.i633
  %used.i638 = getelementptr %struct.b43legacy_lopair, ptr %.sink.i.i.i636, i32 %add.i43.i.i.i637, i32 2
  %155 = ptrtoint ptr %used.i638 to i32
  call void @__asan_load1_noabort(i32 %155)
  %bf.load.i639 = load i8, ptr %used.i638, align 1
  %bf.set.i640 = or i8 %bf.load.i639, -128
  store i8 %bf.set.i640, ptr %used.i638, align 1
  tail call void @b43legacy_radio_unlock(ptr noundef %dev) #7
  tail call void @b43legacy_phy_unlock(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %b43legacy_phy_lo_mark_current_used.exit641, %b43legacy_phy_lo_mark_current_used.exit, %lor.lhs.false107.cleanup_crit_edge, %if.then87.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @b43legacy_shm_read16(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_radio_clear_tssi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b43legacy_debug(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacydbg(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_radio_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_radio_set_txpower_bg(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_radio_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @b43legacy_phy_init_tssi2dbm_table(ptr nocapture noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type, align 1
  %2 = add i8 %1, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %2)
  %3 = icmp ult i8 %2, -2
  br i1 %3, label %do.end, label %entry.if.end_crit_edge, !prof !57

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1979, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %bus = getelementptr inbounds %struct.ssb_device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus, align 4
  %pa0b0 = getelementptr inbounds %struct.ssb_bus, ptr %7, i32 0, i32 22, i32 22
  %8 = ptrtoint ptr %pa0b0 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %pa0b0, align 4
  %pa0b1 = getelementptr inbounds %struct.ssb_bus, ptr %7, i32 0, i32 22, i32 23
  %10 = ptrtoint ptr %pa0b1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %pa0b1, align 2
  %pa0b2 = getelementptr inbounds %struct.ssb_bus, ptr %7, i32 0, i32 22, i32 24
  %12 = ptrtoint ptr %pa0b2 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %pa0b2, align 4
  %chip_id = getelementptr inbounds %struct.ssb_bus, ptr %7, i32 0, i32 9
  %14 = ptrtoint ptr %chip_id to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 17153, i16 %15)
  %cmp36 = icmp eq i16 %15, 17153
  br i1 %cmp36, label %land.lhs.true, label %if.end.if.end42_crit_edge

if.end.if.end42_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

land.lhs.true:                                    ; preds = %if.end
  %radio_ver = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 8
  %16 = ptrtoint ptr %radio_ver to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %radio_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8272, i16 %17)
  %cmp39.not = icmp eq i16 %17, 8272
  br i1 %cmp39.not, label %land.lhs.true.if.end42_crit_edge, label %if.then41

land.lhs.true.if.end42_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then41:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %idle_tssi = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 21
  %18 = ptrtoint ptr %idle_tssi to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 52, ptr %idle_tssi, align 4
  %tssi2dbm = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 20
  %19 = ptrtoint ptr %tssi2dbm to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @b43legacy_tssi2dbm_b_table, ptr %tssi2dbm, align 4
  br label %cleanup

if.end42:                                         ; preds = %land.lhs.true.if.end42_crit_edge, %if.end.if.end42_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp44.not = icmp eq i16 %9, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp48.not = icmp eq i16 %11, 0
  %or.cond = select i1 %cmp44.not, i1 true, i1 %cmp48.not
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp52.not = icmp eq i16 %13, 0
  %or.cond152 = select i1 %or.cond, i1 true, i1 %cmp52.not
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %9)
  %cmp56.not = icmp eq i16 %9, -1
  %or.cond153 = select i1 %or.cond152, i1 true, i1 %cmp56.not
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %11)
  %cmp60.not = icmp eq i16 %11, -1
  %or.cond154 = select i1 %or.cond153, i1 true, i1 %cmp60.not
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %13)
  %cmp64.not = icmp eq i16 %13, -1
  %or.cond155 = select i1 %or.cond154, i1 true, i1 %cmp64.not
  br i1 %or.cond155, label %if.else103, label %if.then66

if.then66:                                        ; preds = %if.end42
  %itssi_bg = getelementptr inbounds %struct.ssb_bus, ptr %7, i32 0, i32 22, i32 43
  %20 = ptrtoint ptr %itssi_bg to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %itssi_bg, align 1
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %21, label %if.then66.if.end88_crit_edge [
    i8 0, label %if.then66.if.else_crit_edge
    i8 -1, label %if.then66.if.else_crit_edge159
  ]

if.then66.if.else_crit_edge159:                   ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then66.if.else_crit_edge:                      ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then66.if.end88_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

if.else:                                          ; preds = %if.then66.if.else_crit_edge, %if.then66.if.else_crit_edge159
  br label %if.end88

if.end88:                                         ; preds = %if.else, %if.then66.if.end88_crit_edge
  %.sink = phi i8 [ 62, %if.else ], [ %21, %if.then66.if.end88_crit_edge ]
  %idle_tssi87 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 21
  %23 = ptrtoint ptr %idle_tssi87 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %.sink, ptr %idle_tssi87, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3264, i32 noundef 64) #11
  %cmp89 = icmp eq ptr %call7.i, null
  br i1 %cmp89, label %if.then91, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end88
  %conv.i = sext i16 %9 to i32
  %mul.i = shl nsw i32 %conv.i, 4
  %conv3.i = sext i16 %11 to i32
  %conv6.i = sext i16 %13 to i32
  br label %for.body

if.then91:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  %wl = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  %25 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wl, align 4
  tail call void (ptr, ptr, ...) @b43legacyerr(ptr noundef %26, ptr noundef nonnull @.str.7) #7
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %indvars.iv = phi i32 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %mul4.i = mul nsw i32 %indvars.iv, %conv3.i
  %add.i = add nsw i32 %mul4.i, %mul.i
  %27 = lshr i32 %add.i, 27
  %28 = and i32 %27, 16
  %29 = xor i32 %28, 16
  %num.pn.i.i = add nsw i32 %29, %add.i
  %retval.0.i.i = sdiv i32 %num.pn.i.i, 32
  %mul7.i = mul nsw i32 %indvars.iv, %conv6.i
  %add8.i = add nsw i32 %mul7.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32768, i32 %mul7.i)
  %cmp.i69.i = icmp slt i32 %mul7.i, -32768
  %add.i70.i = select i1 %cmp.i69.i, i32 0, i32 128
  %num.pn.i71.i = add nsw i32 %add8.i, %add.i70.i
  %retval.0.i72.i = sdiv i32 %num.pn.i71.i, 256
  %30 = tail call i32 @llvm.smax.i32(i32 %retval.0.i72.i, i32 1) #7
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %for.body
  %i.0.i = phi i8 [ 0, %for.body ], [ %inc.i, %if.end.i.do.body.i_crit_edge ]
  %f.0.i = phi i32 [ 256, %for.body ], [ %retval.0.i80.i, %if.end.i.do.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %i.0.i)
  %cmp12.i = icmp ugt i8 %i.0.i, 15
  br i1 %cmp12.i, label %if.then98, label %if.end.i

if.end.i:                                         ; preds = %do.body.i
  %mul15.i = mul i32 %f.0.i, %30
  %31 = lshr i32 %mul15.i, 28
  %32 = and i32 %31, 8
  %33 = xor i32 %32, 8
  %num.pn.i75.i = add i32 %33, %mul15.i
  %retval.0.i76.neg.i = sdiv i32 %num.pn.i75.i, -16
  %mul1768.i = add nsw i32 %retval.0.i76.neg.i, 4096
  %sub.i = mul i32 %mul1768.i, %f.0.i
  %34 = lshr i32 %sub.i, 21
  %35 = and i32 %34, 1024
  %36 = xor i32 %35, 1024
  %num.pn.i79.i = add i32 %36, %sub.i
  %retval.0.i80.i = sdiv i32 %num.pn.i79.i, 2048
  %sub19.i = sub nsw i32 %retval.0.i80.i, %f.0.i
  %37 = tail call i32 @llvm.abs.i32(i32 %sub19.i, i1 true) #7
  %inc.i = add nuw nsw i8 %i.0.i, 1
  %cmp28.i = icmp ugt i32 %37, 1
  br i1 %cmp28.i, label %if.end.i.do.body.i_crit_edge, label %for.inc

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

if.then98:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %tssi2dbm99 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 20
  %38 = ptrtoint ptr %tssi2dbm99 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %tssi2dbm99, align 4
  %wl100 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  %39 = ptrtoint ptr %wl100 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %wl100, align 4
  tail call void (ptr, ptr, ...) @b43legacyerr(ptr noundef %40, ptr noundef nonnull @.str.8) #7
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %cleanup

for.inc:                                          ; preds = %if.end.i
  %mul30.i = mul i32 %retval.0.i80.i, %retval.0.i.i
  %41 = lshr i32 %mul30.i, 19
  %42 = and i32 %41, 4096
  %43 = xor i32 %42, 4096
  %num.pn.i83.i = add i32 %43, %mul30.i
  %retval.0.i84.i = sdiv i32 %num.pn.i83.i, 8192
  %44 = tail call i32 @llvm.smax.i32(i32 %retval.0.i84.i, i32 -127) #7
  %45 = tail call i32 @llvm.smin.i32(i32 %44, i32 128) #7
  %conv46.i = trunc i32 %45 to i8
  %arrayidx.i = getelementptr i8, ptr %call7.i, i32 %indvars.iv
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv46.i, ptr %arrayidx.i, align 1
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 64
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %tssi2dbm102 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 20
  %47 = ptrtoint ptr %tssi2dbm102 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call7.i, ptr %tssi2dbm102, align 4
  %dyn_tssi_tbl = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 11
  %48 = ptrtoint ptr %dyn_tssi_tbl to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %dyn_tssi_tbl, align 4
  br label %cleanup

if.else103:                                       ; preds = %if.end42
  %49 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %type, align 1
  %51 = zext i8 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %50, label %if.else103.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb108
  ]

if.else103.cleanup_crit_edge:                     ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #9
  %idle_tssi106 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 21
  %52 = ptrtoint ptr %idle_tssi106 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 52, ptr %idle_tssi106, align 4
  %tssi2dbm107 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 20
  %53 = ptrtoint ptr %tssi2dbm107 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @b43legacy_tssi2dbm_b_table, ptr %tssi2dbm107, align 4
  br label %cleanup

sw.bb108:                                         ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #9
  %idle_tssi109 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 21
  %54 = ptrtoint ptr %idle_tssi109 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 52, ptr %idle_tssi109, align 4
  %tssi2dbm110 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 20
  %55 = ptrtoint ptr %tssi2dbm110 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @b43legacy_tssi2dbm_g_table, ptr %tssi2dbm110, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb108, %sw.bb, %if.else103.cleanup_crit_edge, %for.end, %if.then98, %if.then91, %if.then41
  %retval.0 = phi i32 [ 0, %if.then41 ], [ -12, %if.then91 ], [ -19, %if.then98 ], [ 0, %sw.bb ], [ 0, %sw.bb108 ], [ 0, %if.else103.cleanup_crit_edge ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacyerr(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @b43legacy_phy_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %1, label %entry.if.then_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb7
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

sw.bb:                                            ; preds = %entry
  %rev = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 4
  %3 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %rev, align 4
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %4, label %sw.bb.if.then_crit_edge [
    i8 2, label %sw.bb3
    i8 4, label %sw.bb4
    i8 5, label %sw.bb5
    i8 6, label %sw.bb6
  ]

sw.bb.if.then_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

sw.bb3:                                           ; preds = %sw.bb
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %write16.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write16.i.i.i, align 4
  tail call void %11(ptr noundef %7, i16 noundef zeroext 1004, i16 noundef zeroext 16162) #7
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %write16.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %write16.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write16.i.i.i.i, align 4
  tail call void %17(ptr noundef %13, i16 noundef zeroext 1020, i16 noundef zeroext 32) #7
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %write16.i.i2.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %write16.i.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write16.i.i2.i.i, align 4
  tail call void %23(ptr noundef %19, i16 noundef zeroext 1022, i16 noundef zeroext 12316) #7
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %write16.i.i.i64.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %write16.i.i.i64.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write16.i.i.i64.i, align 4
  tail call void %29(ptr noundef %25, i16 noundef zeroext 1020, i16 noundef zeroext 38) #7
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %write16.i.i2.i65.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %write16.i.i2.i65.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write16.i.i2.i65.i, align 4
  tail call void %35(ptr noundef %31, i16 noundef zeroext 1022, i16 noundef zeroext 0) #7
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %write16.i.i.i66.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %write16.i.i.i66.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write16.i.i.i66.i, align 4
  tail call void %41(ptr noundef %37, i16 noundef zeroext 1020, i16 noundef zeroext 48) #7
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %write16.i.i2.i67.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %write16.i.i2.i67.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write16.i.i2.i67.i, align 4
  tail call void %47(ptr noundef %43, i16 noundef zeroext 1022, i16 noundef zeroext 198) #7
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %write16.i.i.i68.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %write16.i.i.i68.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write16.i.i.i68.i, align 4
  tail call void %53(ptr noundef %49, i16 noundef zeroext 1020, i16 noundef zeroext 136) #7
  %54 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %write16.i.i2.i69.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %write16.i.i2.i69.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %write16.i.i2.i69.i, align 4
  tail call void %59(ptr noundef %55, i16 noundef zeroext 1022, i16 noundef zeroext 15872) #7
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.bb3
  %val.094.i = phi i32 [ 15421, %sw.bb3 ], [ %sub.i, %for.body.i.for.body.i_crit_edge ]
  %offset.093.i = phi i16 [ 137, %sw.bb3 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %conv3.i = trunc i32 %val.094.i to i16
  %60 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %write16.i.i.i70.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %63, i32 0, i32 4
  %64 = ptrtoint ptr %write16.i.i.i70.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %write16.i.i.i70.i, align 4
  tail call void %65(ptr noundef %61, i16 noundef zeroext 1020, i16 noundef zeroext %offset.093.i) #7
  %66 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %write16.i.i2.i71.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %69, i32 0, i32 4
  %70 = ptrtoint ptr %write16.i.i2.i71.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %write16.i.i2.i71.i, align 4
  tail call void %71(ptr noundef %67, i16 noundef zeroext 1022, i16 noundef zeroext %conv3.i) #7
  %sub.i = add nsw i32 %val.094.i, -514
  %inc.i = add nuw nsw i16 %offset.093.i, 1
  %cmp.i = icmp ult i16 %offset.093.i, 166
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %72 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  %write16.i.i.i72.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %75, i32 0, i32 4
  %76 = ptrtoint ptr %write16.i.i.i72.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %write16.i.i.i72.i, align 4
  tail call void %77(ptr noundef %73, i16 noundef zeroext 1020, i16 noundef zeroext 996) #7
  %78 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 4
  %write16.i.i2.i73.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %81, i32 0, i32 4
  %82 = ptrtoint ptr %write16.i.i2.i73.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %write16.i.i2.i73.i, align 4
  tail call void %83(ptr noundef %79, i16 noundef zeroext 1022, i16 noundef zeroext 12288) #7
  %channel.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 39
  %84 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %channel.i, align 4
  %call.i = tail call i32 @b43legacy_radio_selectchannel(ptr noundef %dev, i8 noundef zeroext %85, i32 noundef 0) #7
  %radio_ver.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 8
  %86 = ptrtoint ptr %radio_ver.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %radio_ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8272, i16 %87)
  %cmp5.not.i = icmp eq i16 %87, 8272
  br i1 %cmp5.not.i, label %for.end.i.if.end.i_crit_edge, label %if.then.i

for.end.i.if.end.i_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 117, i16 noundef zeroext 128) #7
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 121, i16 noundef zeroext 129) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.end.i.if.end.i_crit_edge
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 80, i16 noundef zeroext 32) #7
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 80, i16 noundef zeroext 35) #7
  %88 = ptrtoint ptr %radio_ver.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %radio_ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8272, i16 %89)
  %cmp9.i = icmp eq i16 %89, 8272
  br i1 %cmp9.i, label %if.then11.i, label %if.end.i.if.end13.i_crit_edge

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 80, i16 noundef zeroext 32) #7
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 90, i16 noundef zeroext 112) #7
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 91, i16 noundef zeroext 123) #7
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 92, i16 noundef zeroext 176) #7
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 122, i16 noundef zeroext 15) #7
  %90 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %91, align 4
  %write16.i.i.i74.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %93, i32 0, i32 4
  %94 = ptrtoint ptr %write16.i.i.i74.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %write16.i.i.i74.i, align 4
  tail call void %95(ptr noundef %91, i16 noundef zeroext 1020, i16 noundef zeroext 56) #7
  %96 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %97, align 4
  %write16.i.i2.i75.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %99, i32 0, i32 4
  %100 = ptrtoint ptr %write16.i.i2.i75.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %write16.i.i2.i75.i, align 4
  tail call void %101(ptr noundef %97, i16 noundef zeroext 1022, i16 noundef zeroext 1655) #7
  %call12.i = tail call zeroext i16 @b43legacy_radio_init2050(ptr noundef %dev) #7
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then11.i, %if.end.i.if.end13.i_crit_edge
  %102 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %103, align 4
  %write16.i.i.i76.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %105, i32 0, i32 4
  %106 = ptrtoint ptr %write16.i.i.i76.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %write16.i.i.i76.i, align 4
  tail call void %107(ptr noundef %103, i16 noundef zeroext 1020, i16 noundef zeroext 20) #7
  %108 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %109, align 4
  %write16.i.i2.i77.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %111, i32 0, i32 4
  %112 = ptrtoint ptr %write16.i.i2.i77.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %write16.i.i2.i77.i, align 4
  tail call void %113(ptr noundef %109, i16 noundef zeroext 1022, i16 noundef zeroext 128) #7
  %114 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %115, align 4
  %write16.i.i.i78.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %117, i32 0, i32 4
  %118 = ptrtoint ptr %write16.i.i.i78.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %write16.i.i.i78.i, align 4
  tail call void %119(ptr noundef %115, i16 noundef zeroext 1020, i16 noundef zeroext 50) #7
  %120 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev, align 4
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %121, align 4
  %write16.i.i2.i79.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %123, i32 0, i32 4
  %124 = ptrtoint ptr %write16.i.i2.i79.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %write16.i.i2.i79.i, align 4
  tail call void %125(ptr noundef %121, i16 noundef zeroext 1022, i16 noundef zeroext 202) #7
  %126 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dev, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %127, align 4
  %write16.i.i.i80.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %129, i32 0, i32 4
  %130 = ptrtoint ptr %write16.i.i.i80.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %write16.i.i.i80.i, align 4
  tail call void %131(ptr noundef %127, i16 noundef zeroext 1020, i16 noundef zeroext 50) #7
  %132 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev, align 4
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %133, align 4
  %write16.i.i2.i81.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %135, i32 0, i32 4
  %136 = ptrtoint ptr %write16.i.i2.i81.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %write16.i.i2.i81.i, align 4
  tail call void %137(ptr noundef %133, i16 noundef zeroext 1022, i16 noundef zeroext 204) #7
  %138 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dev, align 4
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %139, align 4
  %write16.i.i.i82.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %141, i32 0, i32 4
  %142 = ptrtoint ptr %write16.i.i.i82.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %write16.i.i.i82.i, align 4
  tail call void %143(ptr noundef %139, i16 noundef zeroext 1020, i16 noundef zeroext 53) #7
  %144 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dev, align 4
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %145, align 4
  %write16.i.i2.i83.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %147, i32 0, i32 4
  %148 = ptrtoint ptr %write16.i.i2.i83.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %write16.i.i2.i83.i, align 4
  tail call void %149(ptr noundef %145, i16 noundef zeroext 1022, i16 noundef zeroext 1986) #7
  tail call void @b43legacy_phy_lo_b_measure(ptr noundef %dev) #7
  %150 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dev, align 4
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %151, align 4
  %write16.i.i.i84.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %153, i32 0, i32 4
  %154 = ptrtoint ptr %write16.i.i.i84.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %write16.i.i.i84.i, align 4
  tail call void %155(ptr noundef %151, i16 noundef zeroext 1020, i16 noundef zeroext 38) #7
  %156 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %dev, align 4
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %157, align 4
  %write16.i.i2.i85.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %159, i32 0, i32 4
  %160 = ptrtoint ptr %write16.i.i2.i85.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %write16.i.i2.i85.i, align 4
  tail call void %161(ptr noundef %157, i16 noundef zeroext 1022, i16 noundef zeroext -13312) #7
  %162 = ptrtoint ptr %radio_ver.i to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %radio_ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8272, i16 %163)
  %cmp16.not.i = icmp eq i16 %163, 8272
  br i1 %cmp16.not.i, label %if.end13.i.if.end19.i_crit_edge, label %if.then18.i

if.end13.i.if.end19.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i

if.then18.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  %164 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %dev, align 4
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %165, align 4
  %write16.i.i.i86.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %167, i32 0, i32 4
  %168 = ptrtoint ptr %write16.i.i.i86.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %write16.i.i.i86.i, align 4
  tail call void %169(ptr noundef %165, i16 noundef zeroext 1020, i16 noundef zeroext 38) #7
  %170 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %dev, align 4
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %171, align 4
  %write16.i.i2.i87.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %173, i32 0, i32 4
  %174 = ptrtoint ptr %write16.i.i2.i87.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %write16.i.i2.i87.i, align 4
  tail call void %175(ptr noundef %171, i16 noundef zeroext 1022, i16 noundef zeroext -12800) #7
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then18.i, %if.end13.i.if.end19.i_crit_edge
  %176 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %dev, align 4
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %177, align 4
  %write16.i.i88.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %179, i32 0, i32 4
  %180 = ptrtoint ptr %write16.i.i88.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %write16.i.i88.i, align 4
  tail call void %181(ptr noundef %177, i16 noundef zeroext 1012, i16 noundef zeroext 4096) #7
  %182 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %dev, align 4
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %183, align 4
  %write16.i.i.i89.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %185, i32 0, i32 4
  %186 = ptrtoint ptr %write16.i.i.i89.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %write16.i.i.i89.i, align 4
  tail call void %187(ptr noundef %183, i16 noundef zeroext 1020, i16 noundef zeroext 42) #7
  %188 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %dev, align 4
  %190 = ptrtoint ptr %189 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %189, align 4
  %write16.i.i2.i90.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %191, i32 0, i32 4
  %192 = ptrtoint ptr %write16.i.i2.i90.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %write16.i.i2.i90.i, align 4
  tail call void %193(ptr noundef %189, i16 noundef zeroext 1022, i16 noundef zeroext -30557) #7
  %194 = ptrtoint ptr %radio_ver.i to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %radio_ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8272, i16 %195)
  %cmp22.not.i = icmp eq i16 %195, 8272
  br i1 %cmp22.not.i, label %if.end19.i.b43legacy_phy_initb2.exit_crit_edge, label %if.then24.i

if.end19.i.b43legacy_phy_initb2.exit_crit_edge:   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43legacy_phy_initb2.exit

if.then24.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  %196 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %dev, align 4
  %198 = ptrtoint ptr %197 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %197, align 4
  %write16.i.i.i91.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %199, i32 0, i32 4
  %200 = ptrtoint ptr %write16.i.i.i91.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %write16.i.i.i91.i, align 4
  tail call void %201(ptr noundef %197, i16 noundef zeroext 1020, i16 noundef zeroext 42) #7
  %202 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %dev, align 4
  %204 = ptrtoint ptr %203 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %203, align 4
  %write16.i.i2.i92.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %205, i32 0, i32 4
  %206 = ptrtoint ptr %write16.i.i2.i92.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %write16.i.i2.i92.i, align 4
  tail call void %207(ptr noundef %203, i16 noundef zeroext 1022, i16 noundef zeroext -30526) #7
  br label %b43legacy_phy_initb2.exit

b43legacy_phy_initb2.exit:                        ; preds = %if.then24.i, %if.end19.i.b43legacy_phy_initb2.exit_crit_edge
  tail call void @b43legacy_radio_set_txpower_bg(ptr noundef %dev, i16 noundef zeroext -1, i16 noundef zeroext -1, i16 noundef zeroext -1) #7
  tail call fastcc void @b43legacy_phy_init_pctl(ptr noundef %dev) #7
  br label %if.end

sw.bb4:                                           ; preds = %sw.bb
  %208 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %dev, align 4
  %210 = ptrtoint ptr %209 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %209, align 4
  %write16.i.i.i17 = getelementptr inbounds %struct.ssb_bus_ops, ptr %211, i32 0, i32 4
  %212 = ptrtoint ptr %write16.i.i.i17 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %write16.i.i.i17, align 4
  tail call void %213(ptr noundef %209, i16 noundef zeroext 1004, i16 noundef zeroext 16162) #7
  %214 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %dev, align 4
  %216 = ptrtoint ptr %215 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %215, align 4
  %write16.i.i.i.i18 = getelementptr inbounds %struct.ssb_bus_ops, ptr %217, i32 0, i32 4
  %218 = ptrtoint ptr %write16.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %write16.i.i.i.i18, align 4
  tail call void %219(ptr noundef %215, i16 noundef zeroext 1020, i16 noundef zeroext 32) #7
  %220 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %dev, align 4
  %222 = ptrtoint ptr %221 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %221, align 4
  %write16.i.i2.i.i19 = getelementptr inbounds %struct.ssb_bus_ops, ptr %223, i32 0, i32 4
  %224 = ptrtoint ptr %write16.i.i2.i.i19 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %write16.i.i2.i.i19, align 4
  tail call void %225(ptr noundef %221, i16 noundef zeroext 1022, i16 noundef zeroext 12316) #7
  %226 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %dev, align 4
  %228 = ptrtoint ptr %227 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %227, align 4
  %write16.i.i.i79.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %229, i32 0, i32 4
  %230 = ptrtoint ptr %write16.i.i.i79.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %write16.i.i.i79.i, align 4
  tail call void %231(ptr noundef %227, i16 noundef zeroext 1020, i16 noundef zeroext 38) #7
  %232 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %dev, align 4
  %234 = ptrtoint ptr %233 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %233, align 4
  %write16.i.i2.i80.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %235, i32 0, i32 4
  %236 = ptrtoint ptr %write16.i.i2.i80.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %write16.i.i2.i80.i, align 4
  tail call void %237(ptr noundef %233, i16 noundef zeroext 1022, i16 noundef zeroext 0) #7
  %238 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %dev, align 4
  %240 = ptrtoint ptr %239 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %239, align 4
  %write16.i.i.i81.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %241, i32 0, i32 4
  %242 = ptrtoint ptr %write16.i.i.i81.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %write16.i.i.i81.i, align 4
  tail call void %243(ptr noundef %239, i16 noundef zeroext 1020, i16 noundef zeroext 48) #7
  %244 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %dev, align 4
  %246 = ptrtoint ptr %245 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %245, align 4
  %write16.i.i2.i82.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %247, i32 0, i32 4
  %248 = ptrtoint ptr %write16.i.i2.i82.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %write16.i.i2.i82.i, align 4
  tail call void %249(ptr noundef %245, i16 noundef zeroext 1022, i16 noundef zeroext 198) #7
  %250 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %dev, align 4
  %252 = ptrtoint ptr %251 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %251, align 4
  %write16.i.i.i83.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %253, i32 0, i32 4
  %254 = ptrtoint ptr %write16.i.i.i83.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %write16.i.i.i83.i, align 4
  tail call void %255(ptr noundef %251, i16 noundef zeroext 1020, i16 noundef zeroext 136) #7
  %256 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %dev, align 4
  %258 = ptrtoint ptr %257 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %257, align 4
  %write16.i.i2.i84.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %259, i32 0, i32 4
  %260 = ptrtoint ptr %write16.i.i2.i84.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %write16.i.i2.i84.i, align 4
  tail call void %261(ptr noundef %257, i16 noundef zeroext 1022, i16 noundef zeroext 15872) #7
  br label %for.body.i23

for.body.i23:                                     ; preds = %for.body.i23.for.body.i23_crit_edge, %sw.bb4
  %val.0109.i = phi i16 [ 15421, %sw.bb4 ], [ %sub.i20, %for.body.i23.for.body.i23_crit_edge ]
  %offset.0108.i = phi i16 [ 137, %sw.bb4 ], [ %inc.i21, %for.body.i23.for.body.i23_crit_edge ]
  %262 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %dev, align 4
  %264 = ptrtoint ptr %263 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %263, align 4
  %write16.i.i.i85.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %265, i32 0, i32 4
  %266 = ptrtoint ptr %write16.i.i.i85.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %write16.i.i.i85.i, align 4
  tail call void %267(ptr noundef %263, i16 noundef zeroext 1020, i16 noundef zeroext %offset.0108.i) #7
  %268 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %dev, align 4
  %270 = ptrtoint ptr %269 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %269, align 4
  %write16.i.i2.i86.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %271, i32 0, i32 4
  %272 = ptrtoint ptr %write16.i.i2.i86.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %write16.i.i2.i86.i, align 4
  tail call void %273(ptr noundef %269, i16 noundef zeroext 1022, i16 noundef zeroext %val.0109.i) #7
  %sub.i20 = add nsw i16 %val.0109.i, -514
  %inc.i21 = add nuw nsw i16 %offset.0108.i, 1
  %cmp.i22 = icmp ult i16 %offset.0108.i, 166
  br i1 %cmp.i22, label %for.body.i23.for.body.i23_crit_edge, label %for.end.i27

for.body.i23.for.body.i23_crit_edge:              ; preds = %for.body.i23
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i23

for.end.i27:                                      ; preds = %for.body.i23
  %274 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %dev, align 4
  %276 = ptrtoint ptr %275 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %275, align 4
  %write16.i.i.i87.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %277, i32 0, i32 4
  %278 = ptrtoint ptr %write16.i.i.i87.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %write16.i.i.i87.i, align 4
  tail call void %279(ptr noundef %275, i16 noundef zeroext 1020, i16 noundef zeroext 996) #7
  %280 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %dev, align 4
  %282 = ptrtoint ptr %281 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %281, align 4
  %write16.i.i2.i88.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %283, i32 0, i32 4
  %284 = ptrtoint ptr %write16.i.i2.i88.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %write16.i.i2.i88.i, align 4
  tail call void %285(ptr noundef %281, i16 noundef zeroext 1022, i16 noundef zeroext 12288) #7
  %channel.i24 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 39
  %286 = ptrtoint ptr %channel.i24 to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %channel.i24, align 4
  %call.i25 = tail call i32 @b43legacy_radio_selectchannel(ptr noundef %dev, i8 noundef zeroext %287, i32 noundef 0) #7
  %radio_ver.i26 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 8
  %288 = ptrtoint ptr %radio_ver.i26 to i32
  call void @__asan_load2_noabort(i32 %288)
  %289 = load i16, ptr %radio_ver.i26, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8272, i16 %289)
  %cmp6.not.i = icmp eq i16 %289, 8272
  br i1 %cmp6.not.i, label %for.end.i27.if.end.i29_crit_edge, label %if.then.i28

for.end.i27.if.end.i29_crit_edge:                 ; preds = %for.end.i27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i29

if.then.i28:                                      ; preds = %for.end.i27
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 117, i16 noundef zeroext 128) #7
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 121, i16 noundef zeroext 129) #7
  br label %if.end.i29

if.end.i29:                                       ; preds = %if.then.i28, %for.end.i27.if.end.i29_crit_edge
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 80, i16 noundef zeroext 32) #7
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 80, i16 noundef zeroext 35) #7
  %290 = ptrtoint ptr %radio_ver.i26 to i32
  call void @__asan_load2_noabort(i32 %290)
  %291 = load i16, ptr %radio_ver.i26, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8272, i16 %291)
  %cmp10.i = icmp eq i16 %291, 8272
  br i1 %cmp10.i, label %if.then12.i, label %if.end.i29.if.end14.i_crit_edge

if.end.i29.if.end14.i_crit_edge:                  ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

if.then12.i:                                      ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 80, i16 noundef zeroext 32) #7
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 90, i16 noundef zeroext 112) #7
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 91, i16 noundef zeroext 123) #7
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 92, i16 noundef zeroext 176) #7
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 122, i16 noundef zeroext 15) #7
  %292 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %dev, align 4
  %294 = ptrtoint ptr %293 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %293, align 4
  %write16.i.i.i89.i30 = getelementptr inbounds %struct.ssb_bus_ops, ptr %295, i32 0, i32 4
  %296 = ptrtoint ptr %write16.i.i.i89.i30 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %write16.i.i.i89.i30, align 4
  tail call void %297(ptr noundef %293, i16 noundef zeroext 1020, i16 noundef zeroext 56) #7
  %298 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %dev, align 4
  %300 = ptrtoint ptr %299 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %299, align 4
  %write16.i.i2.i90.i31 = getelementptr inbounds %struct.ssb_bus_ops, ptr %301, i32 0, i32 4
  %302 = ptrtoint ptr %write16.i.i2.i90.i31 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %write16.i.i2.i90.i31, align 4
  tail call void %303(ptr noundef %299, i16 noundef zeroext 1022, i16 noundef zeroext 1655) #7
  %call13.i = tail call zeroext i16 @b43legacy_radio_init2050(ptr noundef %dev) #7
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then12.i, %if.end.i29.if.end14.i_crit_edge
  %304 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %dev, align 4
  %306 = ptrtoint ptr %305 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %305, align 4
  %write16.i.i.i91.i32 = getelementptr inbounds %struct.ssb_bus_ops, ptr %307, i32 0, i32 4
  %308 = ptrtoint ptr %write16.i.i.i91.i32 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %write16.i.i.i91.i32, align 4
  tail call void %309(ptr noundef %305, i16 noundef zeroext 1020, i16 noundef zeroext 20) #7
  %310 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %dev, align 4
  %312 = ptrtoint ptr %311 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %311, align 4
  %write16.i.i2.i92.i33 = getelementptr inbounds %struct.ssb_bus_ops, ptr %313, i32 0, i32 4
  %314 = ptrtoint ptr %write16.i.i2.i92.i33 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %write16.i.i2.i92.i33, align 4
  tail call void %315(ptr noundef %311, i16 noundef zeroext 1022, i16 noundef zeroext 128) #7
  %316 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %dev, align 4
  %318 = ptrtoint ptr %317 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %317, align 4
  %write16.i.i.i93.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %319, i32 0, i32 4
  %320 = ptrtoint ptr %write16.i.i.i93.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %write16.i.i.i93.i, align 4
  tail call void %321(ptr noundef %317, i16 noundef zeroext 1020, i16 noundef zeroext 50) #7
  %322 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %dev, align 4
  %324 = ptrtoint ptr %323 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %323, align 4
  %write16.i.i2.i94.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %325, i32 0, i32 4
  %326 = ptrtoint ptr %write16.i.i2.i94.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %write16.i.i2.i94.i, align 4
  tail call void %327(ptr noundef %323, i16 noundef zeroext 1022, i16 noundef zeroext 202) #7
  %328 = ptrtoint ptr %radio_ver.i26 to i32
  call void @__asan_load2_noabort(i32 %328)
  %329 = load i16, ptr %radio_ver.i26, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8272, i16 %329)
  %cmp17.i = icmp eq i16 %329, 8272
  br i1 %cmp17.i, label %if.then19.i, label %if.end14.i.if.end20.i_crit_edge

if.end14.i.if.end20.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i

if.then19.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  %330 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %dev, align 4
  %332 = ptrtoint ptr %331 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %331, align 4
  %write16.i.i.i95.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %333, i32 0, i32 4
  %334 = ptrtoint ptr %write16.i.i.i95.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %write16.i.i.i95.i, align 4
  tail call void %335(ptr noundef %331, i16 noundef zeroext 1020, i16 noundef zeroext 50) #7
  %336 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %dev, align 4
  %338 = ptrtoint ptr %337 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %337, align 4
  %write16.i.i2.i96.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %339, i32 0, i32 4
  %340 = ptrtoint ptr %write16.i.i2.i96.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %write16.i.i2.i96.i, align 4
  tail call void %341(ptr noundef %337, i16 noundef zeroext 1022, i16 noundef zeroext 224) #7
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then19.i, %if.end14.i.if.end20.i_crit_edge
  %342 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %dev, align 4
  %344 = ptrtoint ptr %343 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %343, align 4
  %write16.i.i.i97.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %345, i32 0, i32 4
  %346 = ptrtoint ptr %write16.i.i.i97.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %write16.i.i.i97.i, align 4
  tail call void %347(ptr noundef %343, i16 noundef zeroext 1020, i16 noundef zeroext 53) #7
  %348 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %dev, align 4
  %350 = ptrtoint ptr %349 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %349, align 4
  %write16.i.i2.i98.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %351, i32 0, i32 4
  %352 = ptrtoint ptr %write16.i.i2.i98.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %write16.i.i2.i98.i, align 4
  tail call void %353(ptr noundef %349, i16 noundef zeroext 1022, i16 noundef zeroext 1986) #7
  tail call void @b43legacy_phy_lo_b_measure(ptr noundef %dev) #7
  %354 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %dev, align 4
  %356 = ptrtoint ptr %355 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %355, align 4
  %write16.i.i.i99.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %357, i32 0, i32 4
  %358 = ptrtoint ptr %write16.i.i.i99.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %write16.i.i.i99.i, align 4
  tail call void %359(ptr noundef %355, i16 noundef zeroext 1020, i16 noundef zeroext 38) #7
  %360 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %dev, align 4
  %362 = ptrtoint ptr %361 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %361, align 4
  %write16.i.i2.i100.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %363, i32 0, i32 4
  %364 = ptrtoint ptr %write16.i.i2.i100.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %write16.i.i2.i100.i, align 4
  tail call void %365(ptr noundef %361, i16 noundef zeroext 1022, i16 noundef zeroext -13312) #7
  %366 = ptrtoint ptr %radio_ver.i26 to i32
  call void @__asan_load2_noabort(i32 %366)
  %367 = load i16, ptr %radio_ver.i26, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8272, i16 %367)
  %cmp23.i = icmp eq i16 %367, 8272
  br i1 %cmp23.i, label %if.then25.i, label %if.end20.i.if.end26.i_crit_edge

if.end20.i.if.end26.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i

if.then25.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  %368 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %dev, align 4
  %370 = ptrtoint ptr %369 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %369, align 4
  %write16.i.i.i101.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %371, i32 0, i32 4
  %372 = ptrtoint ptr %write16.i.i.i101.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %write16.i.i.i101.i, align 4
  tail call void %373(ptr noundef %369, i16 noundef zeroext 1020, i16 noundef zeroext 38) #7
  %374 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %dev, align 4
  %376 = ptrtoint ptr %375 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %375, align 4
  %write16.i.i2.i102.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %377, i32 0, i32 4
  %378 = ptrtoint ptr %write16.i.i2.i102.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %write16.i.i2.i102.i, align 4
  tail call void %379(ptr noundef %375, i16 noundef zeroext 1022, i16 noundef zeroext -12800) #7
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then25.i, %if.end20.i.if.end26.i_crit_edge
  %380 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %dev, align 4
  %382 = ptrtoint ptr %381 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %381, align 4
  %write16.i.i103.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %383, i32 0, i32 4
  %384 = ptrtoint ptr %write16.i.i103.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %write16.i.i103.i, align 4
  tail call void %385(ptr noundef %381, i16 noundef zeroext 1012, i16 noundef zeroext 4352) #7
  %386 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %dev, align 4
  %388 = ptrtoint ptr %387 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %387, align 4
  %write16.i.i.i104.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %389, i32 0, i32 4
  %390 = ptrtoint ptr %write16.i.i.i104.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %write16.i.i.i104.i, align 4
  tail call void %391(ptr noundef %387, i16 noundef zeroext 1020, i16 noundef zeroext 42) #7
  %392 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %dev, align 4
  %394 = ptrtoint ptr %393 to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %393, align 4
  %write16.i.i2.i105.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %395, i32 0, i32 4
  %396 = ptrtoint ptr %write16.i.i2.i105.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %write16.i.i2.i105.i, align 4
  tail call void %397(ptr noundef %393, i16 noundef zeroext 1022, i16 noundef zeroext -30557) #7
  %398 = ptrtoint ptr %radio_ver.i26 to i32
  call void @__asan_load2_noabort(i32 %398)
  %399 = load i16, ptr %radio_ver.i26, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8272, i16 %399)
  %cmp29.i = icmp eq i16 %399, 8272
  br i1 %cmp29.i, label %if.then31.i, label %if.end26.i.if.end32.i_crit_edge

if.end26.i.if.end32.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.i

if.then31.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  %400 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %dev, align 4
  %402 = ptrtoint ptr %401 to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %401, align 4
  %write16.i.i.i106.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %403, i32 0, i32 4
  %404 = ptrtoint ptr %write16.i.i.i106.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %write16.i.i.i106.i, align 4
  tail call void %405(ptr noundef %401, i16 noundef zeroext 1020, i16 noundef zeroext 42) #7
  %406 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %dev, align 4
  %408 = ptrtoint ptr %407 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %407, align 4
  %write16.i.i2.i107.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %409, i32 0, i32 4
  %410 = ptrtoint ptr %write16.i.i2.i107.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %write16.i.i2.i107.i, align 4
  tail call void %411(ptr noundef %407, i16 noundef zeroext 1022, i16 noundef zeroext -30526) #7
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then31.i, %if.end26.i.if.end32.i_crit_edge
  tail call void @b43legacy_radio_set_txpower_bg(ptr noundef %dev, i16 noundef zeroext -1, i16 noundef zeroext -1, i16 noundef zeroext -1) #7
  %412 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %dev, align 4
  %bus.i = getelementptr inbounds %struct.ssb_device, ptr %413, i32 0, i32 3
  %414 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %bus.i, align 4
  %boardflags_lo.i = getelementptr inbounds %struct.ssb_bus, ptr %415, i32 0, i32 22, i32 70
  %416 = ptrtoint ptr %boardflags_lo.i to i32
  call void @__asan_load2_noabort(i32 %416)
  %417 = load i16, ptr %boardflags_lo.i, align 4
  %418 = and i16 %417, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %418)
  %tobool.not.i = icmp eq i16 %418, 0
  br i1 %tobool.not.i, label %if.end32.i.b43legacy_phy_initb4.exit_crit_edge, label %if.then35.i

if.end32.i.b43legacy_phy_initb4.exit_crit_edge:   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43legacy_phy_initb4.exit

if.then35.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @b43legacy_calc_nrssi_slope(ptr noundef %dev) #7
  tail call void @b43legacy_calc_nrssi_threshold(ptr noundef %dev) #7
  br label %b43legacy_phy_initb4.exit

b43legacy_phy_initb4.exit:                        ; preds = %if.then35.i, %if.end32.i.b43legacy_phy_initb4.exit_crit_edge
  tail call fastcc void @b43legacy_phy_init_pctl(ptr noundef %dev) #7
  br label %if.end

sw.bb5:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @b43legacy_phy_initb5(ptr noundef %dev)
  br label %if.end

sw.bb6:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @b43legacy_phy_initb6(ptr noundef %dev)
  br label %if.end

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @b43legacy_phy_initg(ptr noundef %dev)
  br label %if.end

if.then:                                          ; preds = %sw.bb.if.then_crit_edge, %entry.if.then_crit_edge
  %wl = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  %419 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %wl, align 4
  tail call void (ptr, ptr, ...) @b43legacyerr(ptr noundef %420, ptr noundef nonnull @.str.9) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb7, %sw.bb6, %sw.bb5, %b43legacy_phy_initb4.exit, %b43legacy_phy_initb2.exit
  %err.036 = phi i32 [ -19, %if.then ], [ 0, %b43legacy_phy_initb2.exit ], [ 0, %b43legacy_phy_initb4.exit ], [ 0, %sw.bb5 ], [ 0, %sw.bb6 ], [ 0, %sw.bb7 ]
  ret i32 %err.036
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @b43legacy_phy_initb5(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %analog = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 2
  %0 = ptrtoint ptr %analog to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %analog, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call zeroext i16 @b43legacy_radio_read16(ptr noundef %dev, i16 noundef zeroext 122) #7
  %2 = or i16 %call, 80
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 122, i16 noundef zeroext %2) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %bus.i = getelementptr inbounds %struct.ssb_device, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus.i, align 4
  %boardinfo.i = getelementptr inbounds %struct.ssb_bus, ptr %6, i32 0, i32 21
  %7 = ptrtoint ptr %boardinfo.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %boardinfo.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5348, i16 %8)
  %cmp.i = icmp eq i16 %8, 5348
  br i1 %cmp.i, label %if.end.if.end16_crit_edge, label %land.lhs.true

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end
  %type = getelementptr inbounds %struct.ssb_bus, ptr %6, i32 0, i32 21, i32 1
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1046, i16 %10)
  %cmp8.not = icmp eq i16 %10, 1046
  br i1 %cmp8.not, label %land.lhs.true.if.end16_crit_edge, label %land.lhs.true.for.body_crit_edge

land.lhs.true.for.body_crit_edge:                 ; preds = %land.lhs.true
  br label %for.body

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

for.body:                                         ; preds = %for.body.for.body_crit_edge, %land.lhs.true.for.body_crit_edge
  %value.0268 = phi i16 [ %add, %for.body.for.body_crit_edge ], [ 8480, %land.lhs.true.for.body_crit_edge ]
  %offset.0267 = phi i16 [ %inc, %for.body.for.body_crit_edge ], [ 168, %land.lhs.true.for.body_crit_edge ]
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %write16.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write16.i.i.i, align 4
  tail call void %16(ptr noundef %12, i16 noundef zeroext 1020, i16 noundef zeroext %offset.0267) #7
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %write16.i.i2.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %write16.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write16.i.i2.i, align 4
  tail call void %22(ptr noundef %18, i16 noundef zeroext 1022, i16 noundef zeroext %value.0268) #7
  %add = add nuw nsw i16 %value.0268, 514
  %inc = add nuw nsw i16 %offset.0267, 1
  %cmp12 = icmp ult i16 %offset.0267, 198
  br i1 %cmp12, label %for.body.for.body_crit_edge, label %for.body.if.end16_crit_edge

for.body.if.end16_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end16:                                         ; preds = %for.body.if.end16_crit_edge, %land.lhs.true.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %write16.i.i.i199 = getelementptr inbounds %struct.ssb_bus_ops, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %write16.i.i.i199 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write16.i.i.i199, align 4
  tail call void %28(ptr noundef %24, i16 noundef zeroext 1020, i16 noundef zeroext 53) #7
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %read16.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %read16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %read16.i.i.i, align 4
  %call.i.i.i = tail call zeroext i16 %34(ptr noundef %30, i16 noundef zeroext 1022) #7
  %35 = and i16 %call.i.i.i, -3841
  %36 = or i16 %35, 1792
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %write16.i.i.i200 = getelementptr inbounds %struct.ssb_bus_ops, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %write16.i.i.i200 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write16.i.i.i200, align 4
  tail call void %42(ptr noundef %38, i16 noundef zeroext 1020, i16 noundef zeroext 53) #7
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %write16.i.i2.i201 = getelementptr inbounds %struct.ssb_bus_ops, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %write16.i.i2.i201 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write16.i.i2.i201, align 4
  tail call void %48(ptr noundef %44, i16 noundef zeroext 1022, i16 noundef zeroext %36) #7
  %radio_ver = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 8
  %49 = ptrtoint ptr %radio_ver to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %radio_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8272, i16 %50)
  %cmp22 = icmp eq i16 %50, 8272
  br i1 %cmp22, label %if.then24, label %if.end16.if.end25_crit_edge

if.end16.if.end25_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then24:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %write16.i.i.i202 = getelementptr inbounds %struct.ssb_bus_ops, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %write16.i.i.i202 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write16.i.i.i202, align 4
  tail call void %56(ptr noundef %52, i16 noundef zeroext 1020, i16 noundef zeroext 56) #7
  %57 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %write16.i.i2.i203 = getelementptr inbounds %struct.ssb_bus_ops, ptr %60, i32 0, i32 4
  %61 = ptrtoint ptr %write16.i.i2.i203 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write16.i.i2.i203, align 4
  tail call void %62(ptr noundef %58, i16 noundef zeroext 1022, i16 noundef zeroext 1639) #7
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end16.if.end25_crit_edge
  %gmode = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 1
  %63 = ptrtoint ptr %gmode to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %gmode, align 1, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.not = icmp eq i8 %64, 0
  br i1 %tobool.not, label %if.end25.if.end64_crit_edge, label %if.then26

if.end25.if.end64_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

if.then26:                                        ; preds = %if.end25
  %65 = ptrtoint ptr %radio_ver to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %radio_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8272, i16 %66)
  %cmp29 = icmp eq i16 %66, 8272
  br i1 %cmp29, label %if.then31, label %if.then26.if.end40_crit_edge

if.then26.if.end40_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then31:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  %call32 = tail call zeroext i16 @b43legacy_radio_read16(ptr noundef %dev, i16 noundef zeroext 122) #7
  %67 = or i16 %call32, 32
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 122, i16 noundef zeroext %67) #7
  %call36 = tail call zeroext i16 @b43legacy_radio_read16(ptr noundef %dev, i16 noundef zeroext 81) #7
  %68 = or i16 %call36, 4
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 81, i16 noundef zeroext %68) #7
  br label %if.end40

if.end40:                                         ; preds = %if.then31, %if.then26.if.end40_crit_edge
  %69 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %write16.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %72, i32 0, i32 4
  %73 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %write16.i.i, align 4
  tail call void %74(ptr noundef %70, i16 noundef zeroext 994, i16 noundef zeroext 0) #7
  %75 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 4
  %write16.i.i.i204 = getelementptr inbounds %struct.ssb_bus_ops, ptr %78, i32 0, i32 4
  %79 = ptrtoint ptr %write16.i.i.i204 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %write16.i.i.i204, align 4
  tail call void %80(ptr noundef %76, i16 noundef zeroext 1020, i16 noundef zeroext 2050) #7
  %81 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 4
  %read16.i.i.i205 = getelementptr inbounds %struct.ssb_bus_ops, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %read16.i.i.i205 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %read16.i.i.i205, align 4
  %call.i.i.i206 = tail call zeroext i16 %86(ptr noundef %82, i16 noundef zeroext 1022) #7
  %87 = or i16 %call.i.i.i206, 256
  %88 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %89, align 4
  %write16.i.i.i207 = getelementptr inbounds %struct.ssb_bus_ops, ptr %91, i32 0, i32 4
  %92 = ptrtoint ptr %write16.i.i.i207 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %write16.i.i.i207, align 4
  tail call void %93(ptr noundef %89, i16 noundef zeroext 1020, i16 noundef zeroext 2050) #7
  %94 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %95, align 4
  %write16.i.i2.i208 = getelementptr inbounds %struct.ssb_bus_ops, ptr %97, i32 0, i32 4
  %98 = ptrtoint ptr %write16.i.i2.i208 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %write16.i.i2.i208, align 4
  tail call void %99(ptr noundef %95, i16 noundef zeroext 1022, i16 noundef zeroext %87) #7
  %100 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %101, align 4
  %write16.i.i.i209 = getelementptr inbounds %struct.ssb_bus_ops, ptr %103, i32 0, i32 4
  %104 = ptrtoint ptr %write16.i.i.i209 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %write16.i.i.i209, align 4
  tail call void %105(ptr noundef %101, i16 noundef zeroext 1020, i16 noundef zeroext 1067) #7
  %106 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev, align 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %107, align 4
  %read16.i.i.i210 = getelementptr inbounds %struct.ssb_bus_ops, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %read16.i.i.i210 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %read16.i.i.i210, align 4
  %call.i.i.i211 = tail call zeroext i16 %111(ptr noundef %107, i16 noundef zeroext 1022) #7
  %112 = or i16 %call.i.i.i211, 8192
  %113 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %114, align 4
  %write16.i.i.i212 = getelementptr inbounds %struct.ssb_bus_ops, ptr %116, i32 0, i32 4
  %117 = ptrtoint ptr %write16.i.i.i212 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %write16.i.i.i212, align 4
  tail call void %118(ptr noundef %114, i16 noundef zeroext 1020, i16 noundef zeroext 1067) #7
  %119 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dev, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %120, align 4
  %write16.i.i2.i213 = getelementptr inbounds %struct.ssb_bus_ops, ptr %122, i32 0, i32 4
  %123 = ptrtoint ptr %write16.i.i2.i213 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %write16.i.i2.i213, align 4
  tail call void %124(ptr noundef %120, i16 noundef zeroext 1022, i16 noundef zeroext %112) #7
  %125 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev, align 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %126, align 4
  %write16.i.i.i214 = getelementptr inbounds %struct.ssb_bus_ops, ptr %128, i32 0, i32 4
  %129 = ptrtoint ptr %write16.i.i.i214 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %write16.i.i.i214, align 4
  tail call void %130(ptr noundef %126, i16 noundef zeroext 1020, i16 noundef zeroext 28) #7
  %131 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dev, align 4
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %132, align 4
  %write16.i.i2.i215 = getelementptr inbounds %struct.ssb_bus_ops, ptr %134, i32 0, i32 4
  %135 = ptrtoint ptr %write16.i.i2.i215 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %write16.i.i2.i215, align 4
  tail call void %136(ptr noundef %132, i16 noundef zeroext 1022, i16 noundef zeroext 6250) #7
  %137 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dev, align 4
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %138, align 4
  %write16.i.i.i216 = getelementptr inbounds %struct.ssb_bus_ops, ptr %140, i32 0, i32 4
  %141 = ptrtoint ptr %write16.i.i.i216 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %write16.i.i.i216, align 4
  tail call void %142(ptr noundef %138, i16 noundef zeroext 1020, i16 noundef zeroext 19) #7
  %143 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dev, align 4
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %144, align 4
  %read16.i.i.i217 = getelementptr inbounds %struct.ssb_bus_ops, ptr %146, i32 0, i32 1
  %147 = ptrtoint ptr %read16.i.i.i217 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %read16.i.i.i217, align 4
  %call.i.i.i218 = tail call zeroext i16 %148(ptr noundef %144, i16 noundef zeroext 1022) #7
  %149 = and i16 %call.i.i.i218, 255
  %150 = or i16 %149, 6400
  %151 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %dev, align 4
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %152, align 4
  %write16.i.i.i219 = getelementptr inbounds %struct.ssb_bus_ops, ptr %154, i32 0, i32 4
  %155 = ptrtoint ptr %write16.i.i.i219 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %write16.i.i.i219, align 4
  tail call void %156(ptr noundef %152, i16 noundef zeroext 1020, i16 noundef zeroext 19) #7
  %157 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %dev, align 4
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %158, align 4
  %write16.i.i2.i220 = getelementptr inbounds %struct.ssb_bus_ops, ptr %160, i32 0, i32 4
  %161 = ptrtoint ptr %write16.i.i2.i220 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %write16.i.i2.i220, align 4
  tail call void %162(ptr noundef %158, i16 noundef zeroext 1022, i16 noundef zeroext %150) #7
  %163 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %dev, align 4
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %164, align 4
  %write16.i.i.i221 = getelementptr inbounds %struct.ssb_bus_ops, ptr %166, i32 0, i32 4
  %167 = ptrtoint ptr %write16.i.i.i221 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %write16.i.i.i221, align 4
  tail call void %168(ptr noundef %164, i16 noundef zeroext 1020, i16 noundef zeroext 53) #7
  %169 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %dev, align 4
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %170, align 4
  %read16.i.i.i222 = getelementptr inbounds %struct.ssb_bus_ops, ptr %172, i32 0, i32 1
  %173 = ptrtoint ptr %read16.i.i.i222 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %read16.i.i.i222, align 4
  %call.i.i.i223 = tail call zeroext i16 %174(ptr noundef %170, i16 noundef zeroext 1022) #7
  %175 = and i16 %call.i.i.i223, -128
  %176 = or i16 %175, 100
  %177 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %dev, align 4
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %178, align 4
  %write16.i.i.i224 = getelementptr inbounds %struct.ssb_bus_ops, ptr %180, i32 0, i32 4
  %181 = ptrtoint ptr %write16.i.i.i224 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %write16.i.i.i224, align 4
  tail call void %182(ptr noundef %178, i16 noundef zeroext 1020, i16 noundef zeroext 53) #7
  %183 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %dev, align 4
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %184, align 4
  %write16.i.i2.i225 = getelementptr inbounds %struct.ssb_bus_ops, ptr %186, i32 0, i32 4
  %187 = ptrtoint ptr %write16.i.i2.i225 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %write16.i.i2.i225, align 4
  tail call void %188(ptr noundef %184, i16 noundef zeroext 1022, i16 noundef zeroext %176) #7
  %189 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %dev, align 4
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %190, align 4
  %write16.i.i.i226 = getelementptr inbounds %struct.ssb_bus_ops, ptr %192, i32 0, i32 4
  %193 = ptrtoint ptr %write16.i.i.i226 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %write16.i.i.i226, align 4
  tail call void %194(ptr noundef %190, i16 noundef zeroext 1020, i16 noundef zeroext 93) #7
  %195 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %dev, align 4
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %196, align 4
  %read16.i.i.i227 = getelementptr inbounds %struct.ssb_bus_ops, ptr %198, i32 0, i32 1
  %199 = ptrtoint ptr %read16.i.i.i227 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %read16.i.i.i227, align 4
  %call.i.i.i228 = tail call zeroext i16 %200(ptr noundef %196, i16 noundef zeroext 1022) #7
  %201 = and i16 %call.i.i.i228, -128
  %202 = or i16 %201, 10
  %203 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %dev, align 4
  %205 = ptrtoint ptr %204 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %204, align 4
  %write16.i.i.i229 = getelementptr inbounds %struct.ssb_bus_ops, ptr %206, i32 0, i32 4
  %207 = ptrtoint ptr %write16.i.i.i229 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %write16.i.i.i229, align 4
  tail call void %208(ptr noundef %204, i16 noundef zeroext 1020, i16 noundef zeroext 93) #7
  %209 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %dev, align 4
  %211 = ptrtoint ptr %210 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %210, align 4
  %write16.i.i2.i230 = getelementptr inbounds %struct.ssb_bus_ops, ptr %212, i32 0, i32 4
  %213 = ptrtoint ptr %write16.i.i2.i230 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %write16.i.i2.i230, align 4
  tail call void %214(ptr noundef %210, i16 noundef zeroext 1022, i16 noundef zeroext %202) #7
  %215 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %dev, align 4
  %217 = ptrtoint ptr %216 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %216, align 4
  %write16.i.i.i231 = getelementptr inbounds %struct.ssb_bus_ops, ptr %218, i32 0, i32 4
  %219 = ptrtoint ptr %write16.i.i.i231 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %write16.i.i.i231, align 4
  tail call void %220(ptr noundef %216, i16 noundef zeroext 1020, i16 noundef zeroext 91) #7
  %221 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %dev, align 4
  %223 = ptrtoint ptr %222 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %222, align 4
  %write16.i.i2.i232 = getelementptr inbounds %struct.ssb_bus_ops, ptr %224, i32 0, i32 4
  %225 = ptrtoint ptr %write16.i.i2.i232 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %write16.i.i2.i232, align 4
  tail call void %226(ptr noundef %222, i16 noundef zeroext 1022, i16 noundef zeroext 0) #7
  %227 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %dev, align 4
  %229 = ptrtoint ptr %228 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %228, align 4
  %write16.i.i.i233 = getelementptr inbounds %struct.ssb_bus_ops, ptr %230, i32 0, i32 4
  %231 = ptrtoint ptr %write16.i.i.i233 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %write16.i.i.i233, align 4
  tail call void %232(ptr noundef %228, i16 noundef zeroext 1020, i16 noundef zeroext 92) #7
  %233 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %dev, align 4
  %235 = ptrtoint ptr %234 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %234, align 4
  %write16.i.i2.i234 = getelementptr inbounds %struct.ssb_bus_ops, ptr %236, i32 0, i32 4
  %237 = ptrtoint ptr %write16.i.i2.i234 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %write16.i.i2.i234, align 4
  tail call void %238(ptr noundef %234, i16 noundef zeroext 1022, i16 noundef zeroext 0) #7
  br label %if.end64

if.end64:                                         ; preds = %if.end40, %if.end25.if.end64_crit_edge
  %bad_frames_preempt = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 5
  %239 = ptrtoint ptr %bad_frames_preempt to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %bad_frames_preempt, align 1, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %240)
  %tobool65.not = icmp eq i8 %240, 0
  br i1 %tobool65.not, label %if.end64.if.end71_crit_edge, label %if.then66

if.end64.if.end71_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

if.then66:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  %241 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %dev, align 4
  %243 = ptrtoint ptr %242 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %242, align 4
  %write16.i.i.i235 = getelementptr inbounds %struct.ssb_bus_ops, ptr %244, i32 0, i32 4
  %245 = ptrtoint ptr %write16.i.i.i235 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %write16.i.i.i235, align 4
  tail call void %246(ptr noundef %242, i16 noundef zeroext 1020, i16 noundef zeroext 1025) #7
  %247 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %dev, align 4
  %249 = ptrtoint ptr %248 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %248, align 4
  %read16.i.i.i236 = getelementptr inbounds %struct.ssb_bus_ops, ptr %250, i32 0, i32 1
  %251 = ptrtoint ptr %read16.i.i.i236 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %read16.i.i.i236, align 4
  %call.i.i.i237 = tail call zeroext i16 %252(ptr noundef %248, i16 noundef zeroext 1022) #7
  %253 = or i16 %call.i.i.i237, 4096
  %254 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %dev, align 4
  %256 = ptrtoint ptr %255 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %255, align 4
  %write16.i.i.i238 = getelementptr inbounds %struct.ssb_bus_ops, ptr %257, i32 0, i32 4
  %258 = ptrtoint ptr %write16.i.i.i238 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %write16.i.i.i238, align 4
  tail call void %259(ptr noundef %255, i16 noundef zeroext 1020, i16 noundef zeroext 1025) #7
  %260 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %dev, align 4
  %262 = ptrtoint ptr %261 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %261, align 4
  %write16.i.i2.i239 = getelementptr inbounds %struct.ssb_bus_ops, ptr %263, i32 0, i32 4
  %264 = ptrtoint ptr %write16.i.i2.i239 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %write16.i.i2.i239, align 4
  tail call void %265(ptr noundef %261, i16 noundef zeroext 1022, i16 noundef zeroext %253) #7
  br label %if.end71

if.end71:                                         ; preds = %if.then66, %if.end64.if.end71_crit_edge
  %266 = ptrtoint ptr %analog to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %analog, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %267)
  %cmp74 = icmp eq i8 %267, 1
  %268 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %dev, align 4
  %270 = ptrtoint ptr %269 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %269, align 4
  %write16.i.i.i240 = getelementptr inbounds %struct.ssb_bus_ops, ptr %271, i32 0, i32 4
  %272 = ptrtoint ptr %write16.i.i.i240 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %write16.i.i.i240, align 4
  tail call void %273(ptr noundef %269, i16 noundef zeroext 1020, i16 noundef zeroext 38) #7
  %274 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %dev, align 4
  %276 = ptrtoint ptr %275 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %275, align 4
  %write16.i.i2.i241 = getelementptr inbounds %struct.ssb_bus_ops, ptr %277, i32 0, i32 4
  %278 = ptrtoint ptr %write16.i.i2.i241 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %write16.i.i2.i241, align 4
  br i1 %cmp74, label %if.then76, label %if.else

if.then76:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %279(ptr noundef %275, i16 noundef zeroext 1022, i16 noundef zeroext -12800) #7
  %280 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %dev, align 4
  %282 = ptrtoint ptr %281 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %281, align 4
  %write16.i.i.i242 = getelementptr inbounds %struct.ssb_bus_ops, ptr %283, i32 0, i32 4
  %284 = ptrtoint ptr %write16.i.i.i242 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %write16.i.i.i242, align 4
  tail call void %285(ptr noundef %281, i16 noundef zeroext 1020, i16 noundef zeroext 33) #7
  %286 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %dev, align 4
  %288 = ptrtoint ptr %287 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %287, align 4
  %write16.i.i2.i243 = getelementptr inbounds %struct.ssb_bus_ops, ptr %289, i32 0, i32 4
  %290 = ptrtoint ptr %write16.i.i2.i243 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %write16.i.i2.i243, align 4
  tail call void %291(ptr noundef %287, i16 noundef zeroext 1022, i16 noundef zeroext 14179) #7
  %292 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %dev, align 4
  %294 = ptrtoint ptr %293 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %293, align 4
  %write16.i.i.i244 = getelementptr inbounds %struct.ssb_bus_ops, ptr %295, i32 0, i32 4
  %296 = ptrtoint ptr %write16.i.i.i244 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %write16.i.i.i244, align 4
  tail call void %297(ptr noundef %293, i16 noundef zeroext 1020, i16 noundef zeroext 34) #7
  %298 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %dev, align 4
  %300 = ptrtoint ptr %299 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %299, align 4
  %write16.i.i2.i245 = getelementptr inbounds %struct.ssb_bus_ops, ptr %301, i32 0, i32 4
  %302 = ptrtoint ptr %write16.i.i2.i245 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %write16.i.i2.i245, align 4
  tail call void %303(ptr noundef %299, i16 noundef zeroext 1022, i16 noundef zeroext 7107) #7
  %304 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %dev, align 4
  %306 = ptrtoint ptr %305 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %305, align 4
  %write16.i.i.i246 = getelementptr inbounds %struct.ssb_bus_ops, ptr %307, i32 0, i32 4
  %308 = ptrtoint ptr %write16.i.i.i246 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %write16.i.i.i246, align 4
  tail call void %309(ptr noundef %305, i16 noundef zeroext 1020, i16 noundef zeroext 35) #7
  %310 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %dev, align 4
  %312 = ptrtoint ptr %311 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %311, align 4
  %write16.i.i2.i247 = getelementptr inbounds %struct.ssb_bus_ops, ptr %313, i32 0, i32 4
  %314 = ptrtoint ptr %write16.i.i2.i247 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %write16.i.i2.i247, align 4
  tail call void %315(ptr noundef %311, i16 noundef zeroext 1022, i16 noundef zeroext 1785) #7
  %316 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %dev, align 4
  %318 = ptrtoint ptr %317 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %317, align 4
  %write16.i.i.i248 = getelementptr inbounds %struct.ssb_bus_ops, ptr %319, i32 0, i32 4
  %320 = ptrtoint ptr %write16.i.i.i248 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %write16.i.i.i248, align 4
  tail call void %321(ptr noundef %317, i16 noundef zeroext 1020, i16 noundef zeroext 36) #7
  %322 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %dev, align 4
  %324 = ptrtoint ptr %323 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %323, align 4
  %write16.i.i2.i249 = getelementptr inbounds %struct.ssb_bus_ops, ptr %325, i32 0, i32 4
  %326 = ptrtoint ptr %write16.i.i2.i249 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %write16.i.i2.i249, align 4
  tail call void %327(ptr noundef %323, i16 noundef zeroext 1022, i16 noundef zeroext 894) #7
  br label %if.end77

if.else:                                          ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %279(ptr noundef %275, i16 noundef zeroext 1022, i16 noundef zeroext -13312) #7
  br label %if.end77

if.end77:                                         ; preds = %if.else, %if.then76
  %328 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %dev, align 4
  %330 = ptrtoint ptr %329 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %329, align 4
  %write16.i.i.i252 = getelementptr inbounds %struct.ssb_bus_ops, ptr %331, i32 0, i32 4
  %332 = ptrtoint ptr %write16.i.i.i252 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %write16.i.i.i252, align 4
  tail call void %333(ptr noundef %329, i16 noundef zeroext 1020, i16 noundef zeroext 48) #7
  %334 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %dev, align 4
  %336 = ptrtoint ptr %335 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %335, align 4
  %write16.i.i2.i253 = getelementptr inbounds %struct.ssb_bus_ops, ptr %337, i32 0, i32 4
  %338 = ptrtoint ptr %write16.i.i2.i253 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %write16.i.i2.i253, align 4
  tail call void %339(ptr noundef %335, i16 noundef zeroext 1022, i16 noundef zeroext 198) #7
  %340 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %dev, align 4
  %342 = ptrtoint ptr %341 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %341, align 4
  %write16.i.i254 = getelementptr inbounds %struct.ssb_bus_ops, ptr %343, i32 0, i32 4
  %344 = ptrtoint ptr %write16.i.i254 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %write16.i.i254, align 4
  tail call void %345(ptr noundef %341, i16 noundef zeroext 1004, i16 noundef zeroext 16162) #7
  %346 = ptrtoint ptr %analog to i32
  call void @__asan_load1_noabort(i32 %346)
  %347 = load i8, ptr %analog, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %347)
  %cmp80 = icmp eq i8 %347, 1
  %348 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %dev, align 4
  %350 = ptrtoint ptr %349 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %349, align 4
  %write16.i.i.i255 = getelementptr inbounds %struct.ssb_bus_ops, ptr %351, i32 0, i32 4
  %352 = ptrtoint ptr %write16.i.i.i255 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %write16.i.i.i255, align 4
  tail call void %353(ptr noundef %349, i16 noundef zeroext 1020, i16 noundef zeroext 32) #7
  %354 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %dev, align 4
  %356 = ptrtoint ptr %355 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %355, align 4
  %write16.i.i2.i256 = getelementptr inbounds %struct.ssb_bus_ops, ptr %357, i32 0, i32 4
  %358 = ptrtoint ptr %write16.i.i2.i256 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %write16.i.i2.i256, align 4
  %. = select i1 %cmp80, i16 15900, i16 12316
  tail call void %359(ptr noundef %355, i16 noundef zeroext 1022, i16 noundef zeroext %.) #7
  %360 = ptrtoint ptr %analog to i32
  call void @__asan_load1_noabort(i32 %360)
  %361 = load i8, ptr %analog, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %361)
  %cmp87 = icmp eq i8 %361, 0
  br i1 %cmp87, label %if.then89, label %if.end77.if.end90_crit_edge

if.end77.if.end90_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90

if.then89:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  %362 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %dev, align 4
  %364 = ptrtoint ptr %363 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %363, align 4
  %write16.i.i259 = getelementptr inbounds %struct.ssb_bus_ops, ptr %365, i32 0, i32 4
  %366 = ptrtoint ptr %write16.i.i259 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %write16.i.i259, align 4
  tail call void %367(ptr noundef %363, i16 noundef zeroext 996, i16 noundef zeroext 12288) #7
  br label %if.end90

if.end90:                                         ; preds = %if.then89, %if.end77.if.end90_crit_edge
  %channel = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 39
  %368 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %368)
  %369 = load i8, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %369)
  %cmp92 = icmp eq i8 %369, -1
  %spec.select = select i1 %cmp92, i8 1, i8 %369
  %call97 = tail call i32 @b43legacy_radio_selectchannel(ptr noundef %dev, i8 noundef zeroext 7, i32 noundef 0) #7
  %370 = ptrtoint ptr %radio_ver to i32
  call void @__asan_load2_noabort(i32 %370)
  %371 = load i16, ptr %radio_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8272, i16 %371)
  %cmp100.not = icmp eq i16 %371, 8272
  br i1 %cmp100.not, label %if.end90.if.end103_crit_edge, label %if.then102

if.end90.if.end103_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end103

if.then102:                                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 117, i16 noundef zeroext 128) #7
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 121, i16 noundef zeroext 129) #7
  br label %if.end103

if.end103:                                        ; preds = %if.then102, %if.end90.if.end103_crit_edge
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 80, i16 noundef zeroext 32) #7
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 80, i16 noundef zeroext 35) #7
  %372 = ptrtoint ptr %radio_ver to i32
  call void @__asan_load2_noabort(i32 %372)
  %373 = load i16, ptr %radio_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8272, i16 %373)
  %cmp106 = icmp eq i16 %373, 8272
  br i1 %cmp106, label %if.then108, label %if.end103.if.end109_crit_edge

if.end103.if.end109_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109

if.then108:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 80, i16 noundef zeroext 32) #7
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 90, i16 noundef zeroext 112) #7
  br label %if.end109

if.end109:                                        ; preds = %if.then108, %if.end103.if.end109_crit_edge
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 91, i16 noundef zeroext 123) #7
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 92, i16 noundef zeroext 176) #7
  %call110 = tail call zeroext i16 @b43legacy_radio_read16(ptr noundef %dev, i16 noundef zeroext 122) #7
  %374 = or i16 %call110, 7
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 122, i16 noundef zeroext %374) #7
  %call114 = tail call i32 @b43legacy_radio_selectchannel(ptr noundef %dev, i8 noundef zeroext %spec.select, i32 noundef 0) #7
  %375 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %dev, align 4
  %377 = ptrtoint ptr %376 to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %376, align 4
  %write16.i.i.i260 = getelementptr inbounds %struct.ssb_bus_ops, ptr %378, i32 0, i32 4
  %379 = ptrtoint ptr %write16.i.i.i260 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %write16.i.i.i260, align 4
  tail call void %380(ptr noundef %376, i16 noundef zeroext 1020, i16 noundef zeroext 20) #7
  %381 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %dev, align 4
  %383 = ptrtoint ptr %382 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %382, align 4
  %write16.i.i2.i261 = getelementptr inbounds %struct.ssb_bus_ops, ptr %384, i32 0, i32 4
  %385 = ptrtoint ptr %write16.i.i2.i261 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %write16.i.i2.i261, align 4
  tail call void %386(ptr noundef %382, i16 noundef zeroext 1022, i16 noundef zeroext 128) #7
  %387 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %dev, align 4
  %389 = ptrtoint ptr %388 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %388, align 4
  %write16.i.i.i262 = getelementptr inbounds %struct.ssb_bus_ops, ptr %390, i32 0, i32 4
  %391 = ptrtoint ptr %write16.i.i.i262 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %write16.i.i.i262, align 4
  tail call void %392(ptr noundef %388, i16 noundef zeroext 1020, i16 noundef zeroext 50) #7
  %393 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %dev, align 4
  %395 = ptrtoint ptr %394 to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %394, align 4
  %write16.i.i2.i263 = getelementptr inbounds %struct.ssb_bus_ops, ptr %396, i32 0, i32 4
  %397 = ptrtoint ptr %write16.i.i2.i263 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %write16.i.i2.i263, align 4
  tail call void %398(ptr noundef %394, i16 noundef zeroext 1022, i16 noundef zeroext 202) #7
  %399 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %dev, align 4
  %401 = ptrtoint ptr %400 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %400, align 4
  %write16.i.i.i264 = getelementptr inbounds %struct.ssb_bus_ops, ptr %402, i32 0, i32 4
  %403 = ptrtoint ptr %write16.i.i.i264 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %write16.i.i.i264, align 4
  tail call void %404(ptr noundef %400, i16 noundef zeroext 1020, i16 noundef zeroext 42) #7
  %405 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %dev, align 4
  %407 = ptrtoint ptr %406 to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %406, align 4
  %write16.i.i2.i265 = getelementptr inbounds %struct.ssb_bus_ops, ptr %408, i32 0, i32 4
  %409 = ptrtoint ptr %write16.i.i2.i265 to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %write16.i.i2.i265, align 4
  tail call void %410(ptr noundef %406, i16 noundef zeroext 1022, i16 noundef zeroext -30557) #7
  tail call void @b43legacy_radio_set_txpower_bg(ptr noundef %dev, i16 noundef zeroext -1, i16 noundef zeroext -1, i16 noundef zeroext -1) #7
  %411 = ptrtoint ptr %radio_ver to i32
  call void @__asan_load2_noabort(i32 %411)
  %412 = load i16, ptr %radio_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8272, i16 %412)
  %cmp117 = icmp eq i16 %412, 8272
  br i1 %cmp117, label %if.then119, label %if.end109.if.end120_crit_edge

if.end109.if.end120_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120

if.then119:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 93, i16 noundef zeroext 13) #7
  br label %if.end120

if.end120:                                        ; preds = %if.then119, %if.end109.if.end120_crit_edge
  %413 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %dev, align 4
  %415 = ptrtoint ptr %414 to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %414, align 4
  %read16.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %416, i32 0, i32 1
  %417 = ptrtoint ptr %read16.i.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %read16.i.i, align 4
  %call.i.i = tail call zeroext i16 %418(ptr noundef %414, i16 noundef zeroext 996) #7
  %419 = and i16 %call.i.i, -64
  %420 = or i16 %419, 4
  %421 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %dev, align 4
  %423 = ptrtoint ptr %422 to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %422, align 4
  %write16.i.i266 = getelementptr inbounds %struct.ssb_bus_ops, ptr %424, i32 0, i32 4
  %425 = ptrtoint ptr %write16.i.i266 to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %write16.i.i266, align 4
  tail call void %426(ptr noundef %422, i16 noundef zeroext 996, i16 noundef zeroext %420) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @b43legacy_phy_initb6(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %write16.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write16.i.i.i, align 4
  tail call void %5(ptr noundef %1, i16 noundef zeroext 1020, i16 noundef zeroext 62) #7
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %write16.i.i2.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %write16.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write16.i.i2.i, align 4
  tail call void %11(ptr noundef %7, i16 noundef zeroext 1022, i16 noundef zeroext -32390) #7
  %call = tail call zeroext i16 @b43legacy_radio_read16(ptr noundef %dev, i16 noundef zeroext 122) #7
  %12 = or i16 %call, 88
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 122, i16 noundef zeroext %12) #7
  %radio_rev = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 10
  %13 = ptrtoint ptr %radio_rev to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %radio_rev, align 1
  %15 = and i8 %14, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %15)
  %switch = icmp eq i8 %15, 4
  br i1 %switch, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 81, i16 noundef zeroext 55) #7
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 82, i16 noundef zeroext 112) #7
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 83, i16 noundef zeroext 179) #7
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 84, i16 noundef zeroext 155) #7
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 90, i16 noundef zeroext 136) #7
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 91, i16 noundef zeroext 136) #7
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 93, i16 noundef zeroext 136) #7
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 94, i16 noundef zeroext 136) #7
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 125, i16 noundef zeroext 136) #7
  %call9 = tail call i32 @b43legacy_shm_read32(ptr noundef %dev, i16 noundef zeroext 1, i16 noundef zeroext 94) #7
  %or10 = or i32 %call9, 512
  tail call void @b43legacy_shm_write32(ptr noundef %dev, i16 noundef zeroext 1, i16 noundef zeroext 94, i32 noundef %or10) #7
  %16 = ptrtoint ptr %radio_rev to i32
  call void @__asan_load1_noabort(i32 %16)
  %.pr = load i8, ptr %radio_rev, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %17 = phi i8 [ %14, %entry.if.end_crit_edge ], [ %.pr, %if.then ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %17)
  %cmp13 = icmp eq i8 %17, 8
  br i1 %cmp13, label %if.then15, label %if.end.for.body.preheader_crit_edge

if.end.for.body.preheader_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 81, i16 noundef zeroext 0) #7
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 82, i16 noundef zeroext 64) #7
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 83, i16 noundef zeroext 183) #7
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 84, i16 noundef zeroext 152) #7
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 90, i16 noundef zeroext 136) #7
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 91, i16 noundef zeroext 107) #7
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 92, i16 noundef zeroext 15) #7
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %bus = getelementptr inbounds %struct.ssb_device, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus, align 4
  %boardflags_lo = getelementptr inbounds %struct.ssb_bus, ptr %21, i32 0, i32 22, i32 70
  %22 = ptrtoint ptr %boardflags_lo to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %boardflags_lo, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %23)
  %tobool.not = icmp sgt i16 %23, -1
  %. = select i1 %tobool.not, i16 245, i16 250
  %.345 = select i1 %tobool.not, i16 184, i16 216
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 93, i16 noundef zeroext %.) #7
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 94, i16 noundef zeroext %.345) #7
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext 3) #7
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 125, i16 noundef zeroext 168) #7
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 124, i16 noundef zeroext 1) #7
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 126, i16 noundef zeroext 8) #7
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then15, %if.end.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %val.0337 = phi i16 [ %sub, %for.body.for.body_crit_edge ], [ 7711, %for.body.preheader ]
  %offset.0336 = phi i16 [ %inc, %for.body.for.body_crit_edge ], [ 136, %for.body.preheader ]
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %write16.i.i.i283 = getelementptr inbounds %struct.ssb_bus_ops, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %write16.i.i.i283 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write16.i.i.i283, align 4
  tail call void %29(ptr noundef %25, i16 noundef zeroext 1020, i16 noundef zeroext %offset.0336) #7
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %write16.i.i2.i284 = getelementptr inbounds %struct.ssb_bus_ops, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %write16.i.i2.i284 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write16.i.i2.i284, align 4
  tail call void %35(ptr noundef %31, i16 noundef zeroext 1022, i16 noundef zeroext %val.0337) #7
  %sub = add nsw i16 %val.0337, -514
  %inc = add nuw nsw i16 %offset.0336, 1
  %cmp22 = icmp ult i16 %offset.0336, 151
  br i1 %cmp22, label %for.body.for.body_crit_edge, label %for.body.for.body30_crit_edge

for.body.for.body30_crit_edge:                    ; preds = %for.body
  br label %for.body30

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body30:                                       ; preds = %for.body30.for.body30_crit_edge, %for.body.for.body30_crit_edge
  %val.1339 = phi i16 [ %sub32, %for.body30.for.body30_crit_edge ], [ 15935, %for.body.for.body30_crit_edge ]
  %offset.1338 = phi i16 [ %inc35, %for.body30.for.body30_crit_edge ], [ 152, %for.body.for.body30_crit_edge ]
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %write16.i.i.i285 = getelementptr inbounds %struct.ssb_bus_ops, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %write16.i.i.i285 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write16.i.i.i285, align 4
  tail call void %41(ptr noundef %37, i16 noundef zeroext 1020, i16 noundef zeroext %offset.1338) #7
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %write16.i.i2.i286 = getelementptr inbounds %struct.ssb_bus_ops, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %write16.i.i2.i286 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write16.i.i2.i286, align 4
  tail call void %47(ptr noundef %43, i16 noundef zeroext 1022, i16 noundef zeroext %val.1339) #7
  %sub32 = add nsw i16 %val.1339, -514
  %inc35 = add nuw nsw i16 %offset.1338, 1
  %cmp28 = icmp ult i16 %offset.1338, 167
  br i1 %cmp28, label %for.body30.for.body30_crit_edge, label %for.body30.for.body41_crit_edge

for.body30.for.body41_crit_edge:                  ; preds = %for.body30
  br label %for.body41

for.body30.for.body30_crit_edge:                  ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body30

for.body41:                                       ; preds = %for.body41.for.body41_crit_edge, %for.body30.for.body41_crit_edge
  %val.2341 = phi i32 [ %add, %for.body41.for.body41_crit_edge ], [ 8480, %for.body30.for.body41_crit_edge ]
  %offset.2340 = phi i16 [ %inc48, %for.body41.for.body41_crit_edge ], [ 168, %for.body30.for.body41_crit_edge ]
  %conv42 = and i32 %val.2341, 65535
  %48 = trunc i32 %val.2341 to i16
  %conv44 = and i16 %48, 16191
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %write16.i.i.i287 = getelementptr inbounds %struct.ssb_bus_ops, ptr %52, i32 0, i32 4
  %53 = ptrtoint ptr %write16.i.i.i287 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write16.i.i.i287, align 4
  tail call void %54(ptr noundef %50, i16 noundef zeroext 1020, i16 noundef zeroext %offset.2340) #7
  %55 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %write16.i.i2.i288 = getelementptr inbounds %struct.ssb_bus_ops, ptr %58, i32 0, i32 4
  %59 = ptrtoint ptr %write16.i.i2.i288 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %write16.i.i2.i288, align 4
  tail call void %60(ptr noundef %56, i16 noundef zeroext 1022, i16 noundef zeroext %conv44) #7
  %add = add nuw nsw i32 %conv42, 514
  %inc48 = add nuw nsw i16 %offset.2340, 1
  %cmp39 = icmp ult i16 %offset.2340, 199
  br i1 %cmp39, label %for.body41.for.body41_crit_edge, label %for.end49

for.body41.for.body41_crit_edge:                  ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body41

for.end49:                                        ; preds = %for.body41
  %type = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 3
  %61 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %62)
  %cmp51 = icmp eq i8 %62, 2
  br i1 %cmp51, label %if.then53, label %for.end49.if.end70_crit_edge

for.end49.if.end70_crit_edge:                     ; preds = %for.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

if.then53:                                        ; preds = %for.end49
  call void @__sanitizer_cov_trace_pc() #9
  %call54 = tail call zeroext i16 @b43legacy_radio_read16(ptr noundef %dev, i16 noundef zeroext 122) #7
  %63 = or i16 %call54, 32
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 122, i16 noundef zeroext %63) #7
  %call58 = tail call zeroext i16 @b43legacy_radio_read16(ptr noundef %dev, i16 noundef zeroext 81) #7
  %64 = or i16 %call58, 4
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 81, i16 noundef zeroext %64) #7
  %65 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %write16.i.i.i289 = getelementptr inbounds %struct.ssb_bus_ops, ptr %68, i32 0, i32 4
  %69 = ptrtoint ptr %write16.i.i.i289 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %write16.i.i.i289, align 4
  tail call void %70(ptr noundef %66, i16 noundef zeroext 1020, i16 noundef zeroext 2050) #7
  %71 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 4
  %read16.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %read16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %read16.i.i.i, align 4
  %call.i.i.i = tail call zeroext i16 %76(ptr noundef %72, i16 noundef zeroext 1022) #7
  %77 = or i16 %call.i.i.i, 256
  %78 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 4
  %write16.i.i.i290 = getelementptr inbounds %struct.ssb_bus_ops, ptr %81, i32 0, i32 4
  %82 = ptrtoint ptr %write16.i.i.i290 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %write16.i.i.i290, align 4
  tail call void %83(ptr noundef %79, i16 noundef zeroext 1020, i16 noundef zeroext 2050) #7
  %84 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %write16.i.i2.i291 = getelementptr inbounds %struct.ssb_bus_ops, ptr %87, i32 0, i32 4
  %88 = ptrtoint ptr %write16.i.i2.i291 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %write16.i.i2.i291, align 4
  tail call void %89(ptr noundef %85, i16 noundef zeroext 1022, i16 noundef zeroext %77) #7
  %90 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %91, align 4
  %write16.i.i.i292 = getelementptr inbounds %struct.ssb_bus_ops, ptr %93, i32 0, i32 4
  %94 = ptrtoint ptr %write16.i.i.i292 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %write16.i.i.i292, align 4
  tail call void %95(ptr noundef %91, i16 noundef zeroext 1020, i16 noundef zeroext 1067) #7
  %96 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %97, align 4
  %read16.i.i.i293 = getelementptr inbounds %struct.ssb_bus_ops, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %read16.i.i.i293 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %read16.i.i.i293, align 4
  %call.i.i.i294 = tail call zeroext i16 %101(ptr noundef %97, i16 noundef zeroext 1022) #7
  %102 = or i16 %call.i.i.i294, 8192
  %103 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 4
  %write16.i.i.i295 = getelementptr inbounds %struct.ssb_bus_ops, ptr %106, i32 0, i32 4
  %107 = ptrtoint ptr %write16.i.i.i295 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %write16.i.i.i295, align 4
  tail call void %108(ptr noundef %104, i16 noundef zeroext 1020, i16 noundef zeroext 1067) #7
  %109 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev, align 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %110, align 4
  %write16.i.i2.i296 = getelementptr inbounds %struct.ssb_bus_ops, ptr %112, i32 0, i32 4
  %113 = ptrtoint ptr %write16.i.i2.i296 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %write16.i.i2.i296, align 4
  tail call void %114(ptr noundef %110, i16 noundef zeroext 1022, i16 noundef zeroext %102) #7
  %115 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %116, align 4
  %write16.i.i.i297 = getelementptr inbounds %struct.ssb_bus_ops, ptr %118, i32 0, i32 4
  %119 = ptrtoint ptr %write16.i.i.i297 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %write16.i.i.i297, align 4
  tail call void %120(ptr noundef %116, i16 noundef zeroext 1020, i16 noundef zeroext 91) #7
  %121 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dev, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %122, align 4
  %write16.i.i2.i298 = getelementptr inbounds %struct.ssb_bus_ops, ptr %124, i32 0, i32 4
  %125 = ptrtoint ptr %write16.i.i2.i298 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %write16.i.i2.i298, align 4
  tail call void %126(ptr noundef %122, i16 noundef zeroext 1022, i16 noundef zeroext 0) #7
  %127 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev, align 4
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %128, align 4
  %write16.i.i.i299 = getelementptr inbounds %struct.ssb_bus_ops, ptr %130, i32 0, i32 4
  %131 = ptrtoint ptr %write16.i.i.i299 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %write16.i.i.i299, align 4
  tail call void %132(ptr noundef %128, i16 noundef zeroext 1020, i16 noundef zeroext 92) #7
  %133 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dev, align 4
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %134, align 4
  %write16.i.i2.i300 = getelementptr inbounds %struct.ssb_bus_ops, ptr %136, i32 0, i32 4
  %137 = ptrtoint ptr %write16.i.i2.i300 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %write16.i.i2.i300, align 4
  tail call void %138(ptr noundef %134, i16 noundef zeroext 1022, i16 noundef zeroext 0) #7
  br label %if.end70

if.end70:                                         ; preds = %if.then53, %for.end49.if.end70_crit_edge
  %channel = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 39
  %139 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %140)
  %cmp72 = icmp ugt i8 %140, 7
  %.346 = select i1 %cmp72, i8 1, i8 13
  %call77 = tail call i32 @b43legacy_radio_selectchannel(ptr noundef %dev, i8 noundef zeroext %.346, i32 noundef 0) #7
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 80, i16 noundef zeroext 32) #7
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 80, i16 noundef zeroext 35) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %141 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %141(i32 noundef 8589920) #7
  %142 = ptrtoint ptr %radio_rev to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %radio_rev, align 1
  %144 = zext i8 %143 to i64
  call void @__sanitizer_cov_trace_switch(i64 %144, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %143, label %if.end70.if.end99_crit_edge [
    i8 8, label %if.end70.if.end93_crit_edge
    i8 5, label %if.end70.if.end93_crit_edge348
    i8 4, label %if.end70.if.end93_crit_edge349
    i8 3, label %if.end70.if.end93_crit_edge350
    i8 2, label %if.end70.if.end93_crit_edge351
    i8 1, label %if.end70.if.end93_crit_edge352
    i8 0, label %if.end70.if.end93_crit_edge353
  ]

if.end70.if.end93_crit_edge353:                   ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93

if.end70.if.end93_crit_edge352:                   ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93

if.end70.if.end93_crit_edge351:                   ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93

if.end70.if.end93_crit_edge350:                   ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93

if.end70.if.end93_crit_edge349:                   ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93

if.end70.if.end93_crit_edge348:                   ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93

if.end70.if.end93_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93

if.end70.if.end99_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99

if.end93:                                         ; preds = %if.end70.if.end93_crit_edge, %if.end70.if.end93_crit_edge348, %if.end70.if.end93_crit_edge349, %if.end70.if.end93_crit_edge350, %if.end70.if.end93_crit_edge351, %if.end70.if.end93_crit_edge352, %if.end70.if.end93_crit_edge353
  %call89 = tail call zeroext i16 @b43legacy_radio_read16(ptr noundef %dev, i16 noundef zeroext 124) #7
  %145 = or i16 %call89, 2
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 124, i16 noundef zeroext %145) #7
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 80, i16 noundef zeroext 32) #7
  %146 = ptrtoint ptr %radio_rev to i32
  call void @__asan_load1_noabort(i32 %146)
  %.pr332 = load i8, ptr %radio_rev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.pr332)
  %cmp96 = icmp ult i8 %.pr332, 3
  br i1 %cmp96, label %if.then98, label %if.end93.if.end99_crit_edge

if.end93.if.end99_crit_edge:                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99

if.then98:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 80, i16 noundef zeroext 32) #7
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 90, i16 noundef zeroext 112) #7
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 91, i16 noundef zeroext 123) #7
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 92, i16 noundef zeroext 176) #7
  br label %if.end99

if.end99:                                         ; preds = %if.then98, %if.end93.if.end99_crit_edge, %if.end70.if.end99_crit_edge
  %call100 = tail call zeroext i16 @b43legacy_radio_read16(ptr noundef %dev, i16 noundef zeroext 122) #7
  %147 = and i16 %call100, 248
  %148 = or i16 %147, 7
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 122, i16 noundef zeroext %148) #7
  %call105 = tail call i32 @b43legacy_radio_selectchannel(ptr noundef %dev, i8 noundef zeroext %140, i32 noundef 0) #7
  %149 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dev, align 4
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %150, align 4
  %write16.i.i.i301 = getelementptr inbounds %struct.ssb_bus_ops, ptr %152, i32 0, i32 4
  %153 = ptrtoint ptr %write16.i.i.i301 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %write16.i.i.i301, align 4
  tail call void %154(ptr noundef %150, i16 noundef zeroext 1020, i16 noundef zeroext 20) #7
  %155 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %dev, align 4
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %156, align 4
  %write16.i.i2.i302 = getelementptr inbounds %struct.ssb_bus_ops, ptr %158, i32 0, i32 4
  %159 = ptrtoint ptr %write16.i.i2.i302 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %write16.i.i2.i302, align 4
  tail call void %160(ptr noundef %156, i16 noundef zeroext 1022, i16 noundef zeroext 512) #7
  %161 = ptrtoint ptr %radio_rev to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %radio_rev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %162)
  %cmp108 = icmp ugt i8 %162, 5
  %163 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %dev, align 4
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %164, align 4
  %write16.i.i.i303 = getelementptr inbounds %struct.ssb_bus_ops, ptr %166, i32 0, i32 4
  %167 = ptrtoint ptr %write16.i.i.i303 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %write16.i.i.i303, align 4
  tail call void %168(ptr noundef %164, i16 noundef zeroext 1020, i16 noundef zeroext 42) #7
  %169 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %dev, align 4
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %170, align 4
  %write16.i.i2.i304 = getelementptr inbounds %struct.ssb_bus_ops, ptr %172, i32 0, i32 4
  %173 = ptrtoint ptr %write16.i.i2.i304 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %write16.i.i2.i304, align 4
  %.347 = select i1 %cmp108, i16 -30526, i16 -30016
  tail call void %174(ptr noundef %170, i16 noundef zeroext 1022, i16 noundef zeroext %.347) #7
  %175 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %dev, align 4
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %176, align 4
  %write16.i.i.i307 = getelementptr inbounds %struct.ssb_bus_ops, ptr %178, i32 0, i32 4
  %179 = ptrtoint ptr %write16.i.i.i307 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %write16.i.i.i307, align 4
  tail call void %180(ptr noundef %176, i16 noundef zeroext 1020, i16 noundef zeroext 56) #7
  %181 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %dev, align 4
  %183 = ptrtoint ptr %182 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %182, align 4
  %write16.i.i2.i308 = getelementptr inbounds %struct.ssb_bus_ops, ptr %184, i32 0, i32 4
  %185 = ptrtoint ptr %write16.i.i2.i308 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %write16.i.i2.i308, align 4
  tail call void %186(ptr noundef %182, i16 noundef zeroext 1022, i16 noundef zeroext 1640) #7
  tail call void @b43legacy_radio_set_txpower_bg(ptr noundef %dev, i16 noundef zeroext -1, i16 noundef zeroext -1, i16 noundef zeroext -1) #7
  %187 = ptrtoint ptr %radio_rev to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %radio_rev, align 1
  %189 = and i8 %188, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %189)
  %switch282 = icmp eq i8 %189, 4
  br i1 %switch282, label %if.then122, label %if.end99.if.end128_crit_edge

if.end99.if.end128_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end128

if.then122:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  %190 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %dev, align 4
  %192 = ptrtoint ptr %191 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %191, align 4
  %write16.i.i.i309 = getelementptr inbounds %struct.ssb_bus_ops, ptr %193, i32 0, i32 4
  %194 = ptrtoint ptr %write16.i.i.i309 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %write16.i.i.i309, align 4
  tail call void %195(ptr noundef %191, i16 noundef zeroext 1020, i16 noundef zeroext 93) #7
  %196 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %dev, align 4
  %198 = ptrtoint ptr %197 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %197, align 4
  %read16.i.i.i310 = getelementptr inbounds %struct.ssb_bus_ops, ptr %199, i32 0, i32 1
  %200 = ptrtoint ptr %read16.i.i.i310 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %read16.i.i.i310, align 4
  %call.i.i.i311 = tail call zeroext i16 %201(ptr noundef %197, i16 noundef zeroext 1022) #7
  %202 = and i16 %call.i.i.i311, -128
  %203 = or i16 %202, 3
  %204 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %dev, align 4
  %206 = ptrtoint ptr %205 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %205, align 4
  %write16.i.i.i312 = getelementptr inbounds %struct.ssb_bus_ops, ptr %207, i32 0, i32 4
  %208 = ptrtoint ptr %write16.i.i.i312 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %write16.i.i.i312, align 4
  tail call void %209(ptr noundef %205, i16 noundef zeroext 1020, i16 noundef zeroext 93) #7
  %210 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %dev, align 4
  %212 = ptrtoint ptr %211 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %211, align 4
  %write16.i.i2.i313 = getelementptr inbounds %struct.ssb_bus_ops, ptr %213, i32 0, i32 4
  %214 = ptrtoint ptr %write16.i.i2.i313 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %write16.i.i2.i313, align 4
  tail call void %215(ptr noundef %211, i16 noundef zeroext 1022, i16 noundef zeroext %203) #7
  %216 = ptrtoint ptr %radio_rev to i32
  call void @__asan_load1_noabort(i32 %216)
  %.pr334 = load i8, ptr %radio_rev, align 1
  br label %if.end128

if.end128:                                        ; preds = %if.then122, %if.end99.if.end128_crit_edge
  %217 = phi i8 [ %188, %if.end99.if.end128_crit_edge ], [ %.pr334, %if.then122 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %217)
  %cmp131 = icmp ult i8 %217, 3
  br i1 %cmp131, label %if.then133, label %if.end128.if.end134_crit_edge

if.end128.if.end134_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end134

if.then133:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 93, i16 noundef zeroext 13) #7
  br label %if.end134

if.end134:                                        ; preds = %if.then133, %if.end128.if.end134_crit_edge
  %analog = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 2
  %218 = ptrtoint ptr %analog to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %analog, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %219)
  %cmp136 = icmp eq i8 %219, 4
  %220 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %dev, align 4
  %222 = ptrtoint ptr %221 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %221, align 4
  %write16.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %223, i32 0, i32 4
  %224 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %write16.i.i, align 4
  br i1 %cmp136, label %if.then138, label %if.else143

if.then138:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %225(ptr noundef %221, i16 noundef zeroext 996, i16 noundef zeroext 9) #7
  %226 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %dev, align 4
  %228 = ptrtoint ptr %227 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %227, align 4
  %write16.i.i.i314 = getelementptr inbounds %struct.ssb_bus_ops, ptr %229, i32 0, i32 4
  %230 = ptrtoint ptr %write16.i.i.i314 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %write16.i.i.i314, align 4
  tail call void %231(ptr noundef %227, i16 noundef zeroext 1020, i16 noundef zeroext 97) #7
  %232 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %dev, align 4
  %234 = ptrtoint ptr %233 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %233, align 4
  %read16.i.i.i315 = getelementptr inbounds %struct.ssb_bus_ops, ptr %235, i32 0, i32 1
  %236 = ptrtoint ptr %read16.i.i.i315 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %read16.i.i.i315, align 4
  %call.i.i.i316 = tail call zeroext i16 %237(ptr noundef %233, i16 noundef zeroext 1022) #7
  %238 = and i16 %call.i.i.i316, 4095
  %239 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %dev, align 4
  %241 = ptrtoint ptr %240 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %240, align 4
  %write16.i.i.i317 = getelementptr inbounds %struct.ssb_bus_ops, ptr %242, i32 0, i32 4
  %243 = ptrtoint ptr %write16.i.i.i317 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %write16.i.i.i317, align 4
  tail call void %244(ptr noundef %240, i16 noundef zeroext 1020, i16 noundef zeroext 97) #7
  %245 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %dev, align 4
  %247 = ptrtoint ptr %246 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %246, align 4
  %write16.i.i2.i318 = getelementptr inbounds %struct.ssb_bus_ops, ptr %248, i32 0, i32 4
  %249 = ptrtoint ptr %write16.i.i2.i318 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %write16.i.i2.i318, align 4
  tail call void %250(ptr noundef %246, i16 noundef zeroext 1022, i16 noundef zeroext %238) #7
  br label %if.end149

if.else143:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %225(ptr noundef %221, i16 noundef zeroext 1020, i16 noundef zeroext 2) #7
  %251 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %dev, align 4
  %253 = ptrtoint ptr %252 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %252, align 4
  %read16.i.i.i320 = getelementptr inbounds %struct.ssb_bus_ops, ptr %254, i32 0, i32 1
  %255 = ptrtoint ptr %read16.i.i.i320 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %read16.i.i.i320, align 4
  %call.i.i.i321 = tail call zeroext i16 %256(ptr noundef %252, i16 noundef zeroext 1022) #7
  %257 = and i16 %call.i.i.i321, -64
  %258 = or i16 %257, 4
  %259 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %dev, align 4
  %261 = ptrtoint ptr %260 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %260, align 4
  %write16.i.i.i322 = getelementptr inbounds %struct.ssb_bus_ops, ptr %262, i32 0, i32 4
  %263 = ptrtoint ptr %write16.i.i.i322 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %write16.i.i.i322, align 4
  tail call void %264(ptr noundef %260, i16 noundef zeroext 1020, i16 noundef zeroext 2) #7
  %265 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %dev, align 4
  %267 = ptrtoint ptr %266 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %266, align 4
  %write16.i.i2.i323 = getelementptr inbounds %struct.ssb_bus_ops, ptr %268, i32 0, i32 4
  %269 = ptrtoint ptr %write16.i.i2.i323 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %write16.i.i2.i323, align 4
  tail call void %270(ptr noundef %266, i16 noundef zeroext 1022, i16 noundef zeroext %258) #7
  br label %if.end149

if.end149:                                        ; preds = %if.else143, %if.then138
  %271 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %272)
  %cmp152 = icmp eq i8 %272, 2
  br i1 %cmp152, label %if.then154, label %if.end149.if.end155_crit_edge

if.end149.if.end155_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end155

if.then154:                                       ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #9
  %273 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %dev, align 4
  %275 = ptrtoint ptr %274 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %274, align 4
  %write16.i.i324 = getelementptr inbounds %struct.ssb_bus_ops, ptr %276, i32 0, i32 4
  %277 = ptrtoint ptr %write16.i.i324 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %write16.i.i324, align 4
  tail call void %278(ptr noundef %274, i16 noundef zeroext 998, i16 noundef zeroext 0) #7
  %279 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %279)
  %.pr335 = load i8, ptr %type, align 1
  br label %if.end155

if.end155:                                        ; preds = %if.then154, %if.end149.if.end155_crit_edge
  %280 = phi i8 [ %.pr335, %if.then154 ], [ %272, %if.end149.if.end155_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %280)
  %cmp158 = icmp eq i8 %280, 1
  br i1 %cmp158, label %if.then160, label %if.end155.if.end171_crit_edge

if.end155.if.end171_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end171

if.then160:                                       ; preds = %if.end155
  %281 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %dev, align 4
  %283 = ptrtoint ptr %282 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %282, align 4
  %write16.i.i325 = getelementptr inbounds %struct.ssb_bus_ops, ptr %284, i32 0, i32 4
  %285 = ptrtoint ptr %write16.i.i325 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %write16.i.i325, align 4
  tail call void %286(ptr noundef %282, i16 noundef zeroext 998, i16 noundef zeroext -32448) #7
  %287 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %dev, align 4
  %289 = ptrtoint ptr %288 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %288, align 4
  %write16.i.i.i326 = getelementptr inbounds %struct.ssb_bus_ops, ptr %290, i32 0, i32 4
  %291 = ptrtoint ptr %write16.i.i.i326 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %write16.i.i.i326, align 4
  tail call void %292(ptr noundef %288, i16 noundef zeroext 1020, i16 noundef zeroext 22) #7
  %293 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %dev, align 4
  %295 = ptrtoint ptr %294 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %294, align 4
  %write16.i.i2.i327 = getelementptr inbounds %struct.ssb_bus_ops, ptr %296, i32 0, i32 4
  %297 = ptrtoint ptr %write16.i.i2.i327 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %write16.i.i2.i327, align 4
  tail call void %298(ptr noundef %294, i16 noundef zeroext 1022, i16 noundef zeroext 1040) #7
  %299 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %dev, align 4
  %301 = ptrtoint ptr %300 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %300, align 4
  %write16.i.i.i328 = getelementptr inbounds %struct.ssb_bus_ops, ptr %302, i32 0, i32 4
  %303 = ptrtoint ptr %write16.i.i.i328 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %write16.i.i.i328, align 4
  tail call void %304(ptr noundef %300, i16 noundef zeroext 1020, i16 noundef zeroext 23) #7
  %305 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %dev, align 4
  %307 = ptrtoint ptr %306 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %306, align 4
  %write16.i.i2.i329 = getelementptr inbounds %struct.ssb_bus_ops, ptr %308, i32 0, i32 4
  %309 = ptrtoint ptr %write16.i.i2.i329 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %write16.i.i2.i329, align 4
  tail call void %310(ptr noundef %306, i16 noundef zeroext 1022, i16 noundef zeroext 2080) #7
  %311 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %dev, align 4
  %313 = ptrtoint ptr %312 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %312, align 4
  %write16.i.i.i330 = getelementptr inbounds %struct.ssb_bus_ops, ptr %314, i32 0, i32 4
  %315 = ptrtoint ptr %write16.i.i.i330 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %write16.i.i.i330, align 4
  tail call void %316(ptr noundef %312, i16 noundef zeroext 1020, i16 noundef zeroext 98) #7
  %317 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %dev, align 4
  %319 = ptrtoint ptr %318 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %318, align 4
  %write16.i.i2.i331 = getelementptr inbounds %struct.ssb_bus_ops, ptr %320, i32 0, i32 4
  %321 = ptrtoint ptr %write16.i.i2.i331 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %write16.i.i2.i331, align 4
  tail call void %322(ptr noundef %318, i16 noundef zeroext 1022, i16 noundef zeroext 7) #7
  %call161 = tail call zeroext i16 @b43legacy_radio_init2050(ptr noundef %dev) #7
  tail call void @b43legacy_phy_lo_g_measure(ptr noundef %dev)
  %323 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %dev, align 4
  %bus163 = getelementptr inbounds %struct.ssb_device, ptr %324, i32 0, i32 3
  %325 = ptrtoint ptr %bus163 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %bus163, align 4
  %boardflags_lo165 = getelementptr inbounds %struct.ssb_bus, ptr %326, i32 0, i32 22, i32 70
  %327 = ptrtoint ptr %boardflags_lo165 to i32
  call void @__asan_load2_noabort(i32 %327)
  %328 = load i16, ptr %boardflags_lo165, align 4
  %329 = and i16 %328, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %329)
  %tobool168.not = icmp eq i16 %329, 0
  br i1 %tobool168.not, label %if.then160.if.end170_crit_edge, label %if.then169

if.then160.if.end170_crit_edge:                   ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end170

if.then169:                                       ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @b43legacy_calc_nrssi_slope(ptr noundef %dev) #7
  tail call void @b43legacy_calc_nrssi_threshold(ptr noundef %dev) #7
  br label %if.end170

if.end170:                                        ; preds = %if.then169, %if.then160.if.end170_crit_edge
  tail call fastcc void @b43legacy_phy_init_pctl(ptr noundef %dev)
  br label %if.end171

if.end171:                                        ; preds = %if.end170, %if.end155.if.end171_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43legacy_phy_set_antenna_diversity(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %antenna_diversity = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 5
  %0 = ptrtoint ptr %antenna_diversity to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %antenna_diversity, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %1)
  %cmp = icmp eq i16 %1, -1
  %spec.store.select = select i1 %cmp, i16 3, i16 %1
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %spec.store.select)
  %cmp4 = icmp ugt i16 %spec.store.select, 3
  br i1 %cmp4, label %do.end, label %entry.if.end19_crit_edge, !prof !57

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2082, i32 noundef 9, ptr noundef null) #7
  br label %if.end19

if.end19:                                         ; preds = %do.end, %entry.if.end19_crit_edge
  %call = tail call i32 @b43legacy_shm_read32(ptr noundef %dev, i16 noundef zeroext 1, i16 noundef zeroext 94) #7
  %and = and i32 %call, -2
  tail call void @b43legacy_shm_write32(ptr noundef %dev, i16 noundef zeroext 1, i16 noundef zeroext 94, i32 noundef %and) #7
  %type = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 3
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %type, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %3, label %do.end181 [
    i8 2, label %sw.bb
    i8 1, label %sw.bb152
  ]

sw.bb:                                            ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %spec.store.select)
  %cmp28 = icmp eq i16 %spec.store.select, 2
  %shl = shl i16 %spec.store.select, 7
  %value.0 = select i1 %cmp28, i16 384, i16 %shl
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %write16.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write16.i.i.i, align 4
  tail call void %10(ptr noundef %6, i16 noundef zeroext 1020, i16 noundef zeroext 1025) #7
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %read16.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %read16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read16.i.i.i, align 4
  %call.i.i.i = tail call zeroext i16 %16(ptr noundef %12, i16 noundef zeroext 1022) #7
  %17 = and i16 %call.i.i.i, 32383
  %or = or i16 %17, %value.0
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %write16.i.i.i261 = getelementptr inbounds %struct.ssb_bus_ops, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %write16.i.i.i261 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write16.i.i.i261, align 4
  tail call void %23(ptr noundef %19, i16 noundef zeroext 1020, i16 noundef zeroext 1025) #7
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %write16.i.i2.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %write16.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write16.i.i2.i, align 4
  tail call void %29(ptr noundef %25, i16 noundef zeroext 1022, i16 noundef zeroext %or) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %spec.store.select)
  %cmp45 = icmp ugt i16 %spec.store.select, 1
  br i1 %cmp45, label %if.end69, label %if.end69.thread

if.end69:                                         ; preds = %sw.bb
  %. = select i1 %cmp28, i16 256, i16 0
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %write16.i.i.i262 = getelementptr inbounds %struct.ssb_bus_ops, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %write16.i.i.i262 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write16.i.i.i262, align 4
  tail call void %35(ptr noundef %31, i16 noundef zeroext 1020, i16 noundef zeroext 1067) #7
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %read16.i.i.i263 = getelementptr inbounds %struct.ssb_bus_ops, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %read16.i.i.i263 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read16.i.i.i263, align 4
  %call.i.i.i264 = tail call zeroext i16 %41(ptr noundef %37, i16 noundef zeroext 1022) #7
  %42 = and i16 %call.i.i.i264, -257
  %or67 = or i16 %42, %.
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %write16.i.i.i265 = getelementptr inbounds %struct.ssb_bus_ops, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %write16.i.i.i265 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write16.i.i.i265, align 4
  tail call void %48(ptr noundef %44, i16 noundef zeroext 1020, i16 noundef zeroext 1067) #7
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %write16.i.i2.i266 = getelementptr inbounds %struct.ssb_bus_ops, ptr %52, i32 0, i32 4
  %53 = ptrtoint ptr %write16.i.i2.i266 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write16.i.i2.i266, align 4
  tail call void %54(ptr noundef %50, i16 noundef zeroext 1022, i16 noundef zeroext %or67) #7
  %55 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %56)
  %cmp72 = icmp eq i8 %56, 2
  br i1 %cmp72, label %if.then78, label %if.end69.if.else122_crit_edge

if.end69.if.else122_crit_edge:                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else122

if.end69.thread:                                  ; preds = %sw.bb
  %57 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %58)
  %cmp72320 = icmp eq i8 %58, 2
  br i1 %cmp72320, label %if.else83, label %if.end69.thread.if.else122_crit_edge

if.end69.thread.if.else122_crit_edge:             ; preds = %if.end69.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else122

if.then78:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %write16.i.i.i267 = getelementptr inbounds %struct.ssb_bus_ops, ptr %62, i32 0, i32 4
  %63 = ptrtoint ptr %write16.i.i.i267 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write16.i.i.i267, align 4
  tail call void %64(ptr noundef %60, i16 noundef zeroext 1020, i16 noundef zeroext 1164) #7
  %65 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %read16.i.i.i268 = getelementptr inbounds %struct.ssb_bus_ops, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %read16.i.i.i268 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %read16.i.i.i268, align 4
  %call.i.i.i269 = tail call zeroext i16 %70(ptr noundef %66, i16 noundef zeroext 1022) #7
  %71 = or i16 %call.i.i.i269, 8192
  %72 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  %write16.i.i.i270 = getelementptr inbounds %struct.ssb_bus_ops, ptr %75, i32 0, i32 4
  %76 = ptrtoint ptr %write16.i.i.i270 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %write16.i.i.i270, align 4
  tail call void %77(ptr noundef %73, i16 noundef zeroext 1020, i16 noundef zeroext 1164) #7
  %78 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 4
  %write16.i.i2.i271 = getelementptr inbounds %struct.ssb_bus_ops, ptr %81, i32 0, i32 4
  %82 = ptrtoint ptr %write16.i.i2.i271 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %write16.i.i2.i271, align 4
  tail call void %83(ptr noundef %79, i16 noundef zeroext 1022, i16 noundef zeroext %71) #7
  br label %if.end88

if.else83:                                        ; preds = %if.end69.thread
  call void @__sanitizer_cov_trace_pc() #9
  %84 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %write16.i.i.i272 = getelementptr inbounds %struct.ssb_bus_ops, ptr %87, i32 0, i32 4
  %88 = ptrtoint ptr %write16.i.i.i272 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %write16.i.i.i272, align 4
  tail call void %89(ptr noundef %85, i16 noundef zeroext 1020, i16 noundef zeroext 1164) #7
  %90 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %91, align 4
  %read16.i.i.i273 = getelementptr inbounds %struct.ssb_bus_ops, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %read16.i.i.i273 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %read16.i.i.i273, align 4
  %call.i.i.i274 = tail call zeroext i16 %95(ptr noundef %91, i16 noundef zeroext 1022) #7
  %96 = and i16 %call.i.i.i274, -8193
  %97 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %98, align 4
  %write16.i.i.i275 = getelementptr inbounds %struct.ssb_bus_ops, ptr %100, i32 0, i32 4
  %101 = ptrtoint ptr %write16.i.i.i275 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %write16.i.i.i275, align 4
  tail call void %102(ptr noundef %98, i16 noundef zeroext 1020, i16 noundef zeroext 1164) #7
  %103 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 4
  %write16.i.i2.i276 = getelementptr inbounds %struct.ssb_bus_ops, ptr %106, i32 0, i32 4
  %107 = ptrtoint ptr %write16.i.i2.i276 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %write16.i.i2.i276, align 4
  tail call void %108(ptr noundef %104, i16 noundef zeroext 1022, i16 noundef zeroext %96) #7
  br label %if.end88

if.end88:                                         ; preds = %if.else83, %if.then78
  %rev = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 4
  %109 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %110)
  %cmp90 = icmp ugt i8 %110, 1
  br i1 %cmp90, label %if.then92, label %if.end88.sw.epilog_crit_edge

if.end88.sw.epilog_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then92:                                        ; preds = %if.end88
  %111 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %112, align 4
  %write16.i.i.i277 = getelementptr inbounds %struct.ssb_bus_ops, ptr %114, i32 0, i32 4
  %115 = ptrtoint ptr %write16.i.i.i277 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %write16.i.i.i277, align 4
  tail call void %116(ptr noundef %112, i16 noundef zeroext 1020, i16 noundef zeroext 1121) #7
  %117 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %118, align 4
  %read16.i.i.i278 = getelementptr inbounds %struct.ssb_bus_ops, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %read16.i.i.i278 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %read16.i.i.i278, align 4
  %call.i.i.i279 = tail call zeroext i16 %122(ptr noundef %118, i16 noundef zeroext 1022) #7
  %123 = or i16 %call.i.i.i279, 16
  %124 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev, align 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %125, align 4
  %write16.i.i.i280 = getelementptr inbounds %struct.ssb_bus_ops, ptr %127, i32 0, i32 4
  %128 = ptrtoint ptr %write16.i.i.i280 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %write16.i.i.i280, align 4
  tail call void %129(ptr noundef %125, i16 noundef zeroext 1020, i16 noundef zeroext 1121) #7
  %130 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev, align 4
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %131, align 4
  %write16.i.i2.i281 = getelementptr inbounds %struct.ssb_bus_ops, ptr %133, i32 0, i32 4
  %134 = ptrtoint ptr %write16.i.i2.i281 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %write16.i.i2.i281, align 4
  tail call void %135(ptr noundef %131, i16 noundef zeroext 1022, i16 noundef zeroext %123) #7
  %136 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dev, align 4
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %137, align 4
  %write16.i.i.i282 = getelementptr inbounds %struct.ssb_bus_ops, ptr %139, i32 0, i32 4
  %140 = ptrtoint ptr %write16.i.i.i282 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %write16.i.i.i282, align 4
  tail call void %141(ptr noundef %137, i16 noundef zeroext 1020, i16 noundef zeroext 1197) #7
  %142 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dev, align 4
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %143, align 4
  %read16.i.i.i283 = getelementptr inbounds %struct.ssb_bus_ops, ptr %145, i32 0, i32 1
  %146 = ptrtoint ptr %read16.i.i.i283 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %read16.i.i.i283, align 4
  %call.i.i.i284 = tail call zeroext i16 %147(ptr noundef %143, i16 noundef zeroext 1022) #7
  %148 = and i16 %call.i.i.i284, 234
  %149 = or i16 %148, 21
  %150 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dev, align 4
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %151, align 4
  %write16.i.i.i285 = getelementptr inbounds %struct.ssb_bus_ops, ptr %153, i32 0, i32 4
  %154 = ptrtoint ptr %write16.i.i.i285 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %write16.i.i.i285, align 4
  tail call void %155(ptr noundef %151, i16 noundef zeroext 1020, i16 noundef zeroext 1197) #7
  %156 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %dev, align 4
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %157, align 4
  %write16.i.i2.i286 = getelementptr inbounds %struct.ssb_bus_ops, ptr %159, i32 0, i32 4
  %160 = ptrtoint ptr %write16.i.i2.i286 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %write16.i.i2.i286, align 4
  tail call void %161(ptr noundef %157, i16 noundef zeroext 1022, i16 noundef zeroext %149) #7
  %162 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %163)
  %cmp104 = icmp eq i8 %163, 2
  %164 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %dev, align 4
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %165, align 4
  %write16.i.i.i287 = getelementptr inbounds %struct.ssb_bus_ops, ptr %167, i32 0, i32 4
  %168 = ptrtoint ptr %write16.i.i.i287 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %write16.i.i.i287, align 4
  tail call void %169(ptr noundef %165, i16 noundef zeroext 1020, i16 noundef zeroext 1063) #7
  %170 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %dev, align 4
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %171, align 4
  br i1 %cmp104, label %if.then106, label %if.else107

if.then106:                                       ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #9
  %write16.i.i2.i288 = getelementptr inbounds %struct.ssb_bus_ops, ptr %173, i32 0, i32 4
  %174 = ptrtoint ptr %write16.i.i2.i288 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %write16.i.i2.i288, align 4
  tail call void %175(ptr noundef %171, i16 noundef zeroext 1022, i16 noundef zeroext 8) #7
  br label %sw.epilog

if.else107:                                       ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #9
  %read16.i.i.i290 = getelementptr inbounds %struct.ssb_bus_ops, ptr %173, i32 0, i32 1
  %176 = ptrtoint ptr %read16.i.i.i290 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %read16.i.i.i290, align 4
  %call.i.i.i291 = tail call zeroext i16 %177(ptr noundef %171, i16 noundef zeroext 1022) #7
  %178 = and i16 %call.i.i.i291, 247
  %179 = or i16 %178, 8
  %180 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %dev, align 4
  %182 = ptrtoint ptr %181 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %181, align 4
  %write16.i.i.i292 = getelementptr inbounds %struct.ssb_bus_ops, ptr %183, i32 0, i32 4
  %184 = ptrtoint ptr %write16.i.i.i292 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %write16.i.i.i292, align 4
  tail call void %185(ptr noundef %181, i16 noundef zeroext 1020, i16 noundef zeroext 1063) #7
  %186 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %dev, align 4
  %188 = ptrtoint ptr %187 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %187, align 4
  %write16.i.i2.i293 = getelementptr inbounds %struct.ssb_bus_ops, ptr %189, i32 0, i32 4
  %190 = ptrtoint ptr %write16.i.i2.i293 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %write16.i.i2.i293, align 4
  tail call void %191(ptr noundef %187, i16 noundef zeroext 1022, i16 noundef zeroext %179) #7
  br label %sw.epilog

if.else122:                                       ; preds = %if.end69.thread.if.else122_crit_edge, %if.end69.if.else122_crit_edge
  %rev123 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 4
  %192 = ptrtoint ptr %rev123 to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %rev123, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %193)
  %cmp125 = icmp ult i8 %193, 3
  %194 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %dev, align 4
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %195, align 4
  %write16.i.i.i294 = getelementptr inbounds %struct.ssb_bus_ops, ptr %197, i32 0, i32 4
  %198 = ptrtoint ptr %write16.i.i.i294 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %write16.i.i.i294, align 4
  br i1 %cmp125, label %if.then127, label %if.else133

if.then127:                                       ; preds = %if.else122
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %199(ptr noundef %195, i16 noundef zeroext 1020, i16 noundef zeroext 43) #7
  %200 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %dev, align 4
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %201, align 4
  %read16.i.i.i295 = getelementptr inbounds %struct.ssb_bus_ops, ptr %203, i32 0, i32 1
  %204 = ptrtoint ptr %read16.i.i.i295 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %read16.i.i.i295, align 4
  %call.i.i.i296 = tail call zeroext i16 %205(ptr noundef %201, i16 noundef zeroext 1022) #7
  %206 = and i16 %call.i.i.i296, 219
  %207 = or i16 %206, 36
  %208 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %dev, align 4
  %210 = ptrtoint ptr %209 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %209, align 4
  %write16.i.i.i297 = getelementptr inbounds %struct.ssb_bus_ops, ptr %211, i32 0, i32 4
  %212 = ptrtoint ptr %write16.i.i.i297 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %write16.i.i.i297, align 4
  tail call void %213(ptr noundef %209, i16 noundef zeroext 1020, i16 noundef zeroext 43) #7
  %214 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %dev, align 4
  %216 = ptrtoint ptr %215 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %215, align 4
  %write16.i.i2.i298 = getelementptr inbounds %struct.ssb_bus_ops, ptr %217, i32 0, i32 4
  %218 = ptrtoint ptr %write16.i.i2.i298 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %write16.i.i2.i298, align 4
  tail call void %219(ptr noundef %215, i16 noundef zeroext 1022, i16 noundef zeroext %207) #7
  br label %sw.epilog

if.else133:                                       ; preds = %if.else122
  tail call void %199(ptr noundef %195, i16 noundef zeroext 1020, i16 noundef zeroext 97) #7
  %220 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %dev, align 4
  %222 = ptrtoint ptr %221 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %221, align 4
  %read16.i.i.i300 = getelementptr inbounds %struct.ssb_bus_ops, ptr %223, i32 0, i32 1
  %224 = ptrtoint ptr %read16.i.i.i300 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %read16.i.i.i300, align 4
  %call.i.i.i301 = tail call zeroext i16 %225(ptr noundef %221, i16 noundef zeroext 1022) #7
  %226 = or i16 %call.i.i.i301, 16
  %227 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %dev, align 4
  %229 = ptrtoint ptr %228 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %228, align 4
  %write16.i.i.i302 = getelementptr inbounds %struct.ssb_bus_ops, ptr %230, i32 0, i32 4
  %231 = ptrtoint ptr %write16.i.i.i302 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %write16.i.i.i302, align 4
  tail call void %232(ptr noundef %228, i16 noundef zeroext 1020, i16 noundef zeroext 97) #7
  %233 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %dev, align 4
  %235 = ptrtoint ptr %234 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %234, align 4
  %write16.i.i2.i303 = getelementptr inbounds %struct.ssb_bus_ops, ptr %236, i32 0, i32 4
  %237 = ptrtoint ptr %write16.i.i2.i303 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %write16.i.i2.i303, align 4
  tail call void %238(ptr noundef %234, i16 noundef zeroext 1022, i16 noundef zeroext %226) #7
  %239 = ptrtoint ptr %rev123 to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %rev123, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %240)
  %cmp140 = icmp eq i8 %240, 3
  %241 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %dev, align 4
  %243 = ptrtoint ptr %242 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %242, align 4
  %write16.i.i.i304 = getelementptr inbounds %struct.ssb_bus_ops, ptr %244, i32 0, i32 4
  %245 = ptrtoint ptr %write16.i.i.i304 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %write16.i.i.i304, align 4
  tail call void %246(ptr noundef %242, i16 noundef zeroext 1020, i16 noundef zeroext 147) #7
  %247 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %dev, align 4
  %249 = ptrtoint ptr %248 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %248, align 4
  %write16.i.i2.i305 = getelementptr inbounds %struct.ssb_bus_ops, ptr %250, i32 0, i32 4
  %251 = ptrtoint ptr %write16.i.i2.i305 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %write16.i.i2.i305, align 4
  br i1 %cmp140, label %if.then142, label %if.else143

if.then142:                                       ; preds = %if.else133
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %252(ptr noundef %248, i16 noundef zeroext 1022, i16 noundef zeroext 29) #7
  %253 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %dev, align 4
  %255 = ptrtoint ptr %254 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %254, align 4
  %write16.i.i.i306 = getelementptr inbounds %struct.ssb_bus_ops, ptr %256, i32 0, i32 4
  %257 = ptrtoint ptr %write16.i.i.i306 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %write16.i.i.i306, align 4
  tail call void %258(ptr noundef %254, i16 noundef zeroext 1020, i16 noundef zeroext 39) #7
  %259 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %dev, align 4
  %261 = ptrtoint ptr %260 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %260, align 4
  %write16.i.i2.i307 = getelementptr inbounds %struct.ssb_bus_ops, ptr %262, i32 0, i32 4
  %263 = ptrtoint ptr %write16.i.i2.i307 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %write16.i.i2.i307, align 4
  tail call void %264(ptr noundef %260, i16 noundef zeroext 1022, i16 noundef zeroext 8) #7
  br label %sw.epilog

if.else143:                                       ; preds = %if.else133
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %252(ptr noundef %248, i16 noundef zeroext 1022, i16 noundef zeroext 58) #7
  %265 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %dev, align 4
  %267 = ptrtoint ptr %266 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %266, align 4
  %write16.i.i.i310 = getelementptr inbounds %struct.ssb_bus_ops, ptr %268, i32 0, i32 4
  %269 = ptrtoint ptr %write16.i.i.i310 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %write16.i.i.i310, align 4
  tail call void %270(ptr noundef %266, i16 noundef zeroext 1020, i16 noundef zeroext 39) #7
  %271 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %dev, align 4
  %273 = ptrtoint ptr %272 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %272, align 4
  %read16.i.i.i311 = getelementptr inbounds %struct.ssb_bus_ops, ptr %274, i32 0, i32 1
  %275 = ptrtoint ptr %read16.i.i.i311 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %read16.i.i.i311, align 4
  %call.i.i.i312 = tail call zeroext i16 %276(ptr noundef %272, i16 noundef zeroext 1022) #7
  %277 = and i16 %call.i.i.i312, 247
  %278 = or i16 %277, 8
  %279 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %dev, align 4
  %281 = ptrtoint ptr %280 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %280, align 4
  %write16.i.i.i313 = getelementptr inbounds %struct.ssb_bus_ops, ptr %282, i32 0, i32 4
  %283 = ptrtoint ptr %write16.i.i.i313 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %write16.i.i.i313, align 4
  tail call void %284(ptr noundef %280, i16 noundef zeroext 1020, i16 noundef zeroext 39) #7
  %285 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %dev, align 4
  %287 = ptrtoint ptr %286 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %286, align 4
  %write16.i.i2.i314 = getelementptr inbounds %struct.ssb_bus_ops, ptr %288, i32 0, i32 4
  %289 = ptrtoint ptr %write16.i.i2.i314 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %write16.i.i2.i314, align 4
  tail call void %290(ptr noundef %286, i16 noundef zeroext 1022, i16 noundef zeroext %278) #7
  br label %sw.epilog

sw.bb152:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %291 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %dev, align 4
  %revision = getelementptr inbounds %struct.ssb_device, ptr %292, i32 0, i32 4, i32 2
  %293 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %294)
  %cmp155 = icmp eq i8 %294, 2
  %shl160 = shl i16 %spec.store.select, 7
  %value.2 = select i1 %cmp155, i16 384, i16 %shl160
  %295 = ptrtoint ptr %292 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %292, align 4
  %write16.i.i.i315 = getelementptr inbounds %struct.ssb_bus_ops, ptr %296, i32 0, i32 4
  %297 = ptrtoint ptr %write16.i.i.i315 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %write16.i.i.i315, align 4
  tail call void %298(ptr noundef %292, i16 noundef zeroext 1020, i16 noundef zeroext 994) #7
  %299 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %dev, align 4
  %301 = ptrtoint ptr %300 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %300, align 4
  %read16.i.i.i316 = getelementptr inbounds %struct.ssb_bus_ops, ptr %302, i32 0, i32 1
  %303 = ptrtoint ptr %read16.i.i.i316 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %read16.i.i.i316, align 4
  %call.i.i.i317 = tail call zeroext i16 %304(ptr noundef %300, i16 noundef zeroext 1022) #7
  %305 = and i16 %call.i.i.i317, -385
  %or167 = or i16 %305, %value.2
  %306 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %dev, align 4
  %308 = ptrtoint ptr %307 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %307, align 4
  %write16.i.i.i318 = getelementptr inbounds %struct.ssb_bus_ops, ptr %309, i32 0, i32 4
  %310 = ptrtoint ptr %write16.i.i.i318 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %write16.i.i.i318, align 4
  tail call void %311(ptr noundef %307, i16 noundef zeroext 1020, i16 noundef zeroext 994) #7
  %312 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %dev, align 4
  %314 = ptrtoint ptr %313 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %313, align 4
  %write16.i.i2.i319 = getelementptr inbounds %struct.ssb_bus_ops, ptr %315, i32 0, i32 4
  %316 = ptrtoint ptr %write16.i.i2.i319 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %write16.i.i2.i319, align 4
  tail call void %317(ptr noundef %313, i16 noundef zeroext 1022, i16 noundef zeroext %or167) #7
  br label %sw.epilog

do.end181:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2174, i32 noundef 9, ptr noundef null) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end181, %sw.bb152, %if.else143, %if.then142, %if.then127, %if.else107, %if.then106, %if.end88.sw.epilog_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %spec.store.select)
  %cmp196 = icmp ugt i16 %spec.store.select, 1
  br i1 %cmp196, label %if.then198, label %sw.epilog.if.end201_crit_edge

sw.epilog.if.end201_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end201

if.then198:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %call199 = tail call i32 @b43legacy_shm_read32(ptr noundef %dev, i16 noundef zeroext 1, i16 noundef zeroext 94) #7
  %or200 = or i32 %call199, 1
  tail call void @b43legacy_shm_write32(ptr noundef %dev, i16 noundef zeroext 1, i16 noundef zeroext 94, i32 noundef %or200) #7
  br label %if.end201

if.end201:                                        ; preds = %if.then198, %sw.epilog.if.end201_crit_edge
  %318 = ptrtoint ptr %antenna_diversity to i32
  call void @__asan_store2_noabort(i32 %318)
  store i16 %spec.store.select, ptr %antenna_diversity, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b43legacy_shm_read32(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_shm_write32(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @b43legacy_radio_init2050(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_nrssi_hw_update(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_calc_nrssi_threshold(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_calc_nrssi_slope(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @b43legacy_phy_init_pctl(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type, align 1
  %2 = add i8 %1, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %2)
  %3 = icmp ult i8 %2, -2
  br i1 %3, label %do.end, label %entry.do.end40_crit_edge, !prof !57

entry.do.end40_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end40

do.end:                                           ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4) #10
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %type, align 1
  %6 = add i8 %5, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %6)
  %7 = icmp ult i8 %6, -2
  br i1 %7, label %do.body30, label %do.end.do.end40_crit_edge, !prof !57

do.end.do.end40_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end40

do.body30:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/broadcom/b43legacy/phy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 143, 0\0A.popsection", ""() #7, !srcloc !65
  unreachable

do.end40:                                         ; preds = %do.end.do.end40_crit_edge, %entry.do.end40_crit_edge
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %bus.i = getelementptr inbounds %struct.ssb_device, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i, align 4
  %boardinfo.i = getelementptr inbounds %struct.ssb_bus, ptr %11, i32 0, i32 21
  %12 = ptrtoint ptr %boardinfo.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %boardinfo.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5348, i16 %13)
  %cmp.i = icmp eq i16 %13, 5348
  br i1 %cmp.i, label %land.lhs.true, label %do.end40.if.end49_crit_edge

do.end40.if.end49_crit_edge:                      ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

land.lhs.true:                                    ; preds = %do.end40
  %type44 = getelementptr inbounds %struct.ssb_bus, ptr %11, i32 0, i32 21, i32 1
  %14 = ptrtoint ptr %type44 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %type44, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1046, i16 %15)
  %cmp46 = icmp eq i16 %15, 1046
  br i1 %cmp46, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end49_crit_edge

land.lhs.true.if.end49_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end49:                                         ; preds = %land.lhs.true.if.end49_crit_edge, %do.end40.if.end49_crit_edge
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %9, align 4
  %write16.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write16.i.i.i, align 4
  tail call void %19(ptr noundef %9, i16 noundef zeroext 1020, i16 noundef zeroext 40) #7
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %write16.i.i2.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %write16.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write16.i.i2.i, align 4
  tail call void %25(ptr noundef %21, i16 noundef zeroext 1022, i16 noundef zeroext -32744) #7
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %read16.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %read16.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read16.i.i, align 4
  %call.i.i = tail call zeroext i16 %31(ptr noundef %27, i16 noundef zeroext 998) #7
  %32 = and i16 %call.i.i, -33
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %write16.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write16.i.i, align 4
  tail call void %38(ptr noundef %34, i16 noundef zeroext 998, i16 noundef zeroext %32) #7
  %39 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %40)
  %cmp55 = icmp eq i8 %40, 2
  br i1 %cmp55, label %if.then57, label %if.end49.if.end61_crit_edge

if.end49.if.end61_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.then57:                                        ; preds = %if.end49
  %gmode = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 1
  %41 = ptrtoint ptr %gmode to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %gmode, align 1, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool58.not = icmp eq i8 %42, 0
  br i1 %tobool58.not, label %if.then57.cleanup_crit_edge, label %if.end60

if.then57.cleanup_crit_edge:                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end60:                                         ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %write16.i.i.i144 = getelementptr inbounds %struct.ssb_bus_ops, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %write16.i.i.i144 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write16.i.i.i144, align 4
  tail call void %48(ptr noundef %44, i16 noundef zeroext 1020, i16 noundef zeroext 1146) #7
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %write16.i.i2.i145 = getelementptr inbounds %struct.ssb_bus_ops, ptr %52, i32 0, i32 4
  %53 = ptrtoint ptr %write16.i.i2.i145 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write16.i.i2.i145, align 4
  tail call void %54(ptr noundef %50, i16 noundef zeroext 1022, i16 noundef zeroext -16111) #7
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.end49.if.end61_crit_edge
  %savedpctlreg = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 6
  %55 = ptrtoint ptr %savedpctlreg to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %savedpctlreg, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %56)
  %cmp63.not = icmp eq i16 %56, -1
  br i1 %cmp63.not, label %if.end66, label %if.end61.cleanup_crit_edge

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end66:                                         ; preds = %if.end61
  %manual_txpower_control = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 43
  %57 = ptrtoint ptr %manual_txpower_control to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %manual_txpower_control, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool67.not = icmp eq i8 %58, 0
  br i1 %tobool67.not, label %if.end69, label %if.end66.cleanup_crit_edge

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end69:                                         ; preds = %if.end66
  %59 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %60)
  %cmp72 = icmp eq i8 %60, 1
  br i1 %cmp72, label %land.lhs.true74, label %if.end69.if.else_crit_edge

if.end69.if.else_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true74:                                  ; preds = %if.end69
  %rev = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 4
  %61 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %62)
  %cmp76 = icmp ugt i8 %62, 1
  br i1 %cmp76, label %land.lhs.true78, label %land.lhs.true74.if.else_crit_edge

land.lhs.true74.if.else_crit_edge:                ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true78:                                  ; preds = %land.lhs.true74
  %radio_ver = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 8
  %63 = ptrtoint ptr %radio_ver to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %radio_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8272, i16 %64)
  %cmp80 = icmp eq i16 %64, 8272
  br i1 %cmp80, label %if.then82, label %land.lhs.true78.if.else_crit_edge

land.lhs.true78.if.else_crit_edge:                ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then82:                                        ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #9
  %call83 = tail call zeroext i16 @b43legacy_radio_read16(ptr noundef %dev, i16 noundef zeroext 118) #7
  %65 = or i16 %call83, 132
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 118, i16 noundef zeroext %65) #7
  br label %if.end98

if.else:                                          ; preds = %land.lhs.true78.if.else_crit_edge, %land.lhs.true74.if.else_crit_edge, %if.end69.if.else_crit_edge
  %66 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 32
  %bbatt = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 32, i32 1
  %67 = ptrtoint ptr %bbatt to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %bbatt, align 2
  %69 = ptrtoint ptr %66 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %66, align 4
  %txctl1 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 32, i32 2
  %71 = ptrtoint ptr %txctl1 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %txctl1, align 4
  tail call void @b43legacy_radio_set_txpower_bg(ptr noundef %dev, i16 noundef zeroext 11, i16 noundef zeroext 9, i16 noundef zeroext 0) #7
  br label %if.end98

if.end98:                                         ; preds = %if.else, %if.then82
  %saved_batt.0 = phi i16 [ 0, %if.then82 ], [ %68, %if.else ]
  %saved_ratt.0 = phi i16 [ 0, %if.then82 ], [ %70, %if.else ]
  %saved_txctl1.0 = phi i16 [ 0, %if.then82 ], [ %72, %if.else ]
  %tobool101.not = phi i1 [ true, %if.then82 ], [ false, %if.else ]
  tail call void @b43legacy_dummy_transmission(ptr noundef %dev) #7
  %73 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %write16.i.i.i146 = getelementptr inbounds %struct.ssb_bus_ops, ptr %76, i32 0, i32 4
  %77 = ptrtoint ptr %write16.i.i.i146 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %write16.i.i.i146, align 4
  tail call void %78(ptr noundef %74, i16 noundef zeroext 1020, i16 noundef zeroext 41) #7
  %79 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 4
  %read16.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %read16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %read16.i.i.i, align 4
  %call.i.i.i = tail call zeroext i16 %84(ptr noundef %80, i16 noundef zeroext 1022) #7
  %85 = ptrtoint ptr %savedpctlreg to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %call.i.i.i, ptr %savedpctlreg, align 4
  br i1 %tobool101.not, label %if.else103, label %if.then102

if.then102:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @b43legacy_radio_set_txpower_bg(ptr noundef %dev, i16 noundef zeroext %saved_batt.0, i16 noundef zeroext %saved_ratt.0, i16 noundef zeroext %saved_txctl1.0) #7
  br label %if.end108

if.else103:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  %call104 = tail call zeroext i16 @b43legacy_radio_read16(ptr noundef %dev, i16 noundef zeroext 118) #7
  %86 = and i16 %call104, -133
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 118, i16 noundef zeroext %86) #7
  br label %if.end108

if.end108:                                        ; preds = %if.else103, %if.then102
  tail call void @b43legacy_radio_clear_tssi(ptr noundef %dev) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end108, %if.end66.cleanup_crit_edge, %if.end61.cleanup_crit_edge, %if.then57.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_ilt_write(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_ilt_write32(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_nrssi_hw_write(ptr noundef, i16 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @b43legacy_phy_agcsetup(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rev = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 4
  %0 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  %spec.store.select = select i1 %cmp, i16 19456, i16 0
  tail call void @b43legacy_ilt_write(ptr noundef %dev, i16 noundef zeroext %spec.store.select, i16 noundef zeroext 254) #7
  %add = or i16 %spec.store.select, 1
  tail call void @b43legacy_ilt_write(ptr noundef %dev, i16 noundef zeroext %add, i16 noundef zeroext 13) #7
  %add6 = or i16 %spec.store.select, 2
  tail call void @b43legacy_ilt_write(ptr noundef %dev, i16 noundef zeroext %add6, i16 noundef zeroext 19) #7
  %add9 = or i16 %spec.store.select, 3
  tail call void @b43legacy_ilt_write(ptr noundef %dev, i16 noundef zeroext %add9, i16 noundef zeroext 25) #7
  %2 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp13 = icmp eq i8 %3, 1
  br i1 %cmp13, label %if.then15, label %entry.if.end16_crit_edge

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then15:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @b43legacy_ilt_write(ptr noundef %dev, i16 noundef zeroext 6144, i16 noundef zeroext 10000) #7
  tail call void @b43legacy_ilt_write(ptr noundef %dev, i16 noundef zeroext 6145, i16 noundef zeroext -25725) #7
  tail call void @b43legacy_ilt_write(ptr noundef %dev, i16 noundef zeroext 6146, i16 noundef zeroext -25725) #7
  tail call void @b43legacy_ilt_write(ptr noundef %dev, i16 noundef zeroext 6147, i16 noundef zeroext 3981) #7
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %write16.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write16.i.i.i, align 4
  tail call void %9(ptr noundef %5, i16 noundef zeroext 1020, i16 noundef zeroext 1109) #7
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %write16.i.i2.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %write16.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write16.i.i2.i, align 4
  tail call void %15(ptr noundef %11, i16 noundef zeroext 1022, i16 noundef zeroext 4) #7
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %entry.if.end16_crit_edge
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %write16.i.i.i280 = getelementptr inbounds %struct.ssb_bus_ops, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %write16.i.i.i280 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write16.i.i.i280, align 4
  tail call void %21(ptr noundef %17, i16 noundef zeroext 1020, i16 noundef zeroext 1189) #7
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %read16.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %read16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read16.i.i.i, align 4
  %call.i.i.i = tail call zeroext i16 %27(ptr noundef %23, i16 noundef zeroext 1022) #7
  %28 = and i16 %call.i.i.i, 255
  %29 = or i16 %28, 22272
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %write16.i.i.i281 = getelementptr inbounds %struct.ssb_bus_ops, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %write16.i.i.i281 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write16.i.i.i281, align 4
  tail call void %35(ptr noundef %31, i16 noundef zeroext 1020, i16 noundef zeroext 1189) #7
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %write16.i.i2.i282 = getelementptr inbounds %struct.ssb_bus_ops, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %write16.i.i2.i282 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write16.i.i2.i282, align 4
  tail call void %41(ptr noundef %37, i16 noundef zeroext 1022, i16 noundef zeroext %29) #7
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %write16.i.i.i283 = getelementptr inbounds %struct.ssb_bus_ops, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %write16.i.i.i283 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write16.i.i.i283, align 4
  tail call void %47(ptr noundef %43, i16 noundef zeroext 1020, i16 noundef zeroext 1050) #7
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %read16.i.i.i284 = getelementptr inbounds %struct.ssb_bus_ops, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %read16.i.i.i284 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %read16.i.i.i284, align 4
  %call.i.i.i285 = tail call zeroext i16 %53(ptr noundef %49, i16 noundef zeroext 1022) #7
  %54 = and i16 %call.i.i.i285, -128
  %55 = or i16 %54, 15
  %56 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %write16.i.i.i286 = getelementptr inbounds %struct.ssb_bus_ops, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %write16.i.i.i286 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write16.i.i.i286, align 4
  tail call void %61(ptr noundef %57, i16 noundef zeroext 1020, i16 noundef zeroext 1050) #7
  %62 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %write16.i.i2.i287 = getelementptr inbounds %struct.ssb_bus_ops, ptr %65, i32 0, i32 4
  %66 = ptrtoint ptr %write16.i.i2.i287 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %write16.i.i2.i287, align 4
  tail call void %67(ptr noundef %63, i16 noundef zeroext 1022, i16 noundef zeroext %55) #7
  %68 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %write16.i.i.i288 = getelementptr inbounds %struct.ssb_bus_ops, ptr %71, i32 0, i32 4
  %72 = ptrtoint ptr %write16.i.i.i288 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %write16.i.i.i288, align 4
  tail call void %73(ptr noundef %69, i16 noundef zeroext 1020, i16 noundef zeroext 1050) #7
  %74 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %read16.i.i.i289 = getelementptr inbounds %struct.ssb_bus_ops, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %read16.i.i.i289 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %read16.i.i.i289, align 4
  %call.i.i.i290 = tail call zeroext i16 %79(ptr noundef %75, i16 noundef zeroext 1022) #7
  %80 = and i16 %call.i.i.i290, -16257
  %81 = or i16 %80, 11136
  %82 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 4
  %write16.i.i.i291 = getelementptr inbounds %struct.ssb_bus_ops, ptr %85, i32 0, i32 4
  %86 = ptrtoint ptr %write16.i.i.i291 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %write16.i.i.i291, align 4
  tail call void %87(ptr noundef %83, i16 noundef zeroext 1020, i16 noundef zeroext 1050) #7
  %88 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %89, align 4
  %write16.i.i2.i292 = getelementptr inbounds %struct.ssb_bus_ops, ptr %91, i32 0, i32 4
  %92 = ptrtoint ptr %write16.i.i2.i292 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %write16.i.i2.i292, align 4
  tail call void %93(ptr noundef %89, i16 noundef zeroext 1022, i16 noundef zeroext %81) #7
  %94 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %95, align 4
  %write16.i.i.i293 = getelementptr inbounds %struct.ssb_bus_ops, ptr %97, i32 0, i32 4
  %98 = ptrtoint ptr %write16.i.i.i293 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %write16.i.i.i293, align 4
  tail call void %99(ptr noundef %95, i16 noundef zeroext 1020, i16 noundef zeroext 1164) #7
  %100 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %101, align 4
  %read16.i.i.i294 = getelementptr inbounds %struct.ssb_bus_ops, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %read16.i.i.i294 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %read16.i.i.i294, align 4
  %call.i.i.i295 = tail call zeroext i16 %105(ptr noundef %101, i16 noundef zeroext 1022) #7
  %106 = and i16 %call.i.i.i295, -3841
  %107 = or i16 %106, 768
  %108 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %109, align 4
  %write16.i.i.i296 = getelementptr inbounds %struct.ssb_bus_ops, ptr %111, i32 0, i32 4
  %112 = ptrtoint ptr %write16.i.i.i296 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %write16.i.i.i296, align 4
  tail call void %113(ptr noundef %109, i16 noundef zeroext 1020, i16 noundef zeroext 1164) #7
  %114 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %115, align 4
  %write16.i.i2.i297 = getelementptr inbounds %struct.ssb_bus_ops, ptr %117, i32 0, i32 4
  %118 = ptrtoint ptr %write16.i.i2.i297 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %write16.i.i2.i297, align 4
  tail call void %119(ptr noundef %115, i16 noundef zeroext 1022, i16 noundef zeroext %107) #7
  %call34 = tail call zeroext i16 @b43legacy_radio_read16(ptr noundef %dev, i16 noundef zeroext 122) #7
  %120 = or i16 %call34, 8
  tail call void @b43legacy_radio_write16(ptr noundef %dev, i16 noundef zeroext 122, i16 noundef zeroext %120) #7
  %121 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dev, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %122, align 4
  %write16.i.i.i298 = getelementptr inbounds %struct.ssb_bus_ops, ptr %124, i32 0, i32 4
  %125 = ptrtoint ptr %write16.i.i.i298 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %write16.i.i.i298, align 4
  tail call void %126(ptr noundef %122, i16 noundef zeroext 1020, i16 noundef zeroext 1184) #7
  %127 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev, align 4
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %128, align 4
  %read16.i.i.i299 = getelementptr inbounds %struct.ssb_bus_ops, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %read16.i.i.i299 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %read16.i.i.i299, align 4
  %call.i.i.i300 = tail call zeroext i16 %132(ptr noundef %128, i16 noundef zeroext 1022) #7
  %133 = and i16 %call.i.i.i300, -16
  %134 = or i16 %133, 8
  %135 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev, align 4
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %136, align 4
  %write16.i.i.i301 = getelementptr inbounds %struct.ssb_bus_ops, ptr %138, i32 0, i32 4
  %139 = ptrtoint ptr %write16.i.i.i301 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %write16.i.i.i301, align 4
  tail call void %140(ptr noundef %136, i16 noundef zeroext 1020, i16 noundef zeroext 1184) #7
  %141 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dev, align 4
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %142, align 4
  %write16.i.i2.i302 = getelementptr inbounds %struct.ssb_bus_ops, ptr %144, i32 0, i32 4
  %145 = ptrtoint ptr %write16.i.i2.i302 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %write16.i.i2.i302, align 4
  tail call void %146(ptr noundef %142, i16 noundef zeroext 1022, i16 noundef zeroext %134) #7
  %147 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %dev, align 4
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %148, align 4
  %write16.i.i.i303 = getelementptr inbounds %struct.ssb_bus_ops, ptr %150, i32 0, i32 4
  %151 = ptrtoint ptr %write16.i.i.i303 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %write16.i.i.i303, align 4
  tail call void %152(ptr noundef %148, i16 noundef zeroext 1020, i16 noundef zeroext 1185) #7
  %153 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %dev, align 4
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %154, align 4
  %read16.i.i.i304 = getelementptr inbounds %struct.ssb_bus_ops, ptr %156, i32 0, i32 1
  %157 = ptrtoint ptr %read16.i.i.i304 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %read16.i.i.i304, align 4
  %call.i.i.i305 = tail call zeroext i16 %158(ptr noundef %154, i16 noundef zeroext 1022) #7
  %159 = and i16 %call.i.i.i305, -3841
  %160 = or i16 %159, 1536
  %161 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %dev, align 4
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %162, align 4
  %write16.i.i.i306 = getelementptr inbounds %struct.ssb_bus_ops, ptr %164, i32 0, i32 4
  %165 = ptrtoint ptr %write16.i.i.i306 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %write16.i.i.i306, align 4
  tail call void %166(ptr noundef %162, i16 noundef zeroext 1020, i16 noundef zeroext 1185) #7
  %167 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %dev, align 4
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %168, align 4
  %write16.i.i2.i307 = getelementptr inbounds %struct.ssb_bus_ops, ptr %170, i32 0, i32 4
  %171 = ptrtoint ptr %write16.i.i2.i307 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %write16.i.i2.i307, align 4
  tail call void %172(ptr noundef %168, i16 noundef zeroext 1022, i16 noundef zeroext %160) #7
  %173 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %dev, align 4
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %174, align 4
  %write16.i.i.i308 = getelementptr inbounds %struct.ssb_bus_ops, ptr %176, i32 0, i32 4
  %177 = ptrtoint ptr %write16.i.i.i308 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %write16.i.i.i308, align 4
  tail call void %178(ptr noundef %174, i16 noundef zeroext 1020, i16 noundef zeroext 1186) #7
  %179 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %dev, align 4
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %180, align 4
  %read16.i.i.i309 = getelementptr inbounds %struct.ssb_bus_ops, ptr %182, i32 0, i32 1
  %183 = ptrtoint ptr %read16.i.i.i309 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %read16.i.i.i309, align 4
  %call.i.i.i310 = tail call zeroext i16 %184(ptr noundef %180, i16 noundef zeroext 1022) #7
  %185 = and i16 %call.i.i.i310, -3841
  %186 = or i16 %185, 1792
  %187 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %dev, align 4
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %188, align 4
  %write16.i.i.i311 = getelementptr inbounds %struct.ssb_bus_ops, ptr %190, i32 0, i32 4
  %191 = ptrtoint ptr %write16.i.i.i311 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %write16.i.i.i311, align 4
  tail call void %192(ptr noundef %188, i16 noundef zeroext 1020, i16 noundef zeroext 1186) #7
  %193 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %dev, align 4
  %195 = ptrtoint ptr %194 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %194, align 4
  %write16.i.i2.i312 = getelementptr inbounds %struct.ssb_bus_ops, ptr %196, i32 0, i32 4
  %197 = ptrtoint ptr %write16.i.i2.i312 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %write16.i.i2.i312, align 4
  tail call void %198(ptr noundef %194, i16 noundef zeroext 1022, i16 noundef zeroext %186) #7
  %199 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %dev, align 4
  %201 = ptrtoint ptr %200 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %200, align 4
  %write16.i.i.i313 = getelementptr inbounds %struct.ssb_bus_ops, ptr %202, i32 0, i32 4
  %203 = ptrtoint ptr %write16.i.i.i313 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %write16.i.i.i313, align 4
  tail call void %204(ptr noundef %200, i16 noundef zeroext 1020, i16 noundef zeroext 1184) #7
  %205 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %dev, align 4
  %207 = ptrtoint ptr %206 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %206, align 4
  %read16.i.i.i314 = getelementptr inbounds %struct.ssb_bus_ops, ptr %208, i32 0, i32 1
  %209 = ptrtoint ptr %read16.i.i.i314 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %read16.i.i.i314, align 4
  %call.i.i.i315 = tail call zeroext i16 %210(ptr noundef %206, i16 noundef zeroext 1022) #7
  %211 = and i16 %call.i.i.i315, -3841
  %212 = or i16 %211, 256
  %213 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %dev, align 4
  %215 = ptrtoint ptr %214 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %214, align 4
  %write16.i.i.i316 = getelementptr inbounds %struct.ssb_bus_ops, ptr %216, i32 0, i32 4
  %217 = ptrtoint ptr %write16.i.i.i316 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %write16.i.i.i316, align 4
  tail call void %218(ptr noundef %214, i16 noundef zeroext 1020, i16 noundef zeroext 1184) #7
  %219 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %dev, align 4
  %221 = ptrtoint ptr %220 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %220, align 4
  %write16.i.i2.i317 = getelementptr inbounds %struct.ssb_bus_ops, ptr %222, i32 0, i32 4
  %223 = ptrtoint ptr %write16.i.i2.i317 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %write16.i.i2.i317, align 4
  tail call void %224(ptr noundef %220, i16 noundef zeroext 1022, i16 noundef zeroext %212) #7
  %225 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %226)
  %cmp60 = icmp eq i8 %226, 1
  br i1 %cmp60, label %if.then62, label %if.end16.if.end68_crit_edge

if.end16.if.end68_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

if.then62:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %227 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %dev, align 4
  %229 = ptrtoint ptr %228 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %228, align 4
  %write16.i.i.i318 = getelementptr inbounds %struct.ssb_bus_ops, ptr %230, i32 0, i32 4
  %231 = ptrtoint ptr %write16.i.i.i318 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %write16.i.i.i318, align 4
  tail call void %232(ptr noundef %228, i16 noundef zeroext 1020, i16 noundef zeroext 1186) #7
  %233 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %dev, align 4
  %235 = ptrtoint ptr %234 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %234, align 4
  %read16.i.i.i319 = getelementptr inbounds %struct.ssb_bus_ops, ptr %236, i32 0, i32 1
  %237 = ptrtoint ptr %read16.i.i.i319 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %read16.i.i.i319, align 4
  %call.i.i.i320 = tail call zeroext i16 %238(ptr noundef %234, i16 noundef zeroext 1022) #7
  %239 = and i16 %call.i.i.i320, -16
  %240 = or i16 %239, 7
  %241 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %dev, align 4
  %243 = ptrtoint ptr %242 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %242, align 4
  %write16.i.i.i321 = getelementptr inbounds %struct.ssb_bus_ops, ptr %244, i32 0, i32 4
  %245 = ptrtoint ptr %write16.i.i.i321 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %write16.i.i.i321, align 4
  tail call void %246(ptr noundef %242, i16 noundef zeroext 1020, i16 noundef zeroext 1186) #7
  %247 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %dev, align 4
  %249 = ptrtoint ptr %248 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %248, align 4
  %write16.i.i2.i322 = getelementptr inbounds %struct.ssb_bus_ops, ptr %250, i32 0, i32 4
  %251 = ptrtoint ptr %write16.i.i2.i322 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %write16.i.i2.i322, align 4
  tail call void %252(ptr noundef %248, i16 noundef zeroext 1022, i16 noundef zeroext %240) #7
  br label %if.end68

if.end68:                                         ; preds = %if.then62, %if.end16.if.end68_crit_edge
  %253 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %dev, align 4
  %255 = ptrtoint ptr %254 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %254, align 4
  %write16.i.i.i323 = getelementptr inbounds %struct.ssb_bus_ops, ptr %256, i32 0, i32 4
  %257 = ptrtoint ptr %write16.i.i.i323 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %write16.i.i.i323, align 4
  tail call void %258(ptr noundef %254, i16 noundef zeroext 1020, i16 noundef zeroext 1160) #7
  %259 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %dev, align 4
  %261 = ptrtoint ptr %260 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %260, align 4
  %read16.i.i.i324 = getelementptr inbounds %struct.ssb_bus_ops, ptr %262, i32 0, i32 1
  %263 = ptrtoint ptr %read16.i.i.i324 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %read16.i.i.i324, align 4
  %call.i.i.i325 = tail call zeroext i16 %264(ptr noundef %260, i16 noundef zeroext 1022) #7
  %265 = and i16 %call.i.i.i325, -256
  %266 = or i16 %265, 28
  %267 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %dev, align 4
  %269 = ptrtoint ptr %268 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %268, align 4
  %write16.i.i.i326 = getelementptr inbounds %struct.ssb_bus_ops, ptr %270, i32 0, i32 4
  %271 = ptrtoint ptr %write16.i.i.i326 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %write16.i.i.i326, align 4
  tail call void %272(ptr noundef %268, i16 noundef zeroext 1020, i16 noundef zeroext 1160) #7
  %273 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %dev, align 4
  %275 = ptrtoint ptr %274 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %274, align 4
  %write16.i.i2.i327 = getelementptr inbounds %struct.ssb_bus_ops, ptr %276, i32 0, i32 4
  %277 = ptrtoint ptr %write16.i.i2.i327 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %write16.i.i2.i327, align 4
  tail call void %278(ptr noundef %274, i16 noundef zeroext 1022, i16 noundef zeroext %266) #7
  %279 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %dev, align 4
  %281 = ptrtoint ptr %280 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %280, align 4
  %write16.i.i.i328 = getelementptr inbounds %struct.ssb_bus_ops, ptr %282, i32 0, i32 4
  %283 = ptrtoint ptr %write16.i.i.i328 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %write16.i.i.i328, align 4
  tail call void %284(ptr noundef %280, i16 noundef zeroext 1020, i16 noundef zeroext 1160) #7
  %285 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %dev, align 4
  %287 = ptrtoint ptr %286 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %286, align 4
  %read16.i.i.i329 = getelementptr inbounds %struct.ssb_bus_ops, ptr %288, i32 0, i32 1
  %289 = ptrtoint ptr %read16.i.i.i329 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %read16.i.i.i329, align 4
  %call.i.i.i330 = tail call zeroext i16 %290(ptr noundef %286, i16 noundef zeroext 1022) #7
  %291 = and i16 %call.i.i.i330, -16129
  %292 = or i16 %291, 512
  %293 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %dev, align 4
  %295 = ptrtoint ptr %294 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %294, align 4
  %write16.i.i.i331 = getelementptr inbounds %struct.ssb_bus_ops, ptr %296, i32 0, i32 4
  %297 = ptrtoint ptr %write16.i.i.i331 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %write16.i.i.i331, align 4
  tail call void %298(ptr noundef %294, i16 noundef zeroext 1020, i16 noundef zeroext 1160) #7
  %299 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %dev, align 4
  %301 = ptrtoint ptr %300 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %300, align 4
  %write16.i.i2.i332 = getelementptr inbounds %struct.ssb_bus_ops, ptr %302, i32 0, i32 4
  %303 = ptrtoint ptr %write16.i.i2.i332 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %write16.i.i2.i332, align 4
  tail call void %304(ptr noundef %300, i16 noundef zeroext 1022, i16 noundef zeroext %292) #7
  %305 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %dev, align 4
  %307 = ptrtoint ptr %306 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %306, align 4
  %write16.i.i.i333 = getelementptr inbounds %struct.ssb_bus_ops, ptr %308, i32 0, i32 4
  %309 = ptrtoint ptr %write16.i.i.i333 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %write16.i.i.i333, align 4
  tail call void %310(ptr noundef %306, i16 noundef zeroext 1020, i16 noundef zeroext 1174) #7
  %311 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %dev, align 4
  %313 = ptrtoint ptr %312 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %312, align 4
  %read16.i.i.i334 = getelementptr inbounds %struct.ssb_bus_ops, ptr %314, i32 0, i32 1
  %315 = ptrtoint ptr %read16.i.i.i334 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %read16.i.i.i334, align 4
  %call.i.i.i335 = tail call zeroext i16 %316(ptr noundef %312, i16 noundef zeroext 1022) #7
  %317 = and i16 %call.i.i.i335, -256
  %318 = or i16 %317, 28
  %319 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %dev, align 4
  %321 = ptrtoint ptr %320 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %320, align 4
  %write16.i.i.i336 = getelementptr inbounds %struct.ssb_bus_ops, ptr %322, i32 0, i32 4
  %323 = ptrtoint ptr %write16.i.i.i336 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %write16.i.i.i336, align 4
  tail call void %324(ptr noundef %320, i16 noundef zeroext 1020, i16 noundef zeroext 1174) #7
  %325 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %dev, align 4
  %327 = ptrtoint ptr %326 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %326, align 4
  %write16.i.i2.i337 = getelementptr inbounds %struct.ssb_bus_ops, ptr %328, i32 0, i32 4
  %329 = ptrtoint ptr %write16.i.i2.i337 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %write16.i.i2.i337, align 4
  tail call void %330(ptr noundef %326, i16 noundef zeroext 1022, i16 noundef zeroext %318) #7
  %331 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %dev, align 4
  %333 = ptrtoint ptr %332 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %332, align 4
  %write16.i.i.i338 = getelementptr inbounds %struct.ssb_bus_ops, ptr %334, i32 0, i32 4
  %335 = ptrtoint ptr %write16.i.i.i338 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %write16.i.i.i338, align 4
  tail call void %336(ptr noundef %332, i16 noundef zeroext 1020, i16 noundef zeroext 1161) #7
  %337 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %dev, align 4
  %339 = ptrtoint ptr %338 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %338, align 4
  %read16.i.i.i339 = getelementptr inbounds %struct.ssb_bus_ops, ptr %340, i32 0, i32 1
  %341 = ptrtoint ptr %read16.i.i.i339 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %read16.i.i.i339, align 4
  %call.i.i.i340 = tail call zeroext i16 %342(ptr noundef %338, i16 noundef zeroext 1022) #7
  %343 = and i16 %call.i.i.i340, -256
  %344 = or i16 %343, 32
  %345 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %dev, align 4
  %347 = ptrtoint ptr %346 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %346, align 4
  %write16.i.i.i341 = getelementptr inbounds %struct.ssb_bus_ops, ptr %348, i32 0, i32 4
  %349 = ptrtoint ptr %write16.i.i.i341 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %write16.i.i.i341, align 4
  tail call void %350(ptr noundef %346, i16 noundef zeroext 1020, i16 noundef zeroext 1161) #7
  %351 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %dev, align 4
  %353 = ptrtoint ptr %352 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %352, align 4
  %write16.i.i2.i342 = getelementptr inbounds %struct.ssb_bus_ops, ptr %354, i32 0, i32 4
  %355 = ptrtoint ptr %write16.i.i2.i342 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %write16.i.i2.i342, align 4
  tail call void %356(ptr noundef %352, i16 noundef zeroext 1022, i16 noundef zeroext %344) #7
  %357 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %dev, align 4
  %359 = ptrtoint ptr %358 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %358, align 4
  %write16.i.i.i343 = getelementptr inbounds %struct.ssb_bus_ops, ptr %360, i32 0, i32 4
  %361 = ptrtoint ptr %write16.i.i.i343 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %write16.i.i.i343, align 4
  tail call void %362(ptr noundef %358, i16 noundef zeroext 1020, i16 noundef zeroext 1161) #7
  %363 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %dev, align 4
  %365 = ptrtoint ptr %364 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %364, align 4
  %read16.i.i.i344 = getelementptr inbounds %struct.ssb_bus_ops, ptr %366, i32 0, i32 1
  %367 = ptrtoint ptr %read16.i.i.i344 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %read16.i.i.i344, align 4
  %call.i.i.i345 = tail call zeroext i16 %368(ptr noundef %364, i16 noundef zeroext 1022) #7
  %369 = and i16 %call.i.i.i345, -16129
  %370 = or i16 %369, 512
  %371 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %dev, align 4
  %373 = ptrtoint ptr %372 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %372, align 4
  %write16.i.i.i346 = getelementptr inbounds %struct.ssb_bus_ops, ptr %374, i32 0, i32 4
  %375 = ptrtoint ptr %write16.i.i.i346 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %write16.i.i.i346, align 4
  tail call void %376(ptr noundef %372, i16 noundef zeroext 1020, i16 noundef zeroext 1161) #7
  %377 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %dev, align 4
  %379 = ptrtoint ptr %378 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %378, align 4
  %write16.i.i2.i347 = getelementptr inbounds %struct.ssb_bus_ops, ptr %380, i32 0, i32 4
  %381 = ptrtoint ptr %write16.i.i2.i347 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %write16.i.i2.i347, align 4
  tail call void %382(ptr noundef %378, i16 noundef zeroext 1022, i16 noundef zeroext %370) #7
  %383 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %dev, align 4
  %385 = ptrtoint ptr %384 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %384, align 4
  %write16.i.i.i348 = getelementptr inbounds %struct.ssb_bus_ops, ptr %386, i32 0, i32 4
  %387 = ptrtoint ptr %write16.i.i.i348 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %write16.i.i.i348, align 4
  tail call void %388(ptr noundef %384, i16 noundef zeroext 1020, i16 noundef zeroext 1154) #7
  %389 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %dev, align 4
  %391 = ptrtoint ptr %390 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %390, align 4
  %read16.i.i.i349 = getelementptr inbounds %struct.ssb_bus_ops, ptr %392, i32 0, i32 1
  %393 = ptrtoint ptr %read16.i.i.i349 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %read16.i.i.i349, align 4
  %call.i.i.i350 = tail call zeroext i16 %394(ptr noundef %390, i16 noundef zeroext 1022) #7
  %395 = and i16 %call.i.i.i350, -256
  %396 = or i16 %395, 46
  %397 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %dev, align 4
  %399 = ptrtoint ptr %398 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %398, align 4
  %write16.i.i.i351 = getelementptr inbounds %struct.ssb_bus_ops, ptr %400, i32 0, i32 4
  %401 = ptrtoint ptr %write16.i.i.i351 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %write16.i.i.i351, align 4
  tail call void %402(ptr noundef %398, i16 noundef zeroext 1020, i16 noundef zeroext 1154) #7
  %403 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %dev, align 4
  %405 = ptrtoint ptr %404 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %404, align 4
  %write16.i.i2.i352 = getelementptr inbounds %struct.ssb_bus_ops, ptr %406, i32 0, i32 4
  %407 = ptrtoint ptr %write16.i.i2.i352 to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %write16.i.i2.i352, align 4
  tail call void %408(ptr noundef %404, i16 noundef zeroext 1022, i16 noundef zeroext %396) #7
  %409 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %dev, align 4
  %411 = ptrtoint ptr %410 to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %410, align 4
  %write16.i.i.i353 = getelementptr inbounds %struct.ssb_bus_ops, ptr %412, i32 0, i32 4
  %413 = ptrtoint ptr %write16.i.i.i353 to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %write16.i.i.i353, align 4
  tail call void %414(ptr noundef %410, i16 noundef zeroext 1020, i16 noundef zeroext 1174) #7
  %415 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %dev, align 4
  %417 = ptrtoint ptr %416 to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %416, align 4
  %read16.i.i.i354 = getelementptr inbounds %struct.ssb_bus_ops, ptr %418, i32 0, i32 1
  %419 = ptrtoint ptr %read16.i.i.i354 to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %read16.i.i.i354, align 4
  %call.i.i.i355 = tail call zeroext i16 %420(ptr noundef %416, i16 noundef zeroext 1022) #7
  %421 = and i16 %call.i.i.i355, 255
  %422 = or i16 %421, 6656
  %423 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %dev, align 4
  %425 = ptrtoint ptr %424 to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %424, align 4
  %write16.i.i.i356 = getelementptr inbounds %struct.ssb_bus_ops, ptr %426, i32 0, i32 4
  %427 = ptrtoint ptr %write16.i.i.i356 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %write16.i.i.i356, align 4
  tail call void %428(ptr noundef %424, i16 noundef zeroext 1020, i16 noundef zeroext 1174) #7
  %429 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %dev, align 4
  %431 = ptrtoint ptr %430 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %430, align 4
  %write16.i.i2.i357 = getelementptr inbounds %struct.ssb_bus_ops, ptr %432, i32 0, i32 4
  %433 = ptrtoint ptr %write16.i.i2.i357 to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %write16.i.i2.i357, align 4
  tail call void %434(ptr noundef %430, i16 noundef zeroext 1022, i16 noundef zeroext %422) #7
  %435 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %dev, align 4
  %437 = ptrtoint ptr %436 to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %436, align 4
  %write16.i.i.i358 = getelementptr inbounds %struct.ssb_bus_ops, ptr %438, i32 0, i32 4
  %439 = ptrtoint ptr %write16.i.i.i358 to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %write16.i.i.i358, align 4
  tail call void %440(ptr noundef %436, i16 noundef zeroext 1020, i16 noundef zeroext 1153) #7
  %441 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %dev, align 4
  %443 = ptrtoint ptr %442 to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %442, align 4
  %read16.i.i.i359 = getelementptr inbounds %struct.ssb_bus_ops, ptr %444, i32 0, i32 1
  %445 = ptrtoint ptr %read16.i.i.i359 to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %read16.i.i.i359, align 4
  %call.i.i.i360 = tail call zeroext i16 %446(ptr noundef %442, i16 noundef zeroext 1022) #7
  %447 = and i16 %call.i.i.i360, -256
  %448 = or i16 %447, 40
  %449 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %dev, align 4
  %451 = ptrtoint ptr %450 to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %450, align 4
  %write16.i.i.i361 = getelementptr inbounds %struct.ssb_bus_ops, ptr %452, i32 0, i32 4
  %453 = ptrtoint ptr %write16.i.i.i361 to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %write16.i.i.i361, align 4
  tail call void %454(ptr noundef %450, i16 noundef zeroext 1020, i16 noundef zeroext 1153) #7
  %455 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %dev, align 4
  %457 = ptrtoint ptr %456 to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %456, align 4
  %write16.i.i2.i362 = getelementptr inbounds %struct.ssb_bus_ops, ptr %458, i32 0, i32 4
  %459 = ptrtoint ptr %write16.i.i2.i362 to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %write16.i.i2.i362, align 4
  tail call void %460(ptr noundef %456, i16 noundef zeroext 1022, i16 noundef zeroext %448) #7
  %461 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %dev, align 4
  %463 = ptrtoint ptr %462 to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %462, align 4
  %write16.i.i.i363 = getelementptr inbounds %struct.ssb_bus_ops, ptr %464, i32 0, i32 4
  %465 = ptrtoint ptr %write16.i.i.i363 to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %write16.i.i.i363, align 4
  tail call void %466(ptr noundef %462, i16 noundef zeroext 1020, i16 noundef zeroext 1153) #7
  %467 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %dev, align 4
  %469 = ptrtoint ptr %468 to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %468, align 4
  %read16.i.i.i364 = getelementptr inbounds %struct.ssb_bus_ops, ptr %470, i32 0, i32 1
  %471 = ptrtoint ptr %read16.i.i.i364 to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %read16.i.i.i364, align 4
  %call.i.i.i365 = tail call zeroext i16 %472(ptr noundef %468, i16 noundef zeroext 1022) #7
  %473 = and i16 %call.i.i.i365, 255
  %474 = or i16 %473, 11264
  %475 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %dev, align 4
  %477 = ptrtoint ptr %476 to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %476, align 4
  %write16.i.i.i366 = getelementptr inbounds %struct.ssb_bus_ops, ptr %478, i32 0, i32 4
  %479 = ptrtoint ptr %write16.i.i.i366 to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %write16.i.i.i366, align 4
  tail call void %480(ptr noundef %476, i16 noundef zeroext 1020, i16 noundef zeroext 1153) #7
  %481 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %dev, align 4
  %483 = ptrtoint ptr %482 to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %482, align 4
  %write16.i.i2.i367 = getelementptr inbounds %struct.ssb_bus_ops, ptr %484, i32 0, i32 4
  %485 = ptrtoint ptr %write16.i.i2.i367 to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load ptr, ptr %write16.i.i2.i367, align 4
  tail call void %486(ptr noundef %482, i16 noundef zeroext 1022, i16 noundef zeroext %474) #7
  %487 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %487)
  %488 = load i8, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %488)
  %cmp116 = icmp eq i8 %488, 1
  %489 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load ptr, ptr %dev, align 4
  %491 = ptrtoint ptr %490 to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %490, align 4
  %write16.i.i.i368 = getelementptr inbounds %struct.ssb_bus_ops, ptr %492, i32 0, i32 4
  %493 = ptrtoint ptr %write16.i.i.i368 to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %write16.i.i.i368, align 4
  br i1 %cmp116, label %if.then118, label %if.else

if.then118:                                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %494(ptr noundef %490, i16 noundef zeroext 1020, i16 noundef zeroext 1072) #7
  %495 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load ptr, ptr %dev, align 4
  %497 = ptrtoint ptr %496 to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load ptr, ptr %496, align 4
  %write16.i.i2.i369 = getelementptr inbounds %struct.ssb_bus_ops, ptr %498, i32 0, i32 4
  %499 = ptrtoint ptr %write16.i.i2.i369 to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load ptr, ptr %write16.i.i2.i369, align 4
  tail call void %500(ptr noundef %496, i16 noundef zeroext 1022, i16 noundef zeroext 2347) #7
  %501 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %dev, align 4
  %503 = ptrtoint ptr %502 to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load ptr, ptr %502, align 4
  %write16.i.i.i370 = getelementptr inbounds %struct.ssb_bus_ops, ptr %504, i32 0, i32 4
  %505 = ptrtoint ptr %write16.i.i.i370 to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %write16.i.i.i370, align 4
  tail call void %506(ptr noundef %502, i16 noundef zeroext 1020, i16 noundef zeroext 1051) #7
  %507 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load ptr, ptr %dev, align 4
  %509 = ptrtoint ptr %508 to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %508, align 4
  %read16.i.i.i371 = getelementptr inbounds %struct.ssb_bus_ops, ptr %510, i32 0, i32 1
  %511 = ptrtoint ptr %read16.i.i.i371 to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load ptr, ptr %read16.i.i.i371, align 4
  %call.i.i.i372 = tail call zeroext i16 %512(ptr noundef %508, i16 noundef zeroext 1022) #7
  %513 = and i16 %call.i.i.i372, -31
  %514 = or i16 %513, 2
  %515 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load ptr, ptr %dev, align 4
  %517 = ptrtoint ptr %516 to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load ptr, ptr %516, align 4
  %write16.i.i.i373 = getelementptr inbounds %struct.ssb_bus_ops, ptr %518, i32 0, i32 4
  %519 = ptrtoint ptr %write16.i.i.i373 to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load ptr, ptr %write16.i.i.i373, align 4
  tail call void %520(ptr noundef %516, i16 noundef zeroext 1020, i16 noundef zeroext 1051) #7
  %521 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load ptr, ptr %dev, align 4
  %523 = ptrtoint ptr %522 to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load ptr, ptr %522, align 4
  %write16.i.i2.i374 = getelementptr inbounds %struct.ssb_bus_ops, ptr %524, i32 0, i32 4
  %525 = ptrtoint ptr %write16.i.i2.i374 to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load ptr, ptr %write16.i.i2.i374, align 4
  tail call void %526(ptr noundef %522, i16 noundef zeroext 1022, i16 noundef zeroext %514) #7
  br label %if.end133

if.else:                                          ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %494(ptr noundef %490, i16 noundef zeroext 1020, i16 noundef zeroext 1051) #7
  %527 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load ptr, ptr %dev, align 4
  %529 = ptrtoint ptr %528 to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load ptr, ptr %528, align 4
  %read16.i.i.i376 = getelementptr inbounds %struct.ssb_bus_ops, ptr %530, i32 0, i32 1
  %531 = ptrtoint ptr %read16.i.i.i376 to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load ptr, ptr %read16.i.i.i376, align 4
  %call.i.i.i377 = tail call zeroext i16 %532(ptr noundef %528, i16 noundef zeroext 1022) #7
  %533 = and i16 %call.i.i.i377, -31
  %534 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load ptr, ptr %dev, align 4
  %536 = ptrtoint ptr %535 to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %535, align 4
  %write16.i.i.i378 = getelementptr inbounds %struct.ssb_bus_ops, ptr %537, i32 0, i32 4
  %538 = ptrtoint ptr %write16.i.i.i378 to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %write16.i.i.i378, align 4
  tail call void %539(ptr noundef %535, i16 noundef zeroext 1020, i16 noundef zeroext 1051) #7
  %540 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %dev, align 4
  %542 = ptrtoint ptr %541 to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %541, align 4
  %write16.i.i2.i379 = getelementptr inbounds %struct.ssb_bus_ops, ptr %543, i32 0, i32 4
  %544 = ptrtoint ptr %write16.i.i2.i379 to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %write16.i.i2.i379, align 4
  tail call void %545(ptr noundef %541, i16 noundef zeroext 1022, i16 noundef zeroext %533) #7
  %546 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load ptr, ptr %dev, align 4
  %548 = ptrtoint ptr %547 to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load ptr, ptr %547, align 4
  %write16.i.i.i380 = getelementptr inbounds %struct.ssb_bus_ops, ptr %549, i32 0, i32 4
  %550 = ptrtoint ptr %write16.i.i.i380 to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %write16.i.i.i380, align 4
  tail call void %551(ptr noundef %547, i16 noundef zeroext 1020, i16 noundef zeroext 1055) #7
  %552 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %dev, align 4
  %554 = ptrtoint ptr %553 to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %553, align 4
  %write16.i.i2.i381 = getelementptr inbounds %struct.ssb_bus_ops, ptr %555, i32 0, i32 4
  %556 = ptrtoint ptr %write16.i.i2.i381 to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load ptr, ptr %write16.i.i2.i381, align 4
  tail call void %557(ptr noundef %553, i16 noundef zeroext 1022, i16 noundef zeroext 10362) #7
  %558 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %dev, align 4
  %560 = ptrtoint ptr %559 to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load ptr, ptr %559, align 4
  %write16.i.i.i382 = getelementptr inbounds %struct.ssb_bus_ops, ptr %561, i32 0, i32 4
  %562 = ptrtoint ptr %write16.i.i.i382 to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load ptr, ptr %write16.i.i.i382, align 4
  tail call void %563(ptr noundef %559, i16 noundef zeroext 1020, i16 noundef zeroext 1056) #7
  %564 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load ptr, ptr %dev, align 4
  %566 = ptrtoint ptr %565 to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load ptr, ptr %565, align 4
  %read16.i.i.i383 = getelementptr inbounds %struct.ssb_bus_ops, ptr %567, i32 0, i32 1
  %568 = ptrtoint ptr %read16.i.i.i383 to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load ptr, ptr %read16.i.i.i383, align 4
  %call.i.i.i384 = tail call zeroext i16 %569(ptr noundef %565, i16 noundef zeroext 1022) #7
  %570 = and i16 %call.i.i.i384, -16
  %571 = or i16 %570, 4
  %572 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load ptr, ptr %dev, align 4
  %574 = ptrtoint ptr %573 to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load ptr, ptr %573, align 4
  %write16.i.i.i385 = getelementptr inbounds %struct.ssb_bus_ops, ptr %575, i32 0, i32 4
  %576 = ptrtoint ptr %write16.i.i.i385 to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load ptr, ptr %write16.i.i.i385, align 4
  tail call void %577(ptr noundef %573, i16 noundef zeroext 1020, i16 noundef zeroext 1056) #7
  %578 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load ptr, ptr %dev, align 4
  %580 = ptrtoint ptr %579 to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load ptr, ptr %579, align 4
  %write16.i.i2.i386 = getelementptr inbounds %struct.ssb_bus_ops, ptr %581, i32 0, i32 4
  %582 = ptrtoint ptr %write16.i.i2.i386 to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load ptr, ptr %write16.i.i2.i386, align 4
  tail call void %583(ptr noundef %579, i16 noundef zeroext 1022, i16 noundef zeroext %571) #7
  br label %if.end133

if.end133:                                        ; preds = %if.else, %if.then118
  %584 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %584)
  %585 = load i8, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %585)
  %cmp136 = icmp ugt i8 %585, 2
  br i1 %cmp136, label %if.then138, label %if.end133.if.end144_crit_edge

if.end133.if.end144_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end144

if.then138:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #9
  %586 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load ptr, ptr %dev, align 4
  %588 = ptrtoint ptr %587 to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load ptr, ptr %587, align 4
  %write16.i.i.i387 = getelementptr inbounds %struct.ssb_bus_ops, ptr %589, i32 0, i32 4
  %590 = ptrtoint ptr %write16.i.i.i387 to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load ptr, ptr %write16.i.i.i387, align 4
  tail call void %591(ptr noundef %587, i16 noundef zeroext 1020, i16 noundef zeroext 1058) #7
  %592 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load ptr, ptr %dev, align 4
  %594 = ptrtoint ptr %593 to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load ptr, ptr %593, align 4
  %write16.i.i2.i388 = getelementptr inbounds %struct.ssb_bus_ops, ptr %595, i32 0, i32 4
  %596 = ptrtoint ptr %write16.i.i2.i388 to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load ptr, ptr %write16.i.i2.i388, align 4
  tail call void %597(ptr noundef %593, i16 noundef zeroext 1022, i16 noundef zeroext 10362) #7
  %598 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load ptr, ptr %dev, align 4
  %600 = ptrtoint ptr %599 to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load ptr, ptr %599, align 4
  %write16.i.i.i389 = getelementptr inbounds %struct.ssb_bus_ops, ptr %601, i32 0, i32 4
  %602 = ptrtoint ptr %write16.i.i.i389 to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load ptr, ptr %write16.i.i.i389, align 4
  tail call void %603(ptr noundef %599, i16 noundef zeroext 1020, i16 noundef zeroext 1056) #7
  %604 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load ptr, ptr %dev, align 4
  %606 = ptrtoint ptr %605 to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load ptr, ptr %605, align 4
  %read16.i.i.i390 = getelementptr inbounds %struct.ssb_bus_ops, ptr %607, i32 0, i32 1
  %608 = ptrtoint ptr %read16.i.i.i390 to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load ptr, ptr %read16.i.i.i390, align 4
  %call.i.i.i391 = tail call zeroext i16 %609(ptr noundef %605, i16 noundef zeroext 1022) #7
  %610 = and i16 %call.i.i.i391, 4095
  %611 = or i16 %610, 12288
  %612 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load ptr, ptr %dev, align 4
  %614 = ptrtoint ptr %613 to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load ptr, ptr %613, align 4
  %write16.i.i.i392 = getelementptr inbounds %struct.ssb_bus_ops, ptr %615, i32 0, i32 4
  %616 = ptrtoint ptr %write16.i.i.i392 to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load ptr, ptr %write16.i.i.i392, align 4
  tail call void %617(ptr noundef %613, i16 noundef zeroext 1020, i16 noundef zeroext 1056) #7
  %618 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load ptr, ptr %dev, align 4
  %620 = ptrtoint ptr %619 to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load ptr, ptr %619, align 4
  %write16.i.i2.i393 = getelementptr inbounds %struct.ssb_bus_ops, ptr %621, i32 0, i32 4
  %622 = ptrtoint ptr %write16.i.i2.i393 to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load ptr, ptr %write16.i.i2.i393, align 4
  tail call void %623(ptr noundef %619, i16 noundef zeroext 1022, i16 noundef zeroext %611) #7
  br label %if.end144

if.end144:                                        ; preds = %if.then138, %if.end133.if.end144_crit_edge
  %624 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load ptr, ptr %dev, align 4
  %626 = ptrtoint ptr %625 to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load ptr, ptr %625, align 4
  %write16.i.i.i394 = getelementptr inbounds %struct.ssb_bus_ops, ptr %627, i32 0, i32 4
  %628 = ptrtoint ptr %write16.i.i.i394 to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load ptr, ptr %write16.i.i.i394, align 4
  tail call void %629(ptr noundef %625, i16 noundef zeroext 1020, i16 noundef zeroext 1192) #7
  %630 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load ptr, ptr %dev, align 4
  %632 = ptrtoint ptr %631 to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load ptr, ptr %631, align 4
  %read16.i.i.i395 = getelementptr inbounds %struct.ssb_bus_ops, ptr %633, i32 0, i32 1
  %634 = ptrtoint ptr %read16.i.i.i395 to i32
  call void @__asan_load4_noabort(i32 %634)
  %635 = load ptr, ptr %read16.i.i.i395, align 4
  %call.i.i.i396 = tail call zeroext i16 %635(ptr noundef %631, i16 noundef zeroext 1022) #7
  %636 = and i16 %call.i.i.i396, -32640
  %637 = or i16 %636, 30836
  %638 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load ptr, ptr %dev, align 4
  %640 = ptrtoint ptr %639 to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load ptr, ptr %639, align 4
  %write16.i.i.i397 = getelementptr inbounds %struct.ssb_bus_ops, ptr %641, i32 0, i32 4
  %642 = ptrtoint ptr %write16.i.i.i397 to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load ptr, ptr %write16.i.i.i397, align 4
  tail call void %643(ptr noundef %639, i16 noundef zeroext 1020, i16 noundef zeroext 1192) #7
  %644 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %644)
  %645 = load ptr, ptr %dev, align 4
  %646 = ptrtoint ptr %645 to i32
  call void @__asan_load4_noabort(i32 %646)
  %647 = load ptr, ptr %645, align 4
  %write16.i.i2.i398 = getelementptr inbounds %struct.ssb_bus_ops, ptr %647, i32 0, i32 4
  %648 = ptrtoint ptr %write16.i.i2.i398 to i32
  call void @__asan_load4_noabort(i32 %648)
  %649 = load ptr, ptr %write16.i.i2.i398, align 4
  tail call void %649(ptr noundef %645, i16 noundef zeroext 1022, i16 noundef zeroext %637) #7
  %650 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %650)
  %651 = load ptr, ptr %dev, align 4
  %652 = ptrtoint ptr %651 to i32
  call void @__asan_load4_noabort(i32 %652)
  %653 = load ptr, ptr %651, align 4
  %write16.i.i.i399 = getelementptr inbounds %struct.ssb_bus_ops, ptr %653, i32 0, i32 4
  %654 = ptrtoint ptr %write16.i.i.i399 to i32
  call void @__asan_load4_noabort(i32 %654)
  %655 = load ptr, ptr %write16.i.i.i399, align 4
  tail call void %655(ptr noundef %651, i16 noundef zeroext 1020, i16 noundef zeroext 1166) #7
  %656 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %656)
  %657 = load ptr, ptr %dev, align 4
  %658 = ptrtoint ptr %657 to i32
  call void @__asan_load4_noabort(i32 %658)
  %659 = load ptr, ptr %657, align 4
  %write16.i.i2.i400 = getelementptr inbounds %struct.ssb_bus_ops, ptr %659, i32 0, i32 4
  %660 = ptrtoint ptr %write16.i.i2.i400 to i32
  call void @__asan_load4_noabort(i32 %660)
  %661 = load ptr, ptr %write16.i.i2.i400, align 4
  tail call void %661(ptr noundef %657, i16 noundef zeroext 1022, i16 noundef zeroext 7168) #7
  %662 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %662)
  %663 = load i8, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %663)
  %cmp152 = icmp eq i8 %663, 1
  br i1 %cmp152, label %if.then154, label %if.end144.if.end165_crit_edge

if.end144.if.end165_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end165

if.then154:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #9
  %664 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %664)
  %665 = load ptr, ptr %dev, align 4
  %666 = ptrtoint ptr %665 to i32
  call void @__asan_load4_noabort(i32 %666)
  %667 = load ptr, ptr %665, align 4
  %write16.i.i.i401 = getelementptr inbounds %struct.ssb_bus_ops, ptr %667, i32 0, i32 4
  %668 = ptrtoint ptr %write16.i.i.i401 to i32
  call void @__asan_load4_noabort(i32 %668)
  %669 = load ptr, ptr %write16.i.i.i401, align 4
  tail call void %669(ptr noundef %665, i16 noundef zeroext 1020, i16 noundef zeroext 1195) #7
  %670 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %670)
  %671 = load ptr, ptr %dev, align 4
  %672 = ptrtoint ptr %671 to i32
  call void @__asan_load4_noabort(i32 %672)
  %673 = load ptr, ptr %671, align 4
  %read16.i.i.i402 = getelementptr inbounds %struct.ssb_bus_ops, ptr %673, i32 0, i32 1
  %674 = ptrtoint ptr %read16.i.i.i402 to i32
  call void @__asan_load4_noabort(i32 %674)
  %675 = load ptr, ptr %read16.i.i.i402, align 4
  %call.i.i.i403 = tail call zeroext i16 %675(ptr noundef %671, i16 noundef zeroext 1022) #7
  %676 = and i16 %call.i.i.i403, -3841
  %677 = or i16 %676, 1536
  %678 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %678)
  %679 = load ptr, ptr %dev, align 4
  %680 = ptrtoint ptr %679 to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load ptr, ptr %679, align 4
  %write16.i.i.i404 = getelementptr inbounds %struct.ssb_bus_ops, ptr %681, i32 0, i32 4
  %682 = ptrtoint ptr %write16.i.i.i404 to i32
  call void @__asan_load4_noabort(i32 %682)
  %683 = load ptr, ptr %write16.i.i.i404, align 4
  tail call void %683(ptr noundef %679, i16 noundef zeroext 1020, i16 noundef zeroext 1195) #7
  %684 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %684)
  %685 = load ptr, ptr %dev, align 4
  %686 = ptrtoint ptr %685 to i32
  call void @__asan_load4_noabort(i32 %686)
  %687 = load ptr, ptr %685, align 4
  %write16.i.i2.i405 = getelementptr inbounds %struct.ssb_bus_ops, ptr %687, i32 0, i32 4
  %688 = ptrtoint ptr %write16.i.i2.i405 to i32
  call void @__asan_load4_noabort(i32 %688)
  %689 = load ptr, ptr %write16.i.i2.i405, align 4
  tail call void %689(ptr noundef %685, i16 noundef zeroext 1022, i16 noundef zeroext %677) #7
  %690 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %690)
  %691 = load ptr, ptr %dev, align 4
  %692 = ptrtoint ptr %691 to i32
  call void @__asan_load4_noabort(i32 %692)
  %693 = load ptr, ptr %691, align 4
  %write16.i.i.i406 = getelementptr inbounds %struct.ssb_bus_ops, ptr %693, i32 0, i32 4
  %694 = ptrtoint ptr %write16.i.i.i406 to i32
  call void @__asan_load4_noabort(i32 %694)
  %695 = load ptr, ptr %write16.i.i.i406, align 4
  tail call void %695(ptr noundef %691, i16 noundef zeroext 1020, i16 noundef zeroext 1163) #7
  %696 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %696)
  %697 = load ptr, ptr %dev, align 4
  %698 = ptrtoint ptr %697 to i32
  call void @__asan_load4_noabort(i32 %698)
  %699 = load ptr, ptr %697, align 4
  %write16.i.i2.i407 = getelementptr inbounds %struct.ssb_bus_ops, ptr %699, i32 0, i32 4
  %700 = ptrtoint ptr %write16.i.i2.i407 to i32
  call void @__asan_load4_noabort(i32 %700)
  %701 = load ptr, ptr %write16.i.i2.i407, align 4
  tail call void %701(ptr noundef %697, i16 noundef zeroext 1022, i16 noundef zeroext 94) #7
  %702 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %702)
  %703 = load ptr, ptr %dev, align 4
  %704 = ptrtoint ptr %703 to i32
  call void @__asan_load4_noabort(i32 %704)
  %705 = load ptr, ptr %703, align 4
  %write16.i.i.i408 = getelementptr inbounds %struct.ssb_bus_ops, ptr %705, i32 0, i32 4
  %706 = ptrtoint ptr %write16.i.i.i408 to i32
  call void @__asan_load4_noabort(i32 %706)
  %707 = load ptr, ptr %write16.i.i.i408, align 4
  tail call void %707(ptr noundef %703, i16 noundef zeroext 1020, i16 noundef zeroext 1164) #7
  %708 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %708)
  %709 = load ptr, ptr %dev, align 4
  %710 = ptrtoint ptr %709 to i32
  call void @__asan_load4_noabort(i32 %710)
  %711 = load ptr, ptr %709, align 4
  %read16.i.i.i409 = getelementptr inbounds %struct.ssb_bus_ops, ptr %711, i32 0, i32 1
  %712 = ptrtoint ptr %read16.i.i.i409 to i32
  call void @__asan_load4_noabort(i32 %712)
  %713 = load ptr, ptr %read16.i.i.i409, align 4
  %call.i.i.i410 = tail call zeroext i16 %713(ptr noundef %709, i16 noundef zeroext 1022) #7
  %714 = and i16 %call.i.i.i410, -256
  %715 = or i16 %714, 30
  %716 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %716)
  %717 = load ptr, ptr %dev, align 4
  %718 = ptrtoint ptr %717 to i32
  call void @__asan_load4_noabort(i32 %718)
  %719 = load ptr, ptr %717, align 4
  %write16.i.i.i411 = getelementptr inbounds %struct.ssb_bus_ops, ptr %719, i32 0, i32 4
  %720 = ptrtoint ptr %write16.i.i.i411 to i32
  call void @__asan_load4_noabort(i32 %720)
  %721 = load ptr, ptr %write16.i.i.i411, align 4
  tail call void %721(ptr noundef %717, i16 noundef zeroext 1020, i16 noundef zeroext 1164) #7
  %722 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %722)
  %723 = load ptr, ptr %dev, align 4
  %724 = ptrtoint ptr %723 to i32
  call void @__asan_load4_noabort(i32 %724)
  %725 = load ptr, ptr %723, align 4
  %write16.i.i2.i412 = getelementptr inbounds %struct.ssb_bus_ops, ptr %725, i32 0, i32 4
  %726 = ptrtoint ptr %write16.i.i2.i412 to i32
  call void @__asan_load4_noabort(i32 %726)
  %727 = load ptr, ptr %write16.i.i2.i412, align 4
  tail call void %727(ptr noundef %723, i16 noundef zeroext 1022, i16 noundef zeroext %715) #7
  %728 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %728)
  %729 = load ptr, ptr %dev, align 4
  %730 = ptrtoint ptr %729 to i32
  call void @__asan_load4_noabort(i32 %730)
  %731 = load ptr, ptr %729, align 4
  %write16.i.i.i413 = getelementptr inbounds %struct.ssb_bus_ops, ptr %731, i32 0, i32 4
  %732 = ptrtoint ptr %write16.i.i.i413 to i32
  call void @__asan_load4_noabort(i32 %732)
  %733 = load ptr, ptr %write16.i.i.i413, align 4
  tail call void %733(ptr noundef %729, i16 noundef zeroext 1020, i16 noundef zeroext 1165) #7
  %734 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %734)
  %735 = load ptr, ptr %dev, align 4
  %736 = ptrtoint ptr %735 to i32
  call void @__asan_load4_noabort(i32 %736)
  %737 = load ptr, ptr %735, align 4
  %write16.i.i2.i414 = getelementptr inbounds %struct.ssb_bus_ops, ptr %737, i32 0, i32 4
  %738 = ptrtoint ptr %write16.i.i2.i414 to i32
  call void @__asan_load4_noabort(i32 %738)
  %739 = load ptr, ptr %write16.i.i2.i414, align 4
  tail call void %739(ptr noundef %735, i16 noundef zeroext 1022, i16 noundef zeroext 2) #7
  br label %if.end165

if.end165:                                        ; preds = %if.then154, %if.end144.if.end165_crit_edge
  %add167 = add nuw nsw i16 %spec.store.select, 2048
  tail call void @b43legacy_ilt_write(ptr noundef %dev, i16 noundef zeroext %add167, i16 noundef zeroext 0) #7
  %add170 = add nuw nsw i16 %spec.store.select, 2049
  tail call void @b43legacy_ilt_write(ptr noundef %dev, i16 noundef zeroext %add170, i16 noundef zeroext 7) #7
  %add173 = add nuw nsw i16 %spec.store.select, 2050
  tail call void @b43legacy_ilt_write(ptr noundef %dev, i16 noundef zeroext %add173, i16 noundef zeroext 16) #7
  %narrow = add nuw nsw i16 %spec.store.select, 2051
  tail call void @b43legacy_ilt_write(ptr noundef %dev, i16 noundef zeroext %narrow, i16 noundef zeroext 28) #7
  %740 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %740)
  %741 = load i8, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %741)
  %cmp180 = icmp ugt i8 %741, 5
  br i1 %cmp180, label %if.then182, label %if.end165.if.end191_crit_edge

if.end165.if.end191_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end191

if.then182:                                       ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #9
  %742 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %742)
  %743 = load ptr, ptr %dev, align 4
  %744 = ptrtoint ptr %743 to i32
  call void @__asan_load4_noabort(i32 %744)
  %745 = load ptr, ptr %743, align 4
  %write16.i.i.i415 = getelementptr inbounds %struct.ssb_bus_ops, ptr %745, i32 0, i32 4
  %746 = ptrtoint ptr %write16.i.i.i415 to i32
  call void @__asan_load4_noabort(i32 %746)
  %747 = load ptr, ptr %write16.i.i.i415, align 4
  tail call void %747(ptr noundef %743, i16 noundef zeroext 1020, i16 noundef zeroext 1062) #7
  %748 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %748)
  %749 = load ptr, ptr %dev, align 4
  %750 = ptrtoint ptr %749 to i32
  call void @__asan_load4_noabort(i32 %750)
  %751 = load ptr, ptr %749, align 4
  %read16.i.i.i416 = getelementptr inbounds %struct.ssb_bus_ops, ptr %751, i32 0, i32 1
  %752 = ptrtoint ptr %read16.i.i.i416 to i32
  call void @__asan_load4_noabort(i32 %752)
  %753 = load ptr, ptr %read16.i.i.i416, align 4
  %call.i.i.i417 = tail call zeroext i16 %753(ptr noundef %749, i16 noundef zeroext 1022) #7
  %754 = and i16 %call.i.i.i417, -4
  %755 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %755)
  %756 = load ptr, ptr %dev, align 4
  %757 = ptrtoint ptr %756 to i32
  call void @__asan_load4_noabort(i32 %757)
  %758 = load ptr, ptr %756, align 4
  %write16.i.i.i418 = getelementptr inbounds %struct.ssb_bus_ops, ptr %758, i32 0, i32 4
  %759 = ptrtoint ptr %write16.i.i.i418 to i32
  call void @__asan_load4_noabort(i32 %759)
  %760 = load ptr, ptr %write16.i.i.i418, align 4
  tail call void %760(ptr noundef %756, i16 noundef zeroext 1020, i16 noundef zeroext 1062) #7
  %761 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %761)
  %762 = load ptr, ptr %dev, align 4
  %763 = ptrtoint ptr %762 to i32
  call void @__asan_load4_noabort(i32 %763)
  %764 = load ptr, ptr %762, align 4
  %write16.i.i2.i419 = getelementptr inbounds %struct.ssb_bus_ops, ptr %764, i32 0, i32 4
  %765 = ptrtoint ptr %write16.i.i2.i419 to i32
  call void @__asan_load4_noabort(i32 %765)
  %766 = load ptr, ptr %write16.i.i2.i419, align 4
  tail call void %766(ptr noundef %762, i16 noundef zeroext 1022, i16 noundef zeroext %754) #7
  %767 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %767)
  %768 = load ptr, ptr %dev, align 4
  %769 = ptrtoint ptr %768 to i32
  call void @__asan_load4_noabort(i32 %769)
  %770 = load ptr, ptr %768, align 4
  %write16.i.i.i420 = getelementptr inbounds %struct.ssb_bus_ops, ptr %770, i32 0, i32 4
  %771 = ptrtoint ptr %write16.i.i.i420 to i32
  call void @__asan_load4_noabort(i32 %771)
  %772 = load ptr, ptr %write16.i.i.i420, align 4
  tail call void %772(ptr noundef %768, i16 noundef zeroext 1020, i16 noundef zeroext 1062) #7
  %773 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %773)
  %774 = load ptr, ptr %dev, align 4
  %775 = ptrtoint ptr %774 to i32
  call void @__asan_load4_noabort(i32 %775)
  %776 = load ptr, ptr %774, align 4
  %read16.i.i.i421 = getelementptr inbounds %struct.ssb_bus_ops, ptr %776, i32 0, i32 1
  %777 = ptrtoint ptr %read16.i.i.i421 to i32
  call void @__asan_load4_noabort(i32 %777)
  %778 = load ptr, ptr %read16.i.i.i421, align 4
  %call.i.i.i422 = tail call zeroext i16 %778(ptr noundef %774, i16 noundef zeroext 1022) #7
  %779 = and i16 %call.i.i.i422, -4097
  %780 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %780)
  %781 = load ptr, ptr %dev, align 4
  %782 = ptrtoint ptr %781 to i32
  call void @__asan_load4_noabort(i32 %782)
  %783 = load ptr, ptr %781, align 4
  %write16.i.i.i423 = getelementptr inbounds %struct.ssb_bus_ops, ptr %783, i32 0, i32 4
  %784 = ptrtoint ptr %write16.i.i.i423 to i32
  call void @__asan_load4_noabort(i32 %784)
  %785 = load ptr, ptr %write16.i.i.i423, align 4
  tail call void %785(ptr noundef %781, i16 noundef zeroext 1020, i16 noundef zeroext 1062) #7
  %786 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %786)
  %787 = load ptr, ptr %dev, align 4
  %788 = ptrtoint ptr %787 to i32
  call void @__asan_load4_noabort(i32 %788)
  %789 = load ptr, ptr %787, align 4
  %write16.i.i2.i424 = getelementptr inbounds %struct.ssb_bus_ops, ptr %789, i32 0, i32 4
  %790 = ptrtoint ptr %write16.i.i2.i424 to i32
  call void @__asan_load4_noabort(i32 %790)
  %791 = load ptr, ptr %write16.i.i2.i424, align 4
  tail call void %791(ptr noundef %787, i16 noundef zeroext 1022, i16 noundef zeroext %779) #7
  br label %if.end191

if.end191:                                        ; preds = %if.then182, %if.end165.if.end191_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @b43legacy_phy_lo_g_singledeviation(ptr nocapture noundef readonly %dev, i16 noundef zeroext %control) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %gmode.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 1
  %shl.i = shl i16 %control, 8
  %or.i = or i16 %shl.i, 176
  %or19.i = or i16 %shl.i, 178
  %0 = or i16 %shl.i, 179
  %or25.i = or i16 %control, -4192
  %or28.i = or i16 %control, -4128
  %1 = or i16 %control, -32
  br label %for.body

for.body:                                         ; preds = %b43legacy_phy_lo_g_deviation_subval.exit.for.body_crit_edge, %entry
  %ret.04 = phi i32 [ 0, %entry ], [ %add, %b43legacy_phy_lo_g_deviation_subval.exit.for.body_crit_edge ]
  %i.03 = phi i32 [ 0, %entry ], [ %inc, %b43legacy_phy_lo_g_deviation_subval.exit.for.body_crit_edge ]
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !59
  %and.i.i = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.body.do.end11.i_crit_edge

for.body.do.end11.i_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_off() #7
  br label %do.end11.i

do.end11.i:                                       ; preds = %if.then.i, %for.body.do.end11.i_crit_edge
  %3 = ptrtoint ptr %gmode.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %gmode.i, align 1, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool12.not.i = icmp eq i8 %4, 0
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %write16.i.i.i93.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %write16.i.i.i93.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write16.i.i.i93.i, align 4
  tail call void %10(ptr noundef %6, i16 noundef zeroext 1020, i16 noundef zeroext 21) #7
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %write16.i.i2.i94.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %write16.i.i2.i94.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write16.i.i2.i94.i, align 4
  br i1 %tobool12.not.i, label %if.else.i, label %if.then13.i

if.then13.i:                                      ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %16(ptr noundef %12, i16 noundef zeroext 1022, i16 noundef zeroext -7424) #7
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %write16.i.i.i85.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %write16.i.i.i85.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write16.i.i.i85.i, align 4
  tail call void %22(ptr noundef %18, i16 noundef zeroext 1020, i16 noundef zeroext 2066) #7
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %write16.i.i2.i86.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %write16.i.i2.i86.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write16.i.i2.i86.i, align 4
  tail call void %28(ptr noundef %24, i16 noundef zeroext 1022, i16 noundef zeroext %or.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 1073740) #7
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %write16.i.i.i87.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %write16.i.i.i87.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write16.i.i.i87.i, align 4
  tail call void %35(ptr noundef %31, i16 noundef zeroext 1020, i16 noundef zeroext 2066) #7
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %write16.i.i2.i88.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %write16.i.i2.i88.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write16.i.i2.i88.i, align 4
  tail call void %41(ptr noundef %37, i16 noundef zeroext 1022, i16 noundef zeroext %or19.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 429496) #7
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %write16.i.i.i89.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %write16.i.i.i89.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write16.i.i.i89.i, align 4
  tail call void %48(ptr noundef %44, i16 noundef zeroext 1020, i16 noundef zeroext 2066) #7
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %write16.i.i2.i90.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %52, i32 0, i32 4
  %53 = ptrtoint ptr %write16.i.i2.i90.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write16.i.i2.i90.i, align 4
  tail call void %54(ptr noundef %50, i16 noundef zeroext 1022, i16 noundef zeroext %0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 858992) #7
  %56 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %write16.i.i.i91.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %write16.i.i.i91.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write16.i.i.i91.i, align 4
  tail call void %61(ptr noundef %57, i16 noundef zeroext 1020, i16 noundef zeroext 21) #7
  %62 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %write16.i.i2.i92.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %65, i32 0, i32 4
  %66 = ptrtoint ptr %write16.i.i2.i92.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %write16.i.i2.i92.i, align 4
  tail call void %67(ptr noundef %63, i16 noundef zeroext 1022, i16 noundef zeroext -3328) #7
  br label %if.end33.i

if.else.i:                                        ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %16(ptr noundef %12, i16 noundef zeroext 1022, i16 noundef zeroext %or25.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %68(i32 noundef 429496) #7
  %69 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %write16.i.i.i95.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %72, i32 0, i32 4
  %73 = ptrtoint ptr %write16.i.i.i95.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %write16.i.i.i95.i, align 4
  tail call void %74(ptr noundef %70, i16 noundef zeroext 1020, i16 noundef zeroext 21) #7
  %75 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 4
  %write16.i.i2.i96.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %78, i32 0, i32 4
  %79 = ptrtoint ptr %write16.i.i2.i96.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %write16.i.i2.i96.i, align 4
  tail call void %80(ptr noundef %76, i16 noundef zeroext 1022, i16 noundef zeroext %or28.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %81(i32 noundef 858992) #7
  %82 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 4
  %write16.i.i.i97.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %85, i32 0, i32 4
  %86 = ptrtoint ptr %write16.i.i.i97.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %write16.i.i.i97.i, align 4
  tail call void %87(ptr noundef %83, i16 noundef zeroext 1020, i16 noundef zeroext 21) #7
  %88 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %89, align 4
  %write16.i.i2.i98.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %91, i32 0, i32 4
  %92 = ptrtoint ptr %write16.i.i2.i98.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %write16.i.i2.i98.i, align 4
  tail call void %93(ptr noundef %89, i16 noundef zeroext 1022, i16 noundef zeroext %1) #7
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.else.i, %if.then13.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %94 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %94(i32 noundef 1717984) #7
  %95 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %96, align 4
  %write16.i.i.i99.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %98, i32 0, i32 4
  %99 = ptrtoint ptr %write16.i.i.i99.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %write16.i.i.i99.i, align 4
  tail call void %100(ptr noundef %96, i16 noundef zeroext 1020, i16 noundef zeroext 45) #7
  %101 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %102, align 4
  %read16.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %read16.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %read16.i.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i16 %106(ptr noundef %102, i16 noundef zeroext 1022) #7
  br i1 %tobool.not.i, label %if.then44.i, label %if.end33.i.do.body46.i_crit_edge

if.end33.i.do.body46.i_crit_edge:                 ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body46.i

if.then44.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_on() #7
  br label %do.body46.i

do.body46.i:                                      ; preds = %if.then44.i, %if.end33.i.do.body46.i_crit_edge
  %107 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !60
  %and.i.i.i = and i32 %107, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool54.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool54.not.i, label %if.then58.i, label %do.body46.i.b43legacy_phy_lo_g_deviation_subval.exit_crit_edge, !prof !57

do.body46.i.b43legacy_phy_lo_g_deviation_subval.exit_crit_edge: ; preds = %do.body46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %b43legacy_phy_lo_g_deviation_subval.exit

if.then58.i:                                      ; preds = %do.body46.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %b43legacy_phy_lo_g_deviation_subval.exit

b43legacy_phy_lo_g_deviation_subval.exit:         ; preds = %if.then58.i, %do.body46.i.b43legacy_phy_lo_g_deviation_subval.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #7, !srcloc !61
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 1245, i32 noundef 0) #7
  %call.i.i = tail call i32 @__cond_resched() #7
  %conv = zext i16 %call.i.i.i.i to i32
  %add = add i32 %ret.04, %conv
  %inc = add nuw nsw i32 %i.03, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %b43legacy_phy_lo_g_deviation_subval.exit.for.body_crit_edge

b43legacy_phy_lo_g_deviation_subval.exit.for.body_crit_edge: ; preds = %b43legacy_phy_lo_g_deviation_subval.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %b43legacy_phy_lo_g_deviation_subval.exit
  call void @__sanitizer_cov_trace_pc() #9
  ret i32 %add
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smax.i16(i16, i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smin.i16(i16, i16) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !29, !30, !31, !33, !35, !37, !39, !40, !41, !42, !44}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/b43legacy/phy.c", i32 77, i32 2}
!2 = !{ptr @b43legacy_phy_lo_g_measure.pairorder, !3, !"pairorder", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/broadcom/b43legacy/phy.c", i32 1467, i32 18}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/broadcom/b43legacy/phy.c", i32 1695, i32 12}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/broadcom/b43legacy/phy.c", i32 1780, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @b43legacy_phy_xmitpower._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @b43legacy_phy_xmitpower._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/broadcom/b43legacy/phy.c", i32 1824, i32 26}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/broadcom/b43legacy/phy.c", i32 1845, i32 25}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/broadcom/b43legacy/phy.c", i32 2001, i32 26}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/broadcom/b43legacy/phy.c", i32 2009, i32 27}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/broadcom/b43legacy/phy.c", i32 2065, i32 25}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/broadcom/b43legacy/phy.c", i32 314, i32 2}
!24 = !{ptr @b43legacy_phy_setupg._entry, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @b43legacy_phy_setupg._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/broadcom/b43legacy/phy.c", i32 142, i32 2}
!29 = !{ptr @b43legacy_phy_init_pctl._entry, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @b43legacy_phy_init_pctl._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @b43legacy_find_lopair.dict, !32, !"dict", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/broadcom/b43legacy/phy.c", i32 1293, i32 18}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/broadcom/b43legacy/phy.c", i32 1277, i32 10}
!35 = !{ptr @b43legacy_phy_lo_g_state.transitions, !36, !"transitions", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/broadcom/b43legacy/phy.c", i32 1356, i32 39}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/broadcom/b43legacy/phy.c", i32 1744, i32 3}
!39 = !{ptr @b43legacy_phy_estimate_power_out._entry, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @b43legacy_phy_estimate_power_out._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @b43legacy_tssi2dbm_b_table, !43, !"b43legacy_tssi2dbm_b_table", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/broadcom/b43legacy/phy.c", i32 32, i32 17}
!44 = !{ptr @b43legacy_tssi2dbm_g_table, !45, !"b43legacy_tssi2dbm_g_table", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/broadcom/b43legacy/phy.c", i32 51, i32 17}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{i8 0, i8 2}
!56 = !{!"branch_weights", i32 2000, i32 1}
!57 = !{!"branch_weights", i32 1, i32 2000}
!58 = !{i64 2158067952, i64 2158068462, i64 2158067989, i64 2158068045, i64 2158068079, i64 2158068103, i64 2158068144, i64 2158068165, i64 2158068193, i64 2158068227}
!59 = !{i64 644763, i64 644824}
!60 = !{i64 647495}
!61 = !{i64 647780}
!62 = !{!"auto-init"}
!63 = !{i64 2158117145, i64 2158117656, i64 2158117182, i64 2158117238, i64 2158117272, i64 2158117296, i64 2158117337, i64 2158117358, i64 2158117386, i64 2158117420}
!64 = !{i64 2158113318, i64 2158113829, i64 2158113355, i64 2158113411, i64 2158113445, i64 2158113469, i64 2158113510, i64 2158113531, i64 2158113559, i64 2158113593}
!65 = !{i64 2158064379, i64 2158064889, i64 2158064416, i64 2158064472, i64 2158064506, i64 2158064530, i64 2158064571, i64 2158064592, i64 2158064620, i64 2158064654}
