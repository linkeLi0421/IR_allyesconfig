; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/sdhci-xenon-phy.c_pt.bc'
source_filename = "../drivers/mmc/host/sdhci-xenon-phy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.xenon_emmc_phy_regs = type { i16, i16, i16, i16, i16, i16, i32, i32 }
%struct.sdhci_host = type { ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, ptr, ptr, %struct.mmc_host_ops, i64, %struct.led_classdev, [32 x i8], %struct.spinlock, i32, i32, i32, i32, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x ptr], ptr, ptr, ptr, ptr, i8, %struct.sg_mapping_iter, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, %struct.work_struct, %struct.timer_list, %struct.timer_list, ptr, ptr, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i64, [72 x i8], [0 x i32] }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.xenon_emmc_phy_params = type { i8, i8, i8, i8, i8, %struct.soc_pad_ctrl }
%struct.soc_pad_ctrl = type { ptr, i32, ptr }
%struct.xenon_priv = type { i8, i8, i32, i8, i8, i32, ptr, i32, ptr, ptr, i8, i32 }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.sdhci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.mmc_supply = type { ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }

@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"marvell,xenon-phy-type\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"emmc 5.1 phy\00", [19 x i8] zeroinitializer }, align 32
@xenon_emmc_phy_set.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 -118, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sdhci_xenon_driver\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"xenon_emmc_phy_set\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/mmc/host/sdhci-xenon-phy.c\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"eMMC PHY setting starts\0A\00", [39 x i8] zeroinitializer }, align 32
@xenon_emmc_phy_set.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, i8 0, i8 -95, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"eMMC PHY setting completes\0A\00", [36 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@xenon_emmc_phy_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 269, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"eMMC PHY init cannot complete after %d us\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xenon_emmc_phy_init\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xenon_emmc_phy_init._entry_ptr = internal global ptr @xenon_emmc_phy_init._entry, section ".printk_index", align 4
@xenon_hs_delay_adj.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@xenon_hs_delay_adj._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.4, i32 766, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Timing issue might occur in DDR mode\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"xenon_hs_delay_adj\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@xenon_hs_delay_adj._entry_ptr = internal global ptr @xenon_hs_delay_adj._entry, section ".printk_index", align 4
@xenon_emmc_phy_strobe_delay_adj.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.14, ptr @.str.4, ptr @.str.15, i8 0, i8 112, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"xenon_emmc_phy_strobe_delay_adj\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"starts HS400 strobe delay adjustment\0A\00", [58 x i8] zeroinitializer }, align 32
@xenon_emmc_phy_enable_dll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 364, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Wait for DLL Lock time-out\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"xenon_emmc_phy_enable_dll\00", [38 x i8] zeroinitializer }, align 32
@xenon_emmc_phy_enable_dll._entry_ptr = internal global ptr @xenon_emmc_phy_enable_dll._entry, section ".printk_index", align 4
@xenon_emmc_phy_config_tuning._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 397, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"HS200 TUNING_STEP %d is larger than MAX value\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"xenon_emmc_phy_config_tuning\00", [35 x i8] zeroinitializer }, align 32
@xenon_emmc_phy_config_tuning._entry_ptr = internal global ptr @xenon_emmc_phy_config_tuning._entry, section ".printk_index", align 4
@phy_types = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.22, ptr @.str.1], [24 x i8] zeroinitializer }, align 32
@xenon_add_phy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 829, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Unable to determine PHY name %s. Use default eMMC 5.1 PHY\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xenon_add_phy\00", [18 x i8] zeroinitializer }, align 32
@xenon_add_phy._entry_ptr = internal global ptr @xenon_add_phy._entry, section ".printk_index", align 4
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"emmc 5.0 phy\00", [19 x i8] zeroinitializer }, align 32
@xenon_emmc_5_0_phy_regs = internal global { %struct.xenon_emmc_phy_regs, [44 x i8] } { %struct.xenon_emmc_phy_regs { i16 352, i16 356, i16 360, i16 364, i16 368, i16 372, i32 1073741824, i32 23124 }, [44 x i8] zeroinitializer }, align 32
@xenon_emmc_5_1_phy_regs = internal global { %struct.xenon_emmc_phy_regs, [44 x i8] } { %struct.xenon_emmc_phy_regs { i16 368, i16 372, i16 376, i16 384, i16 388, i16 392, i32 8388608, i32 11176311 }, [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"marvell,xenon-phy-slow-mode\00", [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"marvell,xenon-phy-znr\00", [42 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"marvell,xenon-phy-zpr\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"marvell,xenon-phy-nr-success-tun\00", [63 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"marvell,xenon-phy-tun-step-divider\00", [61 x i8] zeroinitializer }, align 32
@get_dt_pad_ctrl_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 667, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Unable to find SoC PAD ctrl register address for %pOFn\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"get_dt_pad_ctrl_data\00", [43 x i8] zeroinitializer }, align 32
@get_dt_pad_ctrl_data._entry_ptr = internal global ptr @get_dt_pad_ctrl_data._entry, section ".printk_index", align 4
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"marvell,pad-type\00", [47 x i8] zeroinitializer }, align 32
@get_dt_pad_ctrl_data._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.29, ptr @.str.4, i32 678, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Unable to determine SoC PHY PAD ctrl type\0A\00", [53 x i8] zeroinitializer }, align 32
@get_dt_pad_ctrl_data._entry_ptr.33 = internal global ptr @get_dt_pad_ctrl_data._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"sd\00", [29 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fixed-1-8v\00", [21 x i8] zeroinitializer }, align 32
@get_dt_pad_ctrl_data._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.29, ptr @.str.4, i32 687, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unsupported SoC PHY PAD ctrl type %s\0A\00", [58 x i8] zeroinitializer }, align 32
@get_dt_pad_ctrl_data._entry_ptr.38 = internal global ptr @get_dt_pad_ctrl_data._entry.36, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.39 = internal global [5 x i64] [i64 3, i64 8, i64 7, i64 8, i64 10]
@__sancov_gen_cov_switch_values.40 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 844, i32 40 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 847, i32 34 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 553, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 647, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 268, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 766, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 449, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 364, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 395, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [10 x i8] c"phy_types\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 135, i32 27 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 827, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 136, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant [24 x i8] c"xenon_emmc_5_0_phy_regs\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 161, i32 35 }
@___asan_gen_.133 = private unnamed_addr constant [24 x i8] c"xenon_emmc_5_1_phy_regs\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 172, i32 35 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 701, i32 37 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 705, i32 37 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 709, i32 37 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 713, i32 37 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 718, i32 37 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 666, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 676, i32 36 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 678, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 681, i32 20 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 683, i32 27 }
@___asan_gen_.175 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.179 = private constant [38 x i8] c"../drivers/mmc/host/sdhci-xenon-phy.c\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 686, i32 3 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @get_dt_pad_ctrl_data._entry, ptr @get_dt_pad_ctrl_data._entry.31, ptr @get_dt_pad_ctrl_data._entry.36, ptr @get_dt_pad_ctrl_data._entry_ptr, ptr @get_dt_pad_ctrl_data._entry_ptr.33, ptr @get_dt_pad_ctrl_data._entry_ptr.38, ptr @xenon_add_phy._entry, ptr @xenon_add_phy._entry_ptr, ptr @xenon_emmc_phy_config_tuning._entry, ptr @xenon_emmc_phy_config_tuning._entry_ptr, ptr @xenon_emmc_phy_enable_dll._entry, ptr @xenon_emmc_phy_enable_dll._entry_ptr, ptr @xenon_emmc_phy_init._entry, ptr @xenon_emmc_phy_init._entry_ptr, ptr @xenon_hs_delay_adj._entry, ptr @xenon_hs_delay_adj._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @phy_types, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @xenon_emmc_5_0_phy_regs, ptr @xenon_emmc_5_1_phy_regs, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.37], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xenon_emmc_phy_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xenon_hs_delay_adj._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xenon_emmc_phy_enable_dll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xenon_emmc_phy_config_tuning._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_types to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xenon_add_phy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xenon_emmc_5_0_phy_regs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xenon_emmc_5_1_phy_regs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_dt_pad_ctrl_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_dt_pad_ctrl_data._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_dt_pad_ctrl_data._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xenon_soc_pad_ctrl(ptr noundef %host, i8 noundef zeroext %signal_voltage) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_params.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13
  %0 = ptrtoint ptr %phy_params.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_params.i, align 4
  %pad_ctrl.i = getelementptr inbounds %struct.xenon_emmc_phy_params, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %pad_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pad_ctrl.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.xenon_emmc_phy_set_soc_pad.exit_crit_edge, label %if.end.i

entry.xenon_emmc_phy_set_soc_pad.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %xenon_emmc_phy_set_soc_pad.exit

if.end.i:                                         ; preds = %entry
  %set_soc_pad.i = getelementptr inbounds %struct.xenon_emmc_phy_params, ptr %1, i32 0, i32 5, i32 2
  %4 = ptrtoint ptr %set_soc_pad.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_soc_pad.i, align 4
  %tobool3.not.i = icmp eq ptr %5, null
  br i1 %tobool3.not.i, label %if.end.i.xenon_emmc_phy_set_soc_pad.exit_crit_edge, label %if.then4.i

if.end.i.xenon_emmc_phy_set_soc_pad.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xenon_emmc_phy_set_soc_pad.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %5(ptr noundef %host, i8 noundef zeroext %signal_voltage) #6
  br label %xenon_emmc_phy_set_soc_pad.exit

xenon_emmc_phy_set_soc_pad.exit:                  ; preds = %if.then4.i, %if.end.i.xenon_emmc_phy_set_soc_pad.exit_crit_edge, %entry.xenon_emmc_phy_set_soc_pad.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xenon_phy_adj(ptr noundef %host, ptr nocapture noundef readonly %ios) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i55 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  %clock = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 22
  %0 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %clock2 = getelementptr inbounds %struct.xenon_priv, ptr %private.i55, i32 0, i32 5
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %clock2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %clock2, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %clock2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %clock2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %4)
  %cmp = icmp eq i32 %1, %4
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end
  %bus_width = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 6
  %5 = ptrtoint ptr %bus_width to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bus_width, align 1
  %bus_width5 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 23
  %7 = ptrtoint ptr %bus_width5 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bus_width5, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %8)
  %cmp7 = icmp eq i8 %6, %8
  br i1 %cmp7, label %land.lhs.true9, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

land.lhs.true9:                                   ; preds = %land.lhs.true
  %timing = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 7
  %9 = ptrtoint ptr %timing to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %timing, align 4
  %timing11 = getelementptr inbounds %struct.xenon_priv, ptr %private.i55, i32 0, i32 4
  %11 = ptrtoint ptr %timing11 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %timing11, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %12)
  %cmp13 = icmp eq i8 %10, %12
  br i1 %cmp13, label %land.lhs.true9.cleanup_crit_edge, label %land.lhs.true9.if.end16_crit_edge

land.lhs.true9.if.end16_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

