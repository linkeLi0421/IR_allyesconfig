; ModuleID = '/llk/IR_all_yes/drivers/net/phy/dp83640.c_pt.bc'
source_filename = "../drivers/net/phy/dp83640.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.phy_driver = type { %struct.mdio_driver_common, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dp83640_clock = type { %struct.list_head, ptr, %struct.mutex, i32, %struct.ptp_clock_info, %struct.mutex, ptr, %struct.list_head, ptr }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.timespec64 = type { i64, i32 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.dp83640_private = type { %struct.list_head, ptr, ptr, %struct.mii_timestamper, %struct.delayed_work, i32, i32, i32, i32, i32, %struct.phy_txts, %struct.list_head, %struct.list_head, [64 x %struct.rxts], %struct.spinlock, %struct.sk_buff_head, %struct.sk_buff_head }
%struct.mii_timestamper = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.phy_txts = type { i16, i16, i16, i16 }
%struct.rxts = type { %struct.list_head, i32, i64, i16, i8, i16 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.ptp_pin_desc = type { [64 x i8], i32, i32, i32, [5 x i32] }
%struct.ptp_clock_event = type { i32, i32, %union.anon.125 }
%union.anon.125 = type { %struct.pps_event_time }
%struct.pps_event_time = type { %struct.timespec64 }
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
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.ptp_header = type <{ i8, i8, i16, i8, i8, [2 x i8], i64, i32, %struct.port_identity, i16, i8, i8 }>
%struct.port_identity = type { %struct.clock_identity, i16 }
%struct.clock_identity = type { [8 x i8] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ifreq = type { %union.anon.104, %union.anon.105 }
%union.anon.104 = type { [16 x i8] }
%union.anon.105 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ethtool_ts_info = type { i32, i32, i32, i32, [3 x i32], i32, [3 x i32] }
%struct.ptp_clock_request = type { i32, %union.anon.121 }
%union.anon.121 = type { %struct.ptp_perout_request }
%struct.ptp_perout_request = type { %union.anon.122, %struct.ptp_clock_time, i32, i32, %union.anon.123 }
%union.anon.122 = type { %struct.ptp_clock_time }
%struct.ptp_clock_time = type { i64, i32, i32 }
%union.anon.123 = type { %struct.ptp_clock_time }
%struct.ptp_extts_request = type { i32, i32, [2 x i32] }
%struct.phy_rxts = type { i16, i16, i16, i16, i16, i16 }

@__param_str_chosen_phy = internal constant [19 x i8] c"dp83640.chosen_phy\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@chosen_phy = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_chosen_phy = internal constant %struct.kernel_param { ptr @__param_str_chosen_phy, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @chosen_phy } }, section "__param", align 4
@__UNIQUE_ID_chosen_phytype351 = internal constant [32 x i8] c"dp83640.parmtype=chosen_phy:int\00", section ".modinfo", align 1
@__param_str_gpio_tab = internal constant [17 x i8] c"dp83640.gpio_tab\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_gpio_tab = internal constant %struct.kparam_array { i32 8, i32 2, ptr null, ptr @param_ops_ushort, ptr @gpio_tab }, align 4
@__param_gpio_tab = internal constant %struct.kernel_param { ptr @__param_str_gpio_tab, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_gpio_tab } }, section "__param", align 4
@__UNIQUE_ID_gpio_tabtype352 = internal constant [42 x i8] c"dp83640.parmtype=gpio_tab:array of ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_chosen_phy353 = internal constant [87 x i8] c"dp83640.parm=chosen_phy:The address of the PHY to use for the ancillary clock features\00", section ".modinfo", align 1
@__UNIQUE_ID_gpio_tab354 = internal constant [93 x i8] c"dp83640.parm=gpio_tab:Which GPIO line to use for which purpose: cal,perout,extts1,...,extts6\00", section ".modinfo", align 1
@dp83640_driver = internal global { %struct.phy_driver, [52 x i8] } { %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 536894689, ptr @.str.5, i32 -16, ptr null, i32 0, ptr null, ptr @dp83640_soft_reset, ptr @dp83640_config_init, ptr @dp83640_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dp83640_config_intr, ptr @dp83640_handle_interrupt, ptr @dp83640_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_description359 = internal constant [62 x i8] c"dp83640.description=National Semiconductor DP83640 PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author360 = internal constant [58 x i8] c"dp83640.author=Richard Cochran <richardcochran@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file361 = internal constant [37 x i8] c"dp83640.file=drivers/net/phy/dp83640\00", section ".modinfo", align 1
@__UNIQUE_ID_license362 = internal constant [20 x i8] c"dp83640.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_dp83640__363_1566_dp83640_init6 = internal global ptr @dp83640_init, section ".initcall6.init", align 4
@__exitcall_dp83640_exit = internal global ptr @dp83640_exit, section ".exitcall.exit", align 4
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@gpio_tab = internal global { [8 x i16], [16 x i8] } { [8 x i16] [i16 1, i16 2, i16 3, i16 4, i16 8, i16 9, i16 10, i16 11], [16 x i8] zeroinitializer }, align 32
@phyter_clocks_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @phyter_clocks_lock, i64 52), ptr getelementptr (i8, ptr @phyter_clocks_lock, i64 52) }, ptr @phyter_clocks_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@phyter_clocks = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @phyter_clocks, ptr @phyter_clocks }, [24 x i8] zeroinitializer }, align 32
@dp83640_free_clocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 994, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014dp83640: phy list non-empty while unloading\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dp83640_free_clocks\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/net/phy/dp83640.c\00", [38 x i8] zeroinitializer }, align 32
@dp83640_free_clocks._entry_ptr = internal global ptr @dp83640_free_clocks._entry, section ".printk_index", align 4
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"phyter_clocks_lock.wait_lock\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"phyter_clocks_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"NatSemi DP83640\00", [16 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@recalibrate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 642, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013dp83640: PHY calibration pin not available - PHY is not calibrated.\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"recalibrate\00", [20 x i8] zeroinitializer }, align 32
@recalibrate._entry_ptr = internal global ptr @recalibrate._entry, section ".printk_index", align 4
@recalibrate._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 703, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"master PTP_STS  0x%04hx\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@recalibrate._entry_ptr.12 = internal global ptr @recalibrate._entry.8, section ".printk_index", align 4
@recalibrate._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.7, ptr @.str.2, i32 705, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"master PTP_ESTS 0x%04hx\0A\00", [39 x i8] zeroinitializer }, align 32
@recalibrate._entry_ptr.15 = internal global ptr @recalibrate._entry.13, section ".printk_index", align 4
@recalibrate._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.7, ptr @.str.2, i32 715, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"slave  PTP_STS  0x%04hx\0A\00", [39 x i8] zeroinitializer }, align 32
@recalibrate._entry_ptr.18 = internal global ptr @recalibrate._entry.16, section ".printk_index", align 4
@recalibrate._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.7, ptr @.str.2, i32 717, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"slave  PTP_ESTS 0x%04hx\0A\00", [39 x i8] zeroinitializer }, align 32
@recalibrate._entry_ptr.21 = internal global ptr @recalibrate._entry.19, section ".printk_index", align 4
@recalibrate._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.7, ptr @.str.2, i32 724, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"slave offset %lld nanoseconds\0A\00", [33 x i8] zeroinitializer }, align 32
@recalibrate._entry_ptr.24 = internal global ptr @recalibrate._entry.22, section ".printk_index", align 4
@enable_status_frames._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 569, ptr @.str.27, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"expected to find an attached netdevice\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"enable_status_frames\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@enable_status_frames._entry_ptr = internal global ptr @enable_status_frames._entry, section ".printk_index", align 4
@status_frame_dst = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\01\1B\19\00\00\00", [26 x i8] zeroinitializer }, align 32
@enable_status_frames._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.26, ptr @.str.2, i32 575, ptr @.str.27, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to add mc address\0A\00", [38 x i8] zeroinitializer }, align 32
@enable_status_frames._entry_ptr.30 = internal global ptr @enable_status_frames._entry.28, section ".printk_index", align 4
@enable_status_frames._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.26, ptr @.str.2, i32 578, ptr @.str.27, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to delete mc address\0A\00", [35 x i8] zeroinitializer }, align 32
@enable_status_frames._entry_ptr.33 = internal global ptr @enable_status_frames._entry.31, section ".printk_index", align 4
@dp83640_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&(&dp83640->ts_work)->work)\00", [50 x i8] zeroinitializer }, align 32
@dp83640_probe.__key.35 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&(&dp83640->ts_work)->timer\00", [36 x i8] zeroinitializer }, align 32
@dp83640_probe.__key.37 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&dp83640->rx_lock\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dp83640_clock_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&clock->extreg_lock\00", [44 x i8] zeroinitializer }, align 32
@dp83640_clock_init.__key.40 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&clock->clock_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dp83640 timer\00", [18 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GPIO%d\00", [25 x i8] zeroinitializer }, align 32
@dp83640_gpio_defaults._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013dp83640: gpio_tab[%d]=%hu out of range\00", [55 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dp83640_gpio_defaults\00", [42 x i8] zeroinitializer }, align 32
@dp83640_gpio_defaults._entry_ptr = internal global ptr @dp83640_gpio_defaults._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@status_frame_src = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\08\00\17\0Bk\0F", [26 x i8] zeroinitializer }, align 32
@decode_rxts.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.46, ptr @.str.47, ptr @.str.2, ptr @.str.48, i8 0, i8 -43, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dp83640\00", [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"decode_rxts\00", [20 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"rx timestamp queue overflow, count %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"dp83640: rx timestamp queue overflow, count %d\0A\00", [48 x i8] zeroinitializer }, align 32
@decode_rxts.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.46, ptr @.str.47, ptr @.str.2, ptr @.str.50, i8 0, i8 -41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rx timestamp pool is empty\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"dp83640: rx timestamp pool is empty\0A\00", [59 x i8] zeroinitializer }, align 32
@decode_txts.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.46, ptr @.str.52, ptr @.str.2, ptr @.str.53, i8 0, i8 -30, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"decode_txts\00", [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"have timestamp but tx_queue empty\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"dp83640: have timestamp but tx_queue empty\0A\00", [52 x i8] zeroinitializer }, align 32
@decode_txts.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.46, ptr @.str.52, ptr @.str.2, ptr @.str.55, i8 0, i8 -29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"tx timestamp queue overflow, count %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"dp83640: tx timestamp queue overflow, count %d\0A\00", [48 x i8] zeroinitializer }, align 32
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.59 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.62 = internal global [15 x i64] [i64 13, i64 32, i64 0, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.64 = private unnamed_addr constant [11 x i8] c"chosen_phy\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 165, i32 12 }
@___asan_gen_.67 = private unnamed_addr constant [15 x i8] c"dp83640_driver\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1538, i32 26 }
@___asan_gen_.70 = private unnamed_addr constant [9 x i8] c"gpio_tab\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 166, i32 15 }
@___asan_gen_.73 = private unnamed_addr constant [19 x i8] c"phyter_clocks_lock\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [14 x i8] c"phyter_clocks\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 210, i32 8 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 994, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 211, i32 8 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1541, i32 11 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 642, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 703, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 705, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 715, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 717, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 723, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 568, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant [17 x i8] c"status_frame_dst\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 546, i32 11 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 575, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 578, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1464, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1473, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1012, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1013, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1016, i32 28 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 183, i32 44 }
@___asan_gen_.208 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 189, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant [17 x i8] c"status_frame_src\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 547, i32 11 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 853, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 860, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 905, i32 3 }
@___asan_gen_.251 = private constant [29 x i8] c"../drivers/net/phy/dp83640.c\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 911, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 156, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.259 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.260 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1984, i32 2 }
@llvm.compiler.used = appending global [90 x ptr] [ptr @__UNIQUE_ID_author360, ptr @__UNIQUE_ID_chosen_phy353, ptr @__UNIQUE_ID_chosen_phytype351, ptr @__UNIQUE_ID_description359, ptr @__UNIQUE_ID_file361, ptr @__UNIQUE_ID_gpio_tab354, ptr @__UNIQUE_ID_gpio_tabtype352, ptr @__UNIQUE_ID_license362, ptr @__exitcall_dp83640_exit, ptr @__initcall__kmod_dp83640__363_1566_dp83640_init6, ptr @__param_chosen_phy, ptr @__param_gpio_tab, ptr @dp83640_exit, ptr @dp83640_free_clocks._entry, ptr @dp83640_free_clocks._entry_ptr, ptr @dp83640_gpio_defaults._entry, ptr @dp83640_gpio_defaults._entry_ptr, ptr @enable_status_frames._entry, ptr @enable_status_frames._entry.28, ptr @enable_status_frames._entry.31, ptr @enable_status_frames._entry_ptr, ptr @enable_status_frames._entry_ptr.30, ptr @enable_status_frames._entry_ptr.33, ptr @recalibrate._entry, ptr @recalibrate._entry.13, ptr @recalibrate._entry.16, ptr @recalibrate._entry.19, ptr @recalibrate._entry.22, ptr @recalibrate._entry.8, ptr @recalibrate._entry_ptr, ptr @recalibrate._entry_ptr.12, ptr @recalibrate._entry_ptr.15, ptr @recalibrate._entry_ptr.18, ptr @recalibrate._entry_ptr.21, ptr @recalibrate._entry_ptr.24, ptr @chosen_phy, ptr @dp83640_driver, ptr @gpio_tab, ptr @phyter_clocks_lock, ptr @phyter_clocks, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @status_frame_dst, ptr @.str.29, ptr @.str.32, ptr @dp83640_probe.__key, ptr @.str.34, ptr @dp83640_probe.__key.35, ptr @.str.36, ptr @dp83640_probe.__key.37, ptr @.str.38, ptr @dp83640_clock_init.__key, ptr @.str.39, ptr @dp83640_clock_init.__key.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @status_frame_src, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.59, ptr @skb_queue_head_init.__key, ptr @.str.60], section "llvm.metadata"
@0 = internal global [66 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chosen_phy to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp83640_driver to i32), i32 236, i32 288, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_tab to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phyter_clocks_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phyter_clocks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp83640_free_clocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recalibrate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recalibrate._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recalibrate._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recalibrate._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recalibrate._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recalibrate._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_status_frames._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @status_frame_dst to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_status_frames._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_status_frames._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp83640_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp83640_probe.__key.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp83640_probe.__key.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp83640_clock_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp83640_clock_init.__key.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp83640_gpio_defaults._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @status_frame_src to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dp83640_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_lock_nested(ptr noundef nonnull @phyter_clocks_lock, i32 noundef 0) #12
  %0 = load ptr, ptr @phyter_clocks, align 4
  %cmp.i.not25.i = icmp eq ptr %0, @phyter_clocks
  br i1 %cmp.i.not25.i, label %entry.dp83640_free_clocks.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.dp83640_free_clocks.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dp83640_free_clocks.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %this.026.i = phi ptr [ %next.028.i, %list_del.exit.i.for.body.i_crit_edge ], [ %0, %entry.for.body.i_crit_edge ]
  %1 = ptrtoint ptr %this.026.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %next.028.i = load ptr, ptr %this.026.i, align 4
  %phylist.i = getelementptr inbounds %struct.dp83640_clock, ptr %this.026.i, i32 0, i32 7
  %2 = ptrtoint ptr %phylist.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %phylist.i, align 4
  %cmp.i22.not.i = icmp eq ptr %3, %phylist.i
  br i1 %cmp.i22.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/phy/dp83640.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 995, 0\0A.popsection", ""() #12, !srcloc !151
  unreachable

if.end.i:                                         ; preds = %for.body.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %this.026.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %this.026.i, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %this.026.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %this.026.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %10 = ptrtoint ptr %this.026.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %this.026.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %this.026.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %extreg_lock.i = getelementptr inbounds %struct.dp83640_clock, ptr %this.026.i, i32 0, i32 2
  tail call void @mutex_destroy(ptr noundef %extreg_lock.i) #12
  %clock_lock.i = getelementptr inbounds %struct.dp83640_clock, ptr %this.026.i, i32 0, i32 5
  tail call void @mutex_destroy(ptr noundef %clock_lock.i) #12
  %bus.i = getelementptr inbounds %struct.dp83640_clock, ptr %this.026.i, i32 0, i32 1
  %12 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i, align 4
  %dev.i = getelementptr inbounds %struct.mii_bus, ptr %13, i32 0, i32 11
  tail call void @put_device(ptr noundef %dev.i) #12
  %pin_config.i = getelementptr inbounds %struct.dp83640_clock, ptr %this.026.i, i32 0, i32 4, i32 8
  %14 = ptrtoint ptr %pin_config.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pin_config.i, align 4
  tail call void @kfree(ptr noundef %15) #12
  tail call void @kfree(ptr noundef %this.026.i) #12
  %cmp.i.not.i = icmp eq ptr %next.028.i, @phyter_clocks
  br i1 %cmp.i.not.i, label %list_del.exit.i.dp83640_free_clocks.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

list_del.exit.i.dp83640_free_clocks.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dp83640_free_clocks.exit

dp83640_free_clocks.exit:                         ; preds = %list_del.exit.i.dp83640_free_clocks.exit_crit_edge, %entry.dp83640_free_clocks.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @phyter_clocks_lock) #12
  tail call void @phy_driver_unregister(ptr noundef nonnull @dp83640_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dp83640_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_driver_register(ptr noundef nonnull @dp83640_driver, ptr noundef null) #12
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp83640_soft_reset(ptr noundef %phydev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @genphy_soft_reset(ptr noundef %phydev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 2147480) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp83640_config_init(ptr noundef %phydev) #4 align 64 {
entry:
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %clock1 = getelementptr inbounds %struct.dp83640_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clock1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clock1, align 8
  %chosen = getelementptr inbounds %struct.dp83640_clock, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %chosen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chosen, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %phylist = getelementptr inbounds %struct.dp83640_clock, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %phylist to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %phylist, align 4
  %cmp.i.not = icmp eq ptr %7, %phylist
  br i1 %cmp.i.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #12
  %8 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  %phydev.i = getelementptr inbounds %struct.dp83640_private, ptr %5, i32 0, i32 2
  %9 = ptrtoint ptr %phydev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %phydev.i, align 4
  %ptp_clock.i = getelementptr inbounds %struct.dp83640_clock, ptr %3, i32 0, i32 8
  %11 = ptrtoint ptr %ptp_clock.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ptp_clock.i, align 4
  %call.i = tail call i32 @ptp_find_pin_unlocked(ptr noundef %12, i32 noundef 3, i32 noundef 0) #12
  %conv.i16 = add i32 %call.i, 1
  %conv1.i = and i32 %conv.i16, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i)
  %cmp.i17 = icmp eq i32 %conv1.i, 0
  br i1 %cmp.i17, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #15
  br label %recalibrate.exit

if.end.i:                                         ; preds = %if.then
  %extreg_lock.i = getelementptr inbounds %struct.dp83640_clock, ptr %3, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %extreg_lock.i, i32 noundef 0) #12
  %13 = ptrtoint ptr %phylist to i32
  call void @__asan_load4_noabort(i32 %13)
  %this.0598.i = load ptr, ptr %phylist, align 4
  %cmp.i.not599.i = icmp eq ptr %this.0598.i, %phylist
  br i1 %cmp.i.not599.i, label %if.end.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %page.i = getelementptr inbounds %struct.dp83640_clock, ptr %3, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %ext_write.exit288.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %this.0600.i = phi ptr [ %this.0598.i, %for.body.lr.ph.i ], [ %this.0.i, %ext_write.exit288.i.for.body.i_crit_edge ]
  %phydev8.i = getelementptr inbounds %struct.dp83640_private, ptr %this.0600.i, i32 0, i32 2
  %14 = ptrtoint ptr %phydev8.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phydev8.i, align 4
  %16 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %page.i, align 4
  %bus.i.i.i = getelementptr inbounds %struct.mdio_device, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus.i.i.i, align 8
  %addr.i.i.i = getelementptr inbounds %struct.mdio_device, ptr %15, i32 0, i32 6
  %20 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i.i = tail call i32 @mdiobus_write(ptr noundef %19, i32 noundef %21, i32 noundef 19, i16 noundef zeroext 0) #12
  %22 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus.i.i.i, align 8
  %24 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %addr.i.i.i, align 8
  %call.i3.i.i = tail call i32 @mdiobus_read(ptr noundef %23, i32 noundef %25, i32 noundef 28) #12
  %26 = trunc i32 %call.i3.i.i to i16
  %conv.i264.i = or i16 %26, 2048
  %27 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bus.i.i.i, align 8
  %29 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %addr.i.i.i, align 8
  %call.i6.i.i = tail call i32 @mdiobus_write(ptr noundef %28, i32 noundef %30, i32 noundef 28, i16 noundef zeroext %conv.i264.i) #12
  %conv3.i.i = trunc i32 %17 to i16
  %31 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bus.i.i.i, align 8
  %33 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %addr.i.i.i, align 8
  %call.i9.i.i = tail call i32 @mdiobus_write(ptr noundef %32, i32 noundef %34, i32 noundef 19, i16 noundef zeroext %conv3.i.i) #12
  %35 = ptrtoint ptr %phydev8.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %phydev8.i, align 4
  %priv.i.i = getelementptr inbounds %struct.phy_device, ptr %36, i32 0, i32 26
  %37 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %priv.i.i, align 8
  %clock.i.i = getelementptr inbounds %struct.dp83640_private, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %clock.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %clock.i.i, align 8
  %page1.i.i = getelementptr inbounds %struct.dp83640_clock, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %page1.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %page1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %42)
  %cmp.not.i.i = icmp eq i32 %42, 5
  br i1 %cmp.not.i.i, label %for.body.i.ext_read.exit.i_crit_edge, label %if.then.i.i

for.body.i.ext_read.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ext_read.exit.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %bus.i.i265.i = getelementptr inbounds %struct.mdio_device, ptr %36, i32 0, i32 1
  %43 = ptrtoint ptr %bus.i.i265.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bus.i.i265.i, align 8
  %call.i.i266.i = tail call i32 @mdiobus_write(ptr noundef %44, i32 noundef 31, i32 noundef 19, i16 noundef zeroext 5) #12
  %45 = ptrtoint ptr %clock.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %clock.i.i, align 8
  %page3.i.i = getelementptr inbounds %struct.dp83640_clock, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %page3.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 5, ptr %page3.i.i, align 4
  br label %ext_read.exit.i

ext_read.exit.i:                                  ; preds = %if.then.i.i, %for.body.i.ext_read.exit.i_crit_edge
  %bus.i10.i.i = getelementptr inbounds %struct.mdio_device, ptr %36, i32 0, i32 1
  %48 = ptrtoint ptr %bus.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bus.i10.i.i, align 8
  %addr.i.i267.i = getelementptr inbounds %struct.mdio_device, ptr %36, i32 0, i32 6
  %50 = ptrtoint ptr %addr.i.i267.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %addr.i.i267.i, align 8
  %call.i11.i.i = tail call i32 @mdiobus_read(ptr noundef %49, i32 noundef %51, i32 noundef 24) #12
  %cfg011.i = getelementptr inbounds %struct.dp83640_private, ptr %this.0600.i, i32 0, i32 9
  %52 = ptrtoint ptr %cfg011.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %call.i11.i.i, ptr %cfg011.i, align 4
  %53 = ptrtoint ptr %phydev8.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %phydev8.i, align 4
  %priv.i268.i = getelementptr inbounds %struct.phy_device, ptr %54, i32 0, i32 26
  %55 = ptrtoint ptr %priv.i268.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %priv.i268.i, align 8
  %clock.i269.i = getelementptr inbounds %struct.dp83640_private, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %clock.i269.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %clock.i269.i, align 8
  %page1.i270.i = getelementptr inbounds %struct.dp83640_clock, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %page1.i270.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %page1.i270.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %60)
  %cmp.not.i271.i = icmp eq i32 %60, 5
  br i1 %cmp.not.i271.i, label %ext_read.exit.i.ext_write.exit.i_crit_edge, label %if.then.i275.i

ext_read.exit.i.ext_write.exit.i_crit_edge:       ; preds = %ext_read.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ext_write.exit.i

if.then.i275.i:                                   ; preds = %ext_read.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %bus.i.i272.i = getelementptr inbounds %struct.mdio_device, ptr %54, i32 0, i32 1
  %61 = ptrtoint ptr %bus.i.i272.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bus.i.i272.i, align 8
  %call.i.i273.i = tail call i32 @mdiobus_write(ptr noundef %62, i32 noundef 31, i32 noundef 19, i16 noundef zeroext 5) #12
  %63 = ptrtoint ptr %clock.i269.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %clock.i269.i, align 8
  %page3.i274.i = getelementptr inbounds %struct.dp83640_clock, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %page3.i274.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 5, ptr %page3.i274.i, align 4
  br label %ext_write.exit.i

ext_write.exit.i:                                 ; preds = %if.then.i275.i, %ext_read.exit.i.ext_write.exit.i_crit_edge
  %bus.i18.i.i = getelementptr inbounds %struct.mdio_device, ptr %54, i32 0, i32 1
  %66 = ptrtoint ptr %bus.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bus.i18.i.i, align 8
  %addr.i.i276.i = getelementptr inbounds %struct.mdio_device, ptr %54, i32 0, i32 6
  %68 = ptrtoint ptr %addr.i.i276.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %addr.i.i276.i, align 8
  %call.i19.i.i = tail call i32 @mdiobus_write(ptr noundef %67, i32 noundef %69, i32 noundef 24, i16 noundef zeroext 0) #12
  %70 = ptrtoint ptr %phydev8.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %phydev8.i, align 4
  %priv.i277.i = getelementptr inbounds %struct.phy_device, ptr %71, i32 0, i32 26
  %72 = ptrtoint ptr %priv.i277.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %priv.i277.i, align 8
  %clock.i278.i = getelementptr inbounds %struct.dp83640_private, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %clock.i278.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %clock.i278.i, align 8
  %page1.i279.i = getelementptr inbounds %struct.dp83640_clock, ptr %75, i32 0, i32 3
  %76 = ptrtoint ptr %page1.i279.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %page1.i279.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %77)
  %cmp.not.i280.i = icmp eq i32 %77, 4
  br i1 %cmp.not.i280.i, label %ext_write.exit.i.ext_write.exit288.i_crit_edge, label %if.then.i284.i

ext_write.exit.i.ext_write.exit288.i_crit_edge:   ; preds = %ext_write.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ext_write.exit288.i

if.then.i284.i:                                   ; preds = %ext_write.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %bus.i.i281.i = getelementptr inbounds %struct.mdio_device, ptr %71, i32 0, i32 1
  %78 = ptrtoint ptr %bus.i.i281.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bus.i.i281.i, align 8
  %call.i.i282.i = tail call i32 @mdiobus_write(ptr noundef %79, i32 noundef 31, i32 noundef 19, i16 noundef zeroext 4) #12
  %80 = ptrtoint ptr %clock.i278.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %clock.i278.i, align 8
  %page3.i283.i = getelementptr inbounds %struct.dp83640_clock, ptr %81, i32 0, i32 3
  %82 = ptrtoint ptr %page3.i283.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 4, ptr %page3.i283.i, align 4
  br label %ext_write.exit288.i

ext_write.exit288.i:                              ; preds = %if.then.i284.i, %ext_write.exit.i.ext_write.exit288.i_crit_edge
  %bus.i18.i285.i = getelementptr inbounds %struct.mdio_device, ptr %71, i32 0, i32 1
  %83 = ptrtoint ptr %bus.i18.i285.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %bus.i18.i285.i, align 8
  %addr.i.i286.i = getelementptr inbounds %struct.mdio_device, ptr %71, i32 0, i32 6
  %85 = ptrtoint ptr %addr.i.i286.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %addr.i.i286.i, align 8
  %call.i19.i287.i = tail call i32 @mdiobus_write(ptr noundef %84, i32 noundef %86, i32 noundef 20, i16 noundef zeroext 4) #12
  %87 = ptrtoint ptr %this.0600.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %this.0.i = load ptr, ptr %this.0600.i, align 4
  %cmp.i.not.i = icmp eq ptr %this.0.i, %phylist
  br i1 %cmp.i.not.i, label %ext_write.exit288.i.for.end.i_crit_edge, label %ext_write.exit288.i.for.body.i_crit_edge

ext_write.exit288.i.for.body.i_crit_edge:         ; preds = %ext_write.exit288.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

ext_write.exit288.i.for.end.i_crit_edge:          ; preds = %ext_write.exit288.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %ext_write.exit288.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %page15.i = getelementptr inbounds %struct.dp83640_clock, ptr %3, i32 0, i32 3
  %88 = ptrtoint ptr %page15.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %page15.i, align 4
  %bus.i.i289.i = getelementptr inbounds %struct.mdio_device, ptr %10, i32 0, i32 1
  %90 = ptrtoint ptr %bus.i.i289.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %bus.i.i289.i, align 8
  %addr.i.i290.i = getelementptr inbounds %struct.mdio_device, ptr %10, i32 0, i32 6
  %92 = ptrtoint ptr %addr.i.i290.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %addr.i.i290.i, align 8
  %call.i.i291.i = tail call i32 @mdiobus_write(ptr noundef %91, i32 noundef %93, i32 noundef 19, i16 noundef zeroext 0) #12
  %94 = ptrtoint ptr %bus.i.i289.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %bus.i.i289.i, align 8
  %96 = ptrtoint ptr %addr.i.i290.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %addr.i.i290.i, align 8
  %call.i3.i292.i = tail call i32 @mdiobus_read(ptr noundef %95, i32 noundef %97, i32 noundef 28) #12
  %98 = trunc i32 %call.i3.i292.i to i16
  %conv.i293.i = or i16 %98, 2048
  %99 = ptrtoint ptr %bus.i.i289.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %bus.i.i289.i, align 8
  %101 = ptrtoint ptr %addr.i.i290.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %addr.i.i290.i, align 8
  %call.i6.i294.i = tail call i32 @mdiobus_write(ptr noundef %100, i32 noundef %102, i32 noundef 28, i16 noundef zeroext %conv.i293.i) #12
  %conv3.i295.i = trunc i32 %89 to i16
  %103 = ptrtoint ptr %bus.i.i289.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %bus.i.i289.i, align 8
  %105 = ptrtoint ptr %addr.i.i290.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %addr.i.i290.i, align 8
  %call.i9.i296.i = tail call i32 @mdiobus_write(ptr noundef %104, i32 noundef %106, i32 noundef 19, i16 noundef zeroext %conv3.i295.i) #12
  %priv.i297.i = getelementptr inbounds %struct.phy_device, ptr %10, i32 0, i32 26
  %107 = ptrtoint ptr %priv.i297.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %priv.i297.i, align 8
  %clock.i298.i = getelementptr inbounds %struct.dp83640_private, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %clock.i298.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %clock.i298.i, align 8
  %page1.i299.i = getelementptr inbounds %struct.dp83640_clock, ptr %110, i32 0, i32 3
  %111 = ptrtoint ptr %page1.i299.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %page1.i299.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %112)
  %cmp.not.i300.i = icmp eq i32 %112, 5
  br i1 %cmp.not.i300.i, label %for.end.i.ext_read.exit308.i_crit_edge, label %if.then.i304.i

for.end.i.ext_read.exit308.i_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ext_read.exit308.i

if.then.i304.i:                                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %113 = ptrtoint ptr %bus.i.i289.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %bus.i.i289.i, align 8
  %call.i.i302.i = tail call i32 @mdiobus_write(ptr noundef %114, i32 noundef 31, i32 noundef 19, i16 noundef zeroext 5) #12
  %115 = ptrtoint ptr %clock.i298.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %clock.i298.i, align 8
  %page3.i303.i = getelementptr inbounds %struct.dp83640_clock, ptr %116, i32 0, i32 3
  %117 = ptrtoint ptr %page3.i303.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 5, ptr %page3.i303.i, align 4
  br label %ext_read.exit308.i

ext_read.exit308.i:                               ; preds = %if.then.i304.i, %for.end.i.ext_read.exit308.i_crit_edge
  %118 = ptrtoint ptr %bus.i.i289.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %bus.i.i289.i, align 8
  %120 = ptrtoint ptr %addr.i.i290.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %addr.i.i290.i, align 8
  %call.i11.i307.i = tail call i32 @mdiobus_read(ptr noundef %119, i32 noundef %121, i32 noundef 24) #12
  %conv17.i = trunc i32 %call.i11.i307.i to i16
  %122 = ptrtoint ptr %priv.i297.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %priv.i297.i, align 8
  %clock.i310.i = getelementptr inbounds %struct.dp83640_private, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %clock.i310.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %clock.i310.i, align 8
  %page1.i311.i = getelementptr inbounds %struct.dp83640_clock, ptr %125, i32 0, i32 3
  %126 = ptrtoint ptr %page1.i311.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %page1.i311.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %127)
  %cmp.not.i312.i = icmp eq i32 %127, 5
  br i1 %cmp.not.i312.i, label %ext_read.exit308.i.ext_write.exit320.i_crit_edge, label %if.then.i316.i

ext_read.exit308.i.ext_write.exit320.i_crit_edge: ; preds = %ext_read.exit308.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ext_write.exit320.i

if.then.i316.i:                                   ; preds = %ext_read.exit308.i
  call void @__sanitizer_cov_trace_pc() #14
  %128 = ptrtoint ptr %bus.i.i289.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %bus.i.i289.i, align 8
  %call.i.i314.i = tail call i32 @mdiobus_write(ptr noundef %129, i32 noundef 31, i32 noundef 19, i16 noundef zeroext 5) #12
  %130 = ptrtoint ptr %clock.i310.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %clock.i310.i, align 8
  %page3.i315.i = getelementptr inbounds %struct.dp83640_clock, ptr %131, i32 0, i32 3
  %132 = ptrtoint ptr %page3.i315.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 5, ptr %page3.i315.i, align 4
  br label %ext_write.exit320.i

ext_write.exit320.i:                              ; preds = %if.then.i316.i, %ext_read.exit308.i.ext_write.exit320.i_crit_edge
  %133 = ptrtoint ptr %bus.i.i289.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %bus.i.i289.i, align 8
  %135 = ptrtoint ptr %addr.i.i290.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %addr.i.i290.i, align 8
  %call.i19.i319.i = tail call i32 @mdiobus_write(ptr noundef %134, i32 noundef %136, i32 noundef 24, i16 noundef zeroext 0) #12
  %137 = ptrtoint ptr %priv.i297.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %priv.i297.i, align 8
  %clock.i322.i = getelementptr inbounds %struct.dp83640_private, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %clock.i322.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %clock.i322.i, align 8
  %page1.i323.i = getelementptr inbounds %struct.dp83640_clock, ptr %140, i32 0, i32 3
  %141 = ptrtoint ptr %page1.i323.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %page1.i323.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %142)
  %cmp.not.i324.i = icmp eq i32 %142, 4
  br i1 %cmp.not.i324.i, label %ext_write.exit320.i.ext_write.exit332.i_crit_edge, label %if.then.i328.i

ext_write.exit320.i.ext_write.exit332.i_crit_edge: ; preds = %ext_write.exit320.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ext_write.exit332.i

if.then.i328.i:                                   ; preds = %ext_write.exit320.i
  call void @__sanitizer_cov_trace_pc() #14
  %143 = ptrtoint ptr %bus.i.i289.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %bus.i.i289.i, align 8
  %call.i.i326.i = tail call i32 @mdiobus_write(ptr noundef %144, i32 noundef 31, i32 noundef 19, i16 noundef zeroext 4) #12
  %145 = ptrtoint ptr %clock.i322.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %clock.i322.i, align 8
  %page3.i327.i = getelementptr inbounds %struct.dp83640_clock, ptr %146, i32 0, i32 3
  %147 = ptrtoint ptr %page3.i327.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 4, ptr %page3.i327.i, align 4
  br label %ext_write.exit332.i