land.lhs.true9.cleanup_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %land.lhs.true9.if.end16_crit_edge, %land.lhs.true.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %timing17 = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 7
  %13 = ptrtoint ptr %timing17 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %timing17, align 4
  tail call fastcc void @xenon_emmc_phy_set(ptr noundef %host, i8 noundef zeroext %14)
  %bus_width18 = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 6
  %15 = ptrtoint ptr %bus_width18 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bus_width18, align 1
  %bus_width19 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 23
  %17 = ptrtoint ptr %bus_width19 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %bus_width19, align 4
  %18 = ptrtoint ptr %timing17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %timing17, align 4
  %timing21 = getelementptr inbounds %struct.xenon_priv, ptr %private.i55, i32 0, i32 4
  %20 = ptrtoint ptr %timing21 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %timing21, align 1
  %21 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %clock, align 4
  %23 = ptrtoint ptr %clock2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %clock2, align 4
  %24 = load i8, ptr %timing17, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp26 = icmp ne i8 %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000, i32 %22)
  %cmp31 = icmp ugt i32 %22, 400000
  %or.cond = select i1 %cmp26, i1 %cmp31, i1 false
  br i1 %or.cond, label %if.end21.i, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end21.i:                                       ; preds = %if.end16
  %timing.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 64
  %25 = ptrtoint ptr %timing.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %timing.i, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values)
  switch i32 %26, label %if.end21.i.cleanup_crit_edge [
    i32 10, label %sw.bb.i
    i32 9, label %if.end21.i.sw.bb22.i_crit_edge
    i32 6, label %if.end21.i.sw.bb22.i_crit_edge56
    i32 8, label %if.end21.i.do.body24.i_crit_edge
    i32 7, label %if.end21.i.do.body24.i_crit_edge57
  ]

if.end21.i.do.body24.i_crit_edge57:               ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body24.i

if.end21.i.do.body24.i_crit_edge:                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body24.i

if.end21.i.sw.bb22.i_crit_edge56:                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb22.i

if.end21.i.sw.bb22.i_crit_edge:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb22.i

if.end21.i.cleanup_crit_edge:                     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @xenon_emmc_phy_strobe_delay_adj(ptr noundef %host) #6
  br label %cleanup

sw.bb22.i:                                        ; preds = %if.end21.i.sw.bb22.i_crit_edge, %if.end21.i.sw.bb22.i_crit_edge56
  %phy_params.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13
  %28 = ptrtoint ptr %phy_params.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %phy_params.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52000001, i32 %22)
  %cmp.i.i = icmp ult i32 %22, 52000001
  br i1 %cmp.i.i, label %sw.bb22.i.cleanup_crit_edge, label %if.end.i.i

sw.bb22.i.cleanup_crit_edge:                      ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i:                                       ; preds = %sw.bb22.i
  %call2.i.i = tail call fastcc i32 @xenon_emmc_phy_enable_dll(ptr noundef %host) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %if.end4.i.i, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4.i.i:                                      ; preds = %if.end.i.i
  %ops.i.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %30 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i.i.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %tobool.not.i.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i, !prof !92

if.then.i.i.i:                                    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i = tail call i32 %33(ptr noundef %host, i32 noundef 336) #6
  br label %sdhci_readl.exit.i.i

if.else.i.i.i:                                    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %ioaddr.i.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %34 = ptrtoint ptr %ioaddr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ioaddr.i.i.i, align 16
  %add.ptr.i.i.i = getelementptr i8, ptr %35, i32 336
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !93
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  br label %sdhci_readl.exit.i.i

sdhci_readl.exit.i.i:                             ; preds = %if.else.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %if.then.i.i.i ], [ %37, %if.else.i.i.i ]
  %tun_step_divider.i.i = getelementptr inbounds %struct.xenon_emmc_phy_params, ptr %29, i32 0, i32 4
  %38 = ptrtoint ptr %tun_step_divider.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %tun_step_divider.i.i, align 4
  %conv.i.i = zext i8 %39 to i32
  %div.i.i = udiv i32 %retval.0.i.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %div.i.i)
  %cmp6.i.i = icmp ugt i32 %div.i.i, 15
  br i1 %cmp6.i.i, label %do.end.i.i, label %sdhci_readl.exit.i.i.if.end11.i.i_crit_edge, !prof !95

sdhci_readl.exit.i.i.if.end11.i.i_crit_edge:      ; preds = %sdhci_readl.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i.i

do.end.i.i:                                       ; preds = %sdhci_readl.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %mmc.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %40 = ptrtoint ptr %mmc.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mmc.i.i, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 128
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %43, ptr noundef nonnull @.str.18, i32 noundef %div.i.i) #9
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %do.end.i.i, %sdhci_readl.exit.i.i.if.end11.i.i_crit_edge
  %tuning_step.0.i.i = phi i32 [ 15, %do.end.i.i ], [ %div.i.i, %sdhci_readl.exit.i.i.if.end11.i.i_crit_edge ]
  %44 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops.i.i.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %tobool.not.i39.i.i = icmp eq ptr %47, null
  br i1 %tobool.not.i39.i.i, label %if.else.i44.i.i, label %if.then.i41.i.i, !prof !92

if.then.i41.i.i:                                  ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i40.i.i = tail call i32 %47(ptr noundef %host, i32 noundef 296) #6
  br label %sdhci_readl.exit46.i.i

if.else.i44.i.i:                                  ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %ioaddr.i42.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %48 = ptrtoint ptr %ioaddr.i42.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ioaddr.i42.i.i, align 16
  %add.ptr.i43.i.i = getelementptr i8, ptr %49, i32 296
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i43.i.i) #6, !srcloc !93
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  br label %sdhci_readl.exit46.i.i

sdhci_readl.exit46.i.i:                           ; preds = %if.else.i44.i.i, %if.then.i41.i.i
  %retval.0.i45.i.i = phi i32 [ %call.i40.i.i, %if.then.i41.i.i ], [ %51, %if.else.i44.i.i ]
  %and.i.i = and i32 %retval.0.i45.i.i, -520193
  %nr_tun_times.i.i = getelementptr inbounds %struct.xenon_emmc_phy_params, ptr %29, i32 0, i32 3
  %52 = ptrtoint ptr %nr_tun_times.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %nr_tun_times.i.i, align 1
  %conv13.i.i = zext i8 %53 to i32
  %shl.i.i = shl nuw nsw i32 %conv13.i.i, 16
  %shl15.i.i = shl nuw nsw i32 %tuning_step.0.i.i, 12
  %or.i.i = or i32 %and.i.i, %shl15.i.i
  %or16.i.i = or i32 %or.i.i, %shl.i.i
  %54 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ops.i.i.i, align 4
  %write_l.i.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %write_l.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write_l.i.i.i, align 4
  %tobool.not.i48.i.i = icmp eq ptr %57, null
  br i1 %tobool.not.i48.i.i, label %do.body.i.i.i, label %if.then.i49.i.i, !prof !92

if.then.i49.i.i:                                  ; preds = %sdhci_readl.exit46.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %57(ptr noundef %host, i32 noundef %or16.i.i, i32 noundef 296) #6
  br label %cleanup

do.body.i.i.i:                                    ; preds = %sdhci_readl.exit46.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  tail call void @arm_heavy_mb() #6
  %58 = tail call i32 @llvm.bswap.i32(i32 %or16.i.i) #6
  %ioaddr.i50.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %59 = ptrtoint ptr %ioaddr.i50.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ioaddr.i50.i.i, align 16
  %add.ptr.i51.i.i = getelementptr i8, ptr %60, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51.i.i, i32 %58) #6, !srcloc !97
  br label %cleanup

do.body24.i:                                      ; preds = %if.end21.i.do.body24.i_crit_edge, %if.end21.i.do.body24.i_crit_edge57
  %.b38.i = load i1, ptr @xenon_hs_delay_adj.__print_once, align 1
  br i1 %.b38.i, label %do.body24.i.cleanup_crit_edge, label %if.then26.i

do.body24.i.cleanup_crit_edge:                    ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then26.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @xenon_hs_delay_adj.__print_once, align 1
  %mmc.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %61 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mmc.i, align 8
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 128
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %64, ptr noundef nonnull @.str.11) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then26.i, %do.body24.i.cleanup_crit_edge, %do.body.i.i.i, %if.then.i49.i.i, %if.end.i.i.cleanup_crit_edge, %sw.bb22.i.cleanup_crit_edge, %sw.bb.i, %if.end21.i.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %land.lhs.true9.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %land.lhs.true9.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ], [ 0, %sw.bb.i ], [ 0, %if.then26.i ], [ 0, %do.body24.i.cleanup_crit_edge ], [ 0, %if.end21.i.cleanup_crit_edge ], [ -22, %sw.bb22.i.cleanup_crit_edge ], [ %call2.i.i, %if.end.i.i.cleanup_crit_edge ], [ 0, %if.then.i49.i.i ], [ 0, %do.body.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xenon_emmc_phy_set(ptr noundef %host, i8 noundef zeroext %timing) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i156 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  %phy_params = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13
  %0 = ptrtoint ptr %phy_params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_params, align 4
  %emmc_phy_regs = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 1
  %2 = ptrtoint ptr %emmc_phy_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %emmc_phy_regs, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xenon_emmc_phy_set.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xenon_emmc_phy_set, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !98

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %4 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmc, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xenon_emmc_phy_set.__UNIQUE_ID_ddebug272, ptr noundef %7, ptr noundef nonnull @.str.5) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %pad_ctrl = getelementptr inbounds %struct.xenon_emmc_phy_regs, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %pad_ctrl to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %pad_ctrl, align 4
  %conv = zext i16 %9 to i32
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !92

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 %13(ptr noundef %host, i32 noundef %conv) #6
  br label %sdhci_readl.exit

if.else.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %14 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %15, i32 %conv
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !93
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  br label %sdhci_readl.exit

sdhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i157 = phi i32 [ %call.i, %if.then.i ], [ %17, %if.else.i ]
  %or6 = or i32 %retval.0.i157, 385937408
  %18 = ptrtoint ptr %pad_ctrl to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %pad_ctrl, align 4
  %conv8 = zext i16 %19 to i32
  %20 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i, align 4
  %write_l.i = getelementptr inbounds %struct.sdhci_ops, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i159 = icmp eq ptr %23, null
  br i1 %tobool.not.i159, label %do.body.i, label %if.then.i160, !prof !92

if.then.i160:                                     ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %23(ptr noundef %host, i32 noundef %or6, i32 noundef %conv8) #6
  br label %sdhci_writel.exit

do.body.i:                                        ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  tail call void @arm_heavy_mb() #6
  %24 = tail call i32 @llvm.bswap.i32(i32 %or6) #6
  %ioaddr.i161 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %25 = ptrtoint ptr %ioaddr.i161 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ioaddr.i161, align 16
  %add.ptr.i162 = getelementptr i8, ptr %26, i32 %conv8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i162, i32 %24) #6, !srcloc !97
  br label %sdhci_writel.exit

sdhci_writel.exit:                                ; preds = %do.body.i, %if.then.i160
  %phy_type = getelementptr inbounds %struct.xenon_priv, ptr %private.i156, i32 0, i32 7
  %27 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %phy_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp = icmp eq i32 %28, 0
  %29 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %tobool.not.i164 = icmp eq ptr %32, null
  br i1 %cmp, label %if.then10, label %if.else

if.then10:                                        ; preds = %sdhci_writel.exit
  br i1 %tobool.not.i164, label %if.else.i169, label %if.then.i166, !prof !92

if.then.i166:                                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  %call.i165 = tail call i32 %32(ptr noundef %host, i32 noundef 360) #6
  br label %sdhci_readl.exit171

if.else.i169:                                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  %ioaddr.i167 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %33 = ptrtoint ptr %ioaddr.i167 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ioaddr.i167, align 16
  %add.ptr.i168 = getelementptr i8, ptr %34, i32 360
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i168) #6, !srcloc !93
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  br label %sdhci_readl.exit171

sdhci_readl.exit171:                              ; preds = %if.else.i169, %if.then.i166
  %retval.0.i170 = phi i32 [ %call.i165, %if.then.i166 ], [ %36, %if.else.i169 ]
  %or12 = and i32 %retval.0.i170, -3342337
  %and = or i32 %or12, 3145728
  %37 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops.i, align 4
  %write_l.i173 = getelementptr inbounds %struct.sdhci_ops, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %write_l.i173 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write_l.i173, align 4
  %tobool.not.i174 = icmp eq ptr %40, null
  br i1 %tobool.not.i174, label %do.body.i178, label %if.then.i175, !prof !92

if.then.i175:                                     ; preds = %sdhci_readl.exit171
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %40(ptr noundef %host, i32 noundef %and, i32 noundef 360) #6
  br label %if.end16

do.body.i178:                                     ; preds = %sdhci_readl.exit171
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  tail call void @arm_heavy_mb() #6
  %41 = tail call i32 @llvm.bswap.i32(i32 %and) #6
  %ioaddr.i176 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %42 = ptrtoint ptr %ioaddr.i176 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ioaddr.i176, align 16
  %add.ptr.i177 = getelementptr i8, ptr %43, i32 360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i177, i32 %41) #6, !srcloc !97
  br label %if.end16

if.else:                                          ; preds = %sdhci_writel.exit
  br i1 %tobool.not.i164, label %if.else.i186, label %if.then.i183, !prof !92

if.then.i183:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call.i182 = tail call i32 %32(ptr noundef %host, i32 noundef 380) #6
  br label %sdhci_readl.exit188

if.else.i186:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %ioaddr.i184 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %44 = ptrtoint ptr %ioaddr.i184 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ioaddr.i184, align 16
  %add.ptr.i185 = getelementptr i8, ptr %45, i32 380
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i185) #6, !srcloc !93
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  br label %sdhci_readl.exit188

sdhci_readl.exit188:                              ; preds = %if.else.i186, %if.then.i183
  %retval.0.i187 = phi i32 [ %call.i182, %if.then.i183 ], [ %47, %if.else.i186 ]
  %or14 = and i32 %retval.0.i187, -33489408
  %and15 = or i32 %or14, 33488896
  %48 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops.i, align 4
  %write_l.i190 = getelementptr inbounds %struct.sdhci_ops, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %write_l.i190 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write_l.i190, align 4
  %tobool.not.i191 = icmp eq ptr %51, null
  br i1 %tobool.not.i191, label %do.body.i195, label %if.then.i192, !prof !92

if.then.i192:                                     ; preds = %sdhci_readl.exit188
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %51(ptr noundef %host, i32 noundef %and15, i32 noundef 380) #6
  br label %if.end16

do.body.i195:                                     ; preds = %sdhci_readl.exit188
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  tail call void @arm_heavy_mb() #6
  %52 = tail call i32 @llvm.bswap.i32(i32 %and15) #6
  %ioaddr.i193 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %53 = ptrtoint ptr %ioaddr.i193 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ioaddr.i193, align 16
  %add.ptr.i194 = getelementptr i8, ptr %54, i32 380
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i194, i32 %52) #6, !srcloc !97
  br label %if.end16

if.end16:                                         ; preds = %do.body.i195, %if.then.i192, %do.body.i178, %if.then.i175
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %timing)
  %cmp18 = icmp eq i8 %timing, 0
  br i1 %cmp18, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %call21 = tail call fastcc zeroext i1 @xenon_emmc_phy_slow_mode(ptr noundef %host, i8 noundef zeroext 0)
  br label %phy_init

if.end22:                                         ; preds = %if.end16
  %55 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %3, align 4
  %conv23 = zext i16 %56 to i32
  %57 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ops.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %tobool.not.i198 = icmp eq ptr %60, null
  br i1 %tobool.not.i198, label %if.else.i203, label %if.then.i200, !prof !92

if.then.i200:                                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %call.i199 = tail call i32 %60(ptr noundef %host, i32 noundef %conv23) #6
  br label %sdhci_readl.exit205

if.else.i203:                                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %ioaddr.i201 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %61 = ptrtoint ptr %ioaddr.i201 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ioaddr.i201, align 16
  %add.ptr.i202 = getelementptr i8, ptr %62, i32 %conv23
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i202) #6, !srcloc !93
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  br label %sdhci_readl.exit205

sdhci_readl.exit205:                              ; preds = %if.else.i203, %if.then.i200
  %retval.0.i204 = phi i32 [ %call.i199, %if.then.i200 ], [ %64, %if.else.i203 ]
  %init_card_type = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 22
  %65 = ptrtoint ptr %init_card_type to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %init_card_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %66)
  %cmp25 = icmp eq i32 %66, 2
  %and30 = and i32 %retval.0.i204, -268435457
  %masksel = select i1 %cmp25, i32 268435456, i32 0
  %reg.0 = or i32 %masksel, %and30
  %67 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %3, align 4
  %conv33 = zext i16 %68 to i32
  %69 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ops.i, align 4
  %write_l.i207 = getelementptr inbounds %struct.sdhci_ops, ptr %70, i32 0, i32 3
  %71 = ptrtoint ptr %write_l.i207 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %write_l.i207, align 4
  %tobool.not.i208 = icmp eq ptr %72, null
  br i1 %tobool.not.i208, label %do.body.i212, label %if.then.i209, !prof !92

if.then.i209:                                     ; preds = %sdhci_readl.exit205
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %72(ptr noundef %host, i32 noundef %reg.0, i32 noundef %conv33) #6
  br label %sdhci_writel.exit213

do.body.i212:                                     ; preds = %sdhci_readl.exit205
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  tail call void @arm_heavy_mb() #6
  %73 = tail call i32 @llvm.bswap.i32(i32 %reg.0) #6
  %ioaddr.i210 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %74 = ptrtoint ptr %ioaddr.i210 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ioaddr.i210, align 16
  %add.ptr.i211 = getelementptr i8, ptr %75, i32 %conv33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i211, i32 %73) #6, !srcloc !97
  br label %sdhci_writel.exit213

sdhci_writel.exit213:                             ; preds = %do.body.i212, %if.then.i209
  %call34 = tail call fastcc zeroext i1 @xenon_emmc_phy_slow_mode(ptr noundef %host, i8 noundef zeroext %timing)
  br i1 %call34, label %sdhci_writel.exit213.phy_init_crit_edge, label %if.end36

sdhci_writel.exit213.phy_init_crit_edge:          ; preds = %sdhci_writel.exit213
  call void @__sanitizer_cov_trace_pc() #8
  br label %phy_init

if.end36:                                         ; preds = %sdhci_writel.exit213
  %pad_ctrl2 = getelementptr inbounds %struct.xenon_emmc_phy_regs, ptr %3, i32 0, i32 3
  %76 = ptrtoint ptr %pad_ctrl2 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %pad_ctrl2, align 2
  %conv37 = zext i16 %77 to i32
  %78 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ops.i, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 4
  %tobool.not.i215 = icmp eq ptr %81, null
  br i1 %tobool.not.i215, label %if.else.i220, label %if.then.i217, !prof !92

if.then.i217:                                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %call.i216 = tail call i32 %81(ptr noundef %host, i32 noundef %conv37) #6
  br label %sdhci_readl.exit222

if.else.i220:                                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %ioaddr.i218 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %82 = ptrtoint ptr %ioaddr.i218 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ioaddr.i218, align 16
  %add.ptr.i219 = getelementptr i8, ptr %83, i32 %conv37
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i219) #6, !srcloc !93
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  br label %sdhci_readl.exit222

sdhci_readl.exit222:                              ; preds = %if.else.i220, %if.then.i217
  %retval.0.i221 = phi i32 [ %call.i216, %if.then.i217 ], [ %85, %if.else.i220 ]
  %and39 = and i32 %retval.0.i221, -7968
  %znr = getelementptr inbounds %struct.xenon_emmc_phy_params, ptr %1, i32 0, i32 1
  %86 = ptrtoint ptr %znr to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %znr, align 1
  %conv40 = zext i8 %87 to i32
  %shl = shl nuw nsw i32 %conv40, 8
  %zpr = getelementptr inbounds %struct.xenon_emmc_phy_params, ptr %1, i32 0, i32 2
  %88 = ptrtoint ptr %zpr to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %zpr, align 2
  %conv41 = zext i8 %89 to i32
  %or42 = or i32 %and39, %conv41
  %or43 = or i32 %or42, %shl
  %90 = ptrtoint ptr %pad_ctrl2 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %pad_ctrl2, align 2
  %conv45 = zext i16 %91 to i32
  %92 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ops.i, align 4
  %write_l.i224 = getelementptr inbounds %struct.sdhci_ops, ptr %93, i32 0, i32 3
  %94 = ptrtoint ptr %write_l.i224 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %write_l.i224, align 4
  %tobool.not.i225 = icmp eq ptr %95, null
  br i1 %tobool.not.i225, label %do.body.i229, label %if.then.i226, !prof !92

if.then.i226:                                     ; preds = %sdhci_readl.exit222
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %95(ptr noundef %host, i32 noundef %or43, i32 noundef %conv45) #6
  br label %sdhci_writel.exit230

do.body.i229:                                     ; preds = %sdhci_readl.exit222
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  tail call void @arm_heavy_mb() #6
  %96 = tail call i32 @llvm.bswap.i32(i32 %or43) #6
  %ioaddr.i227 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %97 = ptrtoint ptr %ioaddr.i227 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ioaddr.i227, align 16
  %add.ptr.i228 = getelementptr i8, ptr %98, i32 %conv45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i228, i32 %96) #6, !srcloc !97
  br label %sdhci_writel.exit230

sdhci_writel.exit230:                             ; preds = %do.body.i229, %if.then.i226
  %99 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ops.i, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %100, align 4
  %tobool.not.i232 = icmp eq ptr %102, null
  br i1 %tobool.not.i232, label %if.else.i237, label %if.then.i234, !prof !92

if.then.i234:                                     ; preds = %sdhci_writel.exit230
  call void @__sanitizer_cov_trace_pc() #8
  %call.i233 = tail call i32 %102(ptr noundef %host, i32 noundef 44) #6
  br label %sdhci_readl.exit239

if.else.i237:                                     ; preds = %sdhci_writel.exit230
  call void @__sanitizer_cov_trace_pc() #8
  %ioaddr.i235 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %103 = ptrtoint ptr %ioaddr.i235 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ioaddr.i235, align 16
  %add.ptr.i236 = getelementptr i8, ptr %104, i32 44
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i236) #6, !srcloc !93
  %106 = tail call i32 @llvm.bswap.i32(i32 %105) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  br label %sdhci_readl.exit239

sdhci_readl.exit239:                              ; preds = %if.else.i237, %if.then.i234
  %retval.0.i238 = phi i32 [ %call.i233, %if.then.i234 ], [ %106, %if.else.i237 ]
  %107 = trunc i32 %retval.0.i238 to i16
  %conv48 = and i16 %107, -5
  %108 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ops.i, align 4
  %write_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %109, i32 0, i32 4
  %110 = ptrtoint ptr %write_w.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %write_w.i, align 4
  %tobool.not.i241 = icmp eq ptr %111, null
  br i1 %tobool.not.i241, label %do.body.i245, label %if.then.i242, !prof !92

if.then.i242:                                     ; preds = %sdhci_readl.exit239
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %111(ptr noundef %host, i16 noundef zeroext %conv48, i32 noundef 44) #6
  br label %sdhci_writew.exit

do.body.i245:                                     ; preds = %sdhci_readl.exit239
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  tail call void @arm_heavy_mb() #6
  %112 = tail call i16 @llvm.bswap.i16(i16 %conv48) #6
  %ioaddr.i243 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %113 = ptrtoint ptr %ioaddr.i243 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ioaddr.i243, align 16
  %add.ptr.i244 = getelementptr i8, ptr %114, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i244, i16 %112) #6, !srcloc !100
  br label %sdhci_writew.exit