ext_write.exit332.i:                              ; preds = %if.then.i328.i, %ext_write.exit320.i.ext_write.exit332.i_crit_edge
  %148 = ptrtoint ptr %bus.i.i289.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %bus.i.i289.i, align 8
  %150 = ptrtoint ptr %addr.i.i290.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %addr.i.i290.i, align 8
  %call.i19.i331.i = tail call i32 @mdiobus_write(ptr noundef %149, i32 noundef %151, i32 noundef 20, i16 noundef zeroext 4) #12
  %conv.tr.i = trunc i32 %conv.i16 to i16
  %152 = shl i16 %conv.tr.i, 8
  %153 = and i16 %152, 3840
  %conv23.i = or i16 %153, 20495
  %154 = ptrtoint ptr %phylist to i32
  call void @__asan_load4_noabort(i32 %154)
  %this.1601.i = load ptr, ptr %phylist, align 4
  %cmp.i333.not602.i = icmp eq ptr %this.1601.i, %phylist
  br i1 %cmp.i333.not602.i, label %ext_write.exit332.i.for.end38.i_crit_edge, label %ext_write.exit332.i.for.body31.i_crit_edge

ext_write.exit332.i.for.body31.i_crit_edge:       ; preds = %ext_write.exit332.i
  br label %for.body31.i

ext_write.exit332.i.for.end38.i_crit_edge:        ; preds = %ext_write.exit332.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end38.i

for.body31.i:                                     ; preds = %ext_write.exit346.i.for.body31.i_crit_edge, %ext_write.exit332.i.for.body31.i_crit_edge
  %this.1603.i = phi ptr [ %this.1.i, %ext_write.exit346.i.for.body31.i_crit_edge ], [ %this.1601.i, %ext_write.exit332.i.for.body31.i_crit_edge ]
  %phydev35.i = getelementptr inbounds %struct.dp83640_private, ptr %this.1603.i, i32 0, i32 2
  %155 = ptrtoint ptr %phydev35.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %phydev35.i, align 4
  %priv.i335.i = getelementptr inbounds %struct.phy_device, ptr %156, i32 0, i32 26
  %157 = ptrtoint ptr %priv.i335.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %priv.i335.i, align 8
  %clock.i336.i = getelementptr inbounds %struct.dp83640_private, ptr %158, i32 0, i32 1
  %159 = ptrtoint ptr %clock.i336.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %clock.i336.i, align 8
  %page1.i337.i = getelementptr inbounds %struct.dp83640_clock, ptr %160, i32 0, i32 3
  %161 = ptrtoint ptr %page1.i337.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %page1.i337.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %162)
  %cmp.not.i338.i = icmp eq i32 %162, 5
  br i1 %cmp.not.i338.i, label %for.body31.i.ext_write.exit346.i_crit_edge, label %if.then.i342.i

for.body31.i.ext_write.exit346.i_crit_edge:       ; preds = %for.body31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ext_write.exit346.i

if.then.i342.i:                                   ; preds = %for.body31.i
  call void @__sanitizer_cov_trace_pc() #14
  %bus.i.i339.i = getelementptr inbounds %struct.mdio_device, ptr %156, i32 0, i32 1
  %163 = ptrtoint ptr %bus.i.i339.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %bus.i.i339.i, align 8
  %call.i.i340.i = tail call i32 @mdiobus_write(ptr noundef %164, i32 noundef 31, i32 noundef 19, i16 noundef zeroext 5) #12
  %165 = ptrtoint ptr %clock.i336.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %clock.i336.i, align 8
  %page3.i341.i = getelementptr inbounds %struct.dp83640_clock, ptr %166, i32 0, i32 3
  %167 = ptrtoint ptr %page3.i341.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 5, ptr %page3.i341.i, align 4
  br label %ext_write.exit346.i

ext_write.exit346.i:                              ; preds = %if.then.i342.i, %for.body31.i.ext_write.exit346.i_crit_edge
  %bus.i18.i343.i = getelementptr inbounds %struct.mdio_device, ptr %156, i32 0, i32 1
  %168 = ptrtoint ptr %bus.i18.i343.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %bus.i18.i343.i, align 8
  %addr.i.i344.i = getelementptr inbounds %struct.mdio_device, ptr %156, i32 0, i32 6
  %170 = ptrtoint ptr %addr.i.i344.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %addr.i.i344.i, align 8
  %call.i19.i345.i = tail call i32 @mdiobus_write(ptr noundef %169, i32 noundef %171, i32 noundef 21, i16 noundef zeroext %conv23.i) #12
  %172 = ptrtoint ptr %this.1603.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %this.1.i = load ptr, ptr %this.1603.i, align 4
  %cmp.i333.not.i = icmp eq ptr %this.1.i, %phylist
  br i1 %cmp.i333.not.i, label %ext_write.exit346.i.for.end38.i_crit_edge, label %ext_write.exit346.i.for.body31.i_crit_edge

ext_write.exit346.i.for.body31.i_crit_edge:       ; preds = %ext_write.exit346.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body31.i

ext_write.exit346.i.for.end38.i_crit_edge:        ; preds = %ext_write.exit346.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end38.i

for.end38.i:                                      ; preds = %ext_write.exit346.i.for.end38.i_crit_edge, %ext_write.exit332.i.for.end38.i_crit_edge
  %173 = ptrtoint ptr %priv.i297.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %priv.i297.i, align 8
  %clock.i348.i = getelementptr inbounds %struct.dp83640_private, ptr %174, i32 0, i32 1
  %175 = ptrtoint ptr %clock.i348.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %clock.i348.i, align 8
  %page1.i349.i = getelementptr inbounds %struct.dp83640_clock, ptr %176, i32 0, i32 3
  %177 = ptrtoint ptr %page1.i349.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %page1.i349.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %178)
  %cmp.not.i350.i = icmp eq i32 %178, 5
  br i1 %cmp.not.i350.i, label %for.end38.i.ext_write.exit358.i_crit_edge, label %if.then.i354.i

for.end38.i.ext_write.exit358.i_crit_edge:        ; preds = %for.end38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ext_write.exit358.i

if.then.i354.i:                                   ; preds = %for.end38.i
  call void @__sanitizer_cov_trace_pc() #14
  %179 = ptrtoint ptr %bus.i.i289.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %bus.i.i289.i, align 8
  %call.i.i352.i = tail call i32 @mdiobus_write(ptr noundef %180, i32 noundef 31, i32 noundef 19, i16 noundef zeroext 5) #12
  %181 = ptrtoint ptr %clock.i348.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %clock.i348.i, align 8
  %page3.i353.i = getelementptr inbounds %struct.dp83640_clock, ptr %182, i32 0, i32 3
  %183 = ptrtoint ptr %page3.i353.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 5, ptr %page3.i353.i, align 4
  br label %ext_write.exit358.i

ext_write.exit358.i:                              ; preds = %if.then.i354.i, %for.end38.i.ext_write.exit358.i_crit_edge
  %184 = ptrtoint ptr %bus.i.i289.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %bus.i.i289.i, align 8
  %186 = ptrtoint ptr %addr.i.i290.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %addr.i.i290.i, align 8
  %call.i19.i357.i = tail call i32 @mdiobus_write(ptr noundef %185, i32 noundef %187, i32 noundef 21, i16 noundef zeroext %conv23.i) #12
  %conv50.i = or i16 %153, -24573
  %188 = ptrtoint ptr %priv.i297.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %priv.i297.i, align 8
  %clock.i360.i = getelementptr inbounds %struct.dp83640_private, ptr %189, i32 0, i32 1
  %190 = ptrtoint ptr %clock.i360.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %clock.i360.i, align 8
  %page1.i361.i = getelementptr inbounds %struct.dp83640_clock, ptr %191, i32 0, i32 3
  %192 = ptrtoint ptr %page1.i361.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %page1.i361.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %193)
  %cmp.not.i362.i = icmp eq i32 %193, 5
  br i1 %cmp.not.i362.i, label %ext_write.exit358.i.ext_write.exit370.i_crit_edge, label %if.then.i366.i

ext_write.exit358.i.ext_write.exit370.i_crit_edge: ; preds = %ext_write.exit358.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ext_write.exit370.i

if.then.i366.i:                                   ; preds = %ext_write.exit358.i
  call void @__sanitizer_cov_trace_pc() #14
  %194 = ptrtoint ptr %bus.i.i289.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %bus.i.i289.i, align 8
  %call.i.i364.i = tail call i32 @mdiobus_write(ptr noundef %195, i32 noundef 31, i32 noundef 19, i16 noundef zeroext 5) #12
  %196 = ptrtoint ptr %clock.i360.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %clock.i360.i, align 8
  %page3.i365.i = getelementptr inbounds %struct.dp83640_clock, ptr %197, i32 0, i32 3
  %198 = ptrtoint ptr %page3.i365.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 5, ptr %page3.i365.i, align 4
  br label %ext_write.exit370.i

ext_write.exit370.i:                              ; preds = %if.then.i366.i, %ext_write.exit358.i.ext_write.exit370.i_crit_edge
  %199 = ptrtoint ptr %bus.i.i289.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %bus.i.i289.i, align 8
  %201 = ptrtoint ptr %addr.i.i290.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %addr.i.i290.i, align 8
  %call.i19.i369.i = tail call i32 @mdiobus_write(ptr noundef %200, i32 noundef %202, i32 noundef 20, i16 noundef zeroext %conv50.i) #12
  %203 = ptrtoint ptr %priv.i297.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %priv.i297.i, align 8
  %clock.i372.i = getelementptr inbounds %struct.dp83640_private, ptr %204, i32 0, i32 1
  %205 = ptrtoint ptr %clock.i372.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %clock.i372.i, align 8
  %page1.i373.i = getelementptr inbounds %struct.dp83640_clock, ptr %206, i32 0, i32 3
  %207 = ptrtoint ptr %page1.i373.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %page1.i373.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %208)
  %cmp.not.i374.i = icmp eq i32 %208, 4
  br i1 %cmp.not.i374.i, label %ext_write.exit370.i.ext_write.exit382.i_crit_edge, label %if.then.i378.i

ext_write.exit370.i.ext_write.exit382.i_crit_edge: ; preds = %ext_write.exit370.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ext_write.exit382.i

if.then.i378.i:                                   ; preds = %ext_write.exit370.i
  call void @__sanitizer_cov_trace_pc() #14
  %209 = ptrtoint ptr %bus.i.i289.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %bus.i.i289.i, align 8
  %call.i.i376.i = tail call i32 @mdiobus_write(ptr noundef %210, i32 noundef 31, i32 noundef 19, i16 noundef zeroext 4) #12
  %211 = ptrtoint ptr %clock.i372.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %clock.i372.i, align 8
  %page3.i377.i = getelementptr inbounds %struct.dp83640_clock, ptr %212, i32 0, i32 3
  %213 = ptrtoint ptr %page3.i377.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 4, ptr %page3.i377.i, align 4
  br label %ext_write.exit382.i

ext_write.exit382.i:                              ; preds = %if.then.i378.i, %ext_write.exit370.i.ext_write.exit382.i_crit_edge
  %214 = ptrtoint ptr %bus.i.i289.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %bus.i.i289.i, align 8
  %216 = ptrtoint ptr %addr.i.i290.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %addr.i.i290.i, align 8
  %call.i19.i381.i = tail call i32 @mdiobus_write(ptr noundef %215, i32 noundef %217, i32 noundef 20, i16 noundef zeroext 1088) #12
  %218 = ptrtoint ptr %priv.i297.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %priv.i297.i, align 8
  %clock.i384.i = getelementptr inbounds %struct.dp83640_private, ptr %219, i32 0, i32 1
  %220 = ptrtoint ptr %clock.i384.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %clock.i384.i, align 8
  %page1.i385.i = getelementptr inbounds %struct.dp83640_clock, ptr %221, i32 0, i32 3
  %222 = ptrtoint ptr %page1.i385.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %page1.i385.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %223)
  %cmp.not.i386.i = icmp eq i32 %223, 4
  br i1 %cmp.not.i386.i, label %ext_write.exit382.i.ext_write.exit394.i_crit_edge, label %if.then.i390.i

ext_write.exit382.i.ext_write.exit394.i_crit_edge: ; preds = %ext_write.exit382.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ext_write.exit394.i

if.then.i390.i:                                   ; preds = %ext_write.exit382.i
  call void @__sanitizer_cov_trace_pc() #14
  %224 = ptrtoint ptr %bus.i.i289.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %bus.i.i289.i, align 8
  %call.i.i388.i = tail call i32 @mdiobus_write(ptr noundef %225, i32 noundef 31, i32 noundef 19, i16 noundef zeroext 4) #12
  %226 = ptrtoint ptr %clock.i384.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %clock.i384.i, align 8
  %page3.i389.i = getelementptr inbounds %struct.dp83640_clock, ptr %227, i32 0, i32 3
  %228 = ptrtoint ptr %page3.i389.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 4, ptr %page3.i389.i, align 4
  br label %ext_write.exit394.i

ext_write.exit394.i:                              ; preds = %if.then.i390.i, %ext_write.exit382.i.ext_write.exit394.i_crit_edge
  %229 = ptrtoint ptr %bus.i.i289.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %bus.i.i289.i, align 8
  %231 = ptrtoint ptr %addr.i.i290.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %addr.i.i290.i, align 8
  %call.i19.i393.i = tail call i32 @mdiobus_write(ptr noundef %230, i32 noundef %232, i32 noundef 20, i16 noundef zeroext 1280) #12
  %233 = ptrtoint ptr %priv.i297.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %priv.i297.i, align 8
  %clock.i396.i = getelementptr inbounds %struct.dp83640_private, ptr %234, i32 0, i32 1
  %235 = ptrtoint ptr %clock.i396.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %clock.i396.i, align 8
  %page1.i397.i = getelementptr inbounds %struct.dp83640_clock, ptr %236, i32 0, i32 3
  %237 = ptrtoint ptr %page1.i397.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %page1.i397.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %238)
  %cmp.not.i398.i = icmp eq i32 %238, 4
  br i1 %cmp.not.i398.i, label %ext_write.exit394.i.ext_write.exit406.i_crit_edge, label %if.then.i402.i

ext_write.exit394.i.ext_write.exit406.i_crit_edge: ; preds = %ext_write.exit394.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ext_write.exit406.i

if.then.i402.i:                                   ; preds = %ext_write.exit394.i
  call void @__sanitizer_cov_trace_pc() #14
  %239 = ptrtoint ptr %bus.i.i289.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %bus.i.i289.i, align 8
  %call.i.i400.i = tail call i32 @mdiobus_write(ptr noundef %240, i32 noundef 31, i32 noundef 19, i16 noundef zeroext 4) #12
  %241 = ptrtoint ptr %clock.i396.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %clock.i396.i, align 8
  %page3.i401.i = getelementptr inbounds %struct.dp83640_clock, ptr %242, i32 0, i32 3
  %243 = ptrtoint ptr %page3.i401.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 4, ptr %page3.i401.i, align 4
  br label %ext_write.exit406.i

ext_write.exit406.i:                              ; preds = %if.then.i402.i, %ext_write.exit394.i.ext_write.exit406.i_crit_edge
  %244 = ptrtoint ptr %bus.i.i289.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %bus.i.i289.i, align 8
  %246 = ptrtoint ptr %addr.i.i290.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %addr.i.i290.i, align 8
  %call.i19.i405.i = tail call i32 @mdiobus_write(ptr noundef %245, i32 noundef %247, i32 noundef 20, i16 noundef zeroext 1536) #12
  %248 = ptrtoint ptr %priv.i297.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %priv.i297.i, align 8
  %clock.i408.i = getelementptr inbounds %struct.dp83640_private, ptr %249, i32 0, i32 1
  %250 = ptrtoint ptr %clock.i408.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %clock.i408.i, align 8
  %page1.i409.i = getelementptr inbounds %struct.dp83640_clock, ptr %251, i32 0, i32 3
  %252 = ptrtoint ptr %page1.i409.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %page1.i409.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %253)
  %cmp.not.i410.i = icmp eq i32 %253, 4
  br i1 %cmp.not.i410.i, label %ext_write.exit406.i.ext_read.exit418.i_crit_edge, label %if.then.i414.i

ext_write.exit406.i.ext_read.exit418.i_crit_edge: ; preds = %ext_write.exit406.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ext_read.exit418.i

if.then.i414.i:                                   ; preds = %ext_write.exit406.i
  call void @__sanitizer_cov_trace_pc() #14
  %254 = ptrtoint ptr %bus.i.i289.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %bus.i.i289.i, align 8
  %call.i.i412.i = tail call i32 @mdiobus_write(ptr noundef %255, i32 noundef 31, i32 noundef 19, i16 noundef zeroext 4) #12
  %256 = ptrtoint ptr %clock.i408.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %clock.i408.i, align 8
  %page3.i413.i = getelementptr inbounds %struct.dp83640_clock, ptr %257, i32 0, i32 3
  %258 = ptrtoint ptr %page3.i413.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 4, ptr %page3.i413.i, align 4
  br label %ext_read.exit418.i

ext_read.exit418.i:                               ; preds = %if.then.i414.i, %ext_write.exit406.i.ext_read.exit418.i_crit_edge
  %259 = ptrtoint ptr %bus.i.i289.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %bus.i.i289.i, align 8
  %261 = ptrtoint ptr %addr.i.i290.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %addr.i.i290.i, align 8
  %call.i11.i417.i = tail call i32 @mdiobus_read(ptr noundef %260, i32 noundef %262, i32 noundef 22) #12
  %conv76.i = and i32 %call.i11.i417.i, 65535
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.9, i32 noundef %conv76.i) #15
  %263 = ptrtoint ptr %priv.i297.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %priv.i297.i, align 8
  %clock.i420.i = getelementptr inbounds %struct.dp83640_private, ptr %264, i32 0, i32 1
  %265 = ptrtoint ptr %clock.i420.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %clock.i420.i, align 8
  %page1.i421.i = getelementptr inbounds %struct.dp83640_clock, ptr %266, i32 0, i32 3
  %267 = ptrtoint ptr %page1.i421.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %page1.i421.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %268)
  %cmp.not.i422.i = icmp eq i32 %268, 4
  br i1 %cmp.not.i422.i, label %ext_read.exit418.i.ext_read.exit430.i_crit_edge, label %if.then.i426.i

ext_read.exit418.i.ext_read.exit430.i_crit_edge:  ; preds = %ext_read.exit418.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ext_read.exit430.i

if.then.i426.i:                                   ; preds = %ext_read.exit418.i
  call void @__sanitizer_cov_trace_pc() #14
  %269 = ptrtoint ptr %bus.i.i289.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %bus.i.i289.i, align 8
  %call.i.i424.i = tail call i32 @mdiobus_write(ptr noundef %270, i32 noundef 31, i32 noundef 19, i16 noundef zeroext 4) #12
  %271 = ptrtoint ptr %clock.i420.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %clock.i420.i, align 8
  %page3.i425.i = getelementptr inbounds %struct.dp83640_clock, ptr %272, i32 0, i32 3
  %273 = ptrtoint ptr %page3.i425.i to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 4, ptr %page3.i425.i, align 4
  br label %ext_read.exit430.i

ext_read.exit430.i:                               ; preds = %if.then.i426.i, %ext_read.exit418.i.ext_read.exit430.i_crit_edge
  %274 = ptrtoint ptr %bus.i.i289.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %bus.i.i289.i, align 8
  %276 = ptrtoint ptr %addr.i.i290.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %addr.i.i290.i, align 8
  %call.i11.i429.i = tail call i32 @mdiobus_read(ptr noundef %275, i32 noundef %277, i32 noundef 30) #12
  %conv84.i = and i32 %call.i11.i429.i, 65535
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.14, i32 noundef %conv84.i) #15
  %278 = ptrtoint ptr %priv.i297.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %priv.i297.i, align 8
  %clock.i432.i = getelementptr inbounds %struct.dp83640_private, ptr %279, i32 0, i32 1
  %280 = ptrtoint ptr %clock.i432.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %clock.i432.i, align 8
  %page1.i433.i = getelementptr inbounds %struct.dp83640_clock, ptr %281, i32 0, i32 3
  %282 = ptrtoint ptr %page1.i433.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %page1.i433.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %283)
  %cmp.not.i434.i = icmp eq i32 %283, 4
  br i1 %cmp.not.i434.i, label %ext_read.exit430.i.ext_read.exit442.i_crit_edge, label %if.then.i438.i

ext_read.exit430.i.ext_read.exit442.i_crit_edge:  ; preds = %ext_read.exit430.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ext_read.exit442.i

if.then.i438.i:                                   ; preds = %ext_read.exit430.i
  call void @__sanitizer_cov_trace_pc() #14
  %284 = ptrtoint ptr %bus.i.i289.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %bus.i.i289.i, align 8
  %call.i.i436.i = tail call i32 @mdiobus_write(ptr noundef %285, i32 noundef 31, i32 noundef 19, i16 noundef zeroext 4) #12
  %286 = ptrtoint ptr %clock.i432.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %clock.i432.i, align 8
  %page3.i437.i = getelementptr inbounds %struct.dp83640_clock, ptr %287, i32 0, i32 3
  %288 = ptrtoint ptr %page3.i437.i to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 4, ptr %page3.i437.i, align 4
  br label %ext_read.exit442.i

ext_read.exit442.i:                               ; preds = %if.then.i438.i, %ext_read.exit430.i.ext_read.exit442.i_crit_edge
  %289 = ptrtoint ptr %bus.i.i289.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %bus.i.i289.i, align 8
  %291 = ptrtoint ptr %addr.i.i290.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %addr.i.i290.i, align 8
  %call.i11.i441.i = tail call i32 @mdiobus_read(ptr noundef %290, i32 noundef %292, i32 noundef 31) #12
  %293 = ptrtoint ptr %priv.i297.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %priv.i297.i, align 8
  %clock.i444.i = getelementptr inbounds %struct.dp83640_private, ptr %294, i32 0, i32 1
  %295 = ptrtoint ptr %clock.i444.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %clock.i444.i, align 8
  %page1.i445.i = getelementptr inbounds %struct.dp83640_clock, ptr %296, i32 0, i32 3
  %297 = ptrtoint ptr %page1.i445.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %page1.i445.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %298)
  %cmp.not.i446.i = icmp eq i32 %298, 4
  br i1 %cmp.not.i446.i, label %ext_read.exit442.i.ext_read.exit454.i_crit_edge, label %if.then.i450.i

ext_read.exit442.i.ext_read.exit454.i_crit_edge:  ; preds = %ext_read.exit442.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ext_read.exit454.i

if.then.i450.i:                                   ; preds = %ext_read.exit442.i
  call void @__sanitizer_cov_trace_pc() #14
  %299 = ptrtoint ptr %bus.i.i289.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %bus.i.i289.i, align 8
  %call.i.i448.i = tail call i32 @mdiobus_write(ptr noundef %300, i32 noundef 31, i32 noundef 19, i16 noundef zeroext 4) #12
  %301 = ptrtoint ptr %clock.i444.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %clock.i444.i, align 8
  %page3.i449.i = getelementptr inbounds %struct.dp83640_clock, ptr %302, i32 0, i32 3
  %303 = ptrtoint ptr %page3.i449.i to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 4, ptr %page3.i449.i, align 4
  br label %ext_read.exit454.i

ext_read.exit454.i:                               ; preds = %if.then.i450.i, %ext_read.exit442.i.ext_read.exit454.i_crit_edge
  %304 = ptrtoint ptr %bus.i.i289.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %bus.i.i289.i, align 8
  %306 = ptrtoint ptr %addr.i.i290.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %addr.i.i290.i, align 8
  %call.i11.i453.i = tail call i32 @mdiobus_read(ptr noundef %305, i32 noundef %307, i32 noundef 31) #12
  %308 = ptrtoint ptr %priv.i297.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %priv.i297.i, align 8
  %clock.i456.i = getelementptr inbounds %struct.dp83640_private, ptr %309, i32 0, i32 1
  %310 = ptrtoint ptr %clock.i456.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %clock.i456.i, align 8
  %page1.i457.i = getelementptr inbounds %struct.dp83640_clock, ptr %311, i32 0, i32 3
  %312 = ptrtoint ptr %page1.i457.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %page1.i457.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %313)
  %cmp.not.i458.i = icmp eq i32 %313, 4
  br i1 %cmp.not.i458.i, label %ext_read.exit454.i.ext_read.exit466.i_crit_edge, label %if.then.i462.i

ext_read.exit454.i.ext_read.exit466.i_crit_edge:  ; preds = %ext_read.exit454.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ext_read.exit466.i

if.then.i462.i:                                   ; preds = %ext_read.exit454.i
  call void @__sanitizer_cov_trace_pc() #14
  %314 = ptrtoint ptr %bus.i.i289.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %bus.i.i289.i, align 8
  %call.i.i460.i = tail call i32 @mdiobus_write(ptr noundef %315, i32 noundef 31, i32 noundef 19, i16 noundef zeroext 4) #12
  %316 = ptrtoint ptr %clock.i456.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %clock.i456.i, align 8
  %page3.i461.i = getelementptr inbounds %struct.dp83640_clock, ptr %317, i32 0, i32 3
  %318 = ptrtoint ptr %page3.i461.i to i32
  call void @__asan_store4_noabort(i32 %318)
  store i32 4, ptr %page3.i461.i, align 4
  br label %ext_read.exit466.i

ext_read.exit466.i:                               ; preds = %if.then.i462.i, %ext_read.exit454.i.ext_read.exit466.i_crit_edge
  %319 = ptrtoint ptr %bus.i.i289.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %bus.i.i289.i, align 8
  %321 = ptrtoint ptr %addr.i.i290.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %addr.i.i290.i, align 8
  %call.i11.i465.i = tail call i32 @mdiobus_read(ptr noundef %320, i32 noundef %322, i32 noundef 31) #12
  %323 = ptrtoint ptr %priv.i297.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %priv.i297.i, align 8
  %clock.i468.i = getelementptr inbounds %struct.dp83640_private, ptr %324, i32 0, i32 1
  %325 = ptrtoint ptr %clock.i468.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %clock.i468.i, align 8
  %page1.i469.i = getelementptr inbounds %struct.dp83640_clock, ptr %326, i32 0, i32 3
  %327 = ptrtoint ptr %page1.i469.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %page1.i469.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %328)
  %cmp.not.i470.i = icmp eq i32 %328, 4
  br i1 %cmp.not.i470.i, label %ext_read.exit466.i.ext_read.exit478.i_crit_edge, label %if.then.i474.i

ext_read.exit466.i.ext_read.exit478.i_crit_edge:  ; preds = %ext_read.exit466.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ext_read.exit478.i

if.then.i474.i:                                   ; preds = %ext_read.exit466.i
  call void @__sanitizer_cov_trace_pc() #14
  %329 = ptrtoint ptr %bus.i.i289.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %bus.i.i289.i, align 8
  %call.i.i472.i = tail call i32 @mdiobus_write(ptr noundef %330, i32 noundef 31, i32 noundef 19, i16 noundef zeroext 4) #12
  %331 = ptrtoint ptr %clock.i468.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %clock.i468.i, align 8
  %page3.i473.i = getelementptr inbounds %struct.dp83640_clock, ptr %332, i32 0, i32 3
  %333 = ptrtoint ptr %page3.i473.i to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 4, ptr %page3.i473.i, align 4
  br label %ext_read.exit478.i

ext_read.exit478.i:                               ; preds = %if.then.i474.i, %ext_read.exit466.i.ext_read.exit478.i_crit_edge
  %334 = ptrtoint ptr %bus.i.i289.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %bus.i.i289.i, align 8
  %336 = ptrtoint ptr %addr.i.i290.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %addr.i.i290.i, align 8
  %call.i11.i477.i = tail call i32 @mdiobus_read(ptr noundef %335, i32 noundef %337, i32 noundef 31) #12
  %conv.i479.i = and i32 %call.i11.i465.i, 65535
  %conv1.i.i = shl i32 %call.i11.i477.i, 16
  %or.i.i = or i32 %conv1.i.i, %conv.i479.i
  %conv7.i.i = zext i32 %or.i.i to i64
  %338 = ptrtoint ptr %phylist to i32
  call void @__asan_load4_noabort(i32 %338)
  %this.2604.i = load ptr, ptr %phylist, align 4
  %cmp.i480.not605.i = icmp eq ptr %this.2604.i, %phylist
  br i1 %cmp.i480.not605.i, label %ext_read.exit478.i.for.cond157.preheader.i_crit_edge, label %for.body101.lr.ph.i

ext_read.exit478.i.for.cond157.preheader.i_crit_edge: ; preds = %ext_read.exit478.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond157.preheader.i

for.body101.lr.ph.i:                              ; preds = %ext_read.exit478.i
  %339 = shl i32 %call.i11.i453.i, 16
  %shl4.i.i = and i32 %339, 1073676288
  %conv86.mask.i = and i32 %call.i11.i441.i, 65535
  %add.i567.neg610.i = or i32 %shl4.i.i, %conv86.mask.i
  %add.i567.neg.i = zext i32 %add.i567.neg610.i to i64
  br label %for.body101.i

for.cond157.preheader.i:                          ; preds = %ext_read.exit553.i.for.cond157.preheader.i_crit_edge, %ext_read.exit478.i.for.cond157.preheader.i_crit_edge
  %340 = ptrtoint ptr %phylist to i32
  call void @__asan_load4_noabort(i32 %340)
  %this.3607.i = load ptr, ptr %phylist, align 4
  %cmp.i568.not608.i = icmp eq ptr %this.3607.i, %phylist
  br i1 %cmp.i568.not608.i, label %for.cond157.preheader.i.for.end171.i_crit_edge, label %for.cond157.preheader.i.for.body162.i_crit_edge

for.cond157.preheader.i.for.body162.i_crit_edge:  ; preds = %for.cond157.preheader.i
  br label %for.body162.i

for.cond157.preheader.i.for.end171.i_crit_edge:   ; preds = %for.cond157.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end171.i

for.body101.i:                                    ; preds = %ext_read.exit553.i.for.body101.i_crit_edge, %for.body101.lr.ph.i
  %this.2606.i = phi ptr [ %this.2604.i, %for.body101.lr.ph.i ], [ %this.2.i, %ext_read.exit553.i.for.body101.i_crit_edge ]
  %phydev105.i = getelementptr inbounds %struct.dp83640_private, ptr %this.2606.i, i32 0, i32 2
  %341 = ptrtoint ptr %phydev105.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %phydev105.i, align 4
  %priv.i482.i = getelementptr inbounds %struct.phy_device, ptr %342, i32 0, i32 26
  %343 = ptrtoint ptr %priv.i482.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %priv.i482.i, align 8
  %clock.i483.i = getelementptr inbounds %struct.dp83640_private, ptr %344, i32 0, i32 1
  %345 = ptrtoint ptr %clock.i483.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %clock.i483.i, align 8
  %page1.i484.i = getelementptr inbounds %struct.dp83640_clock, ptr %346, i32 0, i32 3
  %347 = ptrtoint ptr %page1.i484.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %page1.i484.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %348)
  %cmp.not.i485.i = icmp eq i32 %348, 4
  br i1 %cmp.not.i485.i, label %for.body101.i.ext_read.exit493.i_crit_edge, label %if.then.i489.i

for.body101.i.ext_read.exit493.i_crit_edge:       ; preds = %for.body101.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ext_read.exit493.i

if.then.i489.i:                                   ; preds = %for.body101.i
  call void @__sanitizer_cov_trace_pc() #14
  %bus.i.i486.i = getelementptr inbounds %struct.mdio_device, ptr %342, i32 0, i32 1
  %349 = ptrtoint ptr %bus.i.i486.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %bus.i.i486.i, align 8
  %call.i.i487.i = call i32 @mdiobus_write(ptr noundef %350, i32 noundef 31, i32 noundef 19, i16 noundef zeroext 4) #12
  %351 = ptrtoint ptr %clock.i483.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %clock.i483.i, align 8
  %page3.i488.i = getelementptr inbounds %struct.dp83640_clock, ptr %352, i32 0, i32 3
  %353 = ptrtoint ptr %page3.i488.i to i32
  call void @__asan_store4_noabort(i32 %353)
  store i32 4, ptr %page3.i488.i, align 4
  br label %ext_read.exit493.i

ext_read.exit493.i:                               ; preds = %if.then.i489.i, %for.body101.i.ext_read.exit493.i_crit_edge
  %bus.i10.i490.i = getelementptr inbounds %struct.mdio_device, ptr %342, i32 0, i32 1
  %354 = ptrtoint ptr %bus.i10.i490.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %bus.i10.i490.i, align 8
  %addr.i.i491.i = getelementptr inbounds %struct.mdio_device, ptr %342, i32 0, i32 6
  %356 = ptrtoint ptr %addr.i.i491.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %addr.i.i491.i, align 8
  %call.i11.i492.i = call i32 @mdiobus_read(ptr noundef %355, i32 noundef %357, i32 noundef 22) #12
  %358 = ptrtoint ptr %phydev105.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %phydev105.i, align 4
  %conv114.i = and i32 %call.i11.i492.i, 65535
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %359, ptr noundef nonnull @.str.17, i32 noundef %conv114.i) #15
  %360 = ptrtoint ptr %phydev105.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %phydev105.i, align 4
  %priv.i494.i = getelementptr inbounds %struct.phy_device, ptr %361, i32 0, i32 26
  %362 = ptrtoint ptr %priv.i494.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %priv.i494.i, align 8
  %clock.i495.i = getelementptr inbounds %struct.dp83640_private, ptr %363, i32 0, i32 1
  %364 = ptrtoint ptr %clock.i495.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %clock.i495.i, align 8
  %page1.i496.i = getelementptr inbounds %struct.dp83640_clock, ptr %365, i32 0, i32 3
  %366 = ptrtoint ptr %page1.i496.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %page1.i496.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %367)
  %cmp.not.i497.i = icmp eq i32 %367, 4
  br i1 %cmp.not.i497.i, label %ext_read.exit493.i.ext_read.exit505.i_crit_edge, label %if.then.i501.i

ext_read.exit493.i.ext_read.exit505.i_crit_edge:  ; preds = %ext_read.exit493.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ext_read.exit505.i

if.then.i501.i:                                   ; preds = %ext_read.exit493.i
  call void @__sanitizer_cov_trace_pc() #14
  %bus.i.i498.i = getelementptr inbounds %struct.mdio_device, ptr %361, i32 0, i32 1
  %368 = ptrtoint ptr %bus.i.i498.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %bus.i.i498.i, align 8
  %call.i.i499.i = call i32 @mdiobus_write(ptr noundef %369, i32 noundef 31, i32 noundef 19, i16 noundef zeroext 4) #12
  %370 = ptrtoint ptr %clock.i495.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %clock.i495.i, align 8
  %page3.i500.i = getelementptr inbounds %struct.dp83640_clock, ptr %371, i32 0, i32 3
  %372 = ptrtoint ptr %page3.i500.i to i32
  call void @__asan_store4_noabort(i32 %372)
  store i32 4, ptr %page3.i500.i, align 4
  br label %ext_read.exit505.i