sdhci_writew.exit:                                ; preds = %do.body.i245, %if.then.i242
  %func_ctrl = getelementptr inbounds %struct.xenon_emmc_phy_regs, ptr %3, i32 0, i32 1
  %115 = ptrtoint ptr %func_ctrl to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %func_ctrl, align 2
  %conv49 = zext i16 %116 to i32
  %117 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ops.i, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %118, align 4
  %tobool.not.i247 = icmp eq ptr %120, null
  br i1 %tobool.not.i247, label %if.else.i252, label %if.then.i249, !prof !92

if.then.i249:                                     ; preds = %sdhci_writew.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i248 = tail call i32 %120(ptr noundef %host, i32 noundef %conv49) #6
  br label %sdhci_readl.exit254

if.else.i252:                                     ; preds = %sdhci_writew.exit
  call void @__sanitizer_cov_trace_pc() #8
  %ioaddr.i250 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %121 = ptrtoint ptr %ioaddr.i250 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ioaddr.i250, align 16
  %add.ptr.i251 = getelementptr i8, ptr %122, i32 %conv49
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i251) #6, !srcloc !93
  %124 = tail call i32 @llvm.bswap.i32(i32 %123) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  br label %sdhci_readl.exit254

sdhci_readl.exit254:                              ; preds = %if.else.i252, %if.then.i249
  %retval.0.i253 = phi i32 [ %call.i248, %if.then.i249 ], [ %124, %if.else.i252 ]
  %125 = zext i8 %timing to i64
  call void @__sanitizer_cov_trace_switch(i64 %125, ptr @__sancov_gen_cov_switch_values.39)
  switch i8 %timing, label %sw.default [
    i8 10, label %sw.bb
    i8 7, label %sdhci_readl.exit254.sw.bb54_crit_edge
    i8 8, label %sdhci_readl.exit254.sw.bb54_crit_edge308
  ]

sdhci_readl.exit254.sw.bb54_crit_edge308:         ; preds = %sdhci_readl.exit254
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb54

sdhci_readl.exit254.sw.bb54_crit_edge:            ; preds = %sdhci_readl.exit254
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb54

sw.bb:                                            ; preds = %sdhci_readl.exit254
  call void @__sanitizer_cov_trace_pc() #8
  %or52 = and i32 %retval.0.i253, -130833
  %and53 = or i32 %or52, 130816
  br label %sw.epilog

sw.bb54:                                          ; preds = %sdhci_readl.exit254.sw.bb54_crit_edge, %sdhci_readl.exit254.sw.bb54_crit_edge308
  %or55 = or i32 %retval.0.i253, 130832
  br label %sw.epilog

sw.default:                                       ; preds = %sdhci_readl.exit254
  call void @__sanitizer_cov_trace_pc() #8
  %and56 = and i32 %retval.0.i253, -130833
  %or57 = or i32 %and56, 16
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb54, %sw.bb
  %reg.1 = phi i32 [ %or57, %sw.default ], [ %or55, %sw.bb54 ], [ %and53, %sw.bb ]
  %126 = ptrtoint ptr %func_ctrl to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %func_ctrl, align 2
  %conv59 = zext i16 %127 to i32
  %128 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ops.i, align 4
  %write_l.i256 = getelementptr inbounds %struct.sdhci_ops, ptr %129, i32 0, i32 3
  %130 = ptrtoint ptr %write_l.i256 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %write_l.i256, align 4
  %tobool.not.i257 = icmp eq ptr %131, null
  br i1 %tobool.not.i257, label %do.body.i261, label %if.then.i258, !prof !92

if.then.i258:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %131(ptr noundef %host, i32 noundef %reg.1, i32 noundef %conv59) #6
  br label %sdhci_writel.exit262

do.body.i261:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  tail call void @arm_heavy_mb() #6
  %132 = tail call i32 @llvm.bswap.i32(i32 %reg.1) #6
  %ioaddr.i259 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %133 = ptrtoint ptr %ioaddr.i259 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ioaddr.i259, align 16
  %add.ptr.i260 = getelementptr i8, ptr %134, i32 %conv59
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i260, i32 %132) #6, !srcloc !97
  br label %sdhci_writel.exit262

sdhci_writel.exit262:                             ; preds = %do.body.i261, %if.then.i258
  %135 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %ops.i, align 4
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %136, align 4
  %tobool.not.i264 = icmp eq ptr %138, null
  br i1 %tobool.not.i264, label %if.else.i269, label %if.then.i266, !prof !92

if.then.i266:                                     ; preds = %sdhci_writel.exit262
  call void @__sanitizer_cov_trace_pc() #8
  %call.i265 = tail call i32 %138(ptr noundef %host, i32 noundef 44) #6
  br label %sdhci_readl.exit271

if.else.i269:                                     ; preds = %sdhci_writel.exit262
  call void @__sanitizer_cov_trace_pc() #8
  %ioaddr.i267 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %139 = ptrtoint ptr %ioaddr.i267 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %ioaddr.i267, align 16
  %add.ptr.i268 = getelementptr i8, ptr %140, i32 44
  %141 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i268) #6, !srcloc !93
  %142 = tail call i32 @llvm.bswap.i32(i32 %141) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  br label %sdhci_readl.exit271

sdhci_readl.exit271:                              ; preds = %if.else.i269, %if.then.i266
  %retval.0.i270 = phi i32 [ %call.i265, %if.then.i266 ], [ %142, %if.else.i269 ]
  %143 = trunc i32 %retval.0.i270 to i16
  %conv62 = or i16 %143, 4
  %144 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %ops.i, align 4
  %write_w.i273 = getelementptr inbounds %struct.sdhci_ops, ptr %145, i32 0, i32 4
  %146 = ptrtoint ptr %write_w.i273 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %write_w.i273, align 4
  %tobool.not.i274 = icmp eq ptr %147, null
  br i1 %tobool.not.i274, label %do.body.i278, label %if.then.i275, !prof !92

if.then.i275:                                     ; preds = %sdhci_readl.exit271
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %147(ptr noundef %host, i16 noundef zeroext %conv62, i32 noundef 44) #6
  br label %sdhci_writew.exit279

do.body.i278:                                     ; preds = %sdhci_readl.exit271
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  tail call void @arm_heavy_mb() #6
  %148 = tail call i16 @llvm.bswap.i16(i16 %conv62) #6
  %ioaddr.i276 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %149 = ptrtoint ptr %ioaddr.i276 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %ioaddr.i276, align 16
  %add.ptr.i277 = getelementptr i8, ptr %150, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i277, i16 %148) #6, !srcloc !100
  br label %sdhci_writew.exit279

sdhci_writew.exit279:                             ; preds = %do.body.i278, %if.then.i275
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %timing)
  %cmp64 = icmp eq i8 %timing, 10
  br i1 %cmp64, label %if.then66, label %if.else68

if.then66:                                        ; preds = %sdhci_writew.exit279
  %logic_timing_val = getelementptr inbounds %struct.xenon_emmc_phy_regs, ptr %3, i32 0, i32 7
  %151 = ptrtoint ptr %logic_timing_val to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %logic_timing_val, align 4
  %logic_timing_adj = getelementptr inbounds %struct.xenon_emmc_phy_regs, ptr %3, i32 0, i32 5
  %153 = ptrtoint ptr %logic_timing_adj to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %logic_timing_adj, align 2
  %conv67 = zext i16 %154 to i32
  %155 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %ops.i, align 4
  %write_l.i281 = getelementptr inbounds %struct.sdhci_ops, ptr %156, i32 0, i32 3
  %157 = ptrtoint ptr %write_l.i281 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %write_l.i281, align 4
  %tobool.not.i282 = icmp eq ptr %158, null
  br i1 %tobool.not.i282, label %do.body.i286, label %if.then.i283, !prof !92

if.then.i283:                                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %158(ptr noundef %host, i32 noundef %152, i32 noundef %conv67) #6
  br label %phy_init

do.body.i286:                                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  tail call void @arm_heavy_mb() #6
  %159 = tail call i32 @llvm.bswap.i32(i32 %152) #6
  %ioaddr.i284 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %160 = ptrtoint ptr %ioaddr.i284 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %ioaddr.i284, align 16
  %add.ptr.i285 = getelementptr i8, ptr %161, i32 %conv67
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i285, i32 %159) #6, !srcloc !97
  br label %phy_init

if.else68:                                        ; preds = %sdhci_writew.exit279
  %162 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %ops.i, align 4
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %163, align 4
  %tobool.not.i.i = icmp eq ptr %165, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !prof !92

if.then.i.i:                                      ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = tail call i32 %165(ptr noundef %host, i32 noundef 304) #6
  br label %sdhci_readl.exit.i

if.else.i.i:                                      ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #8
  %ioaddr.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %166 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %ioaddr.i.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %167, i32 304
  %168 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !93
  %169 = tail call i32 @llvm.bswap.i32(i32 %168) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  br label %sdhci_readl.exit.i

sdhci_readl.exit.i:                               ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %169, %if.else.i.i ]
  %and.i = and i32 %retval.0.i.i, -50331649
  %170 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %ops.i, align 4
  %write_l.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %171, i32 0, i32 3
  %172 = ptrtoint ptr %write_l.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %write_l.i.i, align 4
  %tobool.not.i20.i = icmp eq ptr %173, null
  br i1 %tobool.not.i20.i, label %do.body.i.i, label %if.then.i21.i, !prof !92

if.then.i21.i:                                    ; preds = %sdhci_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %173(ptr noundef %host, i32 noundef %and.i, i32 noundef 304) #6
  br label %sdhci_writel.exit.i

do.body.i.i:                                      ; preds = %sdhci_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  tail call void @arm_heavy_mb() #6
  %174 = tail call i32 @llvm.bswap.i32(i32 %and.i) #6
  %ioaddr.i22.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %175 = ptrtoint ptr %ioaddr.i22.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %ioaddr.i22.i, align 16
  %add.ptr.i23.i = getelementptr i8, ptr %176, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i, i32 %174) #6, !srcloc !97
  br label %sdhci_writel.exit.i

sdhci_writel.exit.i:                              ; preds = %do.body.i.i, %if.then.i21.i
  %177 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %phy_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %cmp.i = icmp eq i32 %178, 0
  %179 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %ops.i, align 4
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %180, align 4
  %tobool.not.i25.i = icmp eq ptr %182, null
  br i1 %cmp.i, label %if.then.i288, label %if.else.i289

if.then.i288:                                     ; preds = %sdhci_writel.exit.i
  br i1 %tobool.not.i25.i, label %if.else.i30.i, label %if.then.i27.i, !prof !92

if.then.i27.i:                                    ; preds = %if.then.i288
  call void @__sanitizer_cov_trace_pc() #8
  %call.i26.i = tail call i32 %182(ptr noundef %host, i32 noundef 360) #6
  br label %sdhci_readl.exit32.i

if.else.i30.i:                                    ; preds = %if.then.i288
  call void @__sanitizer_cov_trace_pc() #8
  %ioaddr.i28.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %183 = ptrtoint ptr %ioaddr.i28.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %ioaddr.i28.i, align 16
  %add.ptr.i29.i = getelementptr i8, ptr %184, i32 360
  %185 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i) #6, !srcloc !93
  %186 = tail call i32 @llvm.bswap.i32(i32 %185) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  br label %sdhci_readl.exit32.i

sdhci_readl.exit32.i:                             ; preds = %if.else.i30.i, %if.then.i27.i
  %retval.0.i31.i = phi i32 [ %call.i26.i, %if.then.i27.i ], [ %186, %if.else.i30.i ]
  %and4.i = and i32 %retval.0.i31.i, -4456449
  %187 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %ops.i, align 4
  %write_l.i34.i = getelementptr inbounds %struct.sdhci_ops, ptr %188, i32 0, i32 3
  %189 = ptrtoint ptr %write_l.i34.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %write_l.i34.i, align 4
  %tobool.not.i35.i = icmp eq ptr %190, null
  br i1 %tobool.not.i35.i, label %do.body.i39.i, label %if.then.i36.i, !prof !92

if.then.i36.i:                                    ; preds = %sdhci_readl.exit32.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %190(ptr noundef %host, i32 noundef %and4.i, i32 noundef 360) #6
  br label %phy_init

do.body.i39.i:                                    ; preds = %sdhci_readl.exit32.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  tail call void @arm_heavy_mb() #6
  %191 = tail call i32 @llvm.bswap.i32(i32 %and4.i) #6
  %ioaddr.i37.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %192 = ptrtoint ptr %ioaddr.i37.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %ioaddr.i37.i, align 16
  %add.ptr.i38.i = getelementptr i8, ptr %193, i32 360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38.i, i32 %191) #6, !srcloc !97
  br label %phy_init

if.else.i289:                                     ; preds = %sdhci_writel.exit.i
  br i1 %tobool.not.i25.i, label %if.else.i47.i, label %if.then.i44.i, !prof !92

if.then.i44.i:                                    ; preds = %if.else.i289
  call void @__sanitizer_cov_trace_pc() #8
  %call.i43.i = tail call i32 %182(ptr noundef %host, i32 noundef 380) #6
  br label %sdhci_readl.exit49.i

if.else.i47.i:                                    ; preds = %if.else.i289
  call void @__sanitizer_cov_trace_pc() #8
  %ioaddr.i45.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %194 = ptrtoint ptr %ioaddr.i45.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %ioaddr.i45.i, align 16
  %add.ptr.i46.i = getelementptr i8, ptr %195, i32 380
  %196 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i46.i) #6, !srcloc !93
  %197 = tail call i32 @llvm.bswap.i32(i32 %196) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  br label %sdhci_readl.exit49.i

sdhci_readl.exit49.i:                             ; preds = %if.else.i47.i, %if.then.i44.i
  %retval.0.i48.i = phi i32 [ %call.i43.i, %if.then.i44.i ], [ %197, %if.else.i47.i ]
  %and6.i = and i32 %retval.0.i48.i, -33554945
  %198 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %ops.i, align 4
  %write_l.i51.i = getelementptr inbounds %struct.sdhci_ops, ptr %199, i32 0, i32 3
  %200 = ptrtoint ptr %write_l.i51.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %write_l.i51.i, align 4
  %tobool.not.i52.i = icmp eq ptr %201, null
  br i1 %tobool.not.i52.i, label %do.body.i56.i, label %if.then.i53.i, !prof !92

if.then.i53.i:                                    ; preds = %sdhci_readl.exit49.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %201(ptr noundef %host, i32 noundef %and6.i, i32 noundef 380) #6
  br label %phy_init

do.body.i56.i:                                    ; preds = %sdhci_readl.exit49.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  tail call void @arm_heavy_mb() #6
  %202 = tail call i32 @llvm.bswap.i32(i32 %and6.i) #6
  %ioaddr.i54.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %203 = ptrtoint ptr %ioaddr.i54.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %ioaddr.i54.i, align 16
  %add.ptr.i55.i = getelementptr i8, ptr %204, i32 380
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55.i, i32 %202) #6, !srcloc !97
  br label %phy_init

phy_init:                                         ; preds = %do.body.i56.i, %if.then.i53.i, %do.body.i39.i, %if.then.i36.i, %do.body.i286, %if.then.i283, %sdhci_writel.exit213.phy_init_crit_edge, %if.then20
  %205 = ptrtoint ptr %emmc_phy_regs to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %emmc_phy_regs, align 4
  %207 = ptrtoint ptr %206 to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %206, align 4
  %conv.i = zext i16 %208 to i32
  %209 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %ops.i, align 4
  %211 = ptrtoint ptr %210 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %210, align 4
  %tobool.not.i.i291 = icmp eq ptr %212, null
  br i1 %tobool.not.i.i291, label %if.else.i.i296, label %if.then.i.i293, !prof !92

if.then.i.i293:                                   ; preds = %phy_init
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i292 = tail call i32 %212(ptr noundef %host, i32 noundef %conv.i) #6
  br label %sdhci_readl.exit.i299

if.else.i.i296:                                   ; preds = %phy_init
  call void @__sanitizer_cov_trace_pc() #8
  %ioaddr.i.i294 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %213 = ptrtoint ptr %ioaddr.i.i294 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %ioaddr.i.i294, align 16
  %add.ptr.i.i295 = getelementptr i8, ptr %214, i32 %conv.i
  %215 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i295) #6, !srcloc !93
  %216 = tail call i32 @llvm.bswap.i32(i32 %215) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  br label %sdhci_readl.exit.i299

sdhci_readl.exit.i299:                            ; preds = %if.else.i.i296, %if.then.i.i293
  %retval.0.i.i297 = phi i32 [ %call.i.i292, %if.then.i.i293 ], [ %216, %if.else.i.i296 ]
  %or.i = or i32 %retval.0.i.i297, -2147483648
  %217 = ptrtoint ptr %206 to i32
  call void @__asan_load2_noabort(i32 %217)
  %218 = load i16, ptr %206, align 4
  %conv4.i = zext i16 %218 to i32
  %219 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %ops.i, align 4
  %write_l.i.i298 = getelementptr inbounds %struct.sdhci_ops, ptr %220, i32 0, i32 3
  %221 = ptrtoint ptr %write_l.i.i298 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %write_l.i.i298, align 4
  %tobool.not.i3.i = icmp eq ptr %222, null
  br i1 %tobool.not.i3.i, label %do.body.i.i300, label %if.then.i4.i, !prof !92

if.then.i4.i:                                     ; preds = %sdhci_readl.exit.i299
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %222(ptr noundef %host, i32 noundef %or.i, i32 noundef %conv4.i) #6
  br label %sdhci_writel.exit.i304

do.body.i.i300:                                   ; preds = %sdhci_readl.exit.i299
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  tail call void @arm_heavy_mb() #6
  %223 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %ioaddr.i5.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %224 = ptrtoint ptr %ioaddr.i5.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %ioaddr.i5.i, align 16
  %add.ptr.i6.i = getelementptr i8, ptr %225, i32 %conv4.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %223) #6, !srcloc !97
  br label %sdhci_writel.exit.i304

sdhci_writel.exit.i304:                           ; preds = %do.body.i.i300, %if.then.i4.i
  %and.i301 = and i32 %retval.0.i.i297, 15
  %shr5.i = lshr i32 %retval.0.i.i297, 4
  %and6.i302 = and i32 %shr5.i, 15
  %add.i = add nuw nsw i32 %and6.i302, %and.i301
  %shr7.i = lshr i32 %retval.0.i.i297, 8
  %and8.i = and i32 %shr7.i, 15
  %add9.i = add nuw nsw i32 %add.i, %and8.i
  %shr10.i = lshr i32 %retval.0.i.i297, 12
  %and11.i = and i32 %shr10.i, 15
  %add12.i = add nuw nsw i32 %add9.i, %and11.i
  %add13.i = shl nuw nsw i32 %add12.i, 20
  %shl.i = add nuw nsw i32 %add13.i, 8388608
  %clock14.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 22
  %226 = ptrtoint ptr %clock14.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %clock14.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %227)
  %tobool.not.i303 = icmp eq i32 %227, 0
  %spec.store.select.i = select i1 %tobool.not.i303, i32 100000, i32 %227
  %div.i = udiv i32 %shl.i, %spec.store.select.i
  %inc.i = add nuw nsw i32 %div.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %228 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %228(i32 noundef %inc.i) #6
  %229 = ptrtoint ptr %206 to i32
  call void @__asan_load2_noabort(i32 %229)
  %230 = load i16, ptr %206, align 4
  %conv20.i = zext i16 %230 to i32
  %231 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %ops.i, align 4
  %233 = ptrtoint ptr %232 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %232, align 4
  %tobool.not.i8.i = icmp eq ptr %234, null
  br i1 %tobool.not.i8.i, label %if.else.i13.i, label %if.then.i10.i, !prof !92

if.then.i10.i:                                    ; preds = %sdhci_writel.exit.i304
  call void @__sanitizer_cov_trace_pc() #8
  %call.i9.i = tail call i32 %234(ptr noundef %host, i32 noundef %conv20.i) #6
  br label %sdhci_readl.exit15.i

if.else.i13.i:                                    ; preds = %sdhci_writel.exit.i304
  call void @__sanitizer_cov_trace_pc() #8
  %ioaddr.i11.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %235 = ptrtoint ptr %ioaddr.i11.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %ioaddr.i11.i, align 16
  %add.ptr.i12.i = getelementptr i8, ptr %236, i32 %conv20.i
  %237 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i) #6, !srcloc !93
  %238 = tail call i32 @llvm.bswap.i32(i32 %237) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  br label %sdhci_readl.exit15.i

sdhci_readl.exit15.i:                             ; preds = %if.else.i13.i, %if.then.i10.i
  %retval.0.i14.i = phi i32 [ %call.i9.i, %if.then.i10.i ], [ %238, %if.else.i13.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i14.i)
  %tobool23.not.i = icmp sgt i32 %retval.0.i14.i, -1
  br i1 %tobool23.not.i, label %sdhci_readl.exit15.i.xenon_emmc_phy_init.exit_crit_edge, label %do.end.i

sdhci_readl.exit15.i.xenon_emmc_phy_init.exit_crit_edge: ; preds = %sdhci_readl.exit15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xenon_emmc_phy_init.exit

do.end.i:                                         ; preds = %sdhci_readl.exit15.i
  call void @__sanitizer_cov_trace_pc() #8
  %mmc.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %239 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %mmc.i, align 8
  %241 = ptrtoint ptr %240 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %240, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %242, ptr noundef nonnull @.str.7, i32 noundef %inc.i) #9
  br label %xenon_emmc_phy_init.exit

xenon_emmc_phy_init.exit:                         ; preds = %do.end.i, %sdhci_readl.exit15.i.xenon_emmc_phy_init.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xenon_emmc_phy_set.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xenon_emmc_phy_set, %if.then83)) #6
          to label %do.end88 [label %if.then83], !srcloc !98

if.then83:                                        ; preds = %xenon_emmc_phy_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  %mmc84 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %243 = ptrtoint ptr %mmc84 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %mmc84, align 8
  %245 = ptrtoint ptr %244 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %244, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xenon_emmc_phy_set.__UNIQUE_ID_ddebug273, ptr noundef %246, ptr noundef nonnull @.str.6) #6
  br label %do.end88

do.end88:                                         ; preds = %if.then83, %xenon_emmc_phy_init.exit
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xenon_phy_parse_params(ptr noundef %dev, ptr nocapture noundef %host) local_unnamed_addr #0 align 64 {
entry:
  %phy_type = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phy_type) #6
  %0 = ptrtoint ptr %phy_type to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %phy_type, align 4
  %call = call i32 @device_property_read_string(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull %phy_type) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %phy_type, align 4
  %call1 = call fastcc i32 @xenon_add_phy(ptr noundef %dev, ptr noundef %host, ptr noundef %2)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = call fastcc i32 @xenon_add_phy(ptr noundef %dev, ptr noundef %host, ptr noundef nonnull @.str.1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phy_type) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xenon_add_phy(ptr noundef %dev, ptr nocapture noundef %host, ptr noundef %phy_name) unnamed_addr #0 align 64 {