ext_read.exit505.i:                               ; preds = %if.then.i501.i, %ext_read.exit493.i.ext_read.exit505.i_crit_edge
  %bus.i10.i502.i = getelementptr inbounds %struct.mdio_device, ptr %361, i32 0, i32 1
  %373 = ptrtoint ptr %bus.i10.i502.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %bus.i10.i502.i, align 8
  %addr.i.i503.i = getelementptr inbounds %struct.mdio_device, ptr %361, i32 0, i32 6
  %375 = ptrtoint ptr %addr.i.i503.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %addr.i.i503.i, align 8
  %call.i11.i504.i = call i32 @mdiobus_read(ptr noundef %374, i32 noundef %376, i32 noundef 30) #12
  %377 = ptrtoint ptr %phydev105.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %phydev105.i, align 4
  %conv124.i = and i32 %call.i11.i504.i, 65535
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %378, ptr noundef nonnull @.str.20, i32 noundef %conv124.i) #15
  %379 = ptrtoint ptr %phydev105.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %phydev105.i, align 4
  %priv.i506.i = getelementptr inbounds %struct.phy_device, ptr %380, i32 0, i32 26
  %381 = ptrtoint ptr %priv.i506.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %priv.i506.i, align 8
  %clock.i507.i = getelementptr inbounds %struct.dp83640_private, ptr %382, i32 0, i32 1
  %383 = ptrtoint ptr %clock.i507.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %clock.i507.i, align 8
  %page1.i508.i = getelementptr inbounds %struct.dp83640_clock, ptr %384, i32 0, i32 3
  %385 = ptrtoint ptr %page1.i508.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %page1.i508.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %386)
  %cmp.not.i509.i = icmp eq i32 %386, 4
  br i1 %cmp.not.i509.i, label %ext_read.exit505.i.ext_read.exit517.i_crit_edge, label %if.then.i513.i

ext_read.exit505.i.ext_read.exit517.i_crit_edge:  ; preds = %ext_read.exit505.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ext_read.exit517.i

if.then.i513.i:                                   ; preds = %ext_read.exit505.i
  call void @__sanitizer_cov_trace_pc() #14
  %bus.i.i510.i = getelementptr inbounds %struct.mdio_device, ptr %380, i32 0, i32 1
  %387 = ptrtoint ptr %bus.i.i510.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %bus.i.i510.i, align 8
  %call.i.i511.i = call i32 @mdiobus_write(ptr noundef %388, i32 noundef 31, i32 noundef 19, i16 noundef zeroext 4) #12
  %389 = ptrtoint ptr %clock.i507.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %clock.i507.i, align 8
  %page3.i512.i = getelementptr inbounds %struct.dp83640_clock, ptr %390, i32 0, i32 3
  %391 = ptrtoint ptr %page3.i512.i to i32
  call void @__asan_store4_noabort(i32 %391)
  store i32 4, ptr %page3.i512.i, align 4
  br label %ext_read.exit517.i

ext_read.exit517.i:                               ; preds = %if.then.i513.i, %ext_read.exit505.i.ext_read.exit517.i_crit_edge
  %bus.i10.i514.i = getelementptr inbounds %struct.mdio_device, ptr %380, i32 0, i32 1
  %392 = ptrtoint ptr %bus.i10.i514.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %bus.i10.i514.i, align 8
  %addr.i.i515.i = getelementptr inbounds %struct.mdio_device, ptr %380, i32 0, i32 6
  %394 = ptrtoint ptr %addr.i.i515.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load i32, ptr %addr.i.i515.i, align 8
  %call.i11.i516.i = call i32 @mdiobus_read(ptr noundef %393, i32 noundef %395, i32 noundef 31) #12
  %396 = ptrtoint ptr %phydev105.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %phydev105.i, align 4
  %priv.i518.i = getelementptr inbounds %struct.phy_device, ptr %397, i32 0, i32 26
  %398 = ptrtoint ptr %priv.i518.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %priv.i518.i, align 8
  %clock.i519.i = getelementptr inbounds %struct.dp83640_private, ptr %399, i32 0, i32 1
  %400 = ptrtoint ptr %clock.i519.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %clock.i519.i, align 8
  %page1.i520.i = getelementptr inbounds %struct.dp83640_clock, ptr %401, i32 0, i32 3
  %402 = ptrtoint ptr %page1.i520.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %page1.i520.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %403)
  %cmp.not.i521.i = icmp eq i32 %403, 4
  br i1 %cmp.not.i521.i, label %ext_read.exit517.i.ext_read.exit529.i_crit_edge, label %if.then.i525.i

ext_read.exit517.i.ext_read.exit529.i_crit_edge:  ; preds = %ext_read.exit517.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ext_read.exit529.i

if.then.i525.i:                                   ; preds = %ext_read.exit517.i
  call void @__sanitizer_cov_trace_pc() #14
  %bus.i.i522.i = getelementptr inbounds %struct.mdio_device, ptr %397, i32 0, i32 1
  %404 = ptrtoint ptr %bus.i.i522.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %bus.i.i522.i, align 8
  %call.i.i523.i = call i32 @mdiobus_write(ptr noundef %405, i32 noundef 31, i32 noundef 19, i16 noundef zeroext 4) #12
  %406 = ptrtoint ptr %clock.i519.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %clock.i519.i, align 8
  %page3.i524.i = getelementptr inbounds %struct.dp83640_clock, ptr %407, i32 0, i32 3
  %408 = ptrtoint ptr %page3.i524.i to i32
  call void @__asan_store4_noabort(i32 %408)
  store i32 4, ptr %page3.i524.i, align 4
  br label %ext_read.exit529.i

ext_read.exit529.i:                               ; preds = %if.then.i525.i, %ext_read.exit517.i.ext_read.exit529.i_crit_edge
  %bus.i10.i526.i = getelementptr inbounds %struct.mdio_device, ptr %397, i32 0, i32 1
  %409 = ptrtoint ptr %bus.i10.i526.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %bus.i10.i526.i, align 8
  %addr.i.i527.i = getelementptr inbounds %struct.mdio_device, ptr %397, i32 0, i32 6
  %411 = ptrtoint ptr %addr.i.i527.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %addr.i.i527.i, align 8
  %call.i11.i528.i = call i32 @mdiobus_read(ptr noundef %410, i32 noundef %412, i32 noundef 31) #12
  %413 = ptrtoint ptr %phydev105.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %phydev105.i, align 4
  %priv.i530.i = getelementptr inbounds %struct.phy_device, ptr %414, i32 0, i32 26
  %415 = ptrtoint ptr %priv.i530.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %priv.i530.i, align 8
  %clock.i531.i = getelementptr inbounds %struct.dp83640_private, ptr %416, i32 0, i32 1
  %417 = ptrtoint ptr %clock.i531.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %clock.i531.i, align 8
  %page1.i532.i = getelementptr inbounds %struct.dp83640_clock, ptr %418, i32 0, i32 3
  %419 = ptrtoint ptr %page1.i532.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load i32, ptr %page1.i532.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %420)
  %cmp.not.i533.i = icmp eq i32 %420, 4
  br i1 %cmp.not.i533.i, label %ext_read.exit529.i.ext_read.exit541.i_crit_edge, label %if.then.i537.i

ext_read.exit529.i.ext_read.exit541.i_crit_edge:  ; preds = %ext_read.exit529.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ext_read.exit541.i

if.then.i537.i:                                   ; preds = %ext_read.exit529.i
  call void @__sanitizer_cov_trace_pc() #14
  %bus.i.i534.i = getelementptr inbounds %struct.mdio_device, ptr %414, i32 0, i32 1
  %421 = ptrtoint ptr %bus.i.i534.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %bus.i.i534.i, align 8
  %call.i.i535.i = call i32 @mdiobus_write(ptr noundef %422, i32 noundef 31, i32 noundef 19, i16 noundef zeroext 4) #12
  %423 = ptrtoint ptr %clock.i531.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %clock.i531.i, align 8
  %page3.i536.i = getelementptr inbounds %struct.dp83640_clock, ptr %424, i32 0, i32 3
  %425 = ptrtoint ptr %page3.i536.i to i32
  call void @__asan_store4_noabort(i32 %425)
  store i32 4, ptr %page3.i536.i, align 4
  br label %ext_read.exit541.i

ext_read.exit541.i:                               ; preds = %if.then.i537.i, %ext_read.exit529.i.ext_read.exit541.i_crit_edge
  %bus.i10.i538.i = getelementptr inbounds %struct.mdio_device, ptr %414, i32 0, i32 1
  %426 = ptrtoint ptr %bus.i10.i538.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %bus.i10.i538.i, align 8
  %addr.i.i539.i = getelementptr inbounds %struct.mdio_device, ptr %414, i32 0, i32 6
  %428 = ptrtoint ptr %addr.i.i539.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load i32, ptr %addr.i.i539.i, align 8
  %call.i11.i540.i = call i32 @mdiobus_read(ptr noundef %427, i32 noundef %429, i32 noundef 31) #12
  %430 = ptrtoint ptr %phydev105.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %phydev105.i, align 4
  %priv.i542.i = getelementptr inbounds %struct.phy_device, ptr %431, i32 0, i32 26
  %432 = ptrtoint ptr %priv.i542.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %priv.i542.i, align 8
  %clock.i543.i = getelementptr inbounds %struct.dp83640_private, ptr %433, i32 0, i32 1
  %434 = ptrtoint ptr %clock.i543.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %clock.i543.i, align 8
  %page1.i544.i = getelementptr inbounds %struct.dp83640_clock, ptr %435, i32 0, i32 3
  %436 = ptrtoint ptr %page1.i544.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load i32, ptr %page1.i544.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %437)
  %cmp.not.i545.i = icmp eq i32 %437, 4
  br i1 %cmp.not.i545.i, label %ext_read.exit541.i.ext_read.exit553.i_crit_edge, label %if.then.i549.i

ext_read.exit541.i.ext_read.exit553.i_crit_edge:  ; preds = %ext_read.exit541.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ext_read.exit553.i

if.then.i549.i:                                   ; preds = %ext_read.exit541.i
  call void @__sanitizer_cov_trace_pc() #14
  %bus.i.i546.i = getelementptr inbounds %struct.mdio_device, ptr %431, i32 0, i32 1
  %438 = ptrtoint ptr %bus.i.i546.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %bus.i.i546.i, align 8
  %call.i.i547.i = call i32 @mdiobus_write(ptr noundef %439, i32 noundef 31, i32 noundef 19, i16 noundef zeroext 4) #12
  %440 = ptrtoint ptr %clock.i543.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %clock.i543.i, align 8
  %page3.i548.i = getelementptr inbounds %struct.dp83640_clock, ptr %441, i32 0, i32 3
  %442 = ptrtoint ptr %page3.i548.i to i32
  call void @__asan_store4_noabort(i32 %442)
  store i32 4, ptr %page3.i548.i, align 4
  br label %ext_read.exit553.i

ext_read.exit553.i:                               ; preds = %if.then.i549.i, %ext_read.exit541.i.ext_read.exit553.i_crit_edge
  %bus.i10.i550.i = getelementptr inbounds %struct.mdio_device, ptr %431, i32 0, i32 1
  %443 = ptrtoint ptr %bus.i10.i550.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %bus.i10.i550.i, align 8
  %addr.i.i551.i = getelementptr inbounds %struct.mdio_device, ptr %431, i32 0, i32 6
  %445 = ptrtoint ptr %addr.i.i551.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load i32, ptr %addr.i.i551.i, align 8
  %call.i11.i552.i = call i32 @mdiobus_read(ptr noundef %444, i32 noundef %446, i32 noundef 31) #12
  %conv.i555.i = and i32 %call.i11.i540.i, 65535
  %conv1.i557.i = shl i32 %call.i11.i552.i, 16
  %or.i559.i = or i32 %conv1.i557.i, %conv.i555.i
  %conv127.mask.i = and i32 %call.i11.i516.i, 65535
  %447 = shl i32 %call.i11.i528.i, 16
  %shl4.i563.i = and i32 %447, 1073676288
  %conv7.i564.i = zext i32 %or.i559.i to i64
  %reass.add.i = sub nsw i64 %conv7.i.i, %conv7.i564.i
  %reass.mul.i = mul nsw i64 %reass.add.i, 1000000000
  %448 = or i32 %shl4.i563.i, %conv127.mask.i
  %449 = zext i32 %448 to i64
  %add.i.i = sub nsw i64 %add.i567.neg.i, %449
  %sub.i = add i64 %reass.mul.i, %add.i.i
  %450 = ptrtoint ptr %phydev105.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %phydev105.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %451, ptr noundef nonnull @.str.23, i64 noundef %sub.i) #15
  %add148.i = add i64 %sub.i, 16
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %ts.i, i64 noundef %add148.i) #12
  %452 = ptrtoint ptr %phydev105.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %phydev105.i, align 4
  call fastcc void @tdr_write(i32 noundef 0, ptr noundef %453, ptr noundef nonnull %ts.i, i16 noundef zeroext 8) #12
  %454 = ptrtoint ptr %this.2606.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %this.2.i = load ptr, ptr %this.2606.i, align 4
  %cmp.i480.not.i = icmp eq ptr %this.2.i, %phylist
  br i1 %cmp.i480.not.i, label %ext_read.exit553.i.for.cond157.preheader.i_crit_edge, label %ext_read.exit553.i.for.body101.i_crit_edge

ext_read.exit553.i.for.body101.i_crit_edge:       ; preds = %ext_read.exit553.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body101.i

ext_read.exit553.i.for.cond157.preheader.i_crit_edge: ; preds = %ext_read.exit553.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond157.preheader.i

for.body162.i:                                    ; preds = %ext_write.exit581.i.for.body162.i_crit_edge, %for.cond157.preheader.i.for.body162.i_crit_edge
  %this.3609.i = phi ptr [ %this.3.i, %ext_write.exit581.i.for.body162.i_crit_edge ], [ %this.3607.i, %for.cond157.preheader.i.for.body162.i_crit_edge ]
  %phydev166.i = getelementptr inbounds %struct.dp83640_private, ptr %this.3609.i, i32 0, i32 2
  %455 = ptrtoint ptr %phydev166.i to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %phydev166.i, align 4
  %cfg0167.i = getelementptr inbounds %struct.dp83640_private, ptr %this.3609.i, i32 0, i32 9
  %457 = ptrtoint ptr %cfg0167.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load i32, ptr %cfg0167.i, align 4
  %conv168.i = trunc i32 %458 to i16
  %priv.i570.i = getelementptr inbounds %struct.phy_device, ptr %456, i32 0, i32 26
  %459 = ptrtoint ptr %priv.i570.i to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %priv.i570.i, align 8
  %clock.i571.i = getelementptr inbounds %struct.dp83640_private, ptr %460, i32 0, i32 1
  %461 = ptrtoint ptr %clock.i571.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %clock.i571.i, align 8
  %page1.i572.i = getelementptr inbounds %struct.dp83640_clock, ptr %462, i32 0, i32 3
  %463 = ptrtoint ptr %page1.i572.i to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load i32, ptr %page1.i572.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %464)
  %cmp.not.i573.i = icmp eq i32 %464, 5
  br i1 %cmp.not.i573.i, label %for.body162.i.ext_write.exit581.i_crit_edge, label %if.then.i577.i

for.body162.i.ext_write.exit581.i_crit_edge:      ; preds = %for.body162.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ext_write.exit581.i

if.then.i577.i:                                   ; preds = %for.body162.i
  call void @__sanitizer_cov_trace_pc() #14
  %bus.i.i574.i = getelementptr inbounds %struct.mdio_device, ptr %456, i32 0, i32 1
  %465 = ptrtoint ptr %bus.i.i574.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %bus.i.i574.i, align 8
  %call.i.i575.i = call i32 @mdiobus_write(ptr noundef %466, i32 noundef 31, i32 noundef 19, i16 noundef zeroext 5) #12
  %467 = ptrtoint ptr %clock.i571.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %clock.i571.i, align 8
  %page3.i576.i = getelementptr inbounds %struct.dp83640_clock, ptr %468, i32 0, i32 3
  %469 = ptrtoint ptr %page3.i576.i to i32
  call void @__asan_store4_noabort(i32 %469)
  store i32 5, ptr %page3.i576.i, align 4
  br label %ext_write.exit581.i

ext_write.exit581.i:                              ; preds = %if.then.i577.i, %for.body162.i.ext_write.exit581.i_crit_edge
  %bus.i18.i578.i = getelementptr inbounds %struct.mdio_device, ptr %456, i32 0, i32 1
  %470 = ptrtoint ptr %bus.i18.i578.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %bus.i18.i578.i, align 8
  %addr.i.i579.i = getelementptr inbounds %struct.mdio_device, ptr %456, i32 0, i32 6
  %472 = ptrtoint ptr %addr.i.i579.i to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load i32, ptr %addr.i.i579.i, align 8
  %call.i19.i580.i = call i32 @mdiobus_write(ptr noundef %471, i32 noundef %473, i32 noundef 24, i16 noundef zeroext %conv168.i) #12
  %474 = ptrtoint ptr %this.3609.i to i32
  call void @__asan_load4_noabort(i32 %474)
  %this.3.i = load ptr, ptr %this.3609.i, align 4
  %cmp.i568.not.i = icmp eq ptr %this.3.i, %phylist
  br i1 %cmp.i568.not.i, label %ext_write.exit581.i.for.end171.i_crit_edge, label %ext_write.exit581.i.for.body162.i_crit_edge

ext_write.exit581.i.for.body162.i_crit_edge:      ; preds = %ext_write.exit581.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body162.i

ext_write.exit581.i.for.end171.i_crit_edge:       ; preds = %ext_write.exit581.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end171.i

for.end171.i:                                     ; preds = %ext_write.exit581.i.for.end171.i_crit_edge, %for.cond157.preheader.i.for.end171.i_crit_edge
  %475 = ptrtoint ptr %priv.i297.i to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %priv.i297.i, align 8
  %clock.i583.i = getelementptr inbounds %struct.dp83640_private, ptr %476, i32 0, i32 1
  %477 = ptrtoint ptr %clock.i583.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %clock.i583.i, align 8
  %page1.i584.i = getelementptr inbounds %struct.dp83640_clock, ptr %478, i32 0, i32 3
  %479 = ptrtoint ptr %page1.i584.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load i32, ptr %page1.i584.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %480)
  %cmp.not.i585.i = icmp eq i32 %480, 5
  br i1 %cmp.not.i585.i, label %for.end171.i.ext_write.exit593.i_crit_edge, label %if.then.i589.i

for.end171.i.ext_write.exit593.i_crit_edge:       ; preds = %for.end171.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ext_write.exit593.i

if.then.i589.i:                                   ; preds = %for.end171.i
  call void @__sanitizer_cov_trace_pc() #14
  %481 = ptrtoint ptr %bus.i.i289.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %bus.i.i289.i, align 8
  %call.i.i587.i = call i32 @mdiobus_write(ptr noundef %482, i32 noundef 31, i32 noundef 19, i16 noundef zeroext 5) #12
  %483 = ptrtoint ptr %clock.i583.i to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %clock.i583.i, align 8
  %page3.i588.i = getelementptr inbounds %struct.dp83640_clock, ptr %484, i32 0, i32 3
  %485 = ptrtoint ptr %page3.i588.i to i32
  call void @__asan_store4_noabort(i32 %485)
  store i32 5, ptr %page3.i588.i, align 4
  br label %ext_write.exit593.i

ext_write.exit593.i:                              ; preds = %if.then.i589.i, %for.end171.i.ext_write.exit593.i_crit_edge
  %486 = ptrtoint ptr %bus.i.i289.i to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %bus.i.i289.i, align 8
  %488 = ptrtoint ptr %addr.i.i290.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load i32, ptr %addr.i.i290.i, align 8
  %call.i19.i592.i = call i32 @mdiobus_write(ptr noundef %487, i32 noundef %489, i32 noundef 24, i16 noundef zeroext %conv17.i) #12
  call void @mutex_unlock(ptr noundef %extreg_lock.i) #12
  br label %recalibrate.exit

recalibrate.exit:                                 ; preds = %ext_write.exit593.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #12
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %extreg_lock = getelementptr inbounds %struct.dp83640_clock, ptr %3, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %extreg_lock, i32 noundef 0) #12
  %page = getelementptr inbounds %struct.dp83640_clock, ptr %3, i32 0, i32 3
  %490 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load i32, ptr %page, align 4
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %492 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %494 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_write(ptr noundef %493, i32 noundef %495, i32 noundef 19, i16 noundef zeroext 0) #12
  %496 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %bus.i.i, align 8
  %498 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load i32, ptr %addr.i.i, align 8
  %call.i3.i = tail call i32 @mdiobus_read(ptr noundef %497, i32 noundef %499, i32 noundef 28) #12
  %500 = trunc i32 %call.i3.i to i16
  %conv.i18 = or i16 %500, 2048
  %501 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %bus.i.i, align 8
  %503 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load i32, ptr %addr.i.i, align 8
  %call.i6.i = tail call i32 @mdiobus_write(ptr noundef %502, i32 noundef %504, i32 noundef 28, i16 noundef zeroext %conv.i18) #12
  %conv3.i = trunc i32 %491 to i16
  %505 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %bus.i.i, align 8
  %507 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load i32, ptr %addr.i.i, align 8
  %call.i9.i = tail call i32 @mdiobus_write(ptr noundef %506, i32 noundef %508, i32 noundef 19, i16 noundef zeroext %conv3.i) #12
  tail call void @mutex_unlock(ptr noundef %extreg_lock) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %recalibrate.exit
  call fastcc void @enable_status_frames(ptr noundef %phydev, i1 noundef zeroext true)
  %extreg_lock4 = getelementptr inbounds %struct.dp83640_clock, ptr %3, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %extreg_lock4, i32 noundef 0) #12
  %509 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %priv, align 8
  %clock.i = getelementptr inbounds %struct.dp83640_private, ptr %510, i32 0, i32 1
  %511 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load ptr, ptr %clock.i, align 8
  %page1.i = getelementptr inbounds %struct.dp83640_clock, ptr %512, i32 0, i32 3
  %513 = ptrtoint ptr %page1.i to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load i32, ptr %page1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %514)
  %cmp.not.i = icmp eq i32 %514, 4
  br i1 %cmp.not.i, label %if.end.ext_write.exit_crit_edge, label %if.then.i

if.end.ext_write.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %ext_write.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %bus.i.i19 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %515 = ptrtoint ptr %bus.i.i19 to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load ptr, ptr %bus.i.i19, align 8
  %call.i.i20 = call i32 @mdiobus_write(ptr noundef %516, i32 noundef 31, i32 noundef 19, i16 noundef zeroext 4) #12
  %517 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load ptr, ptr %clock.i, align 8
  %page3.i = getelementptr inbounds %struct.dp83640_clock, ptr %518, i32 0, i32 3
  %519 = ptrtoint ptr %page3.i to i32
  call void @__asan_store4_noabort(i32 %519)
  store i32 4, ptr %page3.i, align 4
  br label %ext_write.exit

ext_write.exit:                                   ; preds = %if.then.i, %if.end.ext_write.exit_crit_edge
  %bus.i18.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %520 = ptrtoint ptr %bus.i18.i to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %bus.i18.i, align 8
  %addr.i.i22 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %522 = ptrtoint ptr %addr.i.i22 to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load i32, ptr %addr.i.i22, align 8
  %call.i19.i = call i32 @mdiobus_write(ptr noundef %521, i32 noundef %523, i32 noundef 20, i16 noundef zeroext 4) #12
  call void @mutex_unlock(ptr noundef %extreg_lock4) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp83640_probe(ptr noundef %phydev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %1)
  %cmp = icmp eq i32 %1, 31
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %bus = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @phyter_clocks_lock, i32 noundef 0) #12
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %this.0.in.i = phi ptr [ @phyter_clocks, %if.end ], [ %this.0.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %this.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %this.0.i = load ptr, ptr %this.0.in.i, align 4
  %cmp.i.not.i = icmp eq ptr %this.0.i, @phyter_clocks
  br i1 %cmp.i.not.i, label %for.cond.i.if.end5.i_crit_edge, label %for.body.i

for.cond.i.if.end5.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.i

for.body.i:                                       ; preds = %for.cond.i
  %bus2.i = getelementptr inbounds %struct.dp83640_clock, ptr %this.0.i, i32 0, i32 1
  %5 = ptrtoint ptr %bus2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus2.i, align 4
  %cmp.i = icmp eq ptr %6, %3
  br i1 %cmp.i, label %for.end.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

for.end.i:                                        ; preds = %for.body.i
  %tobool3.not.i = icmp eq ptr %this.0.i, null
  br i1 %tobool3.not.i, label %for.end.i.if.end5.i_crit_edge, label %for.end.i.if.end3_crit_edge

for.end.i.if.end3_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

for.end.i.if.end5.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.i

if.end5.i:                                        ; preds = %for.end.i.if.end5.i_crit_edge, %for.cond.i.if.end5.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 324) #16
  %tobool7.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool7.not.i, label %if.end5.i.dp83640_clock_get_bus.exit.thread_crit_edge, label %if.end9.i

if.end5.i.dp83640_clock_get_bus.exit.thread_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dp83640_clock_get_bus.exit.thread

if.end9.i:                                        ; preds = %if.end5.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 1152) #16
  %pin_config.i = getelementptr inbounds %struct.dp83640_clock, ptr %call7.i.i.i, i32 0, i32 4, i32 8
  %9 = ptrtoint ptr %pin_config.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i.i.i, ptr %pin_config.i, align 8
  %tobool13.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool13.not.i, label %if.then14.i, label %if.end15.i

if.then14.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %dp83640_clock_get_bus.exit.thread

if.end15.i:                                       ; preds = %if.end9.i
  %10 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %call7.i.i.i, ptr %call7.i.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i.i, ptr %prev.i.i.i, align 4
  %bus1.i.i = getelementptr inbounds %struct.dp83640_clock, ptr %call7.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %3, ptr %bus1.i.i, align 8
  %extreg_lock.i.i = getelementptr inbounds %struct.dp83640_clock, ptr %call7.i.i.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %extreg_lock.i.i, ptr noundef nonnull @.str.39, ptr noundef nonnull @dp83640_clock_init.__key) #12
  %clock_lock.i.i = getelementptr inbounds %struct.dp83640_clock, ptr %call7.i.i.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %clock_lock.i.i, ptr noundef nonnull @.str.41, ptr noundef nonnull @dp83640_clock_init.__key.40) #12
  %phylist.i.i = getelementptr inbounds %struct.dp83640_clock, ptr %call7.i.i.i, i32 0, i32 7
  %13 = ptrtoint ptr %phylist.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %phylist.i.i, ptr %phylist.i.i, align 8
  %prev.i39.i.i = getelementptr inbounds %struct.dp83640_clock, ptr %call7.i.i.i, i32 0, i32 7, i32 1
  %14 = ptrtoint ptr %prev.i39.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %phylist.i.i, ptr %prev.i39.i.i, align 4
  %caps.i.i = getelementptr inbounds %struct.dp83640_clock, ptr %call7.i.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %caps.i.i, align 4
  %name.i.i = getelementptr inbounds %struct.dp83640_clock, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %16 = call ptr @memcpy(ptr %name.i.i, ptr @.str.42, i32 14)
  %max_adj.i.i = getelementptr inbounds %struct.dp83640_clock, ptr %call7.i.i.i, i32 0, i32 4, i32 2
  %17 = ptrtoint ptr %max_adj.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1953124, ptr %max_adj.i.i, align 8
  %n_alarm.i.i = getelementptr inbounds %struct.dp83640_clock, ptr %call7.i.i.i, i32 0, i32 4, i32 3
  %18 = ptrtoint ptr %n_alarm.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %n_alarm.i.i, align 4
  %n_ext_ts.i.i = getelementptr inbounds %struct.dp83640_clock, ptr %call7.i.i.i, i32 0, i32 4, i32 4
  %19 = ptrtoint ptr %n_ext_ts.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 6, ptr %n_ext_ts.i.i, align 8
  %n_per_out.i.i = getelementptr inbounds %struct.dp83640_clock, ptr %call7.i.i.i, i32 0, i32 4, i32 5
  %20 = ptrtoint ptr %n_per_out.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 7, ptr %n_per_out.i.i, align 4
  %n_pins.i.i = getelementptr inbounds %struct.dp83640_clock, ptr %call7.i.i.i, i32 0, i32 4, i32 6
  %21 = ptrtoint ptr %n_pins.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 12, ptr %n_pins.i.i, align 8
  %pps.i.i = getelementptr inbounds %struct.dp83640_clock, ptr %call7.i.i.i, i32 0, i32 4, i32 7
  %22 = ptrtoint ptr %pps.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %pps.i.i, align 4
  %adjfine.i.i = getelementptr inbounds %struct.dp83640_clock, ptr %call7.i.i.i, i32 0, i32 4, i32 9
  %23 = ptrtoint ptr %adjfine.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @ptp_dp83640_adjfine, ptr %adjfine.i.i, align 4
  %adjtime.i.i = getelementptr inbounds %struct.dp83640_clock, ptr %call7.i.i.i, i32 0, i32 4, i32 12
  %24 = ptrtoint ptr %adjtime.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @ptp_dp83640_adjtime, ptr %adjtime.i.i, align 8
  %gettime64.i.i = getelementptr inbounds %struct.dp83640_clock, ptr %call7.i.i.i, i32 0, i32 4, i32 13
  %25 = ptrtoint ptr %gettime64.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @ptp_dp83640_gettime, ptr %gettime64.i.i, align 4
  %settime64.i.i = getelementptr inbounds %struct.dp83640_clock, ptr %call7.i.i.i, i32 0, i32 4, i32 16
  %26 = ptrtoint ptr %settime64.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @ptp_dp83640_settime, ptr %settime64.i.i, align 8
  %enable.i.i = getelementptr inbounds %struct.dp83640_clock, ptr %call7.i.i.i, i32 0, i32 4, i32 17
  %27 = ptrtoint ptr %enable.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @ptp_dp83640_enable, ptr %enable.i.i, align 4
  %verify.i.i = getelementptr inbounds %struct.dp83640_clock, ptr %call7.i.i.i, i32 0, i32 4, i32 18
  %28 = ptrtoint ptr %verify.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @ptp_dp83640_verify, ptr %verify.i.i, align 8
  %29 = ptrtoint ptr %pin_config.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pin_config.i, align 8
  %call.i.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %30, i32 noundef 64, ptr noundef nonnull @.str.43, i32 noundef 1) #12
  %index2.i.i.i = getelementptr %struct.ptp_pin_desc, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %index2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %index2.i.i.i, align 4
  %arrayidx.1.i.i.i = getelementptr %struct.ptp_pin_desc, ptr %30, i32 1
  %call.1.i.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.1.i.i.i, i32 noundef 64, ptr noundef nonnull @.str.43, i32 noundef 2) #12
  %index2.1.i.i.i = getelementptr %struct.ptp_pin_desc, ptr %30, i32 1, i32 1
  %32 = ptrtoint ptr %index2.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %index2.1.i.i.i, align 4
  %arrayidx.2.i.i.i = getelementptr %struct.ptp_pin_desc, ptr %30, i32 2
  %call.2.i.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.2.i.i.i, i32 noundef 64, ptr noundef nonnull @.str.43, i32 noundef 3) #12
  %index2.2.i.i.i = getelementptr %struct.ptp_pin_desc, ptr %30, i32 2, i32 1
  %33 = ptrtoint ptr %index2.2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2, ptr %index2.2.i.i.i, align 4
  %arrayidx.3.i.i.i = getelementptr %struct.ptp_pin_desc, ptr %30, i32 3
  %call.3.i.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.3.i.i.i, i32 noundef 64, ptr noundef nonnull @.str.43, i32 noundef 4) #12
  %index2.3.i.i.i = getelementptr %struct.ptp_pin_desc, ptr %30, i32 3, i32 1
  %34 = ptrtoint ptr %index2.3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 3, ptr %index2.3.i.i.i, align 4
  %arrayidx.4.i.i.i = getelementptr %struct.ptp_pin_desc, ptr %30, i32 4
  %call.4.i.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.4.i.i.i, i32 noundef 64, ptr noundef nonnull @.str.43, i32 noundef 5) #12
  %index2.4.i.i.i = getelementptr %struct.ptp_pin_desc, ptr %30, i32 4, i32 1
  %35 = ptrtoint ptr %index2.4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 4, ptr %index2.4.i.i.i, align 4
  %arrayidx.5.i.i.i = getelementptr %struct.ptp_pin_desc, ptr %30, i32 5
  %call.5.i.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.5.i.i.i, i32 noundef 64, ptr noundef nonnull @.str.43, i32 noundef 6) #12
  %index2.5.i.i.i = getelementptr %struct.ptp_pin_desc, ptr %30, i32 5, i32 1
  %36 = ptrtoint ptr %index2.5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 5, ptr %index2.5.i.i.i, align 4
  %arrayidx.6.i.i.i = getelementptr %struct.ptp_pin_desc, ptr %30, i32 6
  %call.6.i.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.6.i.i.i, i32 noundef 64, ptr noundef nonnull @.str.43, i32 noundef 7) #12
  %index2.6.i.i.i = getelementptr %struct.ptp_pin_desc, ptr %30, i32 6, i32 1
  %37 = ptrtoint ptr %index2.6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 6, ptr %index2.6.i.i.i, align 4
  %arrayidx.7.i.i.i = getelementptr %struct.ptp_pin_desc, ptr %30, i32 7
  %call.7.i.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.7.i.i.i, i32 noundef 64, ptr noundef nonnull @.str.43, i32 noundef 8) #12
  %index2.7.i.i.i = getelementptr %struct.ptp_pin_desc, ptr %30, i32 7, i32 1
  %38 = ptrtoint ptr %index2.7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 7, ptr %index2.7.i.i.i, align 4
  %arrayidx.8.i.i.i = getelementptr %struct.ptp_pin_desc, ptr %30, i32 8
  %call.8.i.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.8.i.i.i, i32 noundef 64, ptr noundef nonnull @.str.43, i32 noundef 9) #12
  %index2.8.i.i.i = getelementptr %struct.ptp_pin_desc, ptr %30, i32 8, i32 1
  %39 = ptrtoint ptr %index2.8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 8, ptr %index2.8.i.i.i, align 4
  %arrayidx.9.i.i.i = getelementptr %struct.ptp_pin_desc, ptr %30, i32 9
  %call.9.i.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.9.i.i.i, i32 noundef 64, ptr noundef nonnull @.str.43, i32 noundef 10) #12
  %index2.9.i.i.i = getelementptr %struct.ptp_pin_desc, ptr %30, i32 9, i32 1
  %40 = ptrtoint ptr %index2.9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 9, ptr %index2.9.i.i.i, align 4
  %arrayidx.10.i.i.i = getelementptr %struct.ptp_pin_desc, ptr %30, i32 10
  %call.10.i.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.10.i.i.i, i32 noundef 64, ptr noundef nonnull @.str.43, i32 noundef 11) #12
  %index2.10.i.i.i = getelementptr %struct.ptp_pin_desc, ptr %30, i32 10, i32 1
  %41 = ptrtoint ptr %index2.10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 10, ptr %index2.10.i.i.i, align 4
  %arrayidx.11.i.i.i = getelementptr %struct.ptp_pin_desc, ptr %30, i32 11
  %call.11.i.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.11.i.i.i, i32 noundef 64, ptr noundef nonnull @.str.43, i32 noundef 12) #12
  %index2.11.i.i.i = getelementptr %struct.ptp_pin_desc, ptr %30, i32 11, i32 1
  %42 = ptrtoint ptr %index2.11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 11, ptr %index2.11.i.i.i, align 4
  %43 = load i16, ptr @gpio_tab, align 2
  %44 = add i16 %43, -13
  call void @__sanitizer_cov_trace_const_cmp2(i16 -12, i16 %44)
  %45 = icmp ult i16 %44, -12
  br i1 %45, label %if.end15.i.do.end.i.i.i_crit_edge, label %for.inc16.i.i.i