entry:
  %name.i.i = alloca ptr, align 4
  %iomem.i.i = alloca %struct.resource, align 4
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i19 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  %call2 = tail call i32 @match_string(ptr noundef nonnull @phy_types, i32 noundef 2, ptr noundef %phy_name) #6
  %phy_type = getelementptr inbounds %struct.xenon_priv, ptr %private.i19, i32 0, i32 7
  %0 = ptrtoint ptr %phy_type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call2, ptr %phy_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %1 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mmc, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.20, ptr noundef %phy_name) #9
  %5 = ptrtoint ptr %phy_type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %phy_type, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %mmc.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %6 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmc.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 128
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %9, i32 noundef 20, i32 noundef 3520) #6
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %phy_params.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13
  %10 = ptrtoint ptr %phy_params.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i.i, ptr %phy_params.i, align 4
  %11 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %phy_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i = icmp eq i32 %12, 0
  %emmc_phy_regs.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 1
  %xenon_emmc_5_0_phy_regs.xenon_emmc_5_1_phy_regs.i = select i1 %cmp.i, ptr @xenon_emmc_5_0_phy_regs, ptr @xenon_emmc_5_1_phy_regs
  %13 = ptrtoint ptr %emmc_phy_regs.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %xenon_emmc_5_0_phy_regs.xenon_emmc_5_1_phy_regs.i, ptr %emmc_phy_regs.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #6
  %14 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %value.i, align 4, !annotation !101
  %15 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %call.i.i, align 4
  %call.i.i20 = tail call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.23) #6
  br i1 %call.i.i20, label %if.then.i, label %if.end7.if.end.i22_crit_edge

if.end7.if.end.i22_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i22

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %call.i.i, align 4
  br label %if.end.i22

if.end.i22:                                       ; preds = %if.then.i, %if.end7.if.end.i22_crit_edge
  %znr.i = getelementptr inbounds %struct.xenon_emmc_phy_params, ptr %call.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %znr.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 15, ptr %znr.i, align 1
  %call.i48.i = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.24, ptr noundef nonnull %value.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48.i)
  %tobool.not.i21 = icmp eq i32 %call.i48.i, 0
  br i1 %tobool.not.i21, label %if.then3.i, label %if.end.i22.if.end5.i_crit_edge

if.end.i22.if.end5.i_crit_edge:                   ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %value.i, align 4
  %20 = trunc i32 %19 to i8
  %conv.i = and i8 %20, 31
  %21 = ptrtoint ptr %znr.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv.i, ptr %znr.i, align 1
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i22.if.end5.i_crit_edge
  %zpr.i = getelementptr inbounds %struct.xenon_emmc_phy_params, ptr %call.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %zpr.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 15, ptr %zpr.i, align 2
  %call.i49.i = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.25, ptr noundef nonnull %value.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49.i)
  %tobool7.not.i = icmp eq i32 %call.i49.i, 0
  br i1 %tobool7.not.i, label %if.then8.i, label %if.end5.i.if.end12.i_crit_edge

if.end5.i.if.end12.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %value.i, align 4
  %25 = trunc i32 %24 to i8
  %conv10.i = and i8 %25, 31
  %26 = ptrtoint ptr %zpr.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv10.i, ptr %zpr.i, align 2
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then8.i, %if.end5.i.if.end12.i_crit_edge
  %nr_tun_times.i = getelementptr inbounds %struct.xenon_emmc_phy_params, ptr %call.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %nr_tun_times.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 4, ptr %nr_tun_times.i, align 1
  %call.i50.i = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.26, ptr noundef nonnull %value.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50.i)
  %tobool14.not.i = icmp eq i32 %call.i50.i, 0
  br i1 %tobool14.not.i, label %if.then15.i, label %if.end12.i.if.end19.i_crit_edge

if.end12.i.if.end19.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i

if.then15.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %value.i, align 4
  %30 = trunc i32 %29 to i8
  %conv17.i = and i8 %30, 7
  %31 = ptrtoint ptr %nr_tun_times.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv17.i, ptr %nr_tun_times.i, align 1
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then15.i, %if.end12.i.if.end19.i_crit_edge
  %tun_step_divider.i = getelementptr inbounds %struct.xenon_emmc_phy_params, ptr %call.i.i, i32 0, i32 4
  %32 = ptrtoint ptr %tun_step_divider.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 64, ptr %tun_step_divider.i, align 4
  %call.i51.i = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.27, ptr noundef nonnull %value.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51.i)
  %tobool21.not.i = icmp eq i32 %call.i51.i, 0
  br i1 %tobool21.not.i, label %if.then22.i, label %if.end19.i.if.end26.i_crit_edge

if.end19.i.if.end26.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i

if.then22.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %value.i, align 4
  %conv24.i = trunc i32 %34 to i8
  %35 = ptrtoint ptr %tun_step_divider.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv24.i, ptr %tun_step_divider.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then22.i, %if.end19.i.if.end26.i_crit_edge
  %of_node.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %36 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %of_node.i, align 8
  %tobool27.not.i = icmp eq ptr %37, null
  br i1 %tobool27.not.i, label %if.end26.i.xenon_emmc_phy_parse_params.exit_crit_edge, label %if.then28.i

if.end26.i.xenon_emmc_phy_parse_params.exit_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xenon_emmc_phy_parse_params.exit

if.then28.i:                                      ; preds = %if.end26.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name.i.i) #6
  %38 = ptrtoint ptr %name.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 -1 to ptr), ptr %name.i.i, align 4, !annotation !101
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %iomem.i.i) #6
  %hw_version.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 3
  %39 = call ptr @memset(ptr %iomem.i.i, i32 255, i32 32)
  %40 = ptrtoint ptr %hw_version.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %hw_version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp.i.i = icmp eq i32 %41, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then28.i.get_dt_pad_ctrl_data.exit.i_crit_edge

if.then28.i.get_dt_pad_ctrl_data.exit.i_crit_edge: ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_dt_pad_ctrl_data.exit.i

if.then.i.i:                                      ; preds = %if.then28.i
  %set_soc_pad.i.i = getelementptr inbounds %struct.xenon_emmc_phy_params, ptr %call.i.i, i32 0, i32 5, i32 2
  %42 = ptrtoint ptr %set_soc_pad.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @armada_3700_soc_pad_voltage_set, ptr %set_soc_pad.i.i, align 4
  %call2.i.i = call i32 @of_address_to_resource(ptr noundef nonnull %37, i32 noundef 1, ptr noundef nonnull %iomem.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %if.end4.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mmc.i, align 8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.28, ptr noundef nonnull %37) #9
  br label %get_dt_pad_ctrl_data.exit.i

if.end4.i.i:                                      ; preds = %if.then.i.i
  %pad_ctrl.i.i = getelementptr inbounds %struct.xenon_emmc_phy_params, ptr %call.i.i, i32 0, i32 5
  %47 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mmc.i, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 128
  %call7.i.i = call ptr @devm_ioremap_resource(ptr noundef %50, ptr noundef nonnull %iomem.i.i) #6
  %51 = ptrtoint ptr %pad_ctrl.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call7.i.i, ptr %pad_ctrl.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call7.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then12.i.i, label %if.end16.i.i

if.then12.i.i:                                    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %call7.i.i to i32
  br label %get_dt_pad_ctrl_data.exit.i

if.end16.i.i:                                     ; preds = %if.end4.i.i
  %call17.i.i = call i32 @of_property_read_string(ptr noundef nonnull %37, ptr noundef nonnull @.str.30, ptr noundef nonnull %name.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i)
  %tobool18.not.i.i = icmp eq i32 %call17.i.i, 0
  br i1 %tobool18.not.i.i, label %if.end25.i.i, label %do.end22.i.i

do.end22.i.i:                                     ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mmc.i, align 8
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.32) #9
  br label %get_dt_pad_ctrl_data.exit.i

if.end25.i.i:                                     ; preds = %if.end16.i.i
  %57 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %name.i.i, align 4
  %call26.i.i = call i32 @strcmp(ptr noundef %58, ptr noundef nonnull dereferenceable(3) @.str.34) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i.i)
  %tobool27.not.i.i = icmp eq i32 %call26.i.i, 0
  br i1 %tobool27.not.i.i, label %if.then28.i.i, label %if.else30.i.i

if.then28.i.i:                                    ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %pad_type.i.i = getelementptr inbounds %struct.xenon_emmc_phy_params, ptr %call.i.i, i32 0, i32 5, i32 1
  %59 = ptrtoint ptr %pad_type.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %pad_type.i.i, align 4
  br label %get_dt_pad_ctrl_data.exit.i

if.else30.i.i:                                    ; preds = %if.end25.i.i
  %call31.i.i = call i32 @strcmp(ptr noundef %58, ptr noundef nonnull dereferenceable(11) @.str.35) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i.i)
  %tobool32.not.i.i = icmp eq i32 %call31.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then33.i.i, label %do.end39.i.i

if.then33.i.i:                                    ; preds = %if.else30.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %pad_type35.i.i = getelementptr inbounds %struct.xenon_emmc_phy_params, ptr %call.i.i, i32 0, i32 5, i32 1
  %60 = ptrtoint ptr %pad_type35.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %pad_type35.i.i, align 4
  br label %get_dt_pad_ctrl_data.exit.i

do.end39.i.i:                                     ; preds = %if.else30.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mmc.i, align 8
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.37, ptr noundef %58) #9
  br label %get_dt_pad_ctrl_data.exit.i

get_dt_pad_ctrl_data.exit.i:                      ; preds = %do.end39.i.i, %if.then33.i.i, %if.then28.i.i, %do.end22.i.i, %if.then12.i.i, %do.end.i.i, %if.then28.i.get_dt_pad_ctrl_data.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ -22, %do.end.i.i ], [ %52, %if.then12.i.i ], [ %call17.i.i, %do.end22.i.i ], [ -22, %do.end39.i.i ], [ 0, %if.then28.i.get_dt_pad_ctrl_data.exit.i_crit_edge ], [ 0, %if.then33.i.i ], [ 0, %if.then28.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iomem.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name.i.i) #6
  br label %xenon_emmc_phy_parse_params.exit

xenon_emmc_phy_parse_params.exit:                 ; preds = %get_dt_pad_ctrl_data.exit.i, %if.end26.i.xenon_emmc_phy_parse_params.exit_crit_edge
  %retval.0.i23 = phi i32 [ %retval.0.i.i, %get_dt_pad_ctrl_data.exit.i ], [ 0, %if.end26.i.xenon_emmc_phy_parse_params.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #6
  br label %cleanup

cleanup:                                          ; preds = %xenon_emmc_phy_parse_params.exit, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i23, %xenon_emmc_phy_parse_params.exit ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @xenon_emmc_phy_slow_mode(ptr noundef %host, i8 noundef zeroext %timing) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_params = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13
  %0 = ptrtoint ptr %phy_params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_params, align 4
  %emmc_phy_regs = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 1
  %2 = ptrtoint ptr %emmc_phy_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %emmc_phy_regs, align 4
  %clock = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 22
  %4 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52000000, i32 %5)
  %cmp = icmp ugt i32 %5, 52000000
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %3, align 4
  %conv = zext i16 %7 to i32
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !92

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 %11(ptr noundef %host, i32 noundef %conv) #6
  br label %sdhci_readl.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %12 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %13, i32 %conv
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !93
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  br label %sdhci_readl.exit

sdhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %15, %if.else.i ]
  %16 = zext i8 %timing to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.40)
  switch i8 %timing, label %sdhci_readl.exit.sw.default_crit_edge [
    i8 0, label %sw.bb
    i8 4, label %sdhci_readl.exit.sw.bb6_crit_edge
    i8 3, label %sdhci_readl.exit.sw.bb6_crit_edge41
    i8 2, label %sdhci_readl.exit.sw.bb6_crit_edge42
    i8 1, label %sdhci_readl.exit.sw.bb6_crit_edge43
  ]

sdhci_readl.exit.sw.bb6_crit_edge43:              ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6

sdhci_readl.exit.sw.bb6_crit_edge42:              ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6

sdhci_readl.exit.sw.bb6_crit_edge41:              ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6

sdhci_readl.exit.sw.bb6_crit_edge:                ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6

sdhci_readl.exit.sw.default_crit_edge:            ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default

sw.bb:                                            ; preds = %sdhci_readl.exit
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %1, align 4, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not = icmp eq i8 %18, 0
  br i1 %tobool.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %retval.0.i, 536870912
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %and = and i32 %retval.0.i, -536870913
  br label %sw.epilog

sw.bb6:                                           ; preds = %sdhci_readl.exit.sw.bb6_crit_edge, %sdhci_readl.exit.sw.bb6_crit_edge41, %sdhci_readl.exit.sw.bb6_crit_edge42, %sdhci_readl.exit.sw.bb6_crit_edge43
  %init_card_type = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 22
  %19 = ptrtoint ptr %init_card_type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %init_card_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp7 = icmp eq i32 %20, 2
  br i1 %cmp7, label %sw.bb6.if.then12_crit_edge, label %lor.lhs.false

sw.bb6.if.then12_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

lor.lhs.false:                                    ; preds = %sw.bb6
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %1, align 4, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool10.not = icmp eq i8 %22, 0
  br i1 %tobool10.not, label %lor.lhs.false.sw.default_crit_edge, label %lor.lhs.false.if.then12_crit_edge

lor.lhs.false.if.then12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

lor.lhs.false.sw.default_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default

if.then12:                                        ; preds = %lor.lhs.false.if.then12_crit_edge, %sw.bb6.if.then12_crit_edge
  %or13 = or i32 %retval.0.i, 536870912
  br label %sw.epilog

sw.default:                                       ; preds = %lor.lhs.false.sw.default_crit_edge, %sdhci_readl.exit.sw.default_crit_edge
  %and15 = and i32 %retval.0.i, -536870913
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then12, %if.else, %if.then4
  %reg.0 = phi i32 [ %and15, %sw.default ], [ %or13, %if.then12 ], [ %or, %if.then4 ], [ %and, %if.else ]
  %tobool18 = phi i1 [ false, %sw.default ], [ true, %if.then12 ], [ true, %if.then4 ], [ false, %if.else ]
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %3, align 4
  %conv17 = zext i16 %24 to i32
  %25 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i, align 4
  %write_l.i = getelementptr inbounds %struct.sdhci_ops, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i37 = icmp eq ptr %28, null
  br i1 %tobool.not.i37, label %do.body.i, label %if.then.i38, !prof !92

if.then.i38:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %28(ptr noundef %host, i32 noundef %reg.0, i32 noundef %conv17) #6
  br label %cleanup

do.body.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  tail call void @arm_heavy_mb() #6
  %29 = tail call i32 @llvm.bswap.i32(i32 %reg.0) #6
  %ioaddr.i39 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %30 = ptrtoint ptr %ioaddr.i39 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ioaddr.i39, align 16
  %add.ptr.i40 = getelementptr i8, ptr %31, i32 %conv17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 %29) #6, !srcloc !97
  br label %cleanup

cleanup:                                          ; preds = %do.body.i, %if.then.i38, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ %tobool18, %if.then.i38 ], [ %tobool18, %do.body.i ]
  ret i1 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xenon_emmc_phy_strobe_delay_adj(ptr noundef %host) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i77 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  %timing = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 64
  %0 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %1)
  %cmp.not = icmp eq i32 %1, 10
  br i1 %cmp.not, label %if.end22, label %do.end, !prof !92

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 443, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end22:                                         ; preds = %entry
  %clock = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 22
  %2 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52000001, i32 %3)
  %cmp23 = icmp ult i32 %3, 52000001
  br i1 %cmp23, label %if.end22.cleanup_crit_edge, label %do.body26

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body26:                                        ; preds = %if.end22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xenon_emmc_phy_strobe_delay_adj.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xenon_emmc_phy_strobe_delay_adj, %if.then36)) #6
          to label %do.end39 [label %if.then36], !srcloc !98

if.then36:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %4 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmc, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xenon_emmc_phy_strobe_delay_adj.__UNIQUE_ID_ddebug271, ptr noundef %7, ptr noundef nonnull @.str.15) #6
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %do.body26
  %call40 = tail call fastcc i32 @xenon_emmc_phy_enable_dll(ptr noundef %host)
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !92

if.then.i:                                        ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 %11(ptr noundef %host, i32 noundef 304) #6
  br label %sdhci_readl.exit

if.else.i:                                        ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #8
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %12 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %13, i32 304
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !93
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  br label %sdhci_readl.exit

sdhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i78 = phi i32 [ %call.i, %if.then.i ], [ %15, %if.else.i ]
  %mmc42 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %16 = ptrtoint ptr %mmc42 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmc42, align 8
  %enhanced_strobe = getelementptr inbounds %struct.mmc_host, ptr %17, i32 0, i32 28, i32 10
  %18 = ptrtoint ptr %enhanced_strobe to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %enhanced_strobe, align 1, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool43.not = icmp eq i8 %19, 0
  %spec.select.v = select i1 %tobool43.not, i32 16777216, i32 50331648
  %spec.select = or i32 %spec.select.v, %retval.0.i78
  %20 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i, align 4
  %write_l.i = getelementptr inbounds %struct.sdhci_ops, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i80 = icmp eq ptr %23, null
  br i1 %tobool.not.i80, label %do.body.i, label %if.then.i81, !prof !92

if.then.i81:                                      ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %23(ptr noundef %host, i32 noundef %spec.select, i32 noundef 304) #6
  br label %sdhci_writel.exit

do.body.i:                                        ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  tail call void @arm_heavy_mb() #6
  %24 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #6
  %ioaddr.i82 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %25 = ptrtoint ptr %ioaddr.i82 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ioaddr.i82, align 16
  %add.ptr.i83 = getelementptr i8, ptr %26, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83, i32 %24) #6, !srcloc !97
  br label %sdhci_writel.exit

sdhci_writel.exit:                                ; preds = %do.body.i, %if.then.i81
  %phy_type = getelementptr inbounds %struct.xenon_priv, ptr %private.i77, i32 0, i32 7
  %27 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %phy_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp47 = icmp eq i32 %28, 0
  %29 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %tobool.not.i85 = icmp eq ptr %32, null
  br i1 %cmp47, label %if.then48, label %if.else

if.then48:                                        ; preds = %sdhci_writel.exit
  br i1 %tobool.not.i85, label %if.else.i90, label %if.then.i87, !prof !92

if.then.i87:                                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #8
  %call.i86 = tail call i32 %32(ptr noundef %host, i32 noundef 360) #6
  br label %sdhci_readl.exit92

if.else.i90:                                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #8
  %ioaddr.i88 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %33 = ptrtoint ptr %ioaddr.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ioaddr.i88, align 16
  %add.ptr.i89 = getelementptr i8, ptr %34, i32 360
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i89) #6, !srcloc !93
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  br label %sdhci_readl.exit92

sdhci_readl.exit92:                               ; preds = %if.else.i90, %if.then.i87
  %retval.0.i91 = phi i32 [ %call.i86, %if.then.i87 ], [ %36, %if.else.i90 ]
  %or50 = and i32 %retval.0.i91, -4456449
  %and = or i32 %or50, 262144
  %37 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops.i, align 4
  %write_l.i94 = getelementptr inbounds %struct.sdhci_ops, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %write_l.i94 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write_l.i94, align 4
  %tobool.not.i95 = icmp eq ptr %40, null
  br i1 %tobool.not.i95, label %do.body.i99, label %if.then.i96, !prof !92

if.then.i96:                                      ; preds = %sdhci_readl.exit92
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %40(ptr noundef %host, i32 noundef %and, i32 noundef 360) #6
  br label %cleanup

do.body.i99:                                      ; preds = %sdhci_readl.exit92
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  tail call void @arm_heavy_mb() #6
  %41 = tail call i32 @llvm.bswap.i32(i32 %and) #6
  %ioaddr.i97 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %42 = ptrtoint ptr %ioaddr.i97 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ioaddr.i97, align 16
  %add.ptr.i98 = getelementptr i8, ptr %43, i32 360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i98, i32 %41) #6, !srcloc !97
  br label %cleanup

if.else:                                          ; preds = %sdhci_writel.exit
  br i1 %tobool.not.i85, label %if.else.i107, label %if.then.i104, !prof !92

if.then.i104:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call.i103 = tail call i32 %32(ptr noundef %host, i32 noundef 380) #6
  br label %sdhci_readl.exit109

if.else.i107:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %ioaddr.i105 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %44 = ptrtoint ptr %ioaddr.i105 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ioaddr.i105, align 16
  %add.ptr.i106 = getelementptr i8, ptr %45, i32 380
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i106) #6, !srcloc !93
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  br label %sdhci_readl.exit109

sdhci_readl.exit109:                              ; preds = %if.else.i107, %if.then.i104
  %retval.0.i108 = phi i32 [ %call.i103, %if.then.i104 ], [ %47, %if.else.i107 ]
  %or52 = and i32 %retval.0.i108, -33554945
  %and53 = or i32 %or52, 512
  %48 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops.i, align 4
  %write_l.i111 = getelementptr inbounds %struct.sdhci_ops, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %write_l.i111 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write_l.i111, align 4
  %tobool.not.i112 = icmp eq ptr %51, null
  br i1 %tobool.not.i112, label %do.body.i116, label %if.then.i113, !prof !92

if.then.i113:                                     ; preds = %sdhci_readl.exit109
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %51(ptr noundef %host, i32 noundef %and53, i32 noundef 380) #6
  br label %cleanup

do.body.i116:                                     ; preds = %sdhci_readl.exit109
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  tail call void @arm_heavy_mb() #6
  %52 = tail call i32 @llvm.bswap.i32(i32 %and53) #6
  %ioaddr.i114 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %53 = ptrtoint ptr %ioaddr.i114 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ioaddr.i114, align 16
  %add.ptr.i115 = getelementptr i8, ptr %54, i32 380
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115, i32 %52) #6, !srcloc !97
  br label %cleanup

cleanup:                                          ; preds = %do.body.i116, %if.then.i113, %do.body.i99, %if.then.i96, %if.end22.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xenon_emmc_phy_enable_dll(ptr noundef %host) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i80 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  %emmc_phy_regs = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 1
  %0 = ptrtoint ptr %emmc_phy_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %emmc_phy_regs, align 4
  %clock = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 22
  %2 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52000001, i32 %3)
  %cmp = icmp ult i32 %3, 52000001
  br i1 %cmp, label %do.end, label %if.end22, !prof !95

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 328, i32 noundef 9, ptr noundef null) #6
  br label %cleanup57

if.end22:                                         ; preds = %entry
  %dll_ctrl = getelementptr inbounds %struct.xenon_emmc_phy_regs, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %dll_ctrl to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dll_ctrl, align 4
  %conv = zext i16 %5 to i32
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !92