if.end15.i.do.end.i.i.i_crit_edge:                ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %for.inc16.6.i.i.i.do.end.i.i.i_crit_edge, %for.inc16.5.i.i.i.do.end.i.i.i_crit_edge, %for.inc16.4.i.i.i.do.end.i.i.i_crit_edge, %for.inc16.3.i.i.i.do.end.i.i.i_crit_edge, %for.inc16.2.i.i.i.do.end.i.i.i_crit_edge, %for.inc16.1.i.i.i.do.end.i.i.i_crit_edge, %for.inc16.i.i.i.do.end.i.i.i_crit_edge, %if.end15.i.do.end.i.i.i_crit_edge
  %i.173.lcssa.i.i.i = phi i32 [ 0, %if.end15.i.do.end.i.i.i_crit_edge ], [ 1, %for.inc16.i.i.i.do.end.i.i.i_crit_edge ], [ 2, %for.inc16.1.i.i.i.do.end.i.i.i_crit_edge ], [ 3, %for.inc16.2.i.i.i.do.end.i.i.i_crit_edge ], [ 4, %for.inc16.3.i.i.i.do.end.i.i.i_crit_edge ], [ 5, %for.inc16.4.i.i.i.do.end.i.i.i_crit_edge ], [ 6, %for.inc16.5.i.i.i.do.end.i.i.i_crit_edge ], [ 7, %for.inc16.6.i.i.i.do.end.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i16 [ %43, %if.end15.i.do.end.i.i.i_crit_edge ], [ %46, %for.inc16.i.i.i.do.end.i.i.i_crit_edge ], [ %49, %for.inc16.1.i.i.i.do.end.i.i.i_crit_edge ], [ %52, %for.inc16.2.i.i.i.do.end.i.i.i_crit_edge ], [ %55, %for.inc16.3.i.i.i.do.end.i.i.i_crit_edge ], [ %58, %for.inc16.4.i.i.i.do.end.i.i.i_crit_edge ], [ %61, %for.inc16.5.i.i.i.do.end.i.i.i_crit_edge ], [ %64, %for.inc16.6.i.i.i.do.end.i.i.i_crit_edge ]
  %conv14.i.i.i = zext i16 %.lcssa.i.i.i to i32
  %call15.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %i.173.lcssa.i.i.i, i32 noundef %conv14.i.i.i) #15
  br label %dp83640_clock_init.exit.i

for.inc16.i.i.i:                                  ; preds = %if.end15.i
  %46 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @gpio_tab, i32 0, i32 1), align 2
  %47 = add i16 %46, -13
  call void @__sanitizer_cov_trace_const_cmp2(i16 -12, i16 %47)
  %48 = icmp ult i16 %47, -12
  br i1 %48, label %for.inc16.i.i.i.do.end.i.i.i_crit_edge, label %for.inc16.1.i.i.i

for.inc16.i.i.i.do.end.i.i.i_crit_edge:           ; preds = %for.inc16.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i.i

for.inc16.1.i.i.i:                                ; preds = %for.inc16.i.i.i
  %49 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @gpio_tab, i32 0, i32 2), align 2
  %50 = add i16 %49, -13
  call void @__sanitizer_cov_trace_const_cmp2(i16 -12, i16 %50)
  %51 = icmp ult i16 %50, -12
  br i1 %51, label %for.inc16.1.i.i.i.do.end.i.i.i_crit_edge, label %for.inc16.2.i.i.i

for.inc16.1.i.i.i.do.end.i.i.i_crit_edge:         ; preds = %for.inc16.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i.i

for.inc16.2.i.i.i:                                ; preds = %for.inc16.1.i.i.i
  %52 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @gpio_tab, i32 0, i32 3), align 2
  %53 = add i16 %52, -13
  call void @__sanitizer_cov_trace_const_cmp2(i16 -12, i16 %53)
  %54 = icmp ult i16 %53, -12
  br i1 %54, label %for.inc16.2.i.i.i.do.end.i.i.i_crit_edge, label %for.inc16.3.i.i.i

for.inc16.2.i.i.i.do.end.i.i.i_crit_edge:         ; preds = %for.inc16.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i.i

for.inc16.3.i.i.i:                                ; preds = %for.inc16.2.i.i.i
  %55 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @gpio_tab, i32 0, i32 4), align 2
  %56 = add i16 %55, -13
  call void @__sanitizer_cov_trace_const_cmp2(i16 -12, i16 %56)
  %57 = icmp ult i16 %56, -12
  br i1 %57, label %for.inc16.3.i.i.i.do.end.i.i.i_crit_edge, label %for.inc16.4.i.i.i

for.inc16.3.i.i.i.do.end.i.i.i_crit_edge:         ; preds = %for.inc16.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i.i

for.inc16.4.i.i.i:                                ; preds = %for.inc16.3.i.i.i
  %58 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @gpio_tab, i32 0, i32 5), align 2
  %59 = add i16 %58, -13
  call void @__sanitizer_cov_trace_const_cmp2(i16 -12, i16 %59)
  %60 = icmp ult i16 %59, -12
  br i1 %60, label %for.inc16.4.i.i.i.do.end.i.i.i_crit_edge, label %for.inc16.5.i.i.i

for.inc16.4.i.i.i.do.end.i.i.i_crit_edge:         ; preds = %for.inc16.4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i.i

for.inc16.5.i.i.i:                                ; preds = %for.inc16.4.i.i.i
  %61 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @gpio_tab, i32 0, i32 6), align 2
  %62 = add i16 %61, -13
  call void @__sanitizer_cov_trace_const_cmp2(i16 -12, i16 %62)
  %63 = icmp ult i16 %62, -12
  br i1 %63, label %for.inc16.5.i.i.i.do.end.i.i.i_crit_edge, label %for.inc16.6.i.i.i

for.inc16.5.i.i.i.do.end.i.i.i_crit_edge:         ; preds = %for.inc16.5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i.i

for.inc16.6.i.i.i:                                ; preds = %for.inc16.5.i.i.i
  %64 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @gpio_tab, i32 0, i32 7), align 2
  %65 = add i16 %64, -13
  call void @__sanitizer_cov_trace_const_cmp2(i16 -12, i16 %65)
  %66 = icmp ult i16 %65, -12
  br i1 %66, label %for.inc16.6.i.i.i.do.end.i.i.i_crit_edge, label %for.inc16.7.i.i.i

for.inc16.6.i.i.i.do.end.i.i.i_crit_edge:         ; preds = %for.inc16.6.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i.i

for.inc16.7.i.i.i:                                ; preds = %for.inc16.6.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv19.i.i.i = zext i16 %43 to i32
  %sub.i.i.i = add nsw i32 %conv19.i.i.i, -1
  %func.i.i.i = getelementptr %struct.ptp_pin_desc, ptr %30, i32 %sub.i.i.i, i32 2
  %67 = ptrtoint ptr %func.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 3, ptr %func.i.i.i, align 4
  %chan.i.i.i = getelementptr %struct.ptp_pin_desc, ptr %30, i32 %sub.i.i.i, i32 3
  %68 = ptrtoint ptr %chan.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %chan.i.i.i, align 4
  %69 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @gpio_tab, i32 0, i32 1), align 2
  %conv22.i.i.i = zext i16 %69 to i32
  %sub23.i.i.i = add nsw i32 %conv22.i.i.i, -1
  %func25.i.i.i = getelementptr %struct.ptp_pin_desc, ptr %30, i32 %sub23.i.i.i, i32 2
  %70 = ptrtoint ptr %func25.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 2, ptr %func25.i.i.i, align 4
  %chan27.i.i.i = getelementptr %struct.ptp_pin_desc, ptr %30, i32 %sub23.i.i.i, i32 3
  %71 = ptrtoint ptr %chan27.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %chan27.i.i.i, align 4
  %72 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @gpio_tab, i32 0, i32 2), align 2
  %conv33.i.i.i = zext i16 %72 to i32
  %sub34.i.i.i = add nsw i32 %conv33.i.i.i, -1
  %func36.i.i.i = getelementptr %struct.ptp_pin_desc, ptr %30, i32 %sub34.i.i.i, i32 2
  %73 = ptrtoint ptr %func36.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1, ptr %func36.i.i.i, align 4
  %chan39.i.i.i = getelementptr %struct.ptp_pin_desc, ptr %30, i32 %sub34.i.i.i, i32 3
  %74 = ptrtoint ptr %chan39.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %chan39.i.i.i, align 4
  %75 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @gpio_tab, i32 0, i32 3), align 2
  %conv33.1.i.i.i = zext i16 %75 to i32
  %sub34.1.i.i.i = add nsw i32 %conv33.1.i.i.i, -1
  %func36.1.i.i.i = getelementptr %struct.ptp_pin_desc, ptr %30, i32 %sub34.1.i.i.i, i32 2
  %76 = ptrtoint ptr %func36.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 1, ptr %func36.1.i.i.i, align 4
  %chan39.1.i.i.i = getelementptr %struct.ptp_pin_desc, ptr %30, i32 %sub34.1.i.i.i, i32 3
  %77 = ptrtoint ptr %chan39.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 1, ptr %chan39.1.i.i.i, align 4
  %78 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @gpio_tab, i32 0, i32 4), align 2
  %conv33.2.i.i.i = zext i16 %78 to i32
  %sub34.2.i.i.i = add nsw i32 %conv33.2.i.i.i, -1
  %func36.2.i.i.i = getelementptr %struct.ptp_pin_desc, ptr %30, i32 %sub34.2.i.i.i, i32 2
  %79 = ptrtoint ptr %func36.2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 1, ptr %func36.2.i.i.i, align 4
  %chan39.2.i.i.i = getelementptr %struct.ptp_pin_desc, ptr %30, i32 %sub34.2.i.i.i, i32 3
  %80 = ptrtoint ptr %chan39.2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 2, ptr %chan39.2.i.i.i, align 4
  %81 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @gpio_tab, i32 0, i32 5), align 2
  %conv33.3.i.i.i = zext i16 %81 to i32
  %sub34.3.i.i.i = add nsw i32 %conv33.3.i.i.i, -1
  %func36.3.i.i.i = getelementptr %struct.ptp_pin_desc, ptr %30, i32 %sub34.3.i.i.i, i32 2
  %82 = ptrtoint ptr %func36.3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1, ptr %func36.3.i.i.i, align 4
  %chan39.3.i.i.i = getelementptr %struct.ptp_pin_desc, ptr %30, i32 %sub34.3.i.i.i, i32 3
  %83 = ptrtoint ptr %chan39.3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 3, ptr %chan39.3.i.i.i, align 4
  %84 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @gpio_tab, i32 0, i32 6), align 2
  %conv33.4.i.i.i = zext i16 %84 to i32
  %sub34.4.i.i.i = add nsw i32 %conv33.4.i.i.i, -1
  %func36.4.i.i.i = getelementptr %struct.ptp_pin_desc, ptr %30, i32 %sub34.4.i.i.i, i32 2
  %85 = ptrtoint ptr %func36.4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 1, ptr %func36.4.i.i.i, align 4
  %chan39.4.i.i.i = getelementptr %struct.ptp_pin_desc, ptr %30, i32 %sub34.4.i.i.i, i32 3
  %86 = ptrtoint ptr %chan39.4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 4, ptr %chan39.4.i.i.i, align 4
  %87 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @gpio_tab, i32 0, i32 7), align 2
  %conv33.5.i.i.i = zext i16 %87 to i32
  %sub34.5.i.i.i = add nsw i32 %conv33.5.i.i.i, -1
  %func36.5.i.i.i = getelementptr %struct.ptp_pin_desc, ptr %30, i32 %sub34.5.i.i.i, i32 2
  %88 = ptrtoint ptr %func36.5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 1, ptr %func36.5.i.i.i, align 4
  %chan39.5.i.i.i = getelementptr %struct.ptp_pin_desc, ptr %30, i32 %sub34.5.i.i.i, i32 3
  %89 = ptrtoint ptr %chan39.5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 5, ptr %chan39.5.i.i.i, align 4
  br label %dp83640_clock_init.exit.i

dp83640_clock_init.exit.i:                        ; preds = %for.inc16.7.i.i.i, %do.end.i.i.i
  %dev.i.i = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 11
  %call18.i.i = tail call ptr @get_device(ptr noundef %dev.i.i) #12
  %90 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @phyter_clocks, i32 0, i32 1), align 4
  %call.i.i28.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %90, ptr noundef nonnull @phyter_clocks) #12
  br i1 %call.i.i28.i, label %if.end.i.i.i, label %dp83640_clock_init.exit.i.if.end3_crit_edge

dp83640_clock_init.exit.i.if.end3_crit_edge:      ; preds = %dp83640_clock_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.end.i.i.i:                                     ; preds = %dp83640_clock_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  store ptr %call7.i.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @phyter_clocks, i32 0, i32 1), align 4
  %91 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @phyter_clocks, ptr %call7.i.i.i, align 8
  %92 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %90, ptr %prev.i.i.i, align 4
  %93 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %call7.i.i.i, ptr %90, align 4
  br label %if.end3

dp83640_clock_get_bus.exit.thread:                ; preds = %if.then14.i, %if.end5.i.dp83640_clock_get_bus.exit.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @phyter_clocks_lock) #12
  br label %cleanup

if.end3:                                          ; preds = %if.end.i.i.i, %dp83640_clock_init.exit.i.if.end3_crit_edge, %for.end.i.if.end3_crit_edge
  %clock.1.ph.i = phi ptr [ %call7.i.i.i, %if.end.i.i.i ], [ %call7.i.i.i, %dp83640_clock_init.exit.i.if.end3_crit_edge ], [ %this.0.i, %for.end.i.if.end3_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @phyter_clocks_lock) #12
  %clock_lock.i29.i = getelementptr inbounds %struct.dp83640_clock, ptr %clock.1.ph.i, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %clock_lock.i29.i, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %94 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %94, i32 noundef 3520, i32 noundef 2392) #16
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %if.end3.no_memory_crit_edge, label %if.end7

if.end3.no_memory_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %no_memory

if.end7:                                          ; preds = %if.end3
  %phydev8 = getelementptr inbounds %struct.dp83640_private, ptr %call7.i.i, i32 0, i32 2
  %95 = ptrtoint ptr %phydev8 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %phydev, ptr %phydev8, align 4
  %mii_ts = getelementptr inbounds %struct.dp83640_private, ptr %call7.i.i, i32 0, i32 3
  %96 = ptrtoint ptr %mii_ts to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @dp83640_rxtstamp, ptr %mii_ts, align 8
  %txtstamp = getelementptr inbounds %struct.dp83640_private, ptr %call7.i.i, i32 0, i32 3, i32 1
  %97 = ptrtoint ptr %txtstamp to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @dp83640_txtstamp, ptr %txtstamp, align 4
  %hwtstamp = getelementptr inbounds %struct.dp83640_private, ptr %call7.i.i, i32 0, i32 3, i32 2
  %98 = ptrtoint ptr %hwtstamp to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @dp83640_hwtstamp, ptr %hwtstamp, align 8
  %ts_info = getelementptr inbounds %struct.dp83640_private, ptr %call7.i.i, i32 0, i32 3, i32 4
  %99 = ptrtoint ptr %ts_info to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @dp83640_ts_info, ptr %ts_info, align 8
  %ts_work = getelementptr inbounds %struct.dp83640_private, ptr %call7.i.i, i32 0, i32 4
  tail call void @__init_work(ptr noundef %ts_work, i32 noundef 0) #12
  %100 = ptrtoint ptr %ts_work to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 -64, ptr %ts_work, align 8
  %lockdep_map = getelementptr inbounds %struct.dp83640_private, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.34, ptr noundef nonnull @dp83640_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry19 = getelementptr inbounds %struct.dp83640_private, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 1
  %101 = ptrtoint ptr %entry19 to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile ptr %entry19, ptr %entry19, align 4
  %prev.i = getelementptr inbounds %struct.dp83640_private, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 1, i32 1
  %102 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %entry19, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.dp83640_private, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 2
  %103 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @rx_timestamp_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.dp83640_private, ptr %call7.i.i, i32 0, i32 4, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.36, ptr noundef nonnull @dp83640_probe.__key.35) #12
  %rxts = getelementptr inbounds %struct.dp83640_private, ptr %call7.i.i, i32 0, i32 11
  %104 = ptrtoint ptr %rxts to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr %rxts, ptr %rxts, align 8
  %prev.i99 = getelementptr inbounds %struct.dp83640_private, ptr %call7.i.i, i32 0, i32 11, i32 1
  %105 = ptrtoint ptr %prev.i99 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %rxts, ptr %prev.i99, align 4
  %rxpool = getelementptr inbounds %struct.dp83640_private, ptr %call7.i.i, i32 0, i32 12
  %106 = ptrtoint ptr %rxpool to i32
  call void @__asan_store4_noabort(i32 %106)
  store volatile ptr %rxpool, ptr %rxpool, align 8
  %prev.i100 = getelementptr inbounds %struct.dp83640_private, ptr %call7.i.i, i32 0, i32 12, i32 1
  %107 = ptrtoint ptr %prev.i100 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %rxpool, ptr %prev.i100, align 4
  br label %for.body

for.body:                                         ; preds = %list_add.exit.for.body_crit_edge, %if.end7
  %i.0118 = phi i32 [ 0, %if.end7 ], [ %inc, %list_add.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dp83640_private, ptr %call7.i.i, i32 0, i32 13, i32 %i.0118
  %108 = ptrtoint ptr %rxpool to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %rxpool, align 8
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx, ptr noundef %rxpool, ptr noundef %109) #12
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_add.exit_crit_edge

for.body.list_add.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %arrayidx, ptr %prev1.i.i, align 4
  %111 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %109, ptr %arrayidx, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx, i32 0, i32 1
  %112 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %rxpool, ptr %prev3.i.i, align 4
  %113 = ptrtoint ptr %rxpool to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile ptr %arrayidx, ptr %rxpool, align 8
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %for.body.list_add.exit_crit_edge
  %inc = add nuw nsw i32 %i.0118, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %list_add.exit.for.body_crit_edge

list_add.exit.for.body_crit_edge:                 ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %list_add.exit
  %mii_ts31 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 37
  %114 = ptrtoint ptr %mii_ts31 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %mii_ts, ptr %mii_ts31, align 4
  %priv = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %115 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %call7.i.i, ptr %priv, align 8
  %rx_lock = getelementptr inbounds %struct.dp83640_private, ptr %call7.i.i, i32 0, i32 14
  tail call void @__raw_spin_lock_init(ptr noundef %rx_lock, ptr noundef nonnull @.str.38, ptr noundef nonnull @dp83640_probe.__key.37, i16 noundef signext 3) #12
  %rx_queue = getelementptr inbounds %struct.dp83640_private, ptr %call7.i.i, i32 0, i32 15
  %lock.i = getelementptr inbounds %struct.dp83640_private, ptr %call7.i.i, i32 0, i32 15, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.60, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #12
  %116 = ptrtoint ptr %rx_queue to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %rx_queue, ptr %rx_queue, align 4
  %prev.i.i = getelementptr inbounds %struct.dp83640_private, ptr %call7.i.i, i32 0, i32 15, i32 0, i32 0, i32 1
  %117 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %rx_queue, ptr %prev.i.i, align 8
  %qlen.i.i = getelementptr inbounds %struct.dp83640_private, ptr %call7.i.i, i32 0, i32 15, i32 1
  %118 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 0, ptr %qlen.i.i, align 4
  %tx_queue = getelementptr inbounds %struct.dp83640_private, ptr %call7.i.i, i32 0, i32 16
  %lock.i101 = getelementptr inbounds %struct.dp83640_private, ptr %call7.i.i, i32 0, i32 16, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i101, ptr noundef nonnull @.str.60, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #12
  %119 = ptrtoint ptr %tx_queue to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %tx_queue, ptr %tx_queue, align 4
  %prev.i.i102 = getelementptr inbounds %struct.dp83640_private, ptr %call7.i.i, i32 0, i32 16, i32 0, i32 0, i32 1
  %120 = ptrtoint ptr %prev.i.i102 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %tx_queue, ptr %prev.i.i102, align 8
  %qlen.i.i103 = getelementptr inbounds %struct.dp83640_private, ptr %call7.i.i, i32 0, i32 16, i32 1
  %121 = ptrtoint ptr %qlen.i.i103 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %qlen.i.i103, align 4
  %clock36 = getelementptr inbounds %struct.dp83640_private, ptr %call7.i.i, i32 0, i32 1
  %122 = ptrtoint ptr %clock36 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %clock.1.ph.i, ptr %clock36, align 8
  %123 = load i32, ptr @chosen_phy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %123)
  %cmp.i104 = icmp eq i32 %123, -1
  br i1 %cmp.i104, label %land.lhs.true.i, label %for.end.choose_this_phy.exit_crit_edge

for.end.choose_this_phy.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %choose_this_phy.exit

land.lhs.true.i:                                  ; preds = %for.end
  %chosen.i = getelementptr inbounds %struct.dp83640_clock, ptr %clock.1.ph.i, i32 0, i32 6
  %124 = ptrtoint ptr %chosen.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %chosen.i, align 4
  %tobool.not.i = icmp eq ptr %125, null
  br i1 %tobool.not.i, label %land.lhs.true.i.if.then39_crit_edge, label %land.lhs.true.i.choose_this_phy.exit_crit_edge

land.lhs.true.i.choose_this_phy.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %choose_this_phy.exit

land.lhs.true.i.if.then39_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then39

choose_this_phy.exit:                             ; preds = %land.lhs.true.i.choose_this_phy.exit_crit_edge, %for.end.choose_this_phy.exit_crit_edge
  %126 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %addr, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %123, i32 %127)
  %cmp1.i.not = icmp eq i32 %123, %127
  br i1 %cmp1.i.not, label %choose_this_phy.exit.if.then39_crit_edge, label %if.else

choose_this_phy.exit.if.then39_crit_edge:         ; preds = %choose_this_phy.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then39

if.then39:                                        ; preds = %choose_this_phy.exit.if.then39_crit_edge, %land.lhs.true.i.if.then39_crit_edge
  %chosen = getelementptr inbounds %struct.dp83640_clock, ptr %clock.1.ph.i, i32 0, i32 6
  %128 = ptrtoint ptr %chosen to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %call7.i.i, ptr %chosen, align 4
  %caps = getelementptr inbounds %struct.dp83640_clock, ptr %clock.1.ph.i, i32 0, i32 4
  %call41 = tail call ptr @ptp_clock_register(ptr noundef %caps, ptr noundef %phydev) #12
  %ptp_clock = getelementptr inbounds %struct.dp83640_clock, ptr %clock.1.ph.i, i32 0, i32 8
  %129 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %call41, ptr %ptp_clock, align 4
  %cmp.i105 = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i105, label %if.then44, label %if.then39.if.end49_crit_edge

if.then39.if.end49_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.then44:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  %130 = ptrtoint ptr %call41 to i32
  %131 = ptrtoint ptr %chosen to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr null, ptr %chosen, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %no_memory

if.else:                                          ; preds = %choose_this_phy.exit
  %phylist = getelementptr inbounds %struct.dp83640_clock, ptr %clock.1.ph.i, i32 0, i32 7
  %prev.i106 = getelementptr inbounds %struct.dp83640_clock, ptr %clock.1.ph.i, i32 0, i32 7, i32 1
  %132 = ptrtoint ptr %prev.i106 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %prev.i106, align 4
  %call.i.i107 = tail call zeroext i1 @__list_add_valid(ptr noundef %call7.i.i, ptr noundef %133, ptr noundef %phylist) #12
  br i1 %call.i.i107, label %if.end.i.i109, label %if.else.if.end49_crit_edge

if.else.if.end49_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.end.i.i109:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %134 = ptrtoint ptr %prev.i106 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %call7.i.i, ptr %prev.i106, align 4
  %135 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %phylist, ptr %call7.i.i, align 8
  %prev3.i.i108 = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %136 = ptrtoint ptr %prev3.i.i108 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %133, ptr %prev3.i.i108, align 4
  %137 = ptrtoint ptr %133 to i32
  call void @__asan_store4_noabort(i32 %137)
  store volatile ptr %call7.i.i, ptr %133, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.end.i.i109, %if.else.if.end49_crit_edge, %if.then39.if.end49_crit_edge
  tail call void @mutex_unlock(ptr noundef %clock_lock.i29.i) #12
  br label %cleanup

no_memory:                                        ; preds = %if.then44, %if.end3.no_memory_crit_edge
  %err.0 = phi i32 [ %130, %if.then44 ], [ -12, %if.end3.no_memory_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %clock_lock.i29.i) #12
  br label %cleanup

cleanup:                                          ; preds = %no_memory, %if.end49, %dp83640_clock_get_bus.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end49 ], [ 0, %entry.cleanup_crit_edge ], [ %err.0, %no_memory ], [ -12, %dp83640_clock_get_bus.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp83640_config_intr(ptr noundef readonly %phydev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %interrupts = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %0 = ptrtoint ptr %interrupts to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %interrupts, align 8
  %bf.clear = and i16 %bf.load, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear)
  %cmp.not = icmp eq i16 %bf.clear, 0
  %bus.i84 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %1 = ptrtoint ptr %bus.i84 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus.i84, align 8
  %addr.i85 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %3 = ptrtoint ptr %addr.i85 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addr.i85, align 8
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %2, i32 noundef %4, i32 noundef 18) #12
  %5 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %if.then
  %6 = ptrtoint ptr %bus.i84 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i84, align 8
  %8 = ptrtoint ptr %addr.i85 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.i85, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %7, i32 noundef %9, i32 noundef 18) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3 = icmp slt i32 %call.i, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %10 = trunc i32 %call.i to i16
  %conv = or i16 %10, 60
  %11 = ptrtoint ptr %bus.i84 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bus.i84, align 8
  %13 = ptrtoint ptr %addr.i85 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr.i85, align 8
  %call.i77 = tail call i32 @mdiobus_write(ptr noundef %12, i32 noundef %14, i32 noundef 18, i16 noundef zeroext %conv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77)
  %cmp7 = icmp slt i32 %call.i77, 0
  br i1 %cmp7, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %15 = ptrtoint ptr %bus.i84 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus.i84, align 8
  %17 = ptrtoint ptr %addr.i85 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr.i85, align 8
  %call.i80 = tail call i32 @mdiobus_read(ptr noundef %16, i32 noundef %18, i32 noundef 17) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80)
  %cmp12 = icmp slt i32 %call.i80, 0
  br i1 %cmp12, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %19 = trunc i32 %call.i80 to i16
  %conv17 = or i16 %19, 3
  %20 = ptrtoint ptr %bus.i84 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus.i84, align 8
  %22 = ptrtoint ptr %addr.i85 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr.i85, align 8
  %call.i83 = tail call i32 @mdiobus_write(ptr noundef %21, i32 noundef %23, i32 noundef 17, i16 noundef zeroext %conv17) #12
  br label %cleanup

if.else:                                          ; preds = %entry
  %call.i86 = tail call i32 @mdiobus_read(ptr noundef %2, i32 noundef %4, i32 noundef 17) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86)
  %cmp20 = icmp slt i32 %call.i86, 0
  br i1 %cmp20, label %if.else.cleanup_crit_edge, label %if.end23

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end23:                                         ; preds = %if.else
  %24 = trunc i32 %call.i86 to i16
  %conv24 = and i16 %24, -4
  %25 = ptrtoint ptr %bus.i84 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bus.i84, align 8
  %27 = ptrtoint ptr %addr.i85 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %addr.i85, align 8
  %call.i89 = tail call i32 @mdiobus_write(ptr noundef %26, i32 noundef %28, i32 noundef 17, i16 noundef zeroext %conv24) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89)
  %cmp26 = icmp slt i32 %call.i89, 0
  br i1 %cmp26, label %if.end23.cleanup_crit_edge, label %if.end29

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end29:                                         ; preds = %if.end23
  %29 = ptrtoint ptr %bus.i84 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bus.i84, align 8
  %31 = ptrtoint ptr %addr.i85 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %addr.i85, align 8
  %call.i92 = tail call i32 @mdiobus_read(ptr noundef %30, i32 noundef %32, i32 noundef 18) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %cmp31 = icmp slt i32 %call.i92, 0
  br i1 %cmp31, label %if.end29.cleanup_crit_edge, label %if.end34

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end34:                                         ; preds = %if.end29
  %33 = trunc i32 %call.i92 to i16
  %conv36 = and i16 %33, -61
  %34 = ptrtoint ptr %bus.i84 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bus.i84, align 8
  %36 = ptrtoint ptr %addr.i85 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %addr.i85, align 8
  %call.i95 = tail call i32 @mdiobus_write(ptr noundef %35, i32 noundef %37, i32 noundef 18, i16 noundef zeroext %conv36) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i95)
  %tobool38.not = icmp eq i32 %call.i95, 0
  br i1 %tobool38.not, label %if.end40, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end40:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %bus.i84 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bus.i84, align 8
  %40 = ptrtoint ptr %addr.i85 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %addr.i85, align 8
  %call.i.i98 = tail call i32 @mdiobus_read(ptr noundef %39, i32 noundef %41, i32 noundef 18) #12
  %42 = tail call i32 @llvm.smin.i32(i32 %call.i.i98, i32 0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.end34.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end15, %if.end10.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i83, %if.end15 ], [ %42, %if.end40 ], [ %5, %if.then.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call.i77, %if.end5.cleanup_crit_edge ], [ %call.i80, %if.end10.cleanup_crit_edge ], [ %call.i86, %if.else.cleanup_crit_edge ], [ %call.i89, %if.end23.cleanup_crit_edge ], [ %call.i92, %if.end29.cleanup_crit_edge ], [ %call.i95, %if.end34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp83640_handle_interrupt(ptr noundef %phydev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 18) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @phy_error(ptr noundef %phydev) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %call.i, 15360
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @phy_trigger_machine(ptr noundef %phydev) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end2 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dp83640_remove(ptr noundef %phydev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %addr = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %3)
  %cmp = icmp eq i32 %3, 31
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %mii_ts = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 37
  %4 = ptrtoint ptr %mii_ts to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %mii_ts, align 4
  tail call fastcc void @enable_status_frames(ptr noundef %phydev, i1 noundef zeroext false)
  %ts_work = getelementptr inbounds %struct.dp83640_private, ptr %1, i32 0, i32 4
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %ts_work) #12
  %rx_queue = getelementptr inbounds %struct.dp83640_private, ptr %1, i32 0, i32 15
  tail call void @skb_queue_purge(ptr noundef %rx_queue) #12
  %tx_queue = getelementptr inbounds %struct.dp83640_private, ptr %1, i32 0, i32 16
  tail call void @skb_queue_purge(ptr noundef %tx_queue) #12
  %clock1 = getelementptr inbounds %struct.dp83640_private, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %clock1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clock1, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.dp83640_clock_get.exit_crit_edge, label %if.then.i

if.end.dp83640_clock_get.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %dp83640_clock_get.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %clock_lock.i = getelementptr inbounds %struct.dp83640_clock, ptr %6, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %clock_lock.i, i32 noundef 0) #12
  br label %dp83640_clock_get.exit

dp83640_clock_get.exit:                           ; preds = %if.then.i, %if.end.dp83640_clock_get.exit_crit_edge
  %chosen = getelementptr inbounds %struct.dp83640_clock, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %chosen to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chosen, align 4
  %cmp3 = icmp eq ptr %1, %8
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %dp83640_clock_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  %ptp_clock = getelementptr inbounds %struct.dp83640_clock, ptr %6, i32 0, i32 8
  %9 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ptp_clock, align 4
  %call5 = tail call i32 @ptp_clock_unregister(ptr noundef %10) #12
  %11 = ptrtoint ptr %chosen to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %chosen, align 4
  br label %if.end16

if.else:                                          ; preds = %dp83640_clock_get.exit
  %phylist = getelementptr inbounds %struct.dp83640_clock, ptr %6, i32 0, i32 7
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.else
  %this.0.in = phi ptr [ %phylist, %if.else ], [ %this.0, %for.body.for.cond_crit_edge ]
  %12 = ptrtoint ptr %this.0.in to i32
  call void @__asan_load4_noabort(i32 %12)
  %this.0 = load ptr, ptr %this.0.in, align 4
  %cmp.i.not = icmp eq ptr %this.0, %phylist
  br i1 %cmp.i.not, label %for.cond.if.end16_crit_edge, label %for.body

for.cond.if.end16_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

for.body:                                         ; preds = %for.cond
  %cmp12 = icmp eq ptr %this.0, %1
  br i1 %cmp12, label %if.then13, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

if.then13:                                        ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.then13.list_del_init.exit_crit_edge

if.then13.list_del_init.exit_crit_edge:           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then13.list_del_init.exit_crit_edge
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %1, ptr %1, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %1, ptr %prev.i3.i, align 4
  br label %if.end16

if.end16:                                         ; preds = %list_del_init.exit, %for.cond.if.end16_crit_edge, %if.then4
  %clock_lock.i39 = getelementptr inbounds %struct.dp83640_clock, ptr %6, i32 0, i32 5
  tail call void @mutex_unlock(ptr noundef %clock_lock.i39) #12
  tail call void @kfree(ptr noundef %1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_soft_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @enable_status_frames(ptr noundef %phydev, i1 noundef zeroext %on) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %clock1 = getelementptr inbounds %struct.dp83640_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clock1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clock1, align 8
  %spec.select = select i1 %on, i16 13, i16 0
  %extreg_lock = getelementptr inbounds %struct.dp83640_clock, ptr %3, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %extreg_lock, i32 noundef 0) #12
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %clock.i = getelementptr inbounds %struct.dp83640_private, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clock.i, align 8
  %page1.i = getelementptr inbounds %struct.dp83640_clock, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %page1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %page1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 5
  br i1 %cmp.not.i, label %entry.ext_write.exit_crit_edge, label %if.then.i

entry.ext_write.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ext_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %10 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_write(ptr noundef %11, i32 noundef 31, i32 noundef 19, i16 noundef zeroext 5) #12
  %12 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clock.i, align 8
  %page3.i = getelementptr inbounds %struct.dp83640_clock, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %page3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 5, ptr %page3.i, align 4
  br label %ext_write.exit

ext_write.exit:                                   ; preds = %if.then.i, %entry.ext_write.exit_crit_edge
  %bus.i18.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %15 = ptrtoint ptr %bus.i18.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus.i18.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %17 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr.i.i, align 8
  %call.i19.i = tail call i32 @mdiobus_write(ptr noundef %16, i32 noundef %18, i32 noundef 24, i16 noundef zeroext %spec.select) #12
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv, align 8
  %clock.i42 = getelementptr inbounds %struct.dp83640_private, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %clock.i42 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clock.i42, align 8
  %page1.i43 = getelementptr inbounds %struct.dp83640_clock, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %page1.i43 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %page1.i43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %24)
  %cmp.not.i44 = icmp eq i32 %24, 6
  br i1 %cmp.not.i44, label %ext_write.exit.ext_write.exit52_crit_edge, label %if.then.i48

ext_write.exit.ext_write.exit52_crit_edge:        ; preds = %ext_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %ext_write.exit52

if.then.i48:                                      ; preds = %ext_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %bus.i18.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bus.i18.i, align 8
  %call.i.i46 = tail call i32 @mdiobus_write(ptr noundef %26, i32 noundef 31, i32 noundef 19, i16 noundef zeroext 6) #12
  %27 = ptrtoint ptr %clock.i42 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clock.i42, align 8
  %page3.i47 = getelementptr inbounds %struct.dp83640_clock, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %page3.i47 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 6, ptr %page3.i47, align 4
  br label %ext_write.exit52

ext_write.exit52:                                 ; preds = %if.then.i48, %ext_write.exit.ext_write.exit52_crit_edge
  %30 = ptrtoint ptr %bus.i18.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bus.i18.i, align 8
  %32 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %addr.i.i, align 8
  %call.i19.i51 = tail call i32 @mdiobus_write(ptr noundef %31, i32 noundef %33, i32 noundef 21, i16 noundef zeroext 512) #12
  tail call void @mutex_unlock(ptr noundef %extreg_lock) #12
  %attached_dev = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 36
  %34 = ptrtoint ptr %attached_dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %attached_dev, align 8
  %tobool3.not = icmp eq ptr %35, null
  br i1 %tobool3.not, label %ext_write.exit52.cleanup.sink.split_crit_edge, label %if.end5