if.then.i:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 %9(ptr noundef %host, i32 noundef %conv) #6
  br label %sdhci_readl.exit

if.else.i:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %10 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %11, i32 %conv
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !93
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  br label %sdhci_readl.exit

sdhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %13, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %tobool24.not = icmp sgt i32 %retval.0.i, -1
  br i1 %tobool24.not, label %if.end26, label %sdhci_readl.exit.cleanup57_crit_edge

sdhci_readl.exit.cleanup57_crit_edge:             ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup57

if.end26:                                         ; preds = %sdhci_readl.exit
  %14 = ptrtoint ptr %dll_ctrl to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %dll_ctrl, align 4
  %conv28 = zext i16 %15 to i32
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %tobool.not.i82 = icmp eq ptr %19, null
  br i1 %tobool.not.i82, label %if.else.i87, label %if.then.i84, !prof !92

if.then.i84:                                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %call.i83 = tail call i32 %19(ptr noundef %host, i32 noundef %conv28) #6
  br label %sdhci_readl.exit89

if.else.i87:                                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %ioaddr.i85 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %20 = ptrtoint ptr %ioaddr.i85 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ioaddr.i85, align 16
  %add.ptr.i86 = getelementptr i8, ptr %21, i32 %conv28
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i86) #6, !srcloc !93
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  br label %sdhci_readl.exit89

sdhci_readl.exit89:                               ; preds = %if.else.i87, %if.then.i84
  %retval.0.i88 = phi i32 [ %call.i83, %if.then.i84 ], [ %23, %if.else.i87 ]
  %or = and i32 %retval.0.i88, 1086390238
  %dll_update = getelementptr inbounds %struct.xenon_emmc_phy_regs, ptr %1, i32 0, i32 6
  %24 = ptrtoint ptr %dll_update to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dll_update, align 4
  %or31 = or i32 %25, %or
  %or33 = or i32 %or31, -1625358304
  %phy_type = getelementptr inbounds %struct.xenon_priv, ptr %private.i80, i32 0, i32 7
  %26 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %phy_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp34 = icmp eq i32 %27, 1
  %and37 = and i32 %or33, -1073741825
  %spec.select = select i1 %cmp34, i32 %and37, i32 %or33
  %28 = ptrtoint ptr %dll_ctrl to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %dll_ctrl, align 4
  %conv40 = zext i16 %29 to i32
  %30 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i, align 4
  %write_l.i = getelementptr inbounds %struct.sdhci_ops, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i91 = icmp eq ptr %33, null
  br i1 %tobool.not.i91, label %do.body.i, label %if.then.i92, !prof !92

if.then.i92:                                      ; preds = %sdhci_readl.exit89
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %33(ptr noundef %host, i32 noundef %spec.select, i32 noundef %conv40) #6
  br label %sdhci_writel.exit

do.body.i:                                        ; preds = %sdhci_readl.exit89
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  tail call void @arm_heavy_mb() #6
  %34 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #6
  %ioaddr.i93 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %35 = ptrtoint ptr %ioaddr.i93 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ioaddr.i93, align 16
  %add.ptr.i94 = getelementptr i8, ptr %36, i32 %conv40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i94, i32 %34) #6, !srcloc !97
  br label %sdhci_writel.exit

sdhci_writel.exit:                                ; preds = %do.body.i, %if.then.i92
  %call41 = tail call i64 @ktime_get() #6
  %add.i = add i64 %call41, 32000000
  %ioaddr.i99 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  br label %while.cond

while.cond:                                       ; preds = %cleanup, %sdhci_writel.exit
  %call43 = tail call i64 @ktime_get() #6
  %cmp3.i.i = icmp sgt i64 %call43, %add.i
  %37 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops.i, align 4
  %read_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %read_w.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read_w.i, align 4
  %tobool.not.i96 = icmp eq ptr %40, null
  br i1 %tobool.not.i96, label %if.else.i101, label %if.then.i98, !prof !92

if.then.i98:                                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  %call.i97 = tail call zeroext i16 %40(ptr noundef %host, i32 noundef 332) #6
  br label %sdhci_readw.exit

if.else.i101:                                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %ioaddr.i99 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ioaddr.i99, align 16
  %add.ptr.i100 = getelementptr i8, ptr %42, i32 332
  %43 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i100) #6, !srcloc !103
  %44 = tail call i16 @llvm.bswap.i16(i16 %43) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  br label %sdhci_readw.exit

sdhci_readw.exit:                                 ; preds = %if.else.i101, %if.then.i98
  %retval.0.i102 = phi i16 [ %call.i97, %if.then.i98 ], [ %44, %if.else.i101 ]
  %45 = and i16 %retval.0.i102, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool48.not = icmp eq i16 %45, 0
  br i1 %tobool48.not, label %if.end50, label %sdhci_readw.exit.cleanup57_crit_edge

sdhci_readw.exit.cleanup57_crit_edge:             ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup57

if.end50:                                         ; preds = %sdhci_readw.exit
  br i1 %cmp3.i.i, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %46 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mmc, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.16) #9
  br label %cleanup57

cleanup:                                          ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 21474800) #6
  br label %while.cond

cleanup57:                                        ; preds = %cleanup.thread, %sdhci_readw.exit.cleanup57_crit_edge, %sdhci_readl.exit.cleanup57_crit_edge, %do.end
  %retval.2 = phi i32 [ -22, %do.end ], [ 0, %sdhci_readl.exit.cleanup57_crit_edge ], [ -110, %cleanup.thread ], [ 0, %sdhci_readw.exit.cleanup57_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armada_3700_soc_pad_voltage_set(ptr nocapture noundef readonly %host, i8 noundef zeroext %signal_voltage) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_params = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13
  %0 = ptrtoint ptr %phy_params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_params, align 4
  %pad_ctrl = getelementptr inbounds %struct.xenon_emmc_phy_params, ptr %1, i32 0, i32 5
  %pad_type = getelementptr inbounds %struct.xenon_emmc_phy_params, ptr %1, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %pad_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad_type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %3, label %entry.if.end27_crit_edge [
    i32 1, label %do.body
    i32 0, label %if.then6
  ]

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  %5 = ptrtoint ptr %pad_ctrl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pad_ctrl, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 16777216) #6, !srcloc !97
  br label %if.end27

if.then6:                                         ; preds = %entry
  %7 = zext i8 %signal_voltage to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.42)
  switch i8 %signal_voltage, label %if.then6.if.end27_crit_edge [
    i8 1, label %do.body10
    i8 0, label %do.body20
  ]

if.then6.if.end27_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

do.body10:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %pad_ctrl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pad_ctrl, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 16777216) #6, !srcloc !97
  br label %if.end27

do.body20:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %pad_ctrl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pad_ctrl, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 0) #6, !srcloc !97
  br label %if.end27

if.end27:                                         ; preds = %do.body20, %do.body10, %if.then6.if.end27_crit_edge, %do.body, %entry.if.end27_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !15, !16, !17, !18, !19, !20, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !67, !68, !69, !71, !73, !74, !75, !77, !79, !81, !82}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/sdhci-xenon-phy.c", i32 844, i32 40}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/mmc/host/sdhci-xenon-phy.c", i32 847, i32 34}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/mmc/host/sdhci-xenon-phy.c", i32 553, i32 2}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @xenon_emmc_phy_set.__UNIQUE_ID_ddebug272, !5, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/sdhci-xenon-phy.c", i32 647, i32 2}
!12 = !{ptr @xenon_emmc_phy_set.__UNIQUE_ID_ddebug273, !11, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/mmc/host/sdhci-xenon-phy.c", i32 268, i32 3}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @xenon_emmc_phy_init._entry, !14, !"_entry", i1 false, i1 false}
!19 = !{ptr @xenon_emmc_phy_init._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!20 = distinct !{null, !21, !"__print_once", i1 false, i1 false}
!21 = !{!"../drivers/mmc/host/sdhci-xenon-phy.c", i32 766, i32 3}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @xenon_hs_delay_adj._entry, !21, !"_entry", i1 false, i1 false}
!26 = !{ptr @xenon_hs_delay_adj._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mmc/host/sdhci-xenon-phy.c", i32 449, i32 2}
!29 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @xenon_emmc_phy_strobe_delay_adj.__UNIQUE_ID_ddebug271, !28, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/mmc/host/sdhci-xenon-phy.c", i32 364, i32 4}
!33 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @xenon_emmc_phy_enable_dll._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @xenon_emmc_phy_enable_dll._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mmc/host/sdhci-xenon-phy.c", i32 395, i32 3}
!38 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @xenon_emmc_phy_config_tuning._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @xenon_emmc_phy_config_tuning._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/mmc/host/sdhci-xenon-phy.c", i32 827, i32 3}
!43 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @xenon_add_phy._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @xenon_add_phy._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mmc/host/sdhci-xenon-phy.c", i32 136, i32 2}
!48 = !{ptr @phy_types, !49, !"phy_types", i1 false, i1 false}
!49 = !{!"../drivers/mmc/host/sdhci-xenon-phy.c", i32 135, i32 27}
!50 = !{ptr @xenon_emmc_5_0_phy_regs, !51, !"xenon_emmc_5_0_phy_regs", i1 false, i1 false}
!51 = !{!"../drivers/mmc/host/sdhci-xenon-phy.c", i32 161, i32 35}
!52 = !{ptr @xenon_emmc_5_1_phy_regs, !53, !"xenon_emmc_5_1_phy_regs", i1 false, i1 false}
!53 = !{!"../drivers/mmc/host/sdhci-xenon-phy.c", i32 172, i32 35}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mmc/host/sdhci-xenon-phy.c", i32 701, i32 37}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mmc/host/sdhci-xenon-phy.c", i32 705, i32 37}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mmc/host/sdhci-xenon-phy.c", i32 709, i32 37}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mmc/host/sdhci-xenon-phy.c", i32 713, i32 37}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/mmc/host/sdhci-xenon-phy.c", i32 718, i32 37}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mmc/host/sdhci-xenon-phy.c", i32 666, i32 3}
!66 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @get_dt_pad_ctrl_data._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @get_dt_pad_ctrl_data._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/mmc/host/sdhci-xenon-phy.c", i32 676, i32 36}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/mmc/host/sdhci-xenon-phy.c", i32 678, i32 3}
!73 = !{ptr @get_dt_pad_ctrl_data._entry.31, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @get_dt_pad_ctrl_data._entry_ptr.33, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/mmc/host/sdhci-xenon-phy.c", i32 681, i32 20}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/mmc/host/sdhci-xenon-phy.c", i32 683, i32 27}
!79 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/mmc/host/sdhci-xenon-phy.c", i32 686, i32 3}
!81 = !{ptr @get_dt_pad_ctrl_data._entry.36, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @get_dt_pad_ctrl_data._entry_ptr.38, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{!"branch_weights", i32 2000, i32 1}
!93 = !{i64 4942240}
!94 = !{i64 2154733900}
!95 = !{!"branch_weights", i32 1, i32 2000}
!96 = !{i64 2154731930}
!97 = !{i64 4941822}
!98 = !{i64 2148224808, i64 2148224813, i64 2148224826, i64 2148224870, i64 2148224904, i64 2148224925}
!99 = !{i64 2154732536}
!100 = !{i64 4941202}
!101 = !{!"auto-init"}
!102 = !{i8 0, i8 2}
!103 = !{i64 4941402}
!104 = !{i64 2154734604}
!105 = !{i64 2154742468}
!106 = !{i64 2154742869}
!107 = !{i64 2154743270}