ext_write.exit52.cleanup.sink.split_crit_edge:    ; preds = %ext_write.exit52
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end5:                                          ; preds = %ext_write.exit52
  br i1 %on, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end5
  %call = tail call i32 @dev_mc_add(ptr noundef nonnull %35, ptr noundef nonnull @status_frame_dst) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %if.then7.cleanup_crit_edge, label %if.then7.cleanup.sink.split_crit_edge

if.then7.cleanup.sink.split_crit_edge:            ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else:                                          ; preds = %if.end5
  %call18 = tail call i32 @dev_mc_del(ptr noundef nonnull %35, ptr noundef nonnull @status_frame_dst) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.else.cleanup_crit_edge, label %if.else.cleanup.sink.split_crit_edge

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.else.cleanup.sink.split_crit_edge, %if.then7.cleanup.sink.split_crit_edge, %ext_write.exit52.cleanup.sink.split_crit_edge
  %.str.29.sink = phi ptr [ @.str.25, %ext_write.exit52.cleanup.sink.split_crit_edge ], [ @.str.29, %if.then7.cleanup.sink.split_crit_edge ], [ @.str.32, %if.else.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %phydev, ptr noundef nonnull %.str.29.sink) #15
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge, %if.then7.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_find_pin_unlocked(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tdr_write(i32 noundef %bc, ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %ts, i16 noundef zeroext %cmd) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %0 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tv_nsec, align 8
  %conv = trunc i32 %1 to i16
  %priv.i = getelementptr inbounds %struct.phy_device, ptr %dev, i32 0, i32 26
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %clock.i = getelementptr inbounds %struct.dp83640_private, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clock.i, align 8
  %page1.i = getelementptr inbounds %struct.dp83640_clock, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %page1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %page1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 4
  br i1 %cmp.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %dev, i32 0, i32 1
  %8 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_write(ptr noundef %9, i32 noundef 31, i32 noundef 19, i16 noundef zeroext 4) #12
  %10 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clock.i, align 8
  %page3.i = getelementptr inbounds %struct.dp83640_clock, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %page3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %page3.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bc)
  %tobool.not.i = icmp eq i32 %bc, 0
  %bus.i18.i = getelementptr inbounds %struct.mdio_device, ptr %dev, i32 0, i32 1
  %13 = ptrtoint ptr %bus.i18.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus.i18.i, align 8
  br i1 %tobool.not.i, label %if.else.i, label %if.end.i.ext_write.exit_crit_edge

if.end.i.ext_write.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ext_write.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %dev, i32 0, i32 6
  %15 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %addr.i.i, align 8
  br label %ext_write.exit

ext_write.exit:                                   ; preds = %if.else.i, %if.end.i.ext_write.exit_crit_edge
  %.sink.i = phi i32 [ %16, %if.else.i ], [ 31, %if.end.i.ext_write.exit_crit_edge ]
  %call.i19.i = tail call i32 @mdiobus_write(ptr noundef %14, i32 noundef %.sink.i, i32 noundef 21, i16 noundef zeroext %conv) #12
  %17 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tv_nsec, align 8
  %19 = lshr i32 %18, 16
  %conv2 = trunc i32 %19 to i16
  %20 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv.i, align 8
  %clock.i2 = getelementptr inbounds %struct.dp83640_private, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %clock.i2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clock.i2, align 8
  %page1.i3 = getelementptr inbounds %struct.dp83640_clock, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %page1.i3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %page1.i3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %25)
  %cmp.not.i4 = icmp eq i32 %25, 4
  br i1 %cmp.not.i4, label %ext_write.exit.if.end.i11_crit_edge, label %if.then.i8

ext_write.exit.if.end.i11_crit_edge:              ; preds = %ext_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i11

if.then.i8:                                       ; preds = %ext_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %bus.i18.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bus.i18.i, align 8
  %call.i.i6 = tail call i32 @mdiobus_write(ptr noundef %27, i32 noundef 31, i32 noundef 19, i16 noundef zeroext 4) #12
  %28 = ptrtoint ptr %clock.i2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clock.i2, align 8
  %page3.i7 = getelementptr inbounds %struct.dp83640_clock, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %page3.i7 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 4, ptr %page3.i7, align 4
  br label %if.end.i11

if.end.i11:                                       ; preds = %if.then.i8, %ext_write.exit.if.end.i11_crit_edge
  %31 = ptrtoint ptr %bus.i18.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bus.i18.i, align 8
  br i1 %tobool.not.i, label %if.else.i13, label %if.end.i11.ext_write.exit16_crit_edge

if.end.i11.ext_write.exit16_crit_edge:            ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #14
  br label %ext_write.exit16

if.else.i13:                                      ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #14
  %addr.i.i12 = getelementptr inbounds %struct.mdio_device, ptr %dev, i32 0, i32 6
  %33 = ptrtoint ptr %addr.i.i12 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %addr.i.i12, align 8
  br label %ext_write.exit16

ext_write.exit16:                                 ; preds = %if.else.i13, %if.end.i11.ext_write.exit16_crit_edge
  %.sink.i14 = phi i32 [ %34, %if.else.i13 ], [ 31, %if.end.i11.ext_write.exit16_crit_edge ]
  %call.i19.i15 = tail call i32 @mdiobus_write(ptr noundef %32, i32 noundef %.sink.i14, i32 noundef 21, i16 noundef zeroext %conv2) #12
  %35 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %ts, align 8
  %conv4 = trunc i64 %36 to i16
  %37 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %priv.i, align 8
  %clock.i18 = getelementptr inbounds %struct.dp83640_private, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %clock.i18 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %clock.i18, align 8
  %page1.i19 = getelementptr inbounds %struct.dp83640_clock, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %page1.i19 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %page1.i19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %42)
  %cmp.not.i20 = icmp eq i32 %42, 4
  br i1 %cmp.not.i20, label %ext_write.exit16.if.end.i27_crit_edge, label %if.then.i24

ext_write.exit16.if.end.i27_crit_edge:            ; preds = %ext_write.exit16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i27

if.then.i24:                                      ; preds = %ext_write.exit16
  call void @__sanitizer_cov_trace_pc() #14
  %43 = ptrtoint ptr %bus.i18.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bus.i18.i, align 8
  %call.i.i22 = tail call i32 @mdiobus_write(ptr noundef %44, i32 noundef 31, i32 noundef 19, i16 noundef zeroext 4) #12
  %45 = ptrtoint ptr %clock.i18 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %clock.i18, align 8
  %page3.i23 = getelementptr inbounds %struct.dp83640_clock, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %page3.i23 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 4, ptr %page3.i23, align 4
  br label %if.end.i27

if.end.i27:                                       ; preds = %if.then.i24, %ext_write.exit16.if.end.i27_crit_edge
  %48 = ptrtoint ptr %bus.i18.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bus.i18.i, align 8
  br i1 %tobool.not.i, label %if.else.i29, label %if.end.i27.ext_write.exit32_crit_edge

if.end.i27.ext_write.exit32_crit_edge:            ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #14
  br label %ext_write.exit32

if.else.i29:                                      ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #14
  %addr.i.i28 = getelementptr inbounds %struct.mdio_device, ptr %dev, i32 0, i32 6
  %50 = ptrtoint ptr %addr.i.i28 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %addr.i.i28, align 8
  br label %ext_write.exit32

ext_write.exit32:                                 ; preds = %if.else.i29, %if.end.i27.ext_write.exit32_crit_edge
  %.sink.i30 = phi i32 [ %51, %if.else.i29 ], [ 31, %if.end.i27.ext_write.exit32_crit_edge ]
  %call.i19.i31 = tail call i32 @mdiobus_write(ptr noundef %49, i32 noundef %.sink.i30, i32 noundef 21, i16 noundef zeroext %conv4) #12
  %52 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %ts, align 8
  %54 = lshr i64 %53, 16
  %conv7 = trunc i64 %54 to i16
  %55 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %priv.i, align 8
  %clock.i34 = getelementptr inbounds %struct.dp83640_private, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %clock.i34 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %clock.i34, align 8
  %page1.i35 = getelementptr inbounds %struct.dp83640_clock, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %page1.i35 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %page1.i35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %60)
  %cmp.not.i36 = icmp eq i32 %60, 4
  br i1 %cmp.not.i36, label %ext_write.exit32.if.end.i43_crit_edge, label %if.then.i40

ext_write.exit32.if.end.i43_crit_edge:            ; preds = %ext_write.exit32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i43

if.then.i40:                                      ; preds = %ext_write.exit32
  call void @__sanitizer_cov_trace_pc() #14
  %61 = ptrtoint ptr %bus.i18.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bus.i18.i, align 8
  %call.i.i38 = tail call i32 @mdiobus_write(ptr noundef %62, i32 noundef 31, i32 noundef 19, i16 noundef zeroext 4) #12
  %63 = ptrtoint ptr %clock.i34 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %clock.i34, align 8
  %page3.i39 = getelementptr inbounds %struct.dp83640_clock, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %page3.i39 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 4, ptr %page3.i39, align 4
  br label %if.end.i43

if.end.i43:                                       ; preds = %if.then.i40, %ext_write.exit32.if.end.i43_crit_edge
  %66 = ptrtoint ptr %bus.i18.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bus.i18.i, align 8
  br i1 %tobool.not.i, label %if.else.i45, label %if.end.i43.ext_write.exit48_crit_edge

if.end.i43.ext_write.exit48_crit_edge:            ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #14
  br label %ext_write.exit48

if.else.i45:                                      ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #14
  %addr.i.i44 = getelementptr inbounds %struct.mdio_device, ptr %dev, i32 0, i32 6
  %68 = ptrtoint ptr %addr.i.i44 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %addr.i.i44, align 8
  br label %ext_write.exit48

ext_write.exit48:                                 ; preds = %if.else.i45, %if.end.i43.ext_write.exit48_crit_edge
  %.sink.i46 = phi i32 [ %69, %if.else.i45 ], [ 31, %if.end.i43.ext_write.exit48_crit_edge ]
  %call.i19.i47 = tail call i32 @mdiobus_write(ptr noundef %67, i32 noundef %.sink.i46, i32 noundef 21, i16 noundef zeroext %conv7) #12
  %70 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %priv.i, align 8
  %clock.i50 = getelementptr inbounds %struct.dp83640_private, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %clock.i50 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %clock.i50, align 8
  %page1.i51 = getelementptr inbounds %struct.dp83640_clock, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %page1.i51 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %page1.i51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %75)
  %cmp.not.i52 = icmp eq i32 %75, 4
  br i1 %cmp.not.i52, label %ext_write.exit48.if.end.i59_crit_edge, label %if.then.i56

ext_write.exit48.if.end.i59_crit_edge:            ; preds = %ext_write.exit48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i59

if.then.i56:                                      ; preds = %ext_write.exit48
  call void @__sanitizer_cov_trace_pc() #14
  %76 = ptrtoint ptr %bus.i18.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bus.i18.i, align 8
  %call.i.i54 = tail call i32 @mdiobus_write(ptr noundef %77, i32 noundef 31, i32 noundef 19, i16 noundef zeroext 4) #12
  %78 = ptrtoint ptr %clock.i50 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %clock.i50, align 8
  %page3.i55 = getelementptr inbounds %struct.dp83640_clock, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %page3.i55 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 4, ptr %page3.i55, align 4
  br label %if.end.i59

if.end.i59:                                       ; preds = %if.then.i56, %ext_write.exit48.if.end.i59_crit_edge
  %81 = ptrtoint ptr %bus.i18.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %bus.i18.i, align 8
  br i1 %tobool.not.i, label %if.else.i61, label %if.end.i59.ext_write.exit64_crit_edge

if.end.i59.ext_write.exit64_crit_edge:            ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #14
  br label %ext_write.exit64

if.else.i61:                                      ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #14
  %addr.i.i60 = getelementptr inbounds %struct.mdio_device, ptr %dev, i32 0, i32 6
  %83 = ptrtoint ptr %addr.i.i60 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %addr.i.i60, align 8
  br label %ext_write.exit64

ext_write.exit64:                                 ; preds = %if.else.i61, %if.end.i59.ext_write.exit64_crit_edge
  %.sink.i62 = phi i32 [ %84, %if.else.i61 ], [ 31, %if.end.i59.ext_write.exit64_crit_edge ]
  %call.i19.i63 = tail call i32 @mdiobus_write(ptr noundef %82, i32 noundef %.sink.i62, i32 noundef 20, i16 noundef zeroext %cmd) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_mc_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_mc_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dp83640_rxtstamp(ptr noundef %mii_ts, ptr noundef %skb, i32 noundef %type) #4 align 64 {
entry:
  %event.i.i = alloca %struct.ptp_clock_event, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %mii_ts, i32 -16
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 66, i32 %type)
  %cmp.i = icmp eq i32 %type, 66
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true.i:                                  ; preds = %entry
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i.i, align 8
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %2 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %3 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 %conv.i.i.i
  %h_source.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %h_source.i, ptr noundef nonnull dereferenceable(6) @status_frame_src, i32 6) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %if.then, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true.i
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = add i32 %5, -2
  %sub.i = sub i32 %sub.i.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i)
  %cmp50.i = icmp ugt i32 %sub.i, 2
  br i1 %cmp50.i, label %for.body.lr.ph.i, label %if.then.decode_status_frame.exit_crit_edge

if.then.decode_status_frame.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %decode_status_frame.exit

for.body.lr.ph.i:                                 ; preds = %if.then
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 2
  %sec_hi13.i.i = getelementptr i8, ptr %mii_ts, i32 150
  %sec_lo16.i.i = getelementptr i8, ptr %mii_ts, i32 148
  %ns_hi19.i.i = getelementptr i8, ptr %mii_ts, i32 146
  %edata21.i.i = getelementptr i8, ptr %mii_ts, i32 144
  %10 = getelementptr inbounds %struct.ptp_clock_event, ptr %event.i.i, i32 0, i32 2
  %index.i.i = getelementptr inbounds %struct.ptp_clock_event, ptr %event.i.i, i32 0, i32 1
  %clock.i.i = getelementptr i8, ptr %mii_ts, i32 -8
  br label %for.body.i

for.body.i:                                       ; preds = %if.end27.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %len.052.i = phi i32 [ %sub.i, %for.body.lr.ph.i ], [ %sub29.i, %if.end27.i.for.body.i_crit_edge ]
  %ptr.051.i = phi ptr [ %add.ptr.i, %for.body.lr.ph.i ], [ %add.ptr28.i, %if.end27.i.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %ptr.051.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %ptr.051.i, align 2
  %and.i = and i16 %12, 4095
  %13 = and i16 %12, -4096
  %sub5.i = add i32 %len.052.i, -2
  %add.ptr6.i = getelementptr i8, ptr %ptr.051.i, i32 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %13)
  %cmp8.i = icmp eq i16 %13, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %sub5.i)
  %cmp10.i = icmp ugt i32 %sub5.i, 11
  %or.cond.i = select i1 %cmp8.i, i1 %cmp10.i, i1 false
  br i1 %or.cond.i, label %if.then.i, label %if.else.i74

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @decode_rxts(ptr noundef %add.ptr, ptr noundef %add.ptr6.i) #12
  br label %if.end27.i

if.else.i74:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %13)
  %cmp13.i = icmp eq i16 %13, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub5.i)
  %cmp16.i = icmp ugt i32 %sub5.i, 7
  %or.cond48.i = select i1 %cmp13.i, i1 %cmp16.i, i1 false
  br i1 %or.cond48.i, label %if.then18.i, label %if.else19.i

if.then18.i:                                      ; preds = %if.else.i74
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @decode_txts(ptr noundef %add.ptr, ptr noundef %add.ptr6.i) #12
  br label %if.end27.i

if.else19.i:                                      ; preds = %if.else.i74
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %13)
  %cmp21.i = icmp eq i16 %13, 16384
  br i1 %cmp21.i, label %if.then23.i, label %if.else19.i.decode_status_frame.exit_crit_edge

if.else19.i.decode_status_frame.exit_crit_edge:   ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %decode_status_frame.exit

if.then23.i:                                      ; preds = %if.else19.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %event.i.i) #12
  %14 = call ptr @memset(ptr %event.i.i, i32 255, i32 24)
  %conv.i.i = zext i16 %and.i to i32
  %15 = lshr i32 %conv.i.i, 6
  %and.i.i = and i32 %15, 3
  %and2.i.i = and i32 %conv.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  %add.i.i = shl nuw nsw i32 %and.i.i, 1
  %parsed.0.v.i.i = select i1 %tobool.not.i.i, i32 2, i32 4
  %parsed.0.i.i = add nuw nsw i32 %add.i.i, %parsed.0.v.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %parsed.0.i.i, i32 %sub5.i)
  %cmp.i.i = icmp sgt i32 %parsed.0.i.i, %sub5.i
  br i1 %cmp.i.i, label %if.then23.i.decode_evnt.exit.i_crit_edge, label %if.end7.i.i

if.then23.i.decode_evnt.exit.i_crit_edge:         ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %decode_evnt.exit.i

if.end7.i.i:                                      ; preds = %if.then23.i
  br i1 %tobool.not.i.i, label %if.end7.i.i.if.end12.i.i_crit_edge, label %if.then11.i.i

if.end7.i.i.if.end12.i.i_crit_edge:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i.i

if.then11.i.i:                                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr6.i, align 2
  %add.ptr.i.i = getelementptr i8, ptr %ptr.051.i, i32 4
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.then11.i.i, %if.end7.i.i.if.end12.i.i_crit_edge
  %data.addr.0.i.i = phi ptr [ %add.ptr.i.i, %if.then11.i.i ], [ %add.ptr6.i, %if.end7.i.i.if.end12.i.i_crit_edge ]
  %ext_status.0.i.i = phi i16 [ %17, %if.then11.i.i ], [ 0, %if.end7.i.i.if.end12.i.i_crit_edge ]
  %18 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i.i, label %if.end12.unreachabledefault.i.i [
    i32 3, label %sw.bb.i.i
    i32 2, label %if.end12.i.i.sw.bb14.i.i_crit_edge
    i32 1, label %if.end12.i.i.sw.bb17.i.i_crit_edge
    i32 0, label %if.end12.i.i.sw.bb20.i.i_crit_edge
  ]

if.end12.i.i.sw.bb20.i.i_crit_edge:               ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb20.i.i

if.end12.i.i.sw.bb17.i.i_crit_edge:               ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb17.i.i

if.end12.i.i.sw.bb14.i.i_crit_edge:               ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb14.i.i

sw.bb.i.i:                                        ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sec_hi.i.i = getelementptr inbounds %struct.phy_txts, ptr %data.addr.0.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %sec_hi.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %sec_hi.i.i, align 2
  %21 = ptrtoint ptr %sec_hi13.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %sec_hi13.i.i, align 2
  br label %sw.bb14.i.i

sw.bb14.i.i:                                      ; preds = %sw.bb.i.i, %if.end12.i.i.sw.bb14.i.i_crit_edge
  %sec_lo.i.i = getelementptr inbounds %struct.phy_txts, ptr %data.addr.0.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %sec_lo.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %sec_lo.i.i, align 2
  %24 = ptrtoint ptr %sec_lo16.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %sec_lo16.i.i, align 4
  br label %sw.bb17.i.i

sw.bb17.i.i:                                      ; preds = %sw.bb14.i.i, %if.end12.i.i.sw.bb17.i.i_crit_edge
  %ns_hi.i.i = getelementptr inbounds %struct.phy_txts, ptr %data.addr.0.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %ns_hi.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %ns_hi.i.i, align 2
  %27 = ptrtoint ptr %ns_hi19.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %ns_hi19.i.i, align 2
  br label %sw.bb20.i.i

sw.bb20.i.i:                                      ; preds = %sw.bb17.i.i, %if.end12.i.i.sw.bb20.i.i_crit_edge
  %28 = ptrtoint ptr %data.addr.0.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %data.addr.0.i.i, align 2
  %30 = ptrtoint ptr %edata21.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %edata21.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %ext_status.0.i.i)
  %tobool23.not.i.i = icmp eq i16 %ext_status.0.i.i, 0
  %31 = lshr i16 %12, 1
  %sub.i49.i = and i16 %31, 14
  %shl.i.i.i = shl nuw nsw i16 1, %sub.i49.i
  %ext_status.1.i.i = select i1 %tobool23.not.i.i, i16 %shl.i.i.i, i16 %ext_status.0.i.i
  %32 = ptrtoint ptr %event.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %event.i.i, align 8
  %33 = ptrtoint ptr %sec_lo16.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %sec_lo16.i.i, align 2
  %conv.i69.i.i = zext i16 %34 to i32
  %35 = ptrtoint ptr %sec_hi13.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %sec_hi13.i.i, align 2
  %conv1.i.i.i = zext i16 %36 to i32
  %shl.i70.i.i = shl nuw i32 %conv1.i.i.i, 16
  %or.i.i.i = or i32 %shl.i70.i.i, %conv.i69.i.i
  %conv2.i.i.i = zext i16 %29 to i64
  %37 = ptrtoint ptr %ns_hi19.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %ns_hi19.i.i, align 2
  %39 = and i16 %38, 16383
  %and.i.i.i = zext i16 %39 to i32
  %shl4.i.i.i = shl nuw nsw i32 %and.i.i.i, 16
  %40 = zext i32 %shl4.i.i.i to i64
  %conv7.i.i.i = zext i32 %or.i.i.i to i64
  %mul.i71.i.i = mul nuw nsw i64 %conv7.i.i.i, 1000000000
  %or6.i.i.i = add nsw i64 %conv2.i.i.i, -35
  %add.i72.i.i = add nsw i64 %or6.i.i.i, %mul.i71.i.i
  %sub31.i.i = add nsw i64 %add.i72.i.i, %40
  %41 = ptrtoint ptr %10 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %sub31.i.i, ptr %10, align 8
  %and3768.i.i = and i16 %ext_status.1.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and3768.i.i)
  %tobool38.not.i.i = icmp eq i16 %and3768.i.i, 0
  br i1 %tobool38.not.i.i, label %sw.bb20.i.i.for.inc.i.i_crit_edge, label %if.then39.i.i

sw.bb20.i.i.for.inc.i.i_crit_edge:                ; preds = %sw.bb20.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.end12.unreachabledefault.i.i:                  ; preds = %if.end12.i.i
  unreachable

if.then39.i.i:                                    ; preds = %sw.bb20.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %index.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %index.i.i, align 4
  %43 = ptrtoint ptr %clock.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %clock.i.i, align 8
  %ptp_clock.i.i = getelementptr inbounds %struct.dp83640_clock, ptr %44, i32 0, i32 8
  %45 = ptrtoint ptr %ptp_clock.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ptp_clock.i.i, align 4
  call void @ptp_clock_event(ptr noundef %46, ptr noundef nonnull %event.i.i) #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then39.i.i, %sw.bb20.i.i.for.inc.i.i_crit_edge
  %and3768.1.i.i = and i16 %ext_status.1.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and3768.1.i.i)
  %tobool38.not.1.i.i = icmp eq i16 %and3768.1.i.i, 0
  br i1 %tobool38.not.1.i.i, label %for.inc.i.i.for.inc.1.i.i_crit_edge, label %if.then39.1.i.i

for.inc.i.i.for.inc.1.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1.i.i

if.then39.1.i.i:                                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %47 = ptrtoint ptr %index.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %index.i.i, align 4
  %48 = ptrtoint ptr %clock.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %clock.i.i, align 8
  %ptp_clock.1.i.i = getelementptr inbounds %struct.dp83640_clock, ptr %49, i32 0, i32 8
  %50 = ptrtoint ptr %ptp_clock.1.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ptp_clock.1.i.i, align 4
  call void @ptp_clock_event(ptr noundef %51, ptr noundef nonnull %event.i.i) #12
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %if.then39.1.i.i, %for.inc.i.i.for.inc.1.i.i_crit_edge
  %and3768.2.i.i = and i16 %ext_status.1.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and3768.2.i.i)
  %tobool38.not.2.i.i = icmp eq i16 %and3768.2.i.i, 0
  br i1 %tobool38.not.2.i.i, label %for.inc.1.i.i.for.inc.2.i.i_crit_edge, label %if.then39.2.i.i

for.inc.1.i.i.for.inc.2.i.i_crit_edge:            ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2.i.i

if.then39.2.i.i:                                  ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %52 = ptrtoint ptr %index.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 2, ptr %index.i.i, align 4
  %53 = ptrtoint ptr %clock.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %clock.i.i, align 8
  %ptp_clock.2.i.i = getelementptr inbounds %struct.dp83640_clock, ptr %54, i32 0, i32 8
  %55 = ptrtoint ptr %ptp_clock.2.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ptp_clock.2.i.i, align 4
  call void @ptp_clock_event(ptr noundef %56, ptr noundef nonnull %event.i.i) #12
  br label %for.inc.2.i.i

for.inc.2.i.i:                                    ; preds = %if.then39.2.i.i, %for.inc.1.i.i.for.inc.2.i.i_crit_edge
  %and3768.3.i.i = and i16 %ext_status.1.i.i, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and3768.3.i.i)
  %tobool38.not.3.i.i = icmp eq i16 %and3768.3.i.i, 0
  br i1 %tobool38.not.3.i.i, label %for.inc.2.i.i.for.inc.3.i.i_crit_edge, label %if.then39.3.i.i

for.inc.2.i.i.for.inc.3.i.i_crit_edge:            ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3.i.i

if.then39.3.i.i:                                  ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %index.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 3, ptr %index.i.i, align 4
  %58 = ptrtoint ptr %clock.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %clock.i.i, align 8
  %ptp_clock.3.i.i = getelementptr inbounds %struct.dp83640_clock, ptr %59, i32 0, i32 8
  %60 = ptrtoint ptr %ptp_clock.3.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ptp_clock.3.i.i, align 4
  call void @ptp_clock_event(ptr noundef %61, ptr noundef nonnull %event.i.i) #12
  br label %for.inc.3.i.i

for.inc.3.i.i:                                    ; preds = %if.then39.3.i.i, %for.inc.2.i.i.for.inc.3.i.i_crit_edge
  %and3768.4.i.i = and i16 %ext_status.1.i.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and3768.4.i.i)
  %tobool38.not.4.i.i = icmp eq i16 %and3768.4.i.i, 0
  br i1 %tobool38.not.4.i.i, label %for.inc.3.i.i.for.inc.4.i.i_crit_edge, label %if.then39.4.i.i

for.inc.3.i.i.for.inc.4.i.i_crit_edge:            ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4.i.i

if.then39.4.i.i:                                  ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %62 = ptrtoint ptr %index.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 4, ptr %index.i.i, align 4
  %63 = ptrtoint ptr %clock.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %clock.i.i, align 8
  %ptp_clock.4.i.i = getelementptr inbounds %struct.dp83640_clock, ptr %64, i32 0, i32 8
  %65 = ptrtoint ptr %ptp_clock.4.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ptp_clock.4.i.i, align 4
  call void @ptp_clock_event(ptr noundef %66, ptr noundef nonnull %event.i.i) #12
  br label %for.inc.4.i.i

for.inc.4.i.i:                                    ; preds = %if.then39.4.i.i, %for.inc.3.i.i.for.inc.4.i.i_crit_edge
  %and3768.5.i.i = and i16 %ext_status.1.i.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and3768.5.i.i)
  %tobool38.not.5.i.i = icmp eq i16 %and3768.5.i.i, 0
  br i1 %tobool38.not.5.i.i, label %for.inc.4.i.i.decode_evnt.exit.i_crit_edge, label %if.then39.5.i.i

for.inc.4.i.i.decode_evnt.exit.i_crit_edge:       ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %decode_evnt.exit.i

if.then39.5.i.i:                                  ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %67 = ptrtoint ptr %index.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 5, ptr %index.i.i, align 4
  %68 = ptrtoint ptr %clock.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %clock.i.i, align 8
  %ptp_clock.5.i.i = getelementptr inbounds %struct.dp83640_clock, ptr %69, i32 0, i32 8
  %70 = ptrtoint ptr %ptp_clock.5.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ptp_clock.5.i.i, align 4
  call void @ptp_clock_event(ptr noundef %71, ptr noundef nonnull %event.i.i) #12
  br label %decode_evnt.exit.i

decode_evnt.exit.i:                               ; preds = %if.then39.5.i.i, %for.inc.4.i.i.decode_evnt.exit.i_crit_edge, %if.then23.i.decode_evnt.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %sub5.i, %if.then23.i.decode_evnt.exit.i_crit_edge ], [ %parsed.0.i.i, %if.then39.5.i.i ], [ %parsed.0.i.i, %for.inc.4.i.i.decode_evnt.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %event.i.i) #12
  br label %if.end27.i

if.end27.i:                                       ; preds = %decode_evnt.exit.i, %if.then18.i, %if.then.i
  %size.0.i = phi i32 [ 12, %if.then.i ], [ 8, %if.then18.i ], [ %retval.0.i.i, %decode_evnt.exit.i ]
  %add.ptr28.i = getelementptr i8, ptr %add.ptr6.i, i32 %size.0.i
  %sub29.i = sub i32 %sub5.i, %size.0.i
  %cmp.i75 = icmp ugt i32 %sub29.i, 2
  br i1 %cmp.i75, label %if.end27.i.for.body.i_crit_edge, label %if.end27.i.decode_status_frame.exit_crit_edge

if.end27.i.decode_status_frame.exit_crit_edge:    ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %decode_status_frame.exit

if.end27.i.for.body.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

decode_status_frame.exit:                         ; preds = %if.end27.i.decode_status_frame.exit_crit_edge, %if.else19.i.decode_status_frame.exit_crit_edge, %if.then.decode_status_frame.exit_crit_edge
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  %hwts_rx_en = getelementptr i8, ptr %mii_ts, i32 128
  %72 = ptrtoint ptr %hwts_rx_en to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %hwts_rx_en, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.not = icmp eq i32 %73, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %version = getelementptr i8, ptr %mii_ts, i32 136
  %74 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %version, align 8
  %and = and i32 %75, %type
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.end2.cleanup_crit_edge, label %lor.lhs.false

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end2
  %layer = getelementptr i8, ptr %mii_ts, i32 132
  %76 = ptrtoint ptr %layer to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %layer, align 4
  %and3 = and i32 %77, %type
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %cmp4 = icmp eq i32 %and3, 0
  br i1 %cmp4, label %lor.lhs.false.cleanup_crit_edge, label %do.body7

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body7:                                         ; preds = %lor.lhs.false
  %rx_lock = getelementptr i8, ptr %mii_ts, i32 2216
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_lock) #12
  %rxts1.i = getelementptr i8, ptr %mii_ts, i32 152
  %78 = ptrtoint ptr %rxts1.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rxts1.i, align 8
  %cmp.i.not19.i = icmp eq ptr %79, %rxts1.i
  br i1 %cmp.i.not19.i, label %do.body7.prune_rx_ts.exit_crit_edge, label %for.body.lr.ph.i76

do.body7.prune_rx_ts.exit_crit_edge:              ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #14
  br label %prune_rx_ts.exit

for.body.lr.ph.i76:                               ; preds = %do.body7
  %rxpool.i = getelementptr i8, ptr %mii_ts, i32 160
  br label %for.body.i78

for.body.i78:                                     ; preds = %for.inc.i.for.body.i78_crit_edge, %for.body.lr.ph.i76
  %this.020.i = phi ptr [ %79, %for.body.lr.ph.i76 ], [ %next.021.i, %for.inc.i.for.body.i78_crit_edge ]
  %80 = ptrtoint ptr %this.020.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %next.021.i = load ptr, ptr %this.020.i, align 4
  %tmo.i.i = getelementptr inbounds %struct.rxts, ptr %this.020.i, i32 0, i32 1
  %81 = ptrtoint ptr %tmo.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %tmo.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %83 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i77 = sub i32 %82, %83
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i77)
  %tobool6.not.i = icmp sgt i32 %sub.i.i77, -1
  br i1 %tobool6.not.i, label %for.body.i78.for.inc.i_crit_edge, label %if.then.i79

for.body.i78.for.inc.i_crit_edge:                 ; preds = %for.body.i78
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i79:                                      ; preds = %for.body.i78
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %this.020.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i79.list_del_init.exit.i_crit_edge

if.then.i79.list_del_init.exit.i_crit_edge:       ; preds = %if.then.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i79
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %this.020.i, i32 0, i32 1
  %84 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %prev.i.i.i, align 4
  %86 = ptrtoint ptr %this.020.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %this.020.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %85, ptr %prev1.i.i.i.i, align 4
  %89 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %87, ptr %85, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then.i79.list_del_init.exit.i_crit_edge
  %90 = ptrtoint ptr %this.020.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %this.020.i, ptr %this.020.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %this.020.i, i32 0, i32 1
  %91 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %this.020.i, ptr %prev.i3.i.i, align 4
  %92 = ptrtoint ptr %rxpool.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %rxpool.i, align 4
  %call.i.i16.i = tail call zeroext i1 @__list_add_valid(ptr noundef %this.020.i, ptr noundef %rxpool.i, ptr noundef %93) #12
  br i1 %call.i.i16.i, label %if.end.i.i17.i, label %list_del_init.exit.i.for.inc.i_crit_edge

list_del_init.exit.i.for.inc.i_crit_edge:         ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i.i17.i:                                   ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %this.020.i, ptr %prev1.i.i.i, align 4
  %95 = ptrtoint ptr %this.020.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %93, ptr %this.020.i, align 4
  %96 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %rxpool.i, ptr %prev.i3.i.i, align 4
  %97 = ptrtoint ptr %rxpool.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %this.020.i, ptr %rxpool.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.i17.i, %list_del_init.exit.i.for.inc.i_crit_edge, %for.body.i78.for.inc.i_crit_edge
  %cmp.i.not.i = icmp eq ptr %next.021.i, %rxts1.i
  br i1 %cmp.i.not.i, label %for.inc.i.prune_rx_ts.exit_crit_edge, label %for.inc.i.for.body.i78_crit_edge

for.inc.i.for.body.i78_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i78

for.inc.i.prune_rx_ts.exit_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %prune_rx_ts.exit

prune_rx_ts.exit:                                 ; preds = %for.inc.i.prune_rx_ts.exit_crit_edge, %do.body7.prune_rx_ts.exit_crit_edge
  %98 = ptrtoint ptr %rxts1.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %rxts1.i, align 8
  %and.i.i82 = and i32 %type, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i82)
  %tobool.not.i.i83 = icmp eq i32 %and.i.i82, 0
  br label %for.cond

for.cond:                                         ; preds = %match.exit.for.cond_crit_edge, %prune_rx_ts.exit
  %this.0 = phi ptr [ %99, %prune_rx_ts.exit ], [ %next.0, %match.exit.for.cond_crit_edge ]
  %100 = ptrtoint ptr %this.0 to i32
  call void @__asan_load4_noabort(i32 %100)
  %next.0 = load ptr, ptr %this.0, align 4
  %cmp.i80.not = icmp eq ptr %this.0, %rxts1.i
  br i1 %cmp.i80.not, label %if.then33.critedge, label %for.body

for.body:                                         ; preds = %for.cond
  %call.i = tail call ptr @ptp_parse_header(ptr noundef %skb, i32 noundef %type) #12
  %tobool.not.i81 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i81, label %for.body.match.exit_crit_edge, label %if.end.i

for.body.match.exit_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %match.exit

if.end.i:                                         ; preds = %for.body
  br i1 %tobool.not.i.i83, label %if.else.i.i, label %if.then.i.i, !prof !152

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %control.i.i = getelementptr inbounds %struct.ptp_header, ptr %call.i, i32 0, i32 10
  %101 = ptrtoint ptr %control.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %control.i.i, align 1
  br label %ptp_get_msgtype.exit.i

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %103 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %call.i, align 1
  %105 = and i8 %104, 15
  br label %ptp_get_msgtype.exit.i

ptp_get_msgtype.exit.i:                           ; preds = %if.else.i.i, %if.then.i.i
  %msgtype.0.i.i = phi i8 [ %102, %if.then.i.i ], [ %105, %if.else.i.i ]
  %msgtype2.i = getelementptr inbounds %struct.rxts, ptr %this.0, i32 0, i32 4
  %106 = ptrtoint ptr %msgtype2.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %msgtype2.i, align 2
  %108 = and i8 %msgtype.0.i.i, 15
  call void @__sanitizer_cov_trace_cmp1(i8 %107, i8 %108)
  %cmp.not.i = icmp eq i8 %107, %108
  br i1 %cmp.not.i, label %if.end6.i, label %ptp_get_msgtype.exit.i.match.exit_crit_edge

ptp_get_msgtype.exit.i.match.exit_crit_edge:      ; preds = %ptp_get_msgtype.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %match.exit

if.end6.i:                                        ; preds = %ptp_get_msgtype.exit.i
  %sequence_id.i = getelementptr inbounds %struct.ptp_header, ptr %call.i, i32 0, i32 9
  %109 = ptrtoint ptr %sequence_id.i to i32
  call void @__asan_loadN_noabort(i32 %109, i32 2)
  %110 = load i16, ptr %sequence_id.i, align 1
  %seqid7.i = getelementptr inbounds %struct.rxts, ptr %this.0, i32 0, i32 3
  %111 = ptrtoint ptr %seqid7.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %seqid7.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %112, i16 %110)
  %cmp10.not.i = icmp eq i16 %112, %110
  br i1 %cmp10.not.i, label %cond.end.i, label %if.end6.i.match.exit_crit_edge

if.end6.i.match.exit_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %match.exit

cond.end.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  %source_port_identity.i = getelementptr inbounds %struct.ptp_header, ptr %call.i, i32 0, i32 8
  %call14.i = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %source_port_identity.i, i32 noundef 10) #18
  %113 = lshr i32 %call14.i, 8
  %conv4.i.i.i = and i32 %113, 255
  %arrayidx.i10.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv4.i.i.i
  %114 = ptrtoint ptr %arrayidx.i10.i.i.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx.i10.i.i.i, align 1
  %conv6.i.i.i = zext i8 %115 to i32
  %116 = shl nuw nsw i32 %conv6.i.i.i, 16
  %117 = and i32 %call14.i, 255
  %arrayidx.i.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %117
  %118 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %conv2.i.i.i84 = zext i8 %119 to i32
  %120 = shl nuw i32 %conv2.i.i.i84, 24
  %or.i13.i.i = or i32 %116, %120
  %shr37.i = lshr i32 %or.i13.i.i, 20
  %hash39.i = getelementptr inbounds %struct.rxts, ptr %this.0, i32 0, i32 5
  %121 = ptrtoint ptr %hash39.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %hash39.i, align 4
  %conv40.i = zext i16 %122 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr37.i, i32 %conv40.i)
  %cmp42.not.i = icmp eq i32 %shr37.i, %conv40.i
  %..i = zext i1 %cmp42.not.i to i32
  br label %match.exit

match.exit:                                       ; preds = %cond.end.i, %if.end6.i.match.exit_crit_edge, %ptp_get_msgtype.exit.i.match.exit_crit_edge, %for.body.match.exit_crit_edge
  %retval.0.i85 = phi i32 [ 0, %for.body.match.exit_crit_edge ], [ 0, %ptp_get_msgtype.exit.i.match.exit_crit_edge ], [ 0, %if.end6.i.match.exit_crit_edge ], [ %..i, %cond.end.i ]
  %tobool24.not = icmp eq i32 %retval.0.i85, 0
  br i1 %tobool24.not, label %match.exit.for.cond_crit_edge, label %if.then25

match.exit.for.cond_crit_edge:                    ; preds = %match.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

if.then25:                                        ; preds = %match.exit
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %123 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %end.i.i, align 4
  %hwtstamps.i = getelementptr inbounds %struct.skb_shared_info, ptr %124, i32 0, i32 7
  %125 = ptrtoint ptr %hwtstamps.i to i32
  call void @__asan_store8_noabort(i32 %125)
  store i64 0, ptr %hwtstamps.i, align 8
  %ns = getelementptr inbounds %struct.rxts, ptr %this.0, i32 0, i32 2
  %126 = ptrtoint ptr %ns to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %ns, align 8
  store i64 %127, ptr %hwtstamps.i, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %this.0) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.then25.list_del_init.exit_crit_edge

if.then25.list_del_init.exit_crit_edge:           ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %this.0, i32 0, i32 1
  %128 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %prev.i.i, align 4
  %130 = ptrtoint ptr %this.0 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %this.0, align 4
  %prev1.i.i.i86 = getelementptr inbounds %struct.list_head, ptr %131, i32 0, i32 1
  %132 = ptrtoint ptr %prev1.i.i.i86 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %129, ptr %prev1.i.i.i86, align 4
  %133 = ptrtoint ptr %129 to i32
  call void @__asan_store4_noabort(i32 %133)
  store volatile ptr %131, ptr %129, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then25.list_del_init.exit_crit_edge
  %134 = ptrtoint ptr %this.0 to i32
  call void @__asan_store4_noabort(i32 %134)
  store volatile ptr %this.0, ptr %this.0, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %this.0, i32 0, i32 1
  %135 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %this.0, ptr %prev.i3.i, align 4
  %rxpool = getelementptr i8, ptr %mii_ts, i32 160
  %136 = ptrtoint ptr %rxpool to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %rxpool, align 4
  %call.i.i87 = tail call zeroext i1 @__list_add_valid(ptr noundef %this.0, ptr noundef %rxpool, ptr noundef %137) #12
  br i1 %call.i.i87, label %if.end.i.i88, label %list_del_init.exit.list_add.exit_crit_edge

list_del_init.exit.list_add.exit_crit_edge:       ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit

if.end.i.i88:                                     ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %137, i32 0, i32 1
  %138 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %this.0, ptr %prev1.i.i, align 4
  %139 = ptrtoint ptr %this.0 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %137, ptr %this.0, align 4
  %140 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %rxpool, ptr %prev.i3.i, align 4
  %141 = ptrtoint ptr %rxpool to i32
  call void @__asan_store4_noabort(i32 %141)
  store volatile ptr %this.0, ptr %rxpool, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i88, %list_del_init.exit.list_add.exit_crit_edge
  %phi.cmp = icmp eq ptr %hwtstamps.i, null
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_lock, i32 noundef %call11) #12
  br i1 %phi.cmp, label %list_add.exit.if.then33_crit_edge, label %if.else

list_add.exit.if.then33_crit_edge:                ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then33

if.then33.critedge:                               ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_lock, i32 noundef %call11) #12
  br label %if.then33

if.then33:                                        ; preds = %if.then33.critedge, %list_add.exit.if.then33_crit_edge
  %142 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %type, ptr %cb, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %143 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %143, 2
  %tmo = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %144 = ptrtoint ptr %tmo to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %add, ptr %tmo, align 4
  %rx_queue = getelementptr i8, ptr %mii_ts, i32 2260
  tail call void @skb_queue_tail(ptr noundef %rx_queue, ptr noundef %skb) #12
  %ts_work = getelementptr i8, ptr %mii_ts, i32 24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %145 = load ptr, ptr @system_wq, align 4
  %call.i.i89 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %145, ptr noundef %ts_work, i32 noundef 2) #12
  br label %cleanup

if.else:                                          ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call35 = tail call i32 @netif_rx_ni(ptr noundef %skb) #12
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then33, %lor.lhs.false.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %decode_status_frame.exit
  %retval.0 = phi i1 [ true, %decode_status_frame.exit ], [ false, %if.end.cleanup_crit_edge ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %if.end2.cleanup_crit_edge ], [ true, %if.else ], [ true, %if.then33 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dp83640_txtstamp(ptr noundef %mii_ts, ptr noundef %skb, i32 noundef %type) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hwts_tx_en = getelementptr i8, ptr %mii_ts, i32 124
  %0 = ptrtoint ptr %hwts_tx_en to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwts_tx_en, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %1, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %entry.sw.bb1_crit_edge
  ]

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

sw.bb:                                            ; preds = %entry
  %call.i = tail call ptr @ptp_parse_header(ptr noundef %skb, i32 noundef %type) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %sw.bb.sw.bb1_crit_edge, label %if.end.i

sw.bb.sw.bb1_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

if.end.i:                                         ; preds = %sw.bb
  %and.i.i = and i32 %type, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !prof !152

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %control.i.i = getelementptr inbounds %struct.ptp_header, ptr %call.i, i32 0, i32 10
  %3 = ptrtoint ptr %control.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %control.i.i, align 1
  br label %is_sync.exit

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %call.i, align 1
  %7 = and i8 %6, 15
  br label %is_sync.exit

is_sync.exit:                                     ; preds = %if.else.i.i, %if.then.i.i
  %msgtype.0.i.i = phi i8 [ %4, %if.then.i.i ], [ %7, %if.else.i.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %msgtype.0.i.i)
  %cmp.i.not = icmp eq i8 %msgtype.0.i.i, 0
  br i1 %cmp.i.not, label %if.then, label %is_sync.exit.sw.bb1_crit_edge

is_sync.exit.sw.bb1_crit_edge:                    ; preds = %is_sync.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

if.then:                                          ; preds = %is_sync.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #12
  br label %cleanup

sw.bb1:                                           ; preds = %is_sync.exit.sw.bb1_crit_edge, %sw.bb.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %8 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %end.i, align 4
  %tx_flags = getelementptr inbounds %struct.skb_shared_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %tx_flags to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tx_flags, align 1
  %12 = or i8 %11, 4
  store i8 %12, ptr %tx_flags, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %13, 2
  %tmo = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %14 = ptrtoint ptr %tmo to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add, ptr %tmo, align 4
  %tx_queue = getelementptr i8, ptr %mii_ts, i32 2316
  tail call void @skb_queue_tail(ptr noundef %tx_queue, ptr noundef %skb) #12
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb1, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp83640_hwtstamp(ptr noundef %mii_ts, ptr nocapture noundef readonly %ifr) #4 align 64 {
entry:
  %cfg = alloca %struct.hwtstamp_config, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cfg) #12
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cfg, align 4, !annotation !153
  %1 = getelementptr inbounds %struct.hwtstamp_config, ptr %cfg, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !153
  %3 = getelementptr inbounds %struct.hwtstamp_config, ptr %cfg, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !153
  %ifr_ifru = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %5 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ifr_ifru, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.59, i32 noundef 156) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 12, i32 -1226833920) #19, !srcloc !154
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !152

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cfg, i32 noundef 12) #12
  %8 = call i32 @llvm.read_register.i32(metadata !141) #12
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !155
  %and.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !156
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !157
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %cfg, ptr noundef %6, i32 noundef 12) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #12, !srcloc !156
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !157
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !152

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 12, %entry.if.then11.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 12, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %cfg, i32 %sub.i.i
  %11 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %14 = icmp ugt i32 %13, 2
  br i1 %14, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %hwts_tx_en = getelementptr i8, ptr %mii_ts, i32 124
  %15 = ptrtoint ptr %hwts_tx_en to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %13, ptr %hwts_tx_en, align 4
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %3, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %17, label %if.end4.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 3, label %if.end4.sw.bb6_crit_edge
    i32 4, label %if.end4.sw.bb6_crit_edge145
    i32 5, label %if.end4.sw.bb6_crit_edge146
    i32 6, label %if.end4.sw.bb11_crit_edge
    i32 7, label %if.end4.sw.bb11_crit_edge147
    i32 8, label %if.end4.sw.bb11_crit_edge148
    i32 9, label %if.end4.sw.bb16_crit_edge
    i32 10, label %if.end4.sw.bb16_crit_edge149
    i32 11, label %if.end4.sw.bb16_crit_edge150
    i32 12, label %if.end4.sw.bb21_crit_edge
    i32 13, label %if.end4.sw.bb21_crit_edge151
    i32 14, label %if.end4.sw.bb21_crit_edge152
  ]

if.end4.sw.bb21_crit_edge152:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb21

if.end4.sw.bb21_crit_edge151:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb21

if.end4.sw.bb21_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb21

if.end4.sw.bb16_crit_edge150:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb16

if.end4.sw.bb16_crit_edge149:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb16

if.end4.sw.bb16_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb16

if.end4.sw.bb11_crit_edge148:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb11

if.end4.sw.bb11_crit_edge147:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb11

if.end4.sw.bb11_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb11

if.end4.sw.bb6_crit_edge146:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb6

if.end4.sw.bb6_crit_edge145:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb6

if.end4.sw.bb6_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb6

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %hwts_rx_en = getelementptr i8, ptr %mii_ts, i32 128
  %19 = ptrtoint ptr %hwts_rx_en to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %hwts_rx_en, align 8
  %layer = getelementptr i8, ptr %mii_ts, i32 132
  %20 = ptrtoint ptr %layer to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %layer, align 4
  %version = getelementptr i8, ptr %mii_ts, i32 136
  %21 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %version, align 8
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end4.sw.bb6_crit_edge, %if.end4.sw.bb6_crit_edge145, %if.end4.sw.bb6_crit_edge146
  %hwts_rx_en7 = getelementptr i8, ptr %mii_ts, i32 128
  %22 = ptrtoint ptr %hwts_rx_en7 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %hwts_rx_en7, align 8
  %layer8 = getelementptr i8, ptr %mii_ts, i32 132
  %23 = ptrtoint ptr %layer8 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 48, ptr %layer8, align 4
  %version9 = getelementptr i8, ptr %mii_ts, i32 136
  %24 = ptrtoint ptr %version9 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %version9, align 8
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 3, ptr %3, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end4.sw.bb11_crit_edge, %if.end4.sw.bb11_crit_edge147, %if.end4.sw.bb11_crit_edge148
  %hwts_rx_en12 = getelementptr i8, ptr %mii_ts, i32 128
  %26 = ptrtoint ptr %hwts_rx_en12 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %hwts_rx_en12, align 8
  %layer13 = getelementptr i8, ptr %mii_ts, i32 132
  %27 = ptrtoint ptr %layer13 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 48, ptr %layer13, align 4
  %version14 = getelementptr i8, ptr %mii_ts, i32 136
  %28 = ptrtoint ptr %version14 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %version14, align 8
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 6, ptr %3, align 4
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end4.sw.bb16_crit_edge, %if.end4.sw.bb16_crit_edge149, %if.end4.sw.bb16_crit_edge150
  %hwts_rx_en17 = getelementptr i8, ptr %mii_ts, i32 128
  %30 = ptrtoint ptr %hwts_rx_en17 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %hwts_rx_en17, align 8
  %layer18 = getelementptr i8, ptr %mii_ts, i32 132
  %31 = ptrtoint ptr %layer18 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 64, ptr %layer18, align 4
  %version19 = getelementptr i8, ptr %mii_ts, i32 136
  %32 = ptrtoint ptr %version19 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %version19, align 8
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 9, ptr %3, align 4
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end4.sw.bb21_crit_edge, %if.end4.sw.bb21_crit_edge151, %if.end4.sw.bb21_crit_edge152
  %hwts_rx_en22 = getelementptr i8, ptr %mii_ts, i32 128
  %34 = ptrtoint ptr %hwts_rx_en22 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %hwts_rx_en22, align 8
  %layer23 = getelementptr i8, ptr %mii_ts, i32 132
  %35 = ptrtoint ptr %layer23 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 112, ptr %layer23, align 4
  %version24 = getelementptr i8, ptr %mii_ts, i32 136
  %36 = ptrtoint ptr %version24 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2, ptr %version24, align 8
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 12, ptr %3, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb21, %sw.bb16, %sw.bb11, %sw.bb6, %sw.bb
  %version26 = getelementptr i8, ptr %mii_ts, i32 136
  %38 = ptrtoint ptr %version26 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %version26, align 8
  %.tr = trunc i32 %39 to i16
  %40 = shl i16 %.tr, 1
  %conv = and i16 %40, 30
  %layer31 = getelementptr i8, ptr %mii_ts, i32 132
  %41 = ptrtoint ptr %layer31 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %layer31, align 4
  %43 = trunc i32 %42 to i16
  %44 = shl i16 %43, 1
  %45 = and i16 %44, 128
  %46 = or i16 %45, %conv
  %and42 = and i32 %42, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  %47 = or i16 %46, 96
  %txcfg0.1 = select i1 %tobool43.not, i16 %46, i16 %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool53.not = icmp eq i32 %13, 0
  %48 = or i16 %txcfg0.1, 1
  %txcfg0.2 = select i1 %tobool53.not, i16 %txcfg0.1, i16 %48
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp60 = icmp eq i32 %13, 2
  %49 = or i16 %txcfg0.2, -32256
  %txcfg0.3 = select i1 %cmp60, i16 %49, i16 %txcfg0.2
  %hwts_rx_en67 = getelementptr i8, ptr %mii_ts, i32 128
  %50 = ptrtoint ptr %hwts_rx_en67 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %hwts_rx_en67, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool68.not = icmp eq i32 %51, 0
  %rxcfg0.2 = select i1 %tobool68.not, i16 %txcfg0.1, i16 %48
  %clock = getelementptr i8, ptr %mii_ts, i32 -8
  %52 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %clock, align 8
  %extreg_lock = getelementptr inbounds %struct.dp83640_clock, ptr %53, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %extreg_lock, i32 noundef 0) #12
  %phydev = getelementptr i8, ptr %mii_ts, i32 -4
  %54 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %phydev, align 4
  %priv.i = getelementptr inbounds %struct.phy_device, ptr %55, i32 0, i32 26
  %56 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %priv.i, align 8
  %clock.i = getelementptr inbounds %struct.dp83640_private, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %clock.i, align 8
  %page1.i = getelementptr inbounds %struct.dp83640_clock, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %page1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %page1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %61)
  %cmp.not.i = icmp eq i32 %61, 5
  br i1 %cmp.not.i, label %sw.epilog.ext_write.exit_crit_edge, label %if.then.i127

sw.epilog.ext_write.exit_crit_edge:               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %ext_write.exit

if.then.i127:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %55, i32 0, i32 1
  %62 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bus.i.i, align 8
  %call.i.i126 = call i32 @mdiobus_write(ptr noundef %63, i32 noundef 31, i32 noundef 19, i16 noundef zeroext 5) #12
  %64 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %clock.i, align 8
  %page3.i = getelementptr inbounds %struct.dp83640_clock, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %page3.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 5, ptr %page3.i, align 4
  br label %ext_write.exit

ext_write.exit:                                   ; preds = %if.then.i127, %sw.epilog.ext_write.exit_crit_edge
  %bus.i18.i = getelementptr inbounds %struct.mdio_device, ptr %55, i32 0, i32 1
  %67 = ptrtoint ptr %bus.i18.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bus.i18.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %55, i32 0, i32 6
  %69 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %addr.i.i, align 8
  %call.i19.i = call i32 @mdiobus_write(ptr noundef %68, i32 noundef %70, i32 noundef 22, i16 noundef zeroext %txcfg0.3) #12
  %71 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %phydev, align 4
  %priv.i128 = getelementptr inbounds %struct.phy_device, ptr %72, i32 0, i32 26
  %73 = ptrtoint ptr %priv.i128 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %priv.i128, align 8
  %clock.i129 = getelementptr inbounds %struct.dp83640_private, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %clock.i129 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %clock.i129, align 8
  %page1.i130 = getelementptr inbounds %struct.dp83640_clock, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %page1.i130 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %page1.i130, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %78)
  %cmp.not.i131 = icmp eq i32 %78, 5
  br i1 %cmp.not.i131, label %ext_write.exit.if.then.i120_crit_edge, label %if.then.i135

ext_write.exit.if.then.i120_crit_edge:            ; preds = %ext_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i120

if.then.i135:                                     ; preds = %ext_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  %bus.i.i132 = getelementptr inbounds %struct.mdio_device, ptr %72, i32 0, i32 1
  %79 = ptrtoint ptr %bus.i.i132 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %bus.i.i132, align 8
  %call.i.i133 = call i32 @mdiobus_write(ptr noundef %80, i32 noundef 31, i32 noundef 19, i16 noundef zeroext 5) #12
  %81 = ptrtoint ptr %clock.i129 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %clock.i129, align 8
  %page3.i134 = getelementptr inbounds %struct.dp83640_clock, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %page3.i134 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 5, ptr %page3.i134, align 4
  br label %if.then.i120

if.then.i120:                                     ; preds = %if.then.i135, %ext_write.exit.if.then.i120_crit_edge
  %bus.i18.i136 = getelementptr inbounds %struct.mdio_device, ptr %72, i32 0, i32 1
  %84 = ptrtoint ptr %bus.i18.i136 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %bus.i18.i136, align 8
  %addr.i.i137 = getelementptr inbounds %struct.mdio_device, ptr %72, i32 0, i32 6
  %86 = ptrtoint ptr %addr.i.i137 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %addr.i.i137, align 8
  %call.i19.i138 = call i32 @mdiobus_write(ptr noundef %85, i32 noundef %87, i32 noundef 25, i16 noundef zeroext %rxcfg0.2) #12
  %88 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %clock, align 8
  %extreg_lock76 = getelementptr inbounds %struct.dp83640_clock, ptr %89, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %extreg_lock76) #12
  %90 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ifr_ifru, align 4
  call void @__might_fault(ptr noundef nonnull @.str.59, i32 noundef 174) #12
  %call.i.i119 = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i119, label %if.then.i120.cleanup_crit_edge, label %if.end.i.i123

if.then.i120.cleanup_crit_edge:                   ; preds = %if.then.i120
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i123:                                    ; preds = %if.then.i120
  %92 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %91, i32 12, i32 -1226833920) #19, !srcloc !158
  %asmresult.i.i121 = extractvalue { i32, i32 } %92, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i121)
  %cmp.i.i122 = icmp eq i32 %asmresult.i.i121, 0
  br i1 %cmp.i.i122, label %copy_to_user.exit, label %if.end.i.i123.cleanup_crit_edge

if.end.i.i123.cleanup_crit_edge:                  ; preds = %if.end.i.i123
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i123
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i124 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %cfg, i32 noundef 12) #12
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %91, ptr noundef nonnull %cfg, i32 noundef 12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool79.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select144 = select i1 %tobool79.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.i.i123.cleanup_crit_edge, %if.then.i120.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ -34, %if.end.cleanup_crit_edge ], [ -34, %if.end4.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then.i120.cleanup_crit_edge ], [ -14, %if.end.i.i123.cleanup_crit_edge ], [ %spec.select144, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cfg) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp83640_ts_info(ptr nocapture noundef readonly %mii_ts, ptr nocapture noundef writeonly %info) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %so_timestamping = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %so_timestamping to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 69, ptr %so_timestamping, align 4
  %clock = getelementptr i8, ptr %mii_ts, i32 -8
  %1 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %clock, align 8
  %ptp_clock = getelementptr inbounds %struct.dp83640_clock, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ptp_clock, align 4
  %call = tail call i32 @ptp_clock_index(ptr noundef %4) #12
  %phc_index = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 2
  %5 = ptrtoint ptr %phc_index to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call, ptr %phc_index, align 4
  %tx_types = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 3
  %6 = ptrtoint ptr %tx_types to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 7, ptr %tx_types, align 4
  %rx_filters = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 5
  %7 = ptrtoint ptr %rx_filters to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4681, ptr %rx_filters, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rx_timestamp_work(ptr noundef %work) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_queue = getelementptr i8, ptr %work, i32 2236
  %call19 = tail call ptr @skb_dequeue(ptr noundef %rx_queue) #12
  %tobool.not20 = icmp eq ptr %call19, null
  br i1 %tobool.not20, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %entry.while.body_crit_edge
  %call21 = phi ptr [ %call, %cleanup.while.body_crit_edge ], [ %call19, %entry.while.body_crit_edge ]
  %tmo = getelementptr inbounds %struct.sk_buff, ptr %call21, i32 0, i32 3, i32 4
  %0 = ptrtoint ptr %tmo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tmo, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %1, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @skb_queue_head(ptr noundef %rx_queue, ptr noundef nonnull %call21) #12
  br label %while.end

cleanup:                                          ; preds = %while.body
  %call2 = tail call i32 @netif_rx_ni(ptr noundef nonnull %call21) #12
  %call = tail call ptr @skb_dequeue(ptr noundef %rx_queue) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %cleanup.thread, %entry.while.end_crit_edge
  %3 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rx_queue, align 4
  %cmp.i.not = icmp eq ptr %4, %rx_queue
  br i1 %cmp.i.not, label %while.end.if.end8_crit_edge, label %if.then6

while.end.if.end8_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then6:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %5 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %work, i32 noundef 2) #12
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %while.end.if.end8_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ptp_clock_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ptp_dp83640_adjfine(ptr noundef %ptp, i32 noundef %scaled_ppm) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %chosen = getelementptr i8, ptr %ptp, i32 200
  %0 = ptrtoint ptr %chosen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chosen, align 4
  %phydev1 = getelementptr inbounds %struct.dp83640_private, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %scaled_ppm)
  %cmp = icmp slt i32 %scaled_ppm, 0
  %4 = tail call i32 @llvm.abs.i32(i32 %scaled_ppm, i1 false)
  %conv = sext i32 %4 to i64
  %shl = shl nsw i64 %conv, 13
  %5 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %shl) #19, !srcloc !159
  %6 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %shl, i64 %5, i32 0) #19, !srcloc !160
  %asmresult10.i.i.i = extractvalue { i64, i32 } %6, 0
  %shr = lshr i64 %asmresult10.i.i.i, 28
  %7 = trunc i64 %shr to i16
  %conv2 = and i16 %7, 1023
  %8 = or i16 %conv2, -32768
  %hi.0 = select i1 %cmp, i16 %8, i16 %conv2
  %extreg_lock = getelementptr i8, ptr %ptp, i32 -96
  tail call void @mutex_lock_nested(ptr noundef %extreg_lock, i32 noundef 0) #12
  %priv.i = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 26
  %9 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv.i, align 8
  %clock.i = getelementptr inbounds %struct.dp83640_private, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clock.i, align 8
  %page1.i = getelementptr inbounds %struct.dp83640_clock, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %page1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %page1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %cmp.not.i = icmp eq i32 %14, 4
  br i1 %cmp.not.i, label %entry.ext_write.exit_crit_edge, label %if.then.i

entry.ext_write.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ext_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_write(ptr noundef %16, i32 noundef 31, i32 noundef 19, i16 noundef zeroext 4) #12
  %17 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clock.i, align 8
  %page3.i = getelementptr inbounds %struct.dp83640_clock, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %page3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4, ptr %page3.i, align 4
  br label %ext_write.exit

ext_write.exit:                                   ; preds = %if.then.i, %entry.ext_write.exit_crit_edge
  %bus.i18.i = getelementptr inbounds %struct.mdio_device, ptr %3, i32 0, i32 1
  %20 = ptrtoint ptr %bus.i18.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus.i18.i, align 8
  %call.i19.i = tail call i32 @mdiobus_write(ptr noundef %21, i32 noundef 31, i32 noundef 25, i16 noundef zeroext %hi.0) #12
  %22 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv.i, align 8
  %clock.i20 = getelementptr inbounds %struct.dp83640_private, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %clock.i20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clock.i20, align 8
  %page1.i21 = getelementptr inbounds %struct.dp83640_clock, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %page1.i21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %page1.i21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %27)
  %cmp.not.i22 = icmp eq i32 %27, 4
  br i1 %cmp.not.i22, label %ext_write.exit.ext_write.exit29_crit_edge, label %if.then.i26

ext_write.exit.ext_write.exit29_crit_edge:        ; preds = %ext_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %ext_write.exit29

if.then.i26:                                      ; preds = %ext_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %bus.i18.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus.i18.i, align 8
  %call.i.i24 = tail call i32 @mdiobus_write(ptr noundef %29, i32 noundef 31, i32 noundef 19, i16 noundef zeroext 4) #12
  %30 = ptrtoint ptr %clock.i20 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %clock.i20, align 8
  %page3.i25 = getelementptr inbounds %struct.dp83640_clock, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %page3.i25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 4, ptr %page3.i25, align 4
  br label %ext_write.exit29

ext_write.exit29:                                 ; preds = %if.then.i26, %ext_write.exit.ext_write.exit29_crit_edge
  %div1581.i.i = lshr i64 %asmresult10.i.i.i, 12
  %conv8 = trunc i64 %div1581.i.i to i16
  %33 = ptrtoint ptr %bus.i18.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bus.i18.i, align 8
  %call.i19.i28 = tail call i32 @mdiobus_write(ptr noundef %34, i32 noundef 31, i32 noundef 24, i16 noundef zeroext %conv8) #12
  tail call void @mutex_unlock(ptr noundef %extreg_lock) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ptp_dp83640_adjtime(ptr noundef %ptp, i64 noundef %delta) #4 align 64 {
entry:
  %ts = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %chosen = getelementptr i8, ptr %ptp, i32 200
  %0 = ptrtoint ptr %chosen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chosen, align 4
  %phydev1 = getelementptr inbounds %struct.dp83640_private, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts) #12
  %add = add i64 %delta, 16
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %ts, i64 noundef %add) #12
  %extreg_lock = getelementptr i8, ptr %ptp, i32 -96
  call void @mutex_lock_nested(ptr noundef %extreg_lock, i32 noundef 0) #12
  call fastcc void @tdr_write(i32 noundef 1, ptr noundef %3, ptr noundef nonnull %ts, i16 noundef zeroext 8)
  call void @mutex_unlock(ptr noundef %extreg_lock) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ptp_dp83640_gettime(ptr noundef %ptp, ptr nocapture noundef writeonly %ts) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %chosen = getelementptr i8, ptr %ptp, i32 200
  %0 = ptrtoint ptr %chosen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chosen, align 4
  %phydev1 = getelementptr inbounds %struct.dp83640_private, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev1, align 4
  %extreg_lock = getelementptr i8, ptr %ptp, i32 -96
  tail call void @mutex_lock_nested(ptr noundef %extreg_lock, i32 noundef 0) #12
  %priv.i = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 26
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 8
  %clock.i = getelementptr inbounds %struct.dp83640_private, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clock.i, align 8
  %page1.i = getelementptr inbounds %struct.dp83640_clock, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %page1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %page1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 4
  br i1 %cmp.not.i, label %entry.ext_write.exit_crit_edge, label %if.then.i

entry.ext_write.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ext_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_write(ptr noundef %11, i32 noundef 31, i32 noundef 19, i16 noundef zeroext 4) #12
  %12 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clock.i, align 8
  %page3.i = getelementptr inbounds %struct.dp83640_clock, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %page3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %page3.i, align 4
  br label %ext_write.exit

ext_write.exit:                                   ; preds = %if.then.i, %entry.ext_write.exit_crit_edge
  %bus.i18.i = getelementptr inbounds %struct.mdio_device, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %bus.i18.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus.i18.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %3, i32 0, i32 6
  %17 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr.i.i, align 8
  %call.i19.i = tail call i32 @mdiobus_write(ptr noundef %16, i32 noundef %18, i32 noundef 20, i16 noundef zeroext 32) #12
  %19 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv.i, align 8
  %clock.i23 = getelementptr inbounds %struct.dp83640_private, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %clock.i23 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clock.i23, align 8
  %page1.i24 = getelementptr inbounds %struct.dp83640_clock, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %page1.i24 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %page1.i24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %24)
  %cmp.not.i25 = icmp eq i32 %24, 4
  br i1 %cmp.not.i25, label %ext_write.exit.ext_read.exit_crit_edge, label %if.then.i29

ext_write.exit.ext_read.exit_crit_edge:           ; preds = %ext_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %ext_read.exit

if.then.i29:                                      ; preds = %ext_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %bus.i18.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bus.i18.i, align 8
  %call.i.i27 = tail call i32 @mdiobus_write(ptr noundef %26, i32 noundef 31, i32 noundef 19, i16 noundef zeroext 4) #12
  %27 = ptrtoint ptr %clock.i23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clock.i23, align 8
  %page3.i28 = getelementptr inbounds %struct.dp83640_clock, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %page3.i28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 4, ptr %page3.i28, align 4
  br label %ext_read.exit

ext_read.exit:                                    ; preds = %if.then.i29, %ext_write.exit.ext_read.exit_crit_edge
  %30 = ptrtoint ptr %bus.i18.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bus.i18.i, align 8
  %32 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %addr.i.i, align 8
  %call.i11.i = tail call i32 @mdiobus_read(ptr noundef %31, i32 noundef %33, i32 noundef 21) #12
  %34 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %priv.i, align 8
  %clock.i32 = getelementptr inbounds %struct.dp83640_private, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %clock.i32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %clock.i32, align 8
  %page1.i33 = getelementptr inbounds %struct.dp83640_clock, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %page1.i33 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %page1.i33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %39)
  %cmp.not.i34 = icmp eq i32 %39, 4
  br i1 %cmp.not.i34, label %ext_read.exit.ext_read.exit42_crit_edge, label %if.then.i38

ext_read.exit.ext_read.exit42_crit_edge:          ; preds = %ext_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %ext_read.exit42

if.then.i38:                                      ; preds = %ext_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %bus.i18.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bus.i18.i, align 8
  %call.i.i36 = tail call i32 @mdiobus_write(ptr noundef %41, i32 noundef 31, i32 noundef 19, i16 noundef zeroext 4) #12
  %42 = ptrtoint ptr %clock.i32 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %clock.i32, align 8
  %page3.i37 = getelementptr inbounds %struct.dp83640_clock, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %page3.i37 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 4, ptr %page3.i37, align 4
  br label %ext_read.exit42

ext_read.exit42:                                  ; preds = %if.then.i38, %ext_read.exit.ext_read.exit42_crit_edge
  %45 = ptrtoint ptr %bus.i18.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bus.i18.i, align 8
  %47 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %addr.i.i, align 8
  %call.i11.i41 = tail call i32 @mdiobus_read(ptr noundef %46, i32 noundef %48, i32 noundef 21) #12
  %49 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %priv.i, align 8
  %clock.i44 = getelementptr inbounds %struct.dp83640_private, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %clock.i44 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %clock.i44, align 8
  %page1.i45 = getelementptr inbounds %struct.dp83640_clock, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %page1.i45 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %page1.i45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %54)
  %cmp.not.i46 = icmp eq i32 %54, 4
  br i1 %cmp.not.i46, label %ext_read.exit42.ext_read.exit54_crit_edge, label %if.then.i50

ext_read.exit42.ext_read.exit54_crit_edge:        ; preds = %ext_read.exit42
  call void @__sanitizer_cov_trace_pc() #14
  br label %ext_read.exit54

if.then.i50:                                      ; preds = %ext_read.exit42
  call void @__sanitizer_cov_trace_pc() #14
  %55 = ptrtoint ptr %bus.i18.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bus.i18.i, align 8
  %call.i.i48 = tail call i32 @mdiobus_write(ptr noundef %56, i32 noundef 31, i32 noundef 19, i16 noundef zeroext 4) #12
  %57 = ptrtoint ptr %clock.i44 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %clock.i44, align 8
  %page3.i49 = getelementptr inbounds %struct.dp83640_clock, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %page3.i49 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 4, ptr %page3.i49, align 4
  br label %ext_read.exit54

ext_read.exit54:                                  ; preds = %if.then.i50, %ext_read.exit42.ext_read.exit54_crit_edge
  %60 = ptrtoint ptr %bus.i18.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bus.i18.i, align 8
  %62 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %addr.i.i, align 8
  %call.i11.i53 = tail call i32 @mdiobus_read(ptr noundef %61, i32 noundef %63, i32 noundef 21) #12
  %64 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %priv.i, align 8
  %clock.i56 = getelementptr inbounds %struct.dp83640_private, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %clock.i56 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %clock.i56, align 8
  %page1.i57 = getelementptr inbounds %struct.dp83640_clock, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %page1.i57 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %page1.i57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %69)
  %cmp.not.i58 = icmp eq i32 %69, 4
  br i1 %cmp.not.i58, label %ext_read.exit54.ext_read.exit66_crit_edge, label %if.then.i62

ext_read.exit54.ext_read.exit66_crit_edge:        ; preds = %ext_read.exit54
  call void @__sanitizer_cov_trace_pc() #14
  br label %ext_read.exit66

if.then.i62:                                      ; preds = %ext_read.exit54
  call void @__sanitizer_cov_trace_pc() #14
  %70 = ptrtoint ptr %bus.i18.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bus.i18.i, align 8
  %call.i.i60 = tail call i32 @mdiobus_write(ptr noundef %71, i32 noundef 31, i32 noundef 19, i16 noundef zeroext 4) #12
  %72 = ptrtoint ptr %clock.i56 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %clock.i56, align 8
  %page3.i61 = getelementptr inbounds %struct.dp83640_clock, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %page3.i61 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 4, ptr %page3.i61, align 4
  br label %ext_read.exit66

ext_read.exit66:                                  ; preds = %if.then.i62, %ext_read.exit54.ext_read.exit66_crit_edge
  %75 = ptrtoint ptr %bus.i18.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bus.i18.i, align 8
  %77 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %addr.i.i, align 8
  %call.i11.i65 = tail call i32 @mdiobus_read(ptr noundef %76, i32 noundef %78, i32 noundef 21) #12
  tail call void @mutex_unlock(ptr noundef %extreg_lock) #12
  %shl = shl i32 %call.i11.i41, 16
  %or = or i32 %shl, %call.i11.i
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %79 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %or, ptr %tv_nsec, align 8
  %shl13 = shl i32 %call.i11.i65, 16
  %or14 = or i32 %shl13, %call.i11.i53
  %conv = zext i32 %or14 to i64
  %80 = ptrtoint ptr %ts to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %conv, ptr %ts, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ptp_dp83640_settime(ptr noundef %ptp, ptr nocapture noundef readonly %ts) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %chosen = getelementptr i8, ptr %ptp, i32 200
  %0 = ptrtoint ptr %chosen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chosen, align 4
  %phydev1 = getelementptr inbounds %struct.dp83640_private, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev1, align 4
  %extreg_lock = getelementptr i8, ptr %ptp, i32 -96
  tail call void @mutex_lock_nested(ptr noundef %extreg_lock, i32 noundef 0) #12
  tail call fastcc void @tdr_write(i32 noundef 1, ptr noundef %3, ptr noundef %ts, i16 noundef zeroext 16)
  tail call void @mutex_unlock(ptr noundef %extreg_lock) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ptp_dp83640_enable(ptr noundef %ptp, ptr nocapture noundef readonly %rq, i32 noundef %on) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %chosen = getelementptr i8, ptr %ptp, i32 200
  %0 = ptrtoint ptr %chosen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chosen, align 4
  %phydev1 = getelementptr inbounds %struct.dp83640_private, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev1, align 4
  %4 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rq, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb48
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %7 = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1
  %flags = getelementptr inbounds %struct.ptp_extts_request, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %9)
  %tobool.not = icmp ugt i32 %9, 15
  %10 = and i32 %9, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %10)
  %11 = icmp eq i32 %10, 15
  %or.cond = or i1 %tobool.not, %11
  br i1 %or.cond, label %sw.bb.cleanup_crit_edge, label %if.end12

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12:                                         ; preds = %sw.bb
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %13)
  %cmp14 = icmp ugt i32 %13, 5
  br i1 %cmp14, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %.tr = trunc i32 %13 to i16
  %14 = shl nuw nsw i16 %.tr, 1
  %15 = add nuw nsw i16 %14, 2
  %16 = and i16 %15, 14
  %conv19 = or i16 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool20.not = icmp eq i32 %on, 0
  br i1 %tobool20.not, label %if.end16.if.end46_crit_edge, label %if.then21

if.end16.if.end46_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then21:                                        ; preds = %if.end16
  %ptp_clock = getelementptr i8, ptr %ptp, i32 212
  %17 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ptp_clock, align 4
  %call = tail call i32 @ptp_find_pin(ptr noundef %18, i32 noundef 1, i32 noundef %13) #12
  %conv23 = add i32 %call, 1
  %conv24 = and i32 %conv23, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv24)
  %cmp25 = icmp eq i32 %conv24, 0
  br i1 %cmp25, label %if.then21.cleanup_crit_edge, label %if.end28

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end28:                                         ; preds = %if.then21
  %conv23.tr = trunc i32 %conv23 to i16
  %19 = shl i16 %conv23.tr, 8
  %20 = and i16 %19, 3840
  %conv34 = or i16 %20, %conv19
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 4
  %and36 = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.else, label %if.then38

if.then38:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %23 = or i16 %conv34, 8192
  br label %if.end46

if.else:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %24 = or i16 %conv34, 16384
  br label %if.end46

if.end46:                                         ; preds = %if.else, %if.then38, %if.end16.if.end46_crit_edge
  %evnt.0 = phi i16 [ %23, %if.then38 ], [ %24, %if.else ], [ %conv19, %if.end16.if.end46_crit_edge ]
  %extreg_lock = getelementptr i8, ptr %ptp, i32 -96
  tail call void @mutex_lock_nested(ptr noundef %extreg_lock, i32 noundef 0) #12
  %priv.i = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 26
  %25 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv.i, align 8
  %clock.i = getelementptr inbounds %struct.dp83640_private, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clock.i, align 8
  %page1.i = getelementptr inbounds %struct.dp83640_clock, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %page1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %page1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %30)
  %cmp.not.i = icmp eq i32 %30, 5
  br i1 %cmp.not.i, label %if.end46.ext_write.exit_crit_edge, label %if.then.i

if.end46.ext_write.exit_crit_edge:                ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %ext_write.exit

if.then.i:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %3, i32 0, i32 1
  %31 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bus.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_write(ptr noundef %32, i32 noundef 31, i32 noundef 19, i16 noundef zeroext 5) #12
  %33 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %clock.i, align 8
  %page3.i = getelementptr inbounds %struct.dp83640_clock, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %page3.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 5, ptr %page3.i, align 4
  br label %ext_write.exit

ext_write.exit:                                   ; preds = %if.then.i, %if.end46.ext_write.exit_crit_edge
  %bus.i18.i = getelementptr inbounds %struct.mdio_device, ptr %3, i32 0, i32 1
  %36 = ptrtoint ptr %bus.i18.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus.i18.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %3, i32 0, i32 6
  %38 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %addr.i.i, align 8
  %call.i19.i = tail call i32 @mdiobus_write(ptr noundef %37, i32 noundef %39, i32 noundef 21, i16 noundef zeroext %evnt.0) #12
  br label %cleanup.sink.split

sw.bb48:                                          ; preds = %entry
  %flags49 = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1, i32 0, i32 3
  %40 = ptrtoint ptr %flags49 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool50.not = icmp eq i32 %41, 0
  br i1 %tobool50.not, label %if.end52, label %sw.bb48.cleanup_crit_edge

sw.bb48.cleanup_crit_edge:                        ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end52:                                         ; preds = %sw.bb48
  %index53 = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1, i32 0, i32 2
  %42 = ptrtoint ptr %index53 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %index53, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %43)
  %cmp54 = icmp ugt i32 %43, 6
  br i1 %cmp54, label %if.end52.cleanup_crit_edge, label %if.end57

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end57:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool58.not = icmp eq i32 %on, 0
  %44 = ptrtoint ptr %chosen to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %chosen, align 4
  %phydev1.i = getelementptr inbounds %struct.dp83640_private, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %phydev1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %phydev1.i, align 4
  br i1 %tobool58.not, label %if.then17.i, label %if.then.i89

if.then.i89:                                      ; preds = %if.end57
  %ptp_clock.i = getelementptr i8, ptr %ptp, i32 212
  %48 = ptrtoint ptr %ptp_clock.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ptp_clock.i, align 4
  %call.i = tail call i32 @ptp_find_pin(ptr noundef %49, i32 noundef 2, i32 noundef %43) #12
  %add.i = add i32 %call.i, 1
  %conv2.i = and i32 %add.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv2.i)
  %cmp.i = icmp eq i32 %conv2.i, 0
  br i1 %cmp.i, label %if.then.i89.cleanup_crit_edge, label %if.end22.i

if.then.i89.cleanup_crit_edge:                    ; preds = %if.then.i89
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then17.i:                                      ; preds = %if.end57
  %50 = trunc i32 %43 to i16
  %51 = shl nuw nsw i16 %50, 1
  %conv12.i = or i16 %51, -16383
  %conv15.i = shl nuw nsw i16 %50, 10
  %52 = or i16 %conv15.i, 512
  %extreg_lock.i = getelementptr i8, ptr %ptp, i32 -96
  tail call void @mutex_lock_nested(ptr noundef %extreg_lock.i, i32 noundef 0) #12
  %priv.i.i = getelementptr inbounds %struct.phy_device, ptr %47, i32 0, i32 26
  %53 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %priv.i.i, align 8
  %clock.i.i = getelementptr inbounds %struct.dp83640_private, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %clock.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %clock.i.i, align 8
  %page1.i.i = getelementptr inbounds %struct.dp83640_clock, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %page1.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %page1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %58)
  %cmp.not.i.i = icmp eq i32 %58, 5
  br i1 %cmp.not.i.i, label %if.then17.i.ext_write.exit.i_crit_edge, label %if.then.i.i

if.then17.i.ext_write.exit.i_crit_edge:           ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ext_write.exit.i

if.then.i.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #14
  %bus.i.i.i = getelementptr inbounds %struct.mdio_device, ptr %47, i32 0, i32 1
  %59 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bus.i.i.i, align 8
  %call.i.i.i = tail call i32 @mdiobus_write(ptr noundef %60, i32 noundef 31, i32 noundef 19, i16 noundef zeroext 5) #12
  %61 = ptrtoint ptr %clock.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %clock.i.i, align 8
  %page3.i.i = getelementptr inbounds %struct.dp83640_clock, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %page3.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 5, ptr %page3.i.i, align 4
  br label %ext_write.exit.i

ext_write.exit.i:                                 ; preds = %if.then.i.i, %if.then17.i.ext_write.exit.i_crit_edge
  %bus.i18.i.i = getelementptr inbounds %struct.mdio_device, ptr %47, i32 0, i32 1
  %64 = ptrtoint ptr %bus.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bus.i18.i.i, align 8
  %addr.i.i.i = getelementptr inbounds %struct.mdio_device, ptr %47, i32 0, i32 6
  %66 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %addr.i.i.i, align 8
  %call.i19.i.i = tail call i32 @mdiobus_write(ptr noundef %65, i32 noundef %67, i32 noundef 20, i16 noundef zeroext %conv12.i) #12
  %68 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %priv.i.i, align 8
  %clock.i110.i = getelementptr inbounds %struct.dp83640_private, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %clock.i110.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %clock.i110.i, align 8
  %page1.i111.i = getelementptr inbounds %struct.dp83640_clock, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %page1.i111.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %page1.i111.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %73)
  %cmp.not.i112.i = icmp eq i32 %73, 4
  br i1 %cmp.not.i112.i, label %ext_write.exit.i.cleanup.sink.split.i_crit_edge, label %ext_write.exit.i.cleanup.sink.split.sink.split.i_crit_edge

ext_write.exit.i.cleanup.sink.split.sink.split.i_crit_edge: ; preds = %ext_write.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.sink.split.i

ext_write.exit.i.cleanup.sink.split.i_crit_edge:  ; preds = %ext_write.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

if.end22.i:                                       ; preds = %if.then.i89
  %shl255.i = shl nuw nsw i32 %43, 1
  %and7256.i = shl i32 %add.i, 8
  %shl8257.i = and i32 %and7256.i, 3840
  %or258.i = or i32 %shl8257.i, %shl255.i
  %74 = trunc i32 %or258.i to i16
  %conv12259.i = or i16 %74, -16383
  %and.tr260.i = trunc i32 %43 to i16
  %conv15261.i = shl nuw nsw i16 %and.tr260.i, 10
  %75 = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %75, align 8
  %nsec25.i = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %78 = ptrtoint ptr %nsec25.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %nsec25.i, align 8
  %period.i = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1, i32 0, i32 1
  %80 = ptrtoint ptr %period.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %period.i, align 8
  %82 = trunc i64 %81 to i32
  %conv27.i = mul i32 %82, 1000000000
  %nsec29.i = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1, i32 0, i32 1, i32 1
  %83 = ptrtoint ptr %nsec29.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %nsec29.i, align 8
  %add30.i = add i32 %conv27.i, %84
  %div107.i = lshr i32 %add30.i, 1
  %extreg_lock31.i = getelementptr i8, ptr %ptp, i32 -96
  tail call void @mutex_lock_nested(ptr noundef %extreg_lock31.i, i32 noundef 0) #12
  %priv.i121.i = getelementptr inbounds %struct.phy_device, ptr %47, i32 0, i32 26
  %85 = ptrtoint ptr %priv.i121.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %priv.i121.i, align 8
  %clock.i122.i = getelementptr inbounds %struct.dp83640_private, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %clock.i122.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %clock.i122.i, align 8
  %page1.i123.i = getelementptr inbounds %struct.dp83640_clock, ptr %88, i32 0, i32 3
  %89 = ptrtoint ptr %page1.i123.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %page1.i123.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %90)
  %cmp.not.i124.i = icmp eq i32 %90, 5
  br i1 %cmp.not.i124.i, label %if.end22.i.ext_write.exit132.i_crit_edge, label %if.then.i128.i

if.end22.i.ext_write.exit132.i_crit_edge:         ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ext_write.exit132.i

if.then.i128.i:                                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  %bus.i.i125.i = getelementptr inbounds %struct.mdio_device, ptr %47, i32 0, i32 1
  %91 = ptrtoint ptr %bus.i.i125.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %bus.i.i125.i, align 8
  %call.i.i126.i = tail call i32 @mdiobus_write(ptr noundef %92, i32 noundef 31, i32 noundef 19, i16 noundef zeroext 5) #12
  %93 = ptrtoint ptr %clock.i122.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %clock.i122.i, align 8
  %page3.i127.i = getelementptr inbounds %struct.dp83640_clock, ptr %94, i32 0, i32 3
  %95 = ptrtoint ptr %page3.i127.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 5, ptr %page3.i127.i, align 4
  br label %ext_write.exit132.i

ext_write.exit132.i:                              ; preds = %if.then.i128.i, %if.end22.i.ext_write.exit132.i_crit_edge
  %bus.i18.i129.i = getelementptr inbounds %struct.mdio_device, ptr %47, i32 0, i32 1
  %96 = ptrtoint ptr %bus.i18.i129.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %bus.i18.i129.i, align 8
  %addr.i.i130.i = getelementptr inbounds %struct.mdio_device, ptr %47, i32 0, i32 6
  %98 = ptrtoint ptr %addr.i.i130.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %addr.i.i130.i, align 8
  %call.i19.i131.i = tail call i32 @mdiobus_write(ptr noundef %97, i32 noundef %99, i32 noundef 20, i16 noundef zeroext %conv12259.i) #12
  %100 = or i16 %conv15261.i, 64
  %101 = ptrtoint ptr %priv.i121.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %priv.i121.i, align 8
  %clock.i134.i = getelementptr inbounds %struct.dp83640_private, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %clock.i134.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %clock.i134.i, align 8
  %page1.i135.i = getelementptr inbounds %struct.dp83640_clock, ptr %104, i32 0, i32 3
  %105 = ptrtoint ptr %page1.i135.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %page1.i135.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %106)
  %cmp.not.i136.i = icmp eq i32 %106, 4
  br i1 %cmp.not.i136.i, label %ext_write.exit132.i.ext_write.exit144.i_crit_edge, label %if.then.i140.i

ext_write.exit132.i.ext_write.exit144.i_crit_edge: ; preds = %ext_write.exit132.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ext_write.exit144.i

if.then.i140.i:                                   ; preds = %ext_write.exit132.i
  call void @__sanitizer_cov_trace_pc() #14
  %107 = ptrtoint ptr %bus.i18.i129.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %bus.i18.i129.i, align 8
  %call.i.i138.i = tail call i32 @mdiobus_write(ptr noundef %108, i32 noundef 31, i32 noundef 19, i16 noundef zeroext 4) #12
  %109 = ptrtoint ptr %clock.i134.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %clock.i134.i, align 8
  %page3.i139.i = getelementptr inbounds %struct.dp83640_clock, ptr %110, i32 0, i32 3
  %111 = ptrtoint ptr %page3.i139.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 4, ptr %page3.i139.i, align 4
  br label %ext_write.exit144.i

ext_write.exit144.i:                              ; preds = %if.then.i140.i, %ext_write.exit132.i.ext_write.exit144.i_crit_edge
  %112 = ptrtoint ptr %bus.i18.i129.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %bus.i18.i129.i, align 8
  %114 = ptrtoint ptr %addr.i.i130.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %addr.i.i130.i, align 8
  %call.i19.i143.i = tail call i32 @mdiobus_write(ptr noundef %113, i32 noundef %115, i32 noundef 20, i16 noundef zeroext %100) #12
  %conv36.i = trunc i32 %79 to i16
  %116 = ptrtoint ptr %priv.i121.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %priv.i121.i, align 8
  %clock.i146.i = getelementptr inbounds %struct.dp83640_private, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %clock.i146.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %clock.i146.i, align 8
  %page1.i147.i = getelementptr inbounds %struct.dp83640_clock, ptr %119, i32 0, i32 3
  %120 = ptrtoint ptr %page1.i147.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %page1.i147.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %121)
  %cmp.not.i148.i = icmp eq i32 %121, 4
  br i1 %cmp.not.i148.i, label %ext_write.exit144.i.ext_write.exit156.i_crit_edge, label %if.then.i152.i

ext_write.exit144.i.ext_write.exit156.i_crit_edge: ; preds = %ext_write.exit144.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ext_write.exit156.i

if.then.i152.i:                                   ; preds = %ext_write.exit144.i
  call void @__sanitizer_cov_trace_pc() #14
  %122 = ptrtoint ptr %bus.i18.i129.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %bus.i18.i129.i, align 8
  %call.i.i150.i = tail call i32 @mdiobus_write(ptr noundef %123, i32 noundef 31, i32 noundef 19, i16 noundef zeroext 4) #12
  %124 = ptrtoint ptr %clock.i146.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %clock.i146.i, align 8
  %page3.i151.i = getelementptr inbounds %struct.dp83640_clock, ptr %125, i32 0, i32 3
  %126 = ptrtoint ptr %page3.i151.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 4, ptr %page3.i151.i, align 4
  br label %ext_write.exit156.i

ext_write.exit156.i:                              ; preds = %if.then.i152.i, %ext_write.exit144.i.ext_write.exit156.i_crit_edge
  %127 = ptrtoint ptr %bus.i18.i129.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %bus.i18.i129.i, align 8
  %129 = ptrtoint ptr %addr.i.i130.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %addr.i.i130.i, align 8
  %call.i19.i155.i = tail call i32 @mdiobus_write(ptr noundef %128, i32 noundef %130, i32 noundef 21, i16 noundef zeroext %conv36.i) #12
  %shr.i = lshr i32 %79, 16
  %conv37.i = trunc i32 %shr.i to i16
  %131 = ptrtoint ptr %priv.i121.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %priv.i121.i, align 8
  %clock.i158.i = getelementptr inbounds %struct.dp83640_private, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %clock.i158.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %clock.i158.i, align 8
  %page1.i159.i = getelementptr inbounds %struct.dp83640_clock, ptr %134, i32 0, i32 3
  %135 = ptrtoint ptr %page1.i159.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %page1.i159.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %136)
  %cmp.not.i160.i = icmp eq i32 %136, 4
  br i1 %cmp.not.i160.i, label %ext_write.exit156.i.ext_write.exit168.i_crit_edge, label %if.then.i164.i

ext_write.exit156.i.ext_write.exit168.i_crit_edge: ; preds = %ext_write.exit156.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ext_write.exit168.i

if.then.i164.i:                                   ; preds = %ext_write.exit156.i
  call void @__sanitizer_cov_trace_pc() #14
  %137 = ptrtoint ptr %bus.i18.i129.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %bus.i18.i129.i, align 8
  %call.i.i162.i = tail call i32 @mdiobus_write(ptr noundef %138, i32 noundef 31, i32 noundef 19, i16 noundef zeroext 4) #12
  %139 = ptrtoint ptr %clock.i158.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %clock.i158.i, align 8
  %page3.i163.i = getelementptr inbounds %struct.dp83640_clock, ptr %140, i32 0, i32 3
  %141 = ptrtoint ptr %page3.i163.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 4, ptr %page3.i163.i, align 4
  br label %ext_write.exit168.i

ext_write.exit168.i:                              ; preds = %if.then.i164.i, %ext_write.exit156.i.ext_write.exit168.i_crit_edge
  %142 = ptrtoint ptr %bus.i18.i129.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %bus.i18.i129.i, align 8
  %144 = ptrtoint ptr %addr.i.i130.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %addr.i.i130.i, align 8
  %call.i19.i167.i = tail call i32 @mdiobus_write(ptr noundef %143, i32 noundef %145, i32 noundef 21, i16 noundef zeroext %conv37.i) #12
  %conv39.i = trunc i64 %77 to i16
  %146 = ptrtoint ptr %priv.i121.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %priv.i121.i, align 8
  %clock.i170.i = getelementptr inbounds %struct.dp83640_private, ptr %147, i32 0, i32 1
  %148 = ptrtoint ptr %clock.i170.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %clock.i170.i, align 8
  %page1.i171.i = getelementptr inbounds %struct.dp83640_clock, ptr %149, i32 0, i32 3
  %150 = ptrtoint ptr %page1.i171.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %page1.i171.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %151)
  %cmp.not.i172.i = icmp eq i32 %151, 4
  br i1 %cmp.not.i172.i, label %ext_write.exit168.i.ext_write.exit180.i_crit_edge, label %if.then.i176.i

ext_write.exit168.i.ext_write.exit180.i_crit_edge: ; preds = %ext_write.exit168.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ext_write.exit180.i

if.then.i176.i:                                   ; preds = %ext_write.exit168.i
  call void @__sanitizer_cov_trace_pc() #14
  %152 = ptrtoint ptr %bus.i18.i129.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %bus.i18.i129.i, align 8
  %call.i.i174.i = tail call i32 @mdiobus_write(ptr noundef %153, i32 noundef 31, i32 noundef 19, i16 noundef zeroext 4) #12
  %154 = ptrtoint ptr %clock.i170.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %clock.i170.i, align 8
  %page3.i175.i = getelementptr inbounds %struct.dp83640_clock, ptr %155, i32 0, i32 3
  %156 = ptrtoint ptr %page3.i175.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 4, ptr %page3.i175.i, align 4
  br label %ext_write.exit180.i

ext_write.exit180.i:                              ; preds = %if.then.i176.i, %ext_write.exit168.i.ext_write.exit180.i_crit_edge
  %157 = ptrtoint ptr %bus.i18.i129.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %bus.i18.i129.i, align 8
  %159 = ptrtoint ptr %addr.i.i130.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %addr.i.i130.i, align 8
  %call.i19.i179.i = tail call i32 @mdiobus_write(ptr noundef %158, i32 noundef %160, i32 noundef 21, i16 noundef zeroext %conv39.i) #12
  %shr40108.i = lshr i64 %77, 16
  %conv41.i = trunc i64 %shr40108.i to i16
  %161 = ptrtoint ptr %priv.i121.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %priv.i121.i, align 8
  %clock.i182.i = getelementptr inbounds %struct.dp83640_private, ptr %162, i32 0, i32 1
  %163 = ptrtoint ptr %clock.i182.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %clock.i182.i, align 8
  %page1.i183.i = getelementptr inbounds %struct.dp83640_clock, ptr %164, i32 0, i32 3
  %165 = ptrtoint ptr %page1.i183.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %page1.i183.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %166)
  %cmp.not.i184.i = icmp eq i32 %166, 4
  br i1 %cmp.not.i184.i, label %ext_write.exit180.i.ext_write.exit192.i_crit_edge, label %if.then.i188.i

ext_write.exit180.i.ext_write.exit192.i_crit_edge: ; preds = %ext_write.exit180.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ext_write.exit192.i

if.then.i188.i:                                   ; preds = %ext_write.exit180.i
  call void @__sanitizer_cov_trace_pc() #14
  %167 = ptrtoint ptr %bus.i18.i129.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %bus.i18.i129.i, align 8
  %call.i.i186.i = tail call i32 @mdiobus_write(ptr noundef %168, i32 noundef 31, i32 noundef 19, i16 noundef zeroext 4) #12
  %169 = ptrtoint ptr %clock.i182.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %clock.i182.i, align 8
  %page3.i187.i = getelementptr inbounds %struct.dp83640_clock, ptr %170, i32 0, i32 3
  %171 = ptrtoint ptr %page3.i187.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 4, ptr %page3.i187.i, align 4
  br label %ext_write.exit192.i

ext_write.exit192.i:                              ; preds = %if.then.i188.i, %ext_write.exit180.i.ext_write.exit192.i_crit_edge
  %172 = ptrtoint ptr %bus.i18.i129.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %bus.i18.i129.i, align 8
  %174 = ptrtoint ptr %addr.i.i130.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %addr.i.i130.i, align 8
  %call.i19.i191.i = tail call i32 @mdiobus_write(ptr noundef %173, i32 noundef %175, i32 noundef 21, i16 noundef zeroext %conv41.i) #12
  %conv43.i = trunc i32 %div107.i to i16
  %176 = ptrtoint ptr %priv.i121.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %priv.i121.i, align 8
  %clock.i194.i = getelementptr inbounds %struct.dp83640_private, ptr %177, i32 0, i32 1
  %178 = ptrtoint ptr %clock.i194.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %clock.i194.i, align 8
  %page1.i195.i = getelementptr inbounds %struct.dp83640_clock, ptr %179, i32 0, i32 3
  %180 = ptrtoint ptr %page1.i195.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %page1.i195.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %181)
  %cmp.not.i196.i = icmp eq i32 %181, 4
  br i1 %cmp.not.i196.i, label %ext_write.exit192.i.ext_write.exit204.i_crit_edge, label %if.then.i200.i

ext_write.exit192.i.ext_write.exit204.i_crit_edge: ; preds = %ext_write.exit192.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ext_write.exit204.i

if.then.i200.i:                                   ; preds = %ext_write.exit192.i
  call void @__sanitizer_cov_trace_pc() #14
  %182 = ptrtoint ptr %bus.i18.i129.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %bus.i18.i129.i, align 8
  %call.i.i198.i = tail call i32 @mdiobus_write(ptr noundef %183, i32 noundef 31, i32 noundef 19, i16 noundef zeroext 4) #12
  %184 = ptrtoint ptr %clock.i194.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %clock.i194.i, align 8
  %page3.i199.i = getelementptr inbounds %struct.dp83640_clock, ptr %185, i32 0, i32 3
  %186 = ptrtoint ptr %page3.i199.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 4, ptr %page3.i199.i, align 4
  br label %ext_write.exit204.i

ext_write.exit204.i:                              ; preds = %if.then.i200.i, %ext_write.exit192.i.ext_write.exit204.i_crit_edge
  %187 = ptrtoint ptr %bus.i18.i129.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %bus.i18.i129.i, align 8
  %189 = ptrtoint ptr %addr.i.i130.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %addr.i.i130.i, align 8
  %call.i19.i203.i = tail call i32 @mdiobus_write(ptr noundef %188, i32 noundef %190, i32 noundef 21, i16 noundef zeroext %conv43.i) #12
  %shr44.i = lshr i32 %add30.i, 17
  %conv45.i = trunc i32 %shr44.i to i16
  %191 = ptrtoint ptr %priv.i121.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %priv.i121.i, align 8
  %clock.i206.i = getelementptr inbounds %struct.dp83640_private, ptr %192, i32 0, i32 1
  %193 = ptrtoint ptr %clock.i206.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %clock.i206.i, align 8
  %page1.i207.i = getelementptr inbounds %struct.dp83640_clock, ptr %194, i32 0, i32 3
  %195 = ptrtoint ptr %page1.i207.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %page1.i207.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %196)
  %cmp.not.i208.i = icmp eq i32 %196, 4
  br i1 %cmp.not.i208.i, label %ext_write.exit204.i.ext_write.exit216.i_crit_edge, label %if.then.i212.i

ext_write.exit204.i.ext_write.exit216.i_crit_edge: ; preds = %ext_write.exit204.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ext_write.exit216.i

if.then.i212.i:                                   ; preds = %ext_write.exit204.i
  call void @__sanitizer_cov_trace_pc() #14
  %197 = ptrtoint ptr %bus.i18.i129.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %bus.i18.i129.i, align 8
  %call.i.i210.i = tail call i32 @mdiobus_write(ptr noundef %198, i32 noundef 31, i32 noundef 19, i16 noundef zeroext 4) #12
  %199 = ptrtoint ptr %clock.i206.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %clock.i206.i, align 8
  %page3.i211.i = getelementptr inbounds %struct.dp83640_clock, ptr %200, i32 0, i32 3
  %201 = ptrtoint ptr %page3.i211.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 4, ptr %page3.i211.i, align 4
  br label %ext_write.exit216.i

ext_write.exit216.i:                              ; preds = %if.then.i212.i, %ext_write.exit204.i.ext_write.exit216.i_crit_edge
  %202 = ptrtoint ptr %bus.i18.i129.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %bus.i18.i129.i, align 8
  %204 = ptrtoint ptr %addr.i.i130.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %addr.i.i130.i, align 8
  %call.i19.i215.i = tail call i32 @mdiobus_write(ptr noundef %203, i32 noundef %205, i32 noundef 21, i16 noundef zeroext %conv45.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %43)
  %cmp46.i = icmp ult i32 %43, 2
  br i1 %cmp46.i, label %if.then48.i, label %ext_write.exit216.i.if.end53.i_crit_edge

ext_write.exit216.i.if.end53.i_crit_edge:         ; preds = %ext_write.exit216.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53.i

if.then48.i:                                      ; preds = %ext_write.exit216.i
  %206 = ptrtoint ptr %priv.i121.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %priv.i121.i, align 8
  %clock.i218.i = getelementptr inbounds %struct.dp83640_private, ptr %207, i32 0, i32 1
  %208 = ptrtoint ptr %clock.i218.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %clock.i218.i, align 8
  %page1.i219.i = getelementptr inbounds %struct.dp83640_clock, ptr %209, i32 0, i32 3
  %210 = ptrtoint ptr %page1.i219.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %page1.i219.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %211)
  %cmp.not.i220.i = icmp eq i32 %211, 4
  br i1 %cmp.not.i220.i, label %if.then48.i.ext_write.exit228.i_crit_edge, label %if.then.i224.i

if.then48.i.ext_write.exit228.i_crit_edge:        ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ext_write.exit228.i

if.then.i224.i:                                   ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #14
  %212 = ptrtoint ptr %bus.i18.i129.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %bus.i18.i129.i, align 8
  %call.i.i222.i = tail call i32 @mdiobus_write(ptr noundef %213, i32 noundef 31, i32 noundef 19, i16 noundef zeroext 4) #12
  %214 = ptrtoint ptr %clock.i218.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %clock.i218.i, align 8
  %page3.i223.i = getelementptr inbounds %struct.dp83640_clock, ptr %215, i32 0, i32 3
  %216 = ptrtoint ptr %page3.i223.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 4, ptr %page3.i223.i, align 4
  br label %ext_write.exit228.i

ext_write.exit228.i:                              ; preds = %if.then.i224.i, %if.then48.i.ext_write.exit228.i_crit_edge
  %217 = ptrtoint ptr %bus.i18.i129.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %bus.i18.i129.i, align 8
  %219 = ptrtoint ptr %addr.i.i130.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %addr.i.i130.i, align 8
  %call.i19.i227.i = tail call i32 @mdiobus_write(ptr noundef %218, i32 noundef %220, i32 noundef 21, i16 noundef zeroext %conv43.i) #12
  %221 = ptrtoint ptr %priv.i121.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %priv.i121.i, align 8
  %clock.i230.i = getelementptr inbounds %struct.dp83640_private, ptr %222, i32 0, i32 1
  %223 = ptrtoint ptr %clock.i230.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %clock.i230.i, align 8
  %page1.i231.i = getelementptr inbounds %struct.dp83640_clock, ptr %224, i32 0, i32 3
  %225 = ptrtoint ptr %page1.i231.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %page1.i231.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %226)
  %cmp.not.i232.i = icmp eq i32 %226, 4
  br i1 %cmp.not.i232.i, label %ext_write.exit228.i.ext_write.exit240.i_crit_edge, label %if.then.i236.i

ext_write.exit228.i.ext_write.exit240.i_crit_edge: ; preds = %ext_write.exit228.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ext_write.exit240.i

if.then.i236.i:                                   ; preds = %ext_write.exit228.i
  call void @__sanitizer_cov_trace_pc() #14
  %227 = ptrtoint ptr %bus.i18.i129.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %bus.i18.i129.i, align 8
  %call.i.i234.i = tail call i32 @mdiobus_write(ptr noundef %228, i32 noundef 31, i32 noundef 19, i16 noundef zeroext 4) #12
  %229 = ptrtoint ptr %clock.i230.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %clock.i230.i, align 8
  %page3.i235.i = getelementptr inbounds %struct.dp83640_clock, ptr %230, i32 0, i32 3
  %231 = ptrtoint ptr %page3.i235.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 4, ptr %page3.i235.i, align 4
  br label %ext_write.exit240.i

ext_write.exit240.i:                              ; preds = %if.then.i236.i, %ext_write.exit228.i.ext_write.exit240.i_crit_edge
  %232 = ptrtoint ptr %bus.i18.i129.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %bus.i18.i129.i, align 8
  %234 = ptrtoint ptr %addr.i.i130.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %addr.i.i130.i, align 8
  %call.i19.i239.i = tail call i32 @mdiobus_write(ptr noundef %233, i32 noundef %235, i32 noundef 21, i16 noundef zeroext %conv45.i) #12
  br label %if.end53.i

if.end53.i:                                       ; preds = %ext_write.exit240.i, %ext_write.exit216.i.if.end53.i_crit_edge
  %236 = or i16 %conv15261.i, 256
  %237 = ptrtoint ptr %priv.i121.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %priv.i121.i, align 8
  %clock.i242.i = getelementptr inbounds %struct.dp83640_private, ptr %238, i32 0, i32 1
  %239 = ptrtoint ptr %clock.i242.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %clock.i242.i, align 8
  %page1.i243.i = getelementptr inbounds %struct.dp83640_clock, ptr %240, i32 0, i32 3
  %241 = ptrtoint ptr %page1.i243.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %page1.i243.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %242)
  %cmp.not.i244.i = icmp eq i32 %242, 4
  br i1 %cmp.not.i244.i, label %if.end53.i.cleanup.sink.split.i_crit_edge, label %if.end53.i.cleanup.sink.split.sink.split.i_crit_edge

if.end53.i.cleanup.sink.split.sink.split.i_crit_edge: ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.sink.split.i

if.end53.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

cleanup.sink.split.sink.split.i:                  ; preds = %if.end53.i.cleanup.sink.split.sink.split.i_crit_edge, %ext_write.exit.i.cleanup.sink.split.sink.split.i_crit_edge
  %bus.i18.i129.sink267.i = phi ptr [ %bus.i18.i.i, %ext_write.exit.i.cleanup.sink.split.sink.split.i_crit_edge ], [ %bus.i18.i129.i, %if.end53.i.cleanup.sink.split.sink.split.i_crit_edge ]
  %clock.i242.sink.i = phi ptr [ %clock.i110.i, %ext_write.exit.i.cleanup.sink.split.sink.split.i_crit_edge ], [ %clock.i242.i, %if.end53.i.cleanup.sink.split.sink.split.i_crit_edge ]
  %addr.i.i130.sink.ph.i = phi ptr [ %addr.i.i.i, %ext_write.exit.i.cleanup.sink.split.sink.split.i_crit_edge ], [ %addr.i.i130.i, %if.end53.i.cleanup.sink.split.sink.split.i_crit_edge ]
  %.sink266.ph.i = phi i16 [ %52, %ext_write.exit.i.cleanup.sink.split.sink.split.i_crit_edge ], [ %236, %if.end53.i.cleanup.sink.split.sink.split.i_crit_edge ]
  %extreg_lock31.sink.ph.i = phi ptr [ %extreg_lock.i, %ext_write.exit.i.cleanup.sink.split.sink.split.i_crit_edge ], [ %extreg_lock31.i, %if.end53.i.cleanup.sink.split.sink.split.i_crit_edge ]
  %243 = ptrtoint ptr %bus.i18.i129.sink267.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %bus.i18.i129.sink267.i, align 8
  %call.i.i246.i = tail call i32 @mdiobus_write(ptr noundef %244, i32 noundef 31, i32 noundef 19, i16 noundef zeroext 4) #12
  %245 = ptrtoint ptr %clock.i242.sink.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %clock.i242.sink.i, align 8
  %page3.i247.i = getelementptr inbounds %struct.dp83640_clock, ptr %246, i32 0, i32 3
  %247 = ptrtoint ptr %page3.i247.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 4, ptr %page3.i247.i, align 4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %cleanup.sink.split.sink.split.i, %if.end53.i.cleanup.sink.split.i_crit_edge, %ext_write.exit.i.cleanup.sink.split.i_crit_edge
  %bus.i18.i129.sink.i = phi ptr [ %bus.i18.i.i, %ext_write.exit.i.cleanup.sink.split.i_crit_edge ], [ %bus.i18.i129.i, %if.end53.i.cleanup.sink.split.i_crit_edge ], [ %bus.i18.i129.sink267.i, %cleanup.sink.split.sink.split.i ]
  %addr.i.i130.sink.i = phi ptr [ %addr.i.i.i, %ext_write.exit.i.cleanup.sink.split.i_crit_edge ], [ %addr.i.i130.i, %if.end53.i.cleanup.sink.split.i_crit_edge ], [ %addr.i.i130.sink.ph.i, %cleanup.sink.split.sink.split.i ]
  %.sink266.i = phi i16 [ %52, %ext_write.exit.i.cleanup.sink.split.i_crit_edge ], [ %236, %if.end53.i.cleanup.sink.split.i_crit_edge ], [ %.sink266.ph.i, %cleanup.sink.split.sink.split.i ]
  %extreg_lock31.sink.i = phi ptr [ %extreg_lock.i, %ext_write.exit.i.cleanup.sink.split.i_crit_edge ], [ %extreg_lock31.i, %if.end53.i.cleanup.sink.split.i_crit_edge ], [ %extreg_lock31.sink.ph.i, %cleanup.sink.split.sink.split.i ]
  %248 = ptrtoint ptr %bus.i18.i129.sink.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %bus.i18.i129.sink.i, align 8
  %250 = ptrtoint ptr %addr.i.i130.sink.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %addr.i.i130.sink.i, align 8
  %call.i19.i251.i = tail call i32 @mdiobus_write(ptr noundef %249, i32 noundef %251, i32 noundef 20, i16 noundef zeroext %.sink266.i) #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.i, %ext_write.exit
  %extreg_lock31.sink.i.sink = phi ptr [ %extreg_lock31.sink.i, %cleanup.sink.split.i ], [ %extreg_lock, %ext_write.exit ]
  tail call void @mutex_unlock(ptr noundef %extreg_lock31.sink.i.sink) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then.i89.cleanup_crit_edge, %if.end52.cleanup_crit_edge, %sw.bb48.cleanup_crit_edge, %if.then21.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %sw.bb.cleanup_crit_edge ], [ -22, %if.end12.cleanup_crit_edge ], [ -22, %if.then21.cleanup_crit_edge ], [ -95, %sw.bb48.cleanup_crit_edge ], [ -22, %if.end52.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ -22, %if.then.i89.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ptp_dp83640_verify(ptr noundef %ptp, i32 noundef %pin, i32 noundef %func, i32 noundef %chan) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pin_config = getelementptr inbounds %struct.ptp_clock_info, ptr %ptp, i32 0, i32 8
  %0 = ptrtoint ptr %pin_config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pin_config, align 4
  %func1 = getelementptr %struct.ptp_pin_desc, ptr %1, i32 %pin, i32 2
  %2 = ptrtoint ptr %func1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %func1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %phylist = getelementptr i8, ptr %ptp, i32 204
  %4 = ptrtoint ptr %phylist to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %phylist, align 4
  %cmp.i.not = icmp eq ptr %5, %phylist
  br i1 %cmp.i.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %func)
  %cmp2 = icmp eq i32 %func, 3
  %. = zext i1 %cmp2 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %land.lhs.true.cleanup_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_find_pin(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx_ni(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @decode_rxts(ptr noundef %dp83640, ptr nocapture noundef readonly %phy_rxts) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ns_hi = getelementptr inbounds %struct.phy_rxts, ptr %phy_rxts, i32 0, i32 1
  %0 = ptrtoint ptr %ns_hi to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ns_hi, align 2
  %2 = lshr i16 %1, 14
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %1)
  %tobool.not = icmp ult i16 %1, 16384
  br i1 %tobool.not, label %entry.do.body9_crit_edge, label %do.body

entry.do.body9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body9

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @decode_rxts.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@decode_rxts, %if.then5)) #12
          to label %do.body9 [label %if.then5], !srcloc !161

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %conv6 = zext i16 %2 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @decode_rxts.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.49, i32 noundef %conv6) #12
  br label %do.body9

do.body9:                                         ; preds = %if.then5, %do.body, %entry.do.body9_crit_edge
  %rx_lock = getelementptr inbounds %struct.dp83640_private, ptr %dp83640, i32 0, i32 14
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_lock) #12
  %rxts1.i = getelementptr inbounds %struct.dp83640_private, ptr %dp83640, i32 0, i32 11
  %3 = ptrtoint ptr %rxts1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rxts1.i, align 8
  %cmp.i.not19.i = icmp eq ptr %4, %rxts1.i
  br i1 %cmp.i.not19.i, label %do.body9.prune_rx_ts.exit_crit_edge, label %for.body.lr.ph.i

do.body9.prune_rx_ts.exit_crit_edge:              ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #14
  br label %prune_rx_ts.exit

for.body.lr.ph.i:                                 ; preds = %do.body9
  %rxpool.i = getelementptr inbounds %struct.dp83640_private, ptr %dp83640, i32 0, i32 12
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %this.020.i = phi ptr [ %4, %for.body.lr.ph.i ], [ %next.021.i, %for.inc.i.for.body.i_crit_edge ]
  %5 = ptrtoint ptr %this.020.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %next.021.i = load ptr, ptr %this.020.i, align 4
  %tmo.i.i = getelementptr inbounds %struct.rxts, ptr %this.020.i, i32 0, i32 1
  %6 = ptrtoint ptr %tmo.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tmo.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %7, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i)
  %tobool6.not.i = icmp sgt i32 %sub.i.i, -1
  br i1 %tobool6.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %this.020.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del_init.exit.i_crit_edge

if.then.i.list_del_init.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %this.020.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i, align 4
  %11 = ptrtoint ptr %this.020.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %this.020.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then.i.list_del_init.exit.i_crit_edge
  %15 = ptrtoint ptr %this.020.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %this.020.i, ptr %this.020.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %this.020.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %this.020.i, ptr %prev.i3.i.i, align 4
  %17 = ptrtoint ptr %rxpool.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rxpool.i, align 4
  %call.i.i16.i = tail call zeroext i1 @__list_add_valid(ptr noundef %this.020.i, ptr noundef %rxpool.i, ptr noundef %18) #12
  br i1 %call.i.i16.i, label %if.end.i.i17.i, label %list_del_init.exit.i.for.inc.i_crit_edge

list_del_init.exit.i.for.inc.i_crit_edge:         ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i.i17.i:                                   ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %this.020.i, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %this.020.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %18, ptr %this.020.i, align 4
  %21 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %rxpool.i, ptr %prev.i3.i.i, align 4
  %22 = ptrtoint ptr %rxpool.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %this.020.i, ptr %rxpool.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.i17.i, %list_del_init.exit.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %cmp.i.not.i = icmp eq ptr %next.021.i, %rxts1.i
  br i1 %cmp.i.not.i, label %for.inc.i.prune_rx_ts.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.prune_rx_ts.exit_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %prune_rx_ts.exit

prune_rx_ts.exit:                                 ; preds = %for.inc.i.prune_rx_ts.exit_crit_edge, %do.body9.prune_rx_ts.exit_crit_edge
  %rxpool = getelementptr inbounds %struct.dp83640_private, ptr %dp83640, i32 0, i32 12
  %23 = ptrtoint ptr %rxpool to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %rxpool, align 4
  %cmp.i.not = icmp eq ptr %24, %rxpool
  br i1 %cmp.i.not, label %do.body21, label %if.end37

do.body21:                                        ; preds = %prune_rx_ts.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @decode_rxts.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@decode_rxts, %if.then33)) #12
          to label %out [label %if.then33], !srcloc !161

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @decode_rxts.__UNIQUE_ID_ddebug356, ptr noundef nonnull @.str.51) #12
  br label %out.thread

if.end37:                                         ; preds = %prune_rx_ts.exit
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %24) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end37.list_del_init.exit_crit_edge

if.end37.list_del_init.exit_crit_edge:            ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i, align 4
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %24, align 4
  %prev1.i.i.i97 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i97 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i97, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end37.list_del_init.exit_crit_edge
  %31 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %24, ptr %24, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %24, ptr %prev.i3.i, align 4
  %sec_lo.i = getelementptr inbounds %struct.phy_rxts, ptr %phy_rxts, i32 0, i32 2
  %33 = ptrtoint ptr %sec_lo.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %sec_lo.i, align 2
  %conv.i98 = zext i16 %34 to i32
  %sec_hi.i = getelementptr inbounds %struct.phy_rxts, ptr %phy_rxts, i32 0, i32 3
  %35 = ptrtoint ptr %sec_hi.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %sec_hi.i, align 2
  %conv1.i = zext i16 %36 to i32
  %shl.i = shl nuw i32 %conv1.i, 16
  %or.i = or i32 %shl.i, %conv.i98
  %37 = ptrtoint ptr %phy_rxts to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %phy_rxts, align 2
  %conv2.i = zext i16 %38 to i64
  %ns.i = getelementptr inbounds %struct.rxts, ptr %24, i32 0, i32 2
  %39 = ptrtoint ptr %ns.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %conv2.i, ptr %ns.i, align 8
  %40 = ptrtoint ptr %ns_hi to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %ns_hi, align 2
  %42 = and i16 %41, 16383
  %and.i = zext i16 %42 to i32
  %shl4.i = shl nuw nsw i32 %and.i, 16
  %43 = zext i32 %shl4.i to i64
  %conv8.i = zext i32 %or.i to i64
  %mul.i = mul nuw nsw i64 %conv8.i, 1000000000
  %or7.i = add nuw nsw i64 %mul.i, %conv2.i
  %add.i = add nuw nsw i64 %or7.i, %43
  store i64 %add.i, ptr %ns.i, align 8
  %seqid.i = getelementptr inbounds %struct.phy_rxts, ptr %phy_rxts, i32 0, i32 4
  %44 = ptrtoint ptr %seqid.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %seqid.i, align 2
  %seqid10.i = getelementptr inbounds %struct.rxts, ptr %24, i32 0, i32 3
  %46 = ptrtoint ptr %seqid10.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %seqid10.i, align 8
  %msgtype.i = getelementptr inbounds %struct.phy_rxts, ptr %phy_rxts, i32 0, i32 5
  %47 = ptrtoint ptr %msgtype.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %msgtype.i, align 2
  %49 = lshr i16 %48, 12
  %conv13.i = trunc i16 %49 to i8
  %msgtype14.i = getelementptr inbounds %struct.rxts, ptr %24, i32 0, i32 4
  %50 = ptrtoint ptr %msgtype14.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv13.i, ptr %msgtype14.i, align 2
  %51 = load i16, ptr %msgtype.i, align 2
  %52 = and i16 %51, 4095
  %hash.i = getelementptr inbounds %struct.rxts, ptr %24, i32 0, i32 5
  %53 = ptrtoint ptr %hash.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %hash.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %54 = load volatile i32, ptr @jiffies, align 128
  %add19.i = add i32 %54, 2
  %tmo.i = getelementptr inbounds %struct.rxts, ptr %24, i32 0, i32 1
  %55 = ptrtoint ptr %tmo.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %add19.i, ptr %tmo.i, align 8
  %rx_queue = getelementptr inbounds %struct.dp83640_private, ptr %dp83640, i32 0, i32 15
  %lock = getelementptr inbounds %struct.dp83640_private, ptr %dp83640, i32 0, i32 15, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %56 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %56)
  %skb.0122 = load ptr, ptr %rx_queue, align 4
  %cmp43.not123 = icmp eq ptr %skb.0122, %rx_queue
  br i1 %cmp43.not123, label %list_del_init.exit.for.end.thread_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  br label %for.body

list_del_init.exit.for.end.thread_crit_edge:      ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %list_del_init.exit.for.body_crit_edge
  %skb.0124 = phi ptr [ %skb.0, %cleanup.for.body_crit_edge ], [ %skb.0122, %list_del_init.exit.for.body_crit_edge ]
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb.0124, i32 0, i32 3
  %57 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cb, align 4
  %call.i = tail call ptr @ptp_parse_header(ptr noundef %skb.0124, i32 noundef %58) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body.cleanup_crit_edge, label %if.end.i

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %for.body
  %and.i.i = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !prof !152

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %control.i.i = getelementptr inbounds %struct.ptp_header, ptr %call.i, i32 0, i32 10
  %59 = ptrtoint ptr %control.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %control.i.i, align 1
  br label %ptp_get_msgtype.exit.i

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %61 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %call.i, align 1
  %63 = and i8 %62, 15
  br label %ptp_get_msgtype.exit.i

ptp_get_msgtype.exit.i:                           ; preds = %if.else.i.i, %if.then.i.i
  %msgtype.0.i.i = phi i8 [ %60, %if.then.i.i ], [ %63, %if.else.i.i ]
  %64 = ptrtoint ptr %msgtype14.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %msgtype14.i, align 2
  %66 = and i8 %msgtype.0.i.i, 15
  call void @__sanitizer_cov_trace_cmp1(i8 %65, i8 %66)
  %cmp.not.i = icmp eq i8 %65, %66
  br i1 %cmp.not.i, label %if.end6.i, label %ptp_get_msgtype.exit.i.cleanup_crit_edge

ptp_get_msgtype.exit.i.cleanup_crit_edge:         ; preds = %ptp_get_msgtype.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6.i:                                        ; preds = %ptp_get_msgtype.exit.i
  %sequence_id.i = getelementptr inbounds %struct.ptp_header, ptr %call.i, i32 0, i32 9
  %67 = ptrtoint ptr %sequence_id.i to i32
  call void @__asan_loadN_noabort(i32 %67, i32 2)
  %68 = load i16, ptr %sequence_id.i, align 1
  %69 = ptrtoint ptr %seqid10.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %seqid10.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %70, i16 %68)
  %cmp10.not.i = icmp eq i16 %70, %68
  br i1 %cmp10.not.i, label %match.exit, label %if.end6.i.cleanup_crit_edge

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

match.exit:                                       ; preds = %if.end6.i
  %source_port_identity.i = getelementptr inbounds %struct.ptp_header, ptr %call.i, i32 0, i32 8
  %call14.i = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %source_port_identity.i, i32 noundef 10) #18
  %71 = lshr i32 %call14.i, 8
  %conv4.i.i.i = and i32 %71, 255
  %arrayidx.i10.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv4.i.i.i
  %72 = ptrtoint ptr %arrayidx.i10.i.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx.i10.i.i.i, align 1
  %conv6.i.i.i = zext i8 %73 to i32
  %74 = shl nuw nsw i32 %conv6.i.i.i, 16
  %75 = and i32 %call14.i, 255
  %arrayidx.i.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %75
  %76 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %conv2.i.i.i = zext i8 %77 to i32
  %78 = shl nuw i32 %conv2.i.i.i, 24
  %or.i13.i.i = or i32 %74, %78
  %shr37.i = lshr i32 %or.i13.i.i, 20
  %79 = ptrtoint ptr %hash.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %hash.i, align 4
  %conv40.i = zext i16 %80 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr37.i, i32 %conv40.i)
  %cmp42.not.i.not = icmp eq i32 %shr37.i, %conv40.i
  br i1 %cmp42.not.i.not, label %if.then47, label %match.exit.cleanup_crit_edge

match.exit.cleanup_crit_edge:                     ; preds = %match.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then47:                                        ; preds = %match.exit
  %qlen.i = getelementptr inbounds %struct.dp83640_private, ptr %dp83640, i32 0, i32 15, i32 1
  %81 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %qlen.i, align 4
  %sub.i = add i32 %82, -1
  store volatile i32 %sub.i, ptr %qlen.i, align 4
  %83 = ptrtoint ptr %skb.0124 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %skb.0124, align 8
  %prev9.i = getelementptr inbounds %struct.anon.44, ptr %skb.0124, i32 0, i32 1
  %85 = ptrtoint ptr %prev9.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %prev9.i, align 4
  store ptr null, ptr %prev9.i, align 4
  store ptr null, ptr %skb.0124, align 8
  %prev17.i = getelementptr inbounds %struct.anon.44, ptr %84, i32 0, i32 1
  %87 = ptrtoint ptr %prev17.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %86, ptr %prev17.i, align 4
  %88 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %84, ptr %86, align 8
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0124, i32 0, i32 17
  %89 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %end.i.i, align 4
  %hwtstamps.i = getelementptr inbounds %struct.skb_shared_info, ptr %90, i32 0, i32 7
  %91 = ptrtoint ptr %hwtstamps.i to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 0, ptr %hwtstamps.i, align 8
  %92 = ptrtoint ptr %ns.i to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %ns.i, align 8
  store i64 %93, ptr %hwtstamps.i, align 8
  %94 = ptrtoint ptr %rxpool to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rxpool, align 4
  %call.i.i100 = tail call zeroext i1 @__list_add_valid(ptr noundef %24, ptr noundef %rxpool, ptr noundef %95) #12
  br i1 %call.i.i100, label %if.end.i.i101, label %if.then47.for.end_crit_edge

if.then47.for.end_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end.i.i101:                                    ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %24, ptr %prev1.i.i, align 4
  %97 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %95, ptr %24, align 4
  %98 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %rxpool, ptr %prev.i3.i, align 4
  %99 = ptrtoint ptr %rxpool to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile ptr %24, ptr %rxpool, align 4
  br label %for.end

cleanup:                                          ; preds = %match.exit.cleanup_crit_edge, %if.end6.i.cleanup_crit_edge, %ptp_get_msgtype.exit.i.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %100 = ptrtoint ptr %skb.0124 to i32
  call void @__asan_load4_noabort(i32 %100)
  %skb.0 = load ptr, ptr %skb.0124, align 4
  %cmp43.not = icmp eq ptr %skb.0, %rx_queue
  br i1 %cmp43.not, label %cleanup.for.end.thread_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup.for.end.thread_crit_edge:                 ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread

for.end.thread:                                   ; preds = %cleanup.for.end.thread_crit_edge, %list_del_init.exit.for.end.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  br label %if.then58

for.end:                                          ; preds = %if.end.i.i101, %if.then47.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  %tobool57.not = icmp eq ptr %hwtstamps.i, null
  br i1 %tobool57.not, label %for.end.if.then58_crit_edge, label %if.then64

for.end.if.then58_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then58

if.then58:                                        ; preds = %for.end.if.then58_crit_edge, %for.end.thread
  %prev.i = getelementptr inbounds %struct.dp83640_private, ptr %dp83640, i32 0, i32 11, i32 1
  %101 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %prev.i, align 4
  %call.i.i102 = tail call zeroext i1 @__list_add_valid(ptr noundef %24, ptr noundef %102, ptr noundef %rxts1.i) #12
  br i1 %call.i.i102, label %if.end.i.i104, label %if.then58.out.thread_crit_edge

if.then58.out.thread_crit_edge:                   ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.thread

if.end.i.i104:                                    ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #14
  %103 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %24, ptr %prev.i, align 4
  %104 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %rxts1.i, ptr %24, align 4
  %105 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %102, ptr %prev.i3.i, align 4
  %106 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %106)
  store volatile ptr %24, ptr %102, align 4
  br label %out.thread

out.thread:                                       ; preds = %if.end.i.i104, %if.then58.out.thread_crit_edge, %if.then33
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_lock, i32 noundef %call13) #12
  br label %if.end66

out:                                              ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_lock, i32 noundef %call13) #12
  br label %if.end66

if.then64:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_lock, i32 noundef %call13) #12
  %call65 = tail call i32 @netif_rx_ni(ptr noundef %skb.0124) #12
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %out, %out.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @decode_txts(ptr noundef %dp83640, ptr nocapture noundef readonly %phy_txts) unnamed_addr #4 align 64 {
entry:
  %shhwtstamps = alloca %struct.skb_shared_hwtstamps, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %shhwtstamps) #12
  %tx_queue = getelementptr inbounds %struct.dp83640_private, ptr %dp83640, i32 0, i32 16
  %call61 = tail call ptr @skb_dequeue(ptr noundef %tx_queue) #12
  %tobool.not62 = icmp eq ptr %call61, null
  br i1 %tobool.not62, label %entry.do.body_crit_edge, label %if.end6.lr.ph

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.end6.lr.ph:                                    ; preds = %entry
  %ns_hi = getelementptr inbounds %struct.phy_txts, ptr %phy_txts, i32 0, i32 1
  br label %if.end6

do.body:                                          ; preds = %if.then32.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @decode_txts.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@decode_txts, %if.then5)) #12
          to label %cleanup [label %if.then5], !srcloc !161

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @decode_txts.__UNIQUE_ID_ddebug357, ptr noundef nonnull @.str.54) #12
  br label %cleanup

if.end6:                                          ; preds = %if.then32.if.end6_crit_edge, %if.end6.lr.ph
  %call63 = phi ptr [ %call61, %if.end6.lr.ph ], [ %call, %if.then32.if.end6_crit_edge ]
  %0 = ptrtoint ptr %ns_hi to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ns_hi, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %1)
  %tobool8.not = icmp ult i16 %1, 16384
  br i1 %tobool8.not, label %if.end30, label %do.body10

do.body10:                                        ; preds = %if.end6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @decode_txts.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@decode_txts, %if.then22)) #12
          to label %while.body [label %if.then22], !srcloc !161

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #14
  %2 = lshr i16 %1, 14
  %conv23 = zext i16 %2 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @decode_txts.__UNIQUE_ID_ddebug358, ptr noundef nonnull @.str.56, i32 noundef %conv23) #12
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then22, %do.body10
  %skb.065 = phi ptr [ %call29, %while.body.while.body_crit_edge ], [ %call63, %if.then22 ], [ %call63, %do.body10 ]
  tail call void @kfree_skb_reason(ptr noundef nonnull %skb.065, i32 noundef 0) #12
  %call29 = tail call ptr @skb_dequeue(ptr noundef %tx_queue) #12
  %tobool27.not = icmp eq ptr %call29, null
  br i1 %tobool27.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end30:                                         ; preds = %if.end6
  %tmo = getelementptr inbounds %struct.sk_buff, ptr %call63, i32 0, i32 3, i32 4
  %3 = ptrtoint ptr %tmo to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tmo, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %4, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end30
  tail call void @kfree_skb_reason(ptr noundef nonnull %call63, i32 noundef 0) #12
  %call = tail call ptr @skb_dequeue(ptr noundef %tx_queue) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then32.do.body_crit_edge, label %if.then32.if.end6_crit_edge

if.then32.if.end6_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then32.do.body_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.end33:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  %sec_lo.i = getelementptr inbounds %struct.phy_txts, ptr %phy_txts, i32 0, i32 2
  %6 = ptrtoint ptr %sec_lo.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %sec_lo.i, align 2
  %conv.i = zext i16 %7 to i32
  %sec_hi.i = getelementptr inbounds %struct.phy_txts, ptr %phy_txts, i32 0, i32 3
  %8 = ptrtoint ptr %sec_hi.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %sec_hi.i, align 2
  %conv1.i = zext i16 %9 to i32
  %shl.i = shl nuw i32 %conv1.i, 16
  %or.i = or i32 %shl.i, %conv.i
  %10 = ptrtoint ptr %phy_txts to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %phy_txts, align 2
  %conv2.i = zext i16 %11 to i64
  %and.i = zext i16 %1 to i32
  %shl4.i = shl nuw nsw i32 %and.i, 16
  %12 = zext i32 %shl4.i to i64
  %conv7.i = zext i32 %or.i to i64
  %mul.i = mul nuw nsw i64 %conv7.i, 1000000000
  %or6.i = or i64 %conv2.i, %12
  %add.i = add nuw nsw i64 %or6.i, %mul.i
  %13 = ptrtoint ptr %shhwtstamps to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %add.i, ptr %shhwtstamps, align 8
  call void @skb_complete_tx_timestamp(ptr noundef nonnull %call63, ptr noundef nonnull %shhwtstamps) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %while.body.cleanup_crit_edge, %if.then5, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %shhwtstamps) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_complete_tx_timestamp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ptp_clock_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ptp_parse_header(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_index(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_error(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_trigger_machine(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

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

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nobuiltin nounwind }
attributes #18 = { nounwind readonly willreturn }
attributes #19 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !19, !21, !22, !24, !25, !26, !28, !30, !31, !32, !33, !34, !36, !37, !38, !40, !42, !44, !46, !47, !48, !49, !51, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !89, !90, !91, !92, !94, !95, !97, !98, !100, !101, !103, !105, !107, !108, !109, !110, !112, !114, !115, !116, !117, !118, !120, !121, !122, !124, !125, !126, !127, !129, !130, !131, !133, !134, !136, !138, !140}
!llvm.named.register.sp = !{!141}
!llvm.module.flags = !{!142, !143, !144, !145, !146, !147, !148, !149}
!llvm.ident = !{!150}

!0 = !{ptr @__param_chosen_phy, !1, !"__param_chosen_phy", i1 false, i1 false}
!1 = !{!"../drivers/net/phy/dp83640.c", i32 170, i32 1}
!2 = !{ptr @__UNIQUE_ID_chosen_phytype351, !1, !"__UNIQUE_ID_chosen_phytype351", i1 false, i1 false}
!3 = !{ptr @__param_gpio_tab, !4, !"__param_gpio_tab", i1 false, i1 false}
!4 = !{!"../drivers/net/phy/dp83640.c", i32 171, i32 1}
!5 = !{ptr @__UNIQUE_ID_gpio_tabtype352, !4, !"__UNIQUE_ID_gpio_tabtype352", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_chosen_phy353, !7, !"__UNIQUE_ID_chosen_phy353", i1 false, i1 false}
!7 = !{!"../drivers/net/phy/dp83640.c", i32 173, i32 1}
!8 = !{ptr @__UNIQUE_ID_gpio_tab354, !9, !"__UNIQUE_ID_gpio_tab354", i1 false, i1 false}
!9 = !{!"../drivers/net/phy/dp83640.c", i32 175, i32 1}
!10 = !{ptr @__UNIQUE_ID_description359, !11, !"__UNIQUE_ID_description359", i1 false, i1 false}
!11 = !{!"../drivers/net/phy/dp83640.c", i32 1562, i32 1}
!12 = !{ptr @__UNIQUE_ID_author360, !13, !"__UNIQUE_ID_author360", i1 false, i1 false}
!13 = !{!"../drivers/net/phy/dp83640.c", i32 1563, i32 1}
!14 = !{ptr @__UNIQUE_ID_file361, !15, !"__UNIQUE_ID_file361", i1 false, i1 false}
!15 = !{!"../drivers/net/phy/dp83640.c", i32 1564, i32 1}
!16 = !{ptr @__UNIQUE_ID_license362, !15, !"__UNIQUE_ID_license362", i1 false, i1 false}
!17 = !{ptr @__initcall__kmod_dp83640__363_1566_dp83640_init6, !18, !"__initcall__kmod_dp83640__363_1566_dp83640_init6", i1 false, i1 false}
!18 = !{!"../drivers/net/phy/dp83640.c", i32 1566, i32 1}
!19 = !{ptr @__exitcall_dp83640_exit, !20, !"__exitcall_dp83640_exit", i1 false, i1 false}
!20 = !{!"../drivers/net/phy/dp83640.c", i32 1567, i32 1}
!21 = !{ptr @__param_str_chosen_phy, !1, !"__param_str_chosen_phy", i1 false, i1 false}
!22 = !{ptr @chosen_phy, !23, !"chosen_phy", i1 false, i1 false}
!23 = !{!"../drivers/net/phy/dp83640.c", i32 165, i32 12}
!24 = !{ptr @__param_str_gpio_tab, !4, !"__param_str_gpio_tab", i1 false, i1 false}
!25 = !{ptr @__param_arr_gpio_tab, !4, !"__param_arr_gpio_tab", i1 false, i1 false}
!26 = !{ptr @gpio_tab, !27, !"gpio_tab", i1 false, i1 false}
!27 = !{!"../drivers/net/phy/dp83640.c", i32 166, i32 15}
!28 = !{ptr @.str, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/phy/dp83640.c", i32 994, i32 4}
!30 = !{ptr @.str.1, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.2, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @dp83640_free_clocks._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @dp83640_free_clocks._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.3, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/phy/dp83640.c", i32 211, i32 8}
!36 = !{ptr @.str.4, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @phyter_clocks_lock, !35, !"phyter_clocks_lock", i1 false, i1 false}
!38 = !{ptr @phyter_clocks, !39, !"phyter_clocks", i1 false, i1 false}
!39 = !{!"../drivers/net/phy/dp83640.c", i32 210, i32 8}
!40 = !{ptr @.str.5, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/phy/dp83640.c", i32 1541, i32 11}
!42 = !{ptr @dp83640_driver, !43, !"dp83640_driver", i1 false, i1 false}
!43 = !{!"../drivers/net/phy/dp83640.c", i32 1538, i32 26}
!44 = !{ptr @.str.6, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/phy/dp83640.c", i32 642, i32 3}
!46 = !{ptr @.str.7, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @recalibrate._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @recalibrate._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.9, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/phy/dp83640.c", i32 703, i32 2}
!51 = !{ptr @.str.10, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.11, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @recalibrate._entry.8, !50, !"_entry", i1 false, i1 false}
!54 = !{ptr @recalibrate._entry_ptr.12, !50, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.14, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/phy/dp83640.c", i32 705, i32 2}
!57 = !{ptr @recalibrate._entry.13, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @recalibrate._entry_ptr.15, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.17, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/phy/dp83640.c", i32 715, i32 3}
!61 = !{ptr @recalibrate._entry.16, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @recalibrate._entry_ptr.18, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/phy/dp83640.c", i32 717, i32 3}
!65 = !{ptr @recalibrate._entry.19, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @recalibrate._entry_ptr.21, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/phy/dp83640.c", i32 723, i32 3}
!69 = !{ptr @recalibrate._entry.22, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @recalibrate._entry_ptr.24, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/phy/dp83640.c", i32 568, i32 3}
!73 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @enable_status_frames._entry, !72, !"_entry", i1 false, i1 false}
!76 = !{ptr @enable_status_frames._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/phy/dp83640.c", i32 575, i32 4}
!79 = !{ptr @enable_status_frames._entry.28, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @enable_status_frames._entry_ptr.30, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/phy/dp83640.c", i32 578, i32 4}
!83 = !{ptr @enable_status_frames._entry.31, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @enable_status_frames._entry_ptr.33, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @status_frame_dst, !86, !"status_frame_dst", i1 false, i1 false}
!86 = !{!"../drivers/net/phy/dp83640.c", i32 546, i32 11}
!87 = !{ptr @dp83640_probe.__key, !88, !"__key", i1 false, i1 false}
!88 = !{!"../drivers/net/phy/dp83640.c", i32 1464, i32 2}
!89 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @dp83640_probe.__key.35, !88, !"__key", i1 false, i1 false}
!91 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @dp83640_probe.__key.37, !93, !"__key", i1 false, i1 false}
!93 = !{!"../drivers/net/phy/dp83640.c", i32 1473, i32 2}
!94 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @dp83640_clock_init.__key, !96, !"__key", i1 false, i1 false}
!96 = !{!"../drivers/net/phy/dp83640.c", i32 1012, i32 2}
!97 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @dp83640_clock_init.__key.40, !99, !"__key", i1 false, i1 false}
!99 = !{!"../drivers/net/phy/dp83640.c", i32 1013, i32 2}
!100 = !{ptr @.str.41, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.42, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/phy/dp83640.c", i32 1016, i32 28}
!103 = !{ptr @.str.43, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/phy/dp83640.c", i32 183, i32 44}
!105 = !{ptr @.str.44, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/phy/dp83640.c", i32 189, i32 4}
!107 = !{ptr @.str.45, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @dp83640_gpio_defaults._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @dp83640_gpio_defaults._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @status_frame_src, !111, !"status_frame_src", i1 false, i1 false}
!111 = !{!"../drivers/net/phy/dp83640.c", i32 547, i32 11}
!112 = !{ptr @.str.46, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/phy/dp83640.c", i32 853, i32 3}
!114 = !{ptr @.str.47, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.48, !113, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @decode_rxts.__UNIQUE_ID_ddebug355, !113, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!117 = !{ptr @.str.49, !113, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.50, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/phy/dp83640.c", i32 860, i32 3}
!120 = !{ptr @decode_rxts.__UNIQUE_ID_ddebug356, !119, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!121 = !{ptr @.str.51, !119, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.52, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/phy/dp83640.c", i32 905, i32 3}
!124 = !{ptr @.str.53, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @decode_txts.__UNIQUE_ID_ddebug357, !123, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!126 = !{ptr @.str.54, !123, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.55, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/phy/dp83640.c", i32 911, i32 3}
!129 = !{ptr @decode_txts.__UNIQUE_ID_ddebug358, !128, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!130 = !{ptr @.str.56, !128, !"<string literal>", i1 false, i1 false}
!131 = distinct !{null, !132, !"__already_done", i1 false, i1 false}
!132 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!133 = distinct !{null, !132, !"<string literal>", i1 false, i1 false}
!134 = distinct !{null, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!136 = !{ptr @.str.59, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!138 = !{ptr @skb_queue_head_init.__key, !139, !"__key", i1 false, i1 false}
!139 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!140 = !{ptr @.str.60, !139, !"<string literal>", i1 false, i1 false}
!141 = !{!"sp"}
!142 = !{i32 1, !"wchar_size", i32 2}
!143 = !{i32 1, !"min_enum_size", i32 4}
!144 = !{i32 8, !"branch-target-enforcement", i32 0}
!145 = !{i32 8, !"sign-return-address", i32 0}
!146 = !{i32 8, !"sign-return-address-all", i32 0}
!147 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!148 = !{i32 7, !"uwtable", i32 1}
!149 = !{i32 7, !"frame-pointer", i32 2}
!150 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!151 = !{i64 2156668188, i64 2156668678, i64 2156668225, i64 2156668281, i64 2156668315, i64 2156668339, i64 2156668380, i64 2156668401, i64 2156668429, i64 2156668463}
!152 = !{!"branch_weights", i32 2000, i32 1}
!153 = !{!"auto-init"}
!154 = !{i64 2152341121, i64 2152341146}
!155 = !{i64 4836676}
!156 = !{i64 4836873}
!157 = !{i64 2152322106}
!158 = !{i64 2152341802, i64 2152341827}
!159 = !{i64 1241398, i64 1241425}
!160 = !{i64 1242093, i64 1242120, i64 1242153, i64 1242174, i64 1242201, i64 1242227}
!161 = !{i64 2149069136, i64 2149069141, i64 2149069154, i64 2149069198, i64 2149069232, i64 2149069253}
