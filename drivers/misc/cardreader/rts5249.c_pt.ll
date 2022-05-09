; ModuleID = '/llk/IR_all_yes/drivers/misc/cardreader/rts5249.c_pt.bc'
source_filename = "../drivers/misc/cardreader/rts5249.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pcr_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.rtsx_pcr = type { ptr, i32, %struct.rtsx_cr_option, %struct.rtsx_hw_param, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, i32, i8, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.spinlock, %struct.mutex, ptr, ptr, i32, i8, i8, i8, i32, i8, i8, i8, i8, i8, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i16, i32, ptr, i8, i8, i8, i8 }
%struct.rtsx_cr_option = type { i32, i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i8 }
%struct.rtsx_hw_param = type { i32, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }

@rts5249_pcr_ops = internal constant { %struct.pcr_ops, [32 x i8] } { %struct.pcr_ops { ptr null, ptr null, ptr @rts5249_extra_init_hw, ptr @rts5249_optimize_phy, ptr @rtsx_base_turn_on_led, ptr @rtsx_base_turn_off_led, ptr @rtsx_base_enable_auto_blink, ptr @rtsx_base_disable_auto_blink, ptr @rtsx_base_card_power_on, ptr @rtsx_base_card_power_off, ptr @rtsx_base_switch_output_voltage, ptr null, ptr null, ptr @rtsx_base_fetch_vendor_settings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@rts5249_sd_pull_ctl_enable_tbl = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 -44040090, i32 -43974486, i32 -43908887, i32 -43843414, i32 0], [44 x i8] zeroinitializer }, align 32
@rts5249_sd_pull_ctl_disable_tbl = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 -44040090, i32 -43974571, i32 -43908907, i32 -43843499, i32 0], [44 x i8] zeroinitializer }, align 32
@rts5249_ms_pull_ctl_enable_tbl = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 -43843499, i32 -43777963, i32 -43712491, i32 0], [16 x i8] zeroinitializer }, align 32
@rts5249_ms_pull_ctl_disable_tbl = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 -43843499, i32 -43777963, i32 -43712491, i32 0], [16 x i8] zeroinitializer }, align 32
@rts524a_pcr_ops = internal constant { %struct.pcr_ops, [32 x i8] } { %struct.pcr_ops { ptr @rts524a_write_phy, ptr @rts524a_read_phy, ptr @rts524a_extra_init_hw, ptr @rts524a_optimize_phy, ptr @rtsx_base_turn_on_led, ptr @rtsx_base_turn_off_led, ptr @rtsx_base_enable_auto_blink, ptr @rtsx_base_disable_auto_blink, ptr @rtsx_base_card_power_on, ptr @rtsx_base_card_power_off, ptr @rtsx_base_switch_output_voltage, ptr null, ptr null, ptr @rtsx_base_fetch_vendor_settings, ptr null, ptr null, ptr null, ptr @rts5250_set_l1off_cfg_sub_d0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@rts525a_pcr_ops = internal constant { %struct.pcr_ops, [32 x i8] } { %struct.pcr_ops { ptr null, ptr null, ptr @rts525a_extra_init_hw, ptr @rts525a_optimize_phy, ptr @rtsx_base_turn_on_led, ptr @rtsx_base_turn_off_led, ptr @rtsx_base_enable_auto_blink, ptr @rtsx_base_disable_auto_blink, ptr @rts525a_card_power_on, ptr @rtsx_base_card_power_off, ptr @rts525a_switch_output_voltage, ptr null, ptr null, ptr @rtsx_base_fetch_vendor_settings, ptr null, ptr null, ptr null, ptr @rts5250_set_l1off_cfg_sub_d0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@rts5249_extra_init_hw.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rtsx_pci\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rts5249_extra_init_hw\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/misc/cardreader/rts5249.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Power OFF efuse!\00", [47 x i8] zeroinitializer }, align 32
@rts52xa_save_content_to_autoload_space.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"rts52xa_save_content_to_autoload_space\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Power ON efuse!\00", [16 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rts52xa_save_content_to_autoload_space.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.6, i8 0, i8 60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Load from autoload\00", [45 x i8] zeroinitializer }, align 32
@rts52xa_save_content_from_efuse.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 39, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rts52xa_save_content_from_efuse\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Enable efuse por!\00", [46 x i8] zeroinitializer }, align 32
@rts52xa_save_content_from_efuse.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.9, i8 0, i8 39, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"save efuse to autoload\00", [41 x i8] zeroinitializer }, align 32
@rts52xa_save_content_from_efuse.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.10, i8 0, i8 54, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Disable efuse por!\00", [45 x i8] zeroinitializer }, align 32
@__const.rts5249_fill_driving.driving_3v3 = private unnamed_addr constant [4 x [3 x i8]] [[3 x i8] c"\11\11\18", [3 x i8] c"UU\\", [3 x i8] c"\FF\FF\FF", [3 x i8] c"\96\96\96"], align 1
@__const.rts5249_fill_driving.driving_1v8 = private unnamed_addr constant [4 x [3 x i8]] [[3 x i8] c"\C4\C4\C4", [3 x i8] c"<<<", [3 x i8] c"\FE\FE\FE", [3 x i8] c"\B3\B3\B3"], align 1
@rtsx_base_switch_output_voltage.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 120, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rtsx_base_switch_output_voltage\00", [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unknown output voltage %d\0A\00", [37 x i8] zeroinitializer }, align 32
@rtsx_base_fetch_vendor_settings.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 15, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rtsx_base_fetch_vendor_settings\00", [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Cfg 0x%x: 0x%x\0A\00", [16 x i8] zeroinitializer }, align 32
@rtsx_base_fetch_vendor_settings.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.15, i8 0, i8 16, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"skip fetch vendor setting\0A\00", [37 x i8] zeroinitializer }, align 32
@rtsx_base_fetch_vendor_settings.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 18, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 21066, i64 21082]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 16, i64 21066, i64 21082]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 16, i64 21066, i64 21082]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 16, i64 21066, i64 21082]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 16, i64 21066, i64 21082]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 16, i64 21066, i64 21082]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.23 = private unnamed_addr constant [16 x i8] c"rts5249_pcr_ops\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 491, i32 29 }
@___asan_gen_.26 = private unnamed_addr constant [31 x i8] c"rts5249_sd_pull_ctl_enable_tbl\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 511, i32 18 }
@___asan_gen_.29 = private unnamed_addr constant [32 x i8] c"rts5249_sd_pull_ctl_disable_tbl\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 526, i32 18 }
@___asan_gen_.32 = private unnamed_addr constant [31 x i8] c"rts5249_ms_pull_ctl_enable_tbl\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 538, i32 18 }
@___asan_gen_.35 = private unnamed_addr constant [32 x i8] c"rts5249_ms_pull_ctl_disable_tbl\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 549, i32 18 }
@___asan_gen_.38 = private unnamed_addr constant [16 x i8] c"rts524a_pcr_ops\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 714, i32 29 }
@___asan_gen_.41 = private unnamed_addr constant [16 x i8] c"rts525a_pcr_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 833, i32 29 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 321, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 234, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 243, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 158, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 159, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 217, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 481, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 62, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.90 = private constant [37 x i8] c"../drivers/misc/cardreader/rts5249.c\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 65, i32 3 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @rts5249_pcr_ops, ptr @rts5249_sd_pull_ctl_enable_tbl, ptr @rts5249_sd_pull_ctl_disable_tbl, ptr @rts5249_ms_pull_ctl_enable_tbl, ptr @rts5249_ms_pull_ctl_disable_tbl, ptr @rts524a_pcr_ops, ptr @rts525a_pcr_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rts5249_pcr_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rts5249_sd_pull_ctl_enable_tbl to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rts5249_sd_pull_ctl_disable_tbl to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rts5249_ms_pull_ctl_enable_tbl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rts5249_ms_pull_ctl_disable_tbl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rts524a_pcr_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rts525a_pcr_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rts5249_init_params(ptr noundef %pcr) local_unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %option1 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2
  %extra_caps = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 31
  %0 = ptrtoint ptr %extra_caps to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %extra_caps, align 4
  %num_slots = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 49
  %1 = ptrtoint ptr %num_slots to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %num_slots, align 4
  %ops = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 46
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @rts5249_pcr_ops, ptr %ops, align 4
  %flags = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 39
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %flags, align 4
  %card_drive_sel = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 35
  %4 = ptrtoint ptr %card_drive_sel to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 65, ptr %card_drive_sel, align 1
  %sd30_drive_sel_1v8 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 33
  %5 = ptrtoint ptr %sd30_drive_sel_1v8 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 3, ptr %sd30_drive_sel_1v8, align 1
  %sd30_drive_sel_3v3 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 34
  %6 = ptrtoint ptr %sd30_drive_sel_3v3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 3, ptr %sd30_drive_sel_3v3, align 2
  %aspm_en = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 36
  %7 = ptrtoint ptr %aspm_en to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %aspm_en, align 4
  %aspm_mode = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 37
  %8 = ptrtoint ptr %aspm_mode to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %aspm_mode, align 4
  %tx_initial_phase = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 40
  %9 = ptrtoint ptr %tx_initial_phase to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1056001, ptr %tx_initial_phase, align 4
  %rx_initial_phase = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 41
  %10 = ptrtoint ptr %rx_initial_phase to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 329240, ptr %rx_initial_phase, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #4
  %11 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %val.i, align 1, !annotation !59
  %call.i = call i32 @rtsx_pci_read_register(ptr noundef %pcr, i16 noundef zeroext -368, ptr noundef nonnull %val.i) #4
  %12 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %val.i, align 1
  %14 = and i8 %13, 15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #4
  %ic_version = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 32
  %15 = ptrtoint ptr %ic_version to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %ic_version, align 4
  %sd_pull_ctl_enable_tbl = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 42
  %16 = ptrtoint ptr %sd_pull_ctl_enable_tbl to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @rts5249_sd_pull_ctl_enable_tbl, ptr %sd_pull_ctl_enable_tbl, align 4
  %sd_pull_ctl_disable_tbl = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 43
  %17 = ptrtoint ptr %sd_pull_ctl_disable_tbl to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @rts5249_sd_pull_ctl_disable_tbl, ptr %sd_pull_ctl_disable_tbl, align 4
  %ms_pull_ctl_enable_tbl = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 44
  %18 = ptrtoint ptr %ms_pull_ctl_enable_tbl to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @rts5249_ms_pull_ctl_enable_tbl, ptr %ms_pull_ctl_enable_tbl, align 4
  %ms_pull_ctl_disable_tbl = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 45
  %19 = ptrtoint ptr %ms_pull_ctl_disable_tbl to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @rts5249_ms_pull_ctl_disable_tbl, ptr %ms_pull_ctl_disable_tbl, align 4
  %reg_pm_ctrl3 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 48
  %20 = ptrtoint ptr %reg_pm_ctrl3 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 -186, ptr %reg_pm_ctrl3, align 4
  %21 = ptrtoint ptr %option1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 80, ptr %option1, align 4
  %ltr_en = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 2
  %22 = ptrtoint ptr %ltr_en to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %ltr_en, align 1
  %ltr_active_latency = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 5
  %23 = ptrtoint ptr %ltr_active_latency to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 34876, ptr %ltr_active_latency, align 4
  %ltr_idle_latency = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 6
  %24 = ptrtoint ptr %ltr_idle_latency to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 35116, ptr %ltr_idle_latency, align 4
  %ltr_l1off_latency = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 7
  %25 = ptrtoint ptr %ltr_l1off_latency to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 36867, ptr %ltr_l1off_latency, align 4
  %l1_snooze_delay = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 8
  %26 = ptrtoint ptr %l1_snooze_delay to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %l1_snooze_delay, align 4
  %ltr_l1off_sspwrgate = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 9
  %27 = ptrtoint ptr %ltr_l1off_sspwrgate to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -81, ptr %ltr_l1off_sspwrgate, align 4
  %ltr_l1off_snooze_sspwrgate = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 10
  %28 = ptrtoint ptr %ltr_l1off_snooze_sspwrgate to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -84, ptr %ltr_l1off_snooze_sspwrgate, align 1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rts524a_init_params(ptr noundef %pcr) local_unnamed_addr #0 align 64 {
entry:
  %val.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %option1.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2
  %extra_caps.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 31
  %0 = ptrtoint ptr %extra_caps.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %extra_caps.i, align 4
  %num_slots.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 49
  %1 = ptrtoint ptr %num_slots.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %num_slots.i, align 4
  %ops.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 46
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @rts5249_pcr_ops, ptr %ops.i, align 4
  %flags.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 39
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %flags.i, align 4
  %card_drive_sel.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 35
  %4 = ptrtoint ptr %card_drive_sel.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 65, ptr %card_drive_sel.i, align 1
  %sd30_drive_sel_1v8.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 33
  %5 = ptrtoint ptr %sd30_drive_sel_1v8.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 3, ptr %sd30_drive_sel_1v8.i, align 1
  %sd30_drive_sel_3v3.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 34
  %6 = ptrtoint ptr %sd30_drive_sel_3v3.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 3, ptr %sd30_drive_sel_3v3.i, align 2
  %aspm_en.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 36
  %7 = ptrtoint ptr %aspm_en.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %aspm_en.i, align 4
  %aspm_mode.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 37
  %8 = ptrtoint ptr %aspm_mode.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %aspm_mode.i, align 4
  %tx_initial_phase.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 40
  %9 = ptrtoint ptr %tx_initial_phase.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1056001, ptr %tx_initial_phase.i, align 4
  %rx_initial_phase.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 41
  %10 = ptrtoint ptr %rx_initial_phase.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 329240, ptr %rx_initial_phase.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i) #4
  %11 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %val.i.i, align 1, !annotation !59
  %call.i.i = call i32 @rtsx_pci_read_register(ptr noundef %pcr, i16 noundef zeroext -368, ptr noundef nonnull %val.i.i) #4
  %12 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %val.i.i, align 1
  %14 = and i8 %13, 15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #4
  %ic_version.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 32
  %15 = ptrtoint ptr %ic_version.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %ic_version.i, align 4
  %sd_pull_ctl_enable_tbl.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 42
  %16 = ptrtoint ptr %sd_pull_ctl_enable_tbl.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @rts5249_sd_pull_ctl_enable_tbl, ptr %sd_pull_ctl_enable_tbl.i, align 4
  %sd_pull_ctl_disable_tbl.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 43
  %17 = ptrtoint ptr %sd_pull_ctl_disable_tbl.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @rts5249_sd_pull_ctl_disable_tbl, ptr %sd_pull_ctl_disable_tbl.i, align 4
  %ms_pull_ctl_enable_tbl.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 44
  %18 = ptrtoint ptr %ms_pull_ctl_enable_tbl.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @rts5249_ms_pull_ctl_enable_tbl, ptr %ms_pull_ctl_enable_tbl.i, align 4
  %ms_pull_ctl_disable_tbl.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 45
  %19 = ptrtoint ptr %ms_pull_ctl_disable_tbl.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @rts5249_ms_pull_ctl_disable_tbl, ptr %ms_pull_ctl_disable_tbl.i, align 4
  %reg_pm_ctrl3.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 48
  %20 = ptrtoint ptr %option1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 80, ptr %option1.i, align 4
  %ltr_en.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 2
  %21 = ptrtoint ptr %ltr_en.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %ltr_en.i, align 1
  %ltr_active_latency.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 5
  %22 = ptrtoint ptr %ltr_active_latency.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 34876, ptr %ltr_active_latency.i, align 4
  %ltr_idle_latency.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 6
  %23 = ptrtoint ptr %ltr_idle_latency.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 35116, ptr %ltr_idle_latency.i, align 4
  %ltr_l1off_latency.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 7
  %24 = ptrtoint ptr %ltr_l1off_latency.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 36867, ptr %ltr_l1off_latency.i, align 4
  %l1_snooze_delay.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 8
  %25 = ptrtoint ptr %l1_snooze_delay.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %l1_snooze_delay.i, align 4
  %ltr_l1off_sspwrgate.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 9
  %ltr_l1off_snooze_sspwrgate.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 10
  %26 = ptrtoint ptr %aspm_mode.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %aspm_mode.i, align 4
  %27 = ptrtoint ptr %tx_initial_phase.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 728347, ptr %tx_initial_phase.i, align 4
  %28 = ptrtoint ptr %ltr_l1off_sspwrgate.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -1, ptr %ltr_l1off_sspwrgate.i, align 4
  %29 = ptrtoint ptr %ltr_l1off_snooze_sspwrgate.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -8, ptr %ltr_l1off_snooze_sspwrgate.i, align 1
  %30 = ptrtoint ptr %reg_pm_ctrl3.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 -130, ptr %reg_pm_ctrl3.i, align 4
  %31 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @rts524a_pcr_ops, ptr %ops.i, align 4
  %ocp_en = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 11
  %32 = ptrtoint ptr %ocp_en to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %ocp_en, align 2
  %hw_param = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 3
  %33 = ptrtoint ptr %hw_param to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hw_param, align 4
  %or = or i32 %34, 4194304
  store i32 %or, ptr %hw_param, align 4
  %ocp_glitch = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 3, i32 1
  %35 = ptrtoint ptr %ocp_glitch to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 15, ptr %ocp_glitch, align 4
  %sd_800mA_ocp_thd = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 13
  %36 = ptrtoint ptr %sd_800mA_ocp_thd to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 4, ptr %sd_800mA_ocp_thd, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rts525a_init_params(ptr noundef %pcr) local_unnamed_addr #0 align 64 {
entry:
  %val.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %option1.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2
  %extra_caps.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 31
  %0 = ptrtoint ptr %extra_caps.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %extra_caps.i, align 4
  %num_slots.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 49
  %1 = ptrtoint ptr %num_slots.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %num_slots.i, align 4
  %ops.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 46
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @rts5249_pcr_ops, ptr %ops.i, align 4
  %flags.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 39
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %flags.i, align 4
  %card_drive_sel.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 35
  %4 = ptrtoint ptr %card_drive_sel.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 65, ptr %card_drive_sel.i, align 1
  %sd30_drive_sel_1v8.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 33
  %5 = ptrtoint ptr %sd30_drive_sel_1v8.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 3, ptr %sd30_drive_sel_1v8.i, align 1
  %sd30_drive_sel_3v3.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 34
  %6 = ptrtoint ptr %sd30_drive_sel_3v3.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 3, ptr %sd30_drive_sel_3v3.i, align 2
  %aspm_en.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 36
  %7 = ptrtoint ptr %aspm_en.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %aspm_en.i, align 4
  %aspm_mode.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 37
  %8 = ptrtoint ptr %aspm_mode.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %aspm_mode.i, align 4
  %tx_initial_phase.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 40
  %9 = ptrtoint ptr %tx_initial_phase.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1056001, ptr %tx_initial_phase.i, align 4
  %rx_initial_phase.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 41
  %10 = ptrtoint ptr %rx_initial_phase.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 329240, ptr %rx_initial_phase.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i) #4
  %11 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %val.i.i, align 1, !annotation !59
  %call.i.i = call i32 @rtsx_pci_read_register(ptr noundef %pcr, i16 noundef zeroext -368, ptr noundef nonnull %val.i.i) #4
  %12 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %val.i.i, align 1
  %14 = and i8 %13, 15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #4
  %ic_version.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 32
  %15 = ptrtoint ptr %ic_version.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %ic_version.i, align 4
  %sd_pull_ctl_enable_tbl.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 42
  %16 = ptrtoint ptr %sd_pull_ctl_enable_tbl.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @rts5249_sd_pull_ctl_enable_tbl, ptr %sd_pull_ctl_enable_tbl.i, align 4
  %sd_pull_ctl_disable_tbl.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 43
  %17 = ptrtoint ptr %sd_pull_ctl_disable_tbl.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @rts5249_sd_pull_ctl_disable_tbl, ptr %sd_pull_ctl_disable_tbl.i, align 4
  %ms_pull_ctl_enable_tbl.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 44
  %18 = ptrtoint ptr %ms_pull_ctl_enable_tbl.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @rts5249_ms_pull_ctl_enable_tbl, ptr %ms_pull_ctl_enable_tbl.i, align 4
  %ms_pull_ctl_disable_tbl.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 45
  %19 = ptrtoint ptr %ms_pull_ctl_disable_tbl.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @rts5249_ms_pull_ctl_disable_tbl, ptr %ms_pull_ctl_disable_tbl.i, align 4
  %reg_pm_ctrl3.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 48
  %20 = ptrtoint ptr %option1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 80, ptr %option1.i, align 4
  %ltr_en.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 2
  %21 = ptrtoint ptr %ltr_en.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %ltr_en.i, align 1
  %ltr_active_latency.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 5
  %22 = ptrtoint ptr %ltr_active_latency.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 34876, ptr %ltr_active_latency.i, align 4
  %ltr_idle_latency.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 6
  %23 = ptrtoint ptr %ltr_idle_latency.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 35116, ptr %ltr_idle_latency.i, align 4
  %ltr_l1off_latency.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 7
  %24 = ptrtoint ptr %ltr_l1off_latency.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 36867, ptr %ltr_l1off_latency.i, align 4
  %l1_snooze_delay.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 8
  %25 = ptrtoint ptr %l1_snooze_delay.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %l1_snooze_delay.i, align 4
  %ltr_l1off_sspwrgate.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 9
  %ltr_l1off_snooze_sspwrgate.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 10
  %26 = ptrtoint ptr %aspm_mode.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %aspm_mode.i, align 4
  %27 = ptrtoint ptr %tx_initial_phase.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 728345, ptr %tx_initial_phase.i, align 4
  %28 = ptrtoint ptr %ltr_l1off_sspwrgate.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -1, ptr %ltr_l1off_sspwrgate.i, align 4
  %29 = ptrtoint ptr %ltr_l1off_snooze_sspwrgate.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -8, ptr %ltr_l1off_snooze_sspwrgate.i, align 1
  %30 = ptrtoint ptr %reg_pm_ctrl3.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 -130, ptr %reg_pm_ctrl3.i, align 4
  %31 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @rts525a_pcr_ops, ptr %ops.i, align 4
  %ocp_en = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 11
  %32 = ptrtoint ptr %ocp_en to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %ocp_en, align 2
  %hw_param = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 3
  %33 = ptrtoint ptr %hw_param to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hw_param, align 4
  %or = or i32 %34, 4194304
  store i32 %or, ptr %hw_param, align 4
  %ocp_glitch = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 3, i32 1
  %35 = ptrtoint ptr %ocp_glitch to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 15, ptr %ocp_glitch, align 4
  %sd_800mA_ocp_thd = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 13
  %36 = ptrtoint ptr %sd_800mA_ocp_thd to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 5, ptr %sd_800mA_ocp_thd, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rts5249_extra_init_hw(ptr noundef %pcr) #0 align 64 {
entry:
  %lval.i = alloca i32, align 4
  %val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcr, align 4
  %option1.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lval.i) #4
  %2 = ptrtoint ptr %lval.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %lval.i, align 4, !annotation !59
  %call.i = tail call zeroext i16 @pci_find_ext_capability(ptr noundef %1, i32 noundef 30) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i)
  %tobool.not.i = icmp eq i16 %call.i, 0
  br i1 %tobool.not.i, label %entry.rts5249_init_from_cfg.exit_crit_edge, label %if.end.i

entry.rts5249_init_from_cfg.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %rts5249_init_from_cfg.exit

if.end.i:                                         ; preds = %entry
  %conv.i = zext i16 %call.i to i32
  %add.i = add nuw nsw i32 %conv.i, 8
  %call2.i = call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef %add.i, ptr noundef nonnull %lval.i) #4
  %3 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcr, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %device.i, align 2
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i16 %6, label %if.end.i.if.end16.i_crit_edge [
    i16 21066, label %if.end.i.if.then11.i_crit_edge
    i16 21082, label %if.end.i.if.then11.i_crit_edge140
  ]

if.end.i.if.then11.i_crit_edge140:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then11.i

if.end.i.if.then11.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then11.i

if.end.i.if.end16.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16.i

if.then11.i:                                      ; preds = %if.end.i.if.then11.i_crit_edge, %if.end.i.if.then11.i_crit_edge140
  %8 = ptrtoint ptr %lval.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lval.i, align 4
  %and.i = and i32 %9, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp12.i = icmp eq i32 %and.i, 0
  br i1 %cmp12.i, label %if.then14.i, label %if.else.i

if.then14.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @rtsx_pci_enable_oobs_polling(ptr noundef %pcr) #4
  br label %if.end16.i

if.else.i:                                        ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @rtsx_pci_disable_oobs_polling(ptr noundef %pcr) #4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.else.i, %if.then14.i, %if.end.i.if.end16.i_crit_edge
  %10 = ptrtoint ptr %lval.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lval.i, align 4
  %and17.i = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.end16.i.if.end21.i_crit_edge, label %if.then19.i

if.end16.i.if.end21.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21.i

if.then19.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %option1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %option1.i, align 4
  %or.i = or i32 %13, 1
  store i32 %or.i, ptr %option1.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then19.i, %if.end16.i.if.end21.i_crit_edge
  %and22.i = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.end21.i.if.end28.i_crit_edge, label %if.then24.i

if.end21.i.if.end28.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28.i

if.then24.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %option1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %option1.i, align 4
  %or27.i = or i32 %15, 2
  store i32 %or27.i, ptr %option1.i, align 4
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then24.i, %if.end21.i.if.end28.i_crit_edge
  %and29.i = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %if.end28.i.if.end35.i_crit_edge, label %if.then31.i

if.end28.i.if.end35.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35.i

if.then31.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %option1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %option1.i, align 4
  %or34.i = or i32 %17, 4
  store i32 %or34.i, ptr %option1.i, align 4
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then31.i, %if.end28.i.if.end35.i_crit_edge
  %and36.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  br i1 %tobool37.not.i, label %if.end35.i.if.end42.i_crit_edge, label %if.then38.i

if.end35.i.if.end42.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42.i

if.then38.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %option1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %option1.i, align 4
  %or41.i = or i32 %19, 8
  store i32 %or41.i, ptr %option1.i, align 4
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.end35.i.if.end42.i_crit_edge
  %ltr_en.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %ltr_en.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ltr_en.i, align 1, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool43.not.i = icmp eq i8 %21, 0
  br i1 %tobool43.not.i, label %if.end42.i.rts5249_init_from_cfg.exit_crit_edge, label %if.then44.i

if.end42.i.rts5249_init_from_cfg.exit_crit_edge:  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rts5249_init_from_cfg.exit

if.then44.i:                                      ; preds = %if.end42.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #4
  %22 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 -1, ptr %val.i, align 2, !annotation !59
  %call45.i = call i32 @pcie_capability_read_word(ptr noundef %1, i32 noundef 40, ptr noundef nonnull %val.i) #4
  %23 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %val.i, align 2
  %25 = and i16 %24, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool48.not.i = icmp eq i16 %25, 0
  %ltr_enabled52.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 3
  br i1 %tobool48.not.i, label %if.else51.i, label %if.then49.i

if.then49.i:                                      ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %ltr_enabled52.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %ltr_enabled52.i, align 2
  %ltr_active.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 4
  %27 = ptrtoint ptr %ltr_active.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %ltr_active.i, align 1
  %ltr_active_latency.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 5
  %28 = ptrtoint ptr %ltr_active_latency.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ltr_active_latency.i, align 4
  %call50.i = call i32 @rtsx_set_ltr_latency(ptr noundef %pcr, i32 noundef %29) #4
  br label %if.end53.i

if.else51.i:                                      ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #6
  %30 = ptrtoint ptr %ltr_enabled52.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %ltr_enabled52.i, align 2
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.else51.i, %if.then49.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #4
  br label %rts5249_init_from_cfg.exit

rts5249_init_from_cfg.exit:                       ; preds = %if.end53.i, %if.end42.i.rts5249_init_from_cfg.exit_crit_edge, %entry.rts5249_init_from_cfg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lval.i) #4
  %31 = ptrtoint ptr %option1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %option1.i, align 4
  %and.i135 = and i32 %32, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i135)
  %tobool.not.i136 = icmp eq i32 %and.i135, 0
  %spec.select.i = zext i1 %tobool.not.i136 to i8
  %33 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %spec.select.i, ptr %33, align 4
  %ci = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 11
  %35 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %ci, align 4
  %36 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pcr, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 8
  %38 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %device, align 2
  %40 = zext i16 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.16)
  switch i16 %39, label %rts5249_init_from_cfg.exit.if.end_crit_edge [
    i16 21066, label %rts5249_init_from_cfg.exit.if.then_crit_edge
    i16 21082, label %rts5249_init_from_cfg.exit.if.then_crit_edge141
  ]

rts5249_init_from_cfg.exit.if.then_crit_edge141:  ; preds = %rts5249_init_from_cfg.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

rts5249_init_from_cfg.exit.if.then_crit_edge:     ; preds = %rts5249_init_from_cfg.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

rts5249_init_from_cfg.exit.if.end_crit_edge:      ; preds = %rts5249_init_from_cfg.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %rts5249_init_from_cfg.exit.if.then_crit_edge, %rts5249_init_from_cfg.exit.if.then_crit_edge141
  call fastcc void @rts52xa_save_content_to_autoload_space(ptr noundef %pcr)
  br label %if.end

if.end:                                           ; preds = %if.then, %rts5249_init_from_cfg.exit.if.end_crit_edge
  call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -369, i8 noundef zeroext -1, i8 noundef zeroext 0) #4
  call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -993, i8 noundef zeroext 2, i8 noundef zeroext 2) #4
  call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -425, i8 noundef zeroext 63, i8 noundef zeroext 0) #4
  call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -392, i8 noundef zeroext 3, i8 noundef zeroext 0) #4
  call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -392, i8 noundef zeroext 3, i8 noundef zeroext 1) #4
  call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -994, i8 noundef zeroext 15, i8 noundef zeroext 2) #4
  %sd30_drive_sel_3v3.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 34
  %41 = ptrtoint ptr %sd30_drive_sel_3v3.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %drive_sel.0.i = load i8, ptr %sd30_drive_sel_3v3.i, align 1
  %idxprom.i = zext i8 %drive_sel.0.i to i32
  %arrayidx.i = getelementptr [3 x i8], ptr @__const.rts5249_fill_driving.driving_3v3, i32 %idxprom.i
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i, align 1
  call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -678, i8 noundef zeroext -1, i8 noundef zeroext %43) #4
  %arrayidx6.i = getelementptr [3 x i8], ptr @__const.rts5249_fill_driving.driving_3v3, i32 %idxprom.i, i32 1
  %44 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx6.i, align 1
  call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -674, i8 noundef zeroext -1, i8 noundef zeroext %45) #4
  %arrayidx9.i = getelementptr [3 x i8], ptr @__const.rts5249_fill_driving.driving_3v3, i32 %idxprom.i, i32 2
  %46 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx9.i, align 1
  call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -673, i8 noundef zeroext -1, i8 noundef zeroext %47) #4
  %flags = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 39
  %48 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags, align 4
  %and = and i32 %49, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i8 -128, i8 -80
  call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -253, i8 noundef zeroext -80, i8 noundef zeroext %.) #4
  %call10 = call i32 @rtsx_pci_send_cmd(ptr noundef %pcr, i32 noundef 100) #4
  %50 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pcr, align 4
  %device12 = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 8
  %52 = ptrtoint ptr %device12 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %device12, align 2
  %54 = zext i16 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.17)
  switch i16 %53, label %if.end.if.end24_crit_edge [
    i16 21066, label %if.end.if.then22_crit_edge
    i16 21082, label %if.end.if.then22_crit_edge142
  ]

if.end.if.then22_crit_edge142:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then22

if.end.if.then22_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then22

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

if.then22:                                        ; preds = %if.end.if.then22_crit_edge, %if.end.if.then22_crit_edge142
  %call23 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -361, i8 noundef zeroext 16, i8 noundef zeroext 16) #4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end.if.end24_crit_edge
  %rtd3_en = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 54
  %55 = ptrtoint ptr %rtd3_en to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %rtd3_en, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool25.not = icmp eq i8 %56, 0
  %57 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pcr, align 4
  %device47 = getelementptr inbounds %struct.pci_dev, ptr %58, i32 0, i32 8
  %59 = ptrtoint ptr %device47 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %device47, align 2
  br i1 %tobool25.not, label %if.else45, label %if.then26

if.then26:                                        ; preds = %if.end24
  %61 = zext i16 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.18)
  switch i16 %60, label %if.else41 [
    i16 21066, label %if.then26.if.then38_crit_edge
    i16 21082, label %if.then26.if.then38_crit_edge143
  ]

if.then26.if.then38_crit_edge143:                 ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then38

if.then26.if.then38_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then38

if.then38:                                        ; preds = %if.then26.if.then38_crit_edge, %if.then26.if.then38_crit_edge143
  %call39 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -130, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %call40 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -136, i8 noundef zeroext 48, i8 noundef zeroext 48) #4
  br label %if.end64

if.else41:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #6
  %call42 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -186, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %call43 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -426, i8 noundef zeroext -1, i8 noundef zeroext 51) #4
  br label %if.end64

if.else45:                                        ; preds = %if.end24
  %62 = zext i16 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.19)
  switch i16 %60, label %if.else60 [
    i16 21066, label %if.else45.if.then57_crit_edge
    i16 21082, label %if.else45.if.then57_crit_edge144
  ]

if.else45.if.then57_crit_edge144:                 ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then57

if.else45.if.then57_crit_edge:                    ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then57

if.then57:                                        ; preds = %if.else45.if.then57_crit_edge, %if.else45.if.then57_crit_edge144
  %call58 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -130, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  %call59 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -136, i8 noundef zeroext 48, i8 noundef zeroext 32) #4
  br label %if.end64

if.else60:                                        ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #6
  %call61 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -426, i8 noundef zeroext -1, i8 noundef zeroext 48) #4
  %call62 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -186, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %if.end64

if.end64:                                         ; preds = %if.else60, %if.then57, %if.else41, %if.then38
  %63 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %33, align 4, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool65.not = icmp eq i8 %64, 0
  %.139 = select i1 %tobool65.not, i8 0, i8 -128
  %call69 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -253, i8 noundef zeroext -128, i8 noundef zeroext %.139) #4
  %reg_pm_ctrl3 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 48
  %65 = ptrtoint ptr %reg_pm_ctrl3 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %reg_pm_ctrl3, align 4
  %call71 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext %66, i8 noundef zeroext 16, i8 noundef zeroext 0) #4
  %67 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pcr, align 4
  %device73 = getelementptr inbounds %struct.pci_dev, ptr %68, i32 0, i32 8
  %69 = ptrtoint ptr %device73 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %device73, align 2
  %71 = zext i16 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.20)
  switch i16 %70, label %if.end64.if.end92_crit_edge [
    i16 21066, label %if.end64.if.then83_crit_edge
    i16 21082, label %if.end64.if.then83_crit_edge145
  ]

if.end64.if.then83_crit_edge145:                  ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then83

if.end64.if.then83_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then83

if.end64.if.end92_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end92

if.then83:                                        ; preds = %if.end64.if.then83_crit_edge, %if.end64.if.then83_crit_edge145
  %call84 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -136, i8 noundef zeroext 3, i8 noundef zeroext 0) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rts5249_extra_init_hw.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rts5249_extra_init_hw, %if.then89)) #4
          to label %if.end92 [label %if.then89], !srcloc !61

if.then89:                                        ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #6
  %72 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pcr, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %73, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rts5249_extra_init_hw.__UNIQUE_ID_ddebug244, ptr noundef %dev, ptr noundef nonnull @.str.3) #4
  br label %if.end92

if.end92:                                         ; preds = %if.then89, %if.then83, %if.end64.if.end92_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rts5249_optimize_phy(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -186, i8 noundef zeroext 16, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @rtsx_pci_write_phy_register(ptr noundef %pcr, i8 noundef zeroext 25, i16 noundef zeroext -404) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  tail call void @msleep(i32 noundef 1) #4
  %call5 = tail call i32 @rtsx_pci_write_phy_register(ptr noundef %pcr, i8 noundef zeroext 10, i16 noundef zeroext 1472) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @rtsx_pci_write_phy_register(ptr noundef %pcr, i8 noundef zeroext 0, i16 noundef zeroext -17853) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %call13 = tail call i32 @rtsx_pci_write_phy_register(ptr noundef %pcr, i8 noundef zeroext 3, i16 noundef zeroext -16046) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %call17 = tail call i32 @rtsx_pci_write_phy_register(ptr noundef %pcr, i8 noundef zeroext 30, i16 noundef zeroext 30955) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end16.cleanup_crit_edge, label %if.end20

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %call21 = tail call i32 @rtsx_pci_write_phy_register(ptr noundef %pcr, i8 noundef zeroext 5, i16 noundef zeroext 17920) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.end20.cleanup_crit_edge, label %if.end24

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %call25 = tail call i32 @rtsx_pci_write_phy_register(ptr noundef %pcr, i8 noundef zeroext 2, i16 noundef zeroext 1055) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end24.cleanup_crit_edge, label %if.end28

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  %call29 = tail call i32 @rtsx_pci_write_phy_register(ptr noundef %pcr, i8 noundef zeroext 29, i16 noundef zeroext 2084) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.end28.cleanup_crit_edge, label %if.end32

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end32:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  %call33 = tail call i32 @rtsx_pci_write_phy_register(ptr noundef %pcr, i8 noundef zeroext 8, i16 noundef zeroext 20452) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.end28.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call33, %if.end32 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ], [ %call17, %if.end16.cleanup_crit_edge ], [ %call21, %if.end20.cleanup_crit_edge ], [ %call25, %if.end24.cleanup_crit_edge ], [ %call29, %if.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtsx_base_turn_on_led(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -993, i8 noundef zeroext 2, i8 noundef zeroext 2) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtsx_base_turn_off_led(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -993, i8 noundef zeroext 2, i8 noundef zeroext 0) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtsx_base_enable_auto_blink(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -994, i8 noundef zeroext 8, i8 noundef zeroext 8) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtsx_base_disable_auto_blink(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -994, i8 noundef zeroext 8, i8 noundef zeroext 0) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtsx_base_card_power_on(ptr noundef %pcr, i32 noundef %card) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ocp_en = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 11
  %0 = ptrtoint ptr %ocp_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ocp_en, align 2, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @rtsx_pci_enable_ocp(ptr noundef %pcr) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ci = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 11
  %2 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ci, align 4
  tail call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -688, i8 noundef zeroext 3, i8 noundef zeroext 2) #4
  tail call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -395, i8 noundef zeroext 6, i8 noundef zeroext 2) #4
  %call = tail call i32 @rtsx_pci_send_cmd(ptr noundef %pcr, i32 noundef 100) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @msleep(i32 noundef 5) #4
  %3 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %ci, align 4
  tail call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -688, i8 noundef zeroext 3, i8 noundef zeroext 0) #4
  tail call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -395, i8 noundef zeroext 6, i8 noundef zeroext 6) #4
  %call5 = tail call i32 @rtsx_pci_send_cmd(ptr noundef %pcr, i32 noundef 100) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end3 ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtsx_base_card_power_off(ptr noundef %pcr, i32 noundef %card) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ocp_en = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 11
  %0 = ptrtoint ptr %ocp_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ocp_en, align 2, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @rtsx_pci_disable_ocp(ptr noundef %pcr) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -688, i8 noundef zeroext 3, i8 noundef zeroext 3) #4
  %call2 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -395, i8 noundef zeroext 6, i8 noundef zeroext 0) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtsx_base_switch_output_voltage(ptr noundef %pcr, i8 noundef zeroext %voltage) #0 align 64 {
entry:
  %driving_3v3.i = alloca [4 x [3 x i8]], align 1
  %driving_1v8.i = alloca [4 x [3 x i8]], align 1
  %val.i50 = alloca i16, align 2
  %val.i42 = alloca i16, align 2
  %val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %voltage to i32
  %0 = zext i8 %voltage to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %voltage, label %do.body [
    i8 0, label %sw.bb
    i8 1, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #4
  %1 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %val.i, align 2, !annotation !59
  %call.i = call i32 @rtsx_pci_read_phy_register(ptr noundef %pcr, i8 noundef zeroext 8, ptr noundef nonnull %val.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %rtsx_pci_update_phy.exit.thread, label %rtsx_pci_update_phy.exit

rtsx_pci_update_phy.exit.thread:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #4
  br label %cleanup

rtsx_pci_update_phy.exit:                         ; preds = %sw.bb
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %val.i, align 2
  %or10.i = or i16 %3, 960
  %call4.i = call i32 @rtsx_pci_write_phy_register(ptr noundef %pcr, i8 noundef zeroext 8, i16 noundef zeroext %or10.i) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp = icmp slt i32 %call4.i, 0
  br i1 %cmp, label %rtsx_pci_update_phy.exit.cleanup_crit_edge, label %rtsx_pci_update_phy.exit.sw.epilog_crit_edge

rtsx_pci_update_phy.exit.sw.epilog_crit_edge:     ; preds = %rtsx_pci_update_phy.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

rtsx_pci_update_phy.exit.cleanup_crit_edge:       ; preds = %rtsx_pci_update_phy.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %4 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcr, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21065, i16 %7)
  %cmp4 = icmp eq i16 %7, 21065
  br i1 %cmp4, label %if.then6, label %sw.bb2.if.end12_crit_edge

sw.bb2.if.end12_crit_edge:                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then6:                                         ; preds = %sw.bb2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i42) #4
  %8 = ptrtoint ptr %val.i42 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %val.i42, align 2, !annotation !59
  %call.i43 = call i32 @rtsx_pci_read_phy_register(ptr noundef %pcr, i8 noundef zeroext 17, ptr noundef nonnull %val.i42) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43)
  %cmp.i44 = icmp slt i32 %call.i43, 0
  br i1 %cmp.i44, label %rtsx_pci_update_phy.exit49.thread, label %rtsx_pci_update_phy.exit49

rtsx_pci_update_phy.exit49.thread:                ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i42) #4
  br label %cleanup

rtsx_pci_update_phy.exit49:                       ; preds = %if.then6
  %9 = ptrtoint ptr %val.i42 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %val.i42, align 2
  %and9.i45 = and i16 %10, -13
  %call4.i46 = call i32 @rtsx_pci_write_phy_register(ptr noundef %pcr, i8 noundef zeroext 17, i16 noundef zeroext %and9.i45) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i42) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i46)
  %cmp8 = icmp slt i32 %call4.i46, 0
  br i1 %cmp8, label %rtsx_pci_update_phy.exit49.cleanup_crit_edge, label %rtsx_pci_update_phy.exit49.if.end12_crit_edge

rtsx_pci_update_phy.exit49.if.end12_crit_edge:    ; preds = %rtsx_pci_update_phy.exit49
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

rtsx_pci_update_phy.exit49.cleanup_crit_edge:     ; preds = %rtsx_pci_update_phy.exit49
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %rtsx_pci_update_phy.exit49.if.end12_crit_edge, %sw.bb2.if.end12_crit_edge
  %append.0 = phi i16 [ 256, %sw.bb2.if.end12_crit_edge ], [ 128, %rtsx_pci_update_phy.exit49.if.end12_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i50) #4
  %11 = ptrtoint ptr %val.i50 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -1, ptr %val.i50, align 2, !annotation !59
  %call.i51 = call i32 @rtsx_pci_read_phy_register(ptr noundef %pcr, i8 noundef zeroext 8, ptr noundef nonnull %val.i50) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51)
  %cmp.i52 = icmp slt i32 %call.i51, 0
  br i1 %cmp.i52, label %rtsx_pci_update_phy.exit58.thread, label %rtsx_pci_update_phy.exit58

rtsx_pci_update_phy.exit58.thread:                ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i50) #4
  br label %cleanup

rtsx_pci_update_phy.exit58:                       ; preds = %if.end12
  %12 = ptrtoint ptr %val.i50 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %val.i50, align 2
  %and9.i53 = and i16 %13, -961
  %or10.i54 = or i16 %and9.i53, %append.0
  %call4.i55 = call i32 @rtsx_pci_write_phy_register(ptr noundef %pcr, i8 noundef zeroext 8, i16 noundef zeroext %or10.i54) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i50) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i55)
  %cmp14 = icmp slt i32 %call4.i55, 0
  br i1 %cmp14, label %rtsx_pci_update_phy.exit58.cleanup_crit_edge, label %rtsx_pci_update_phy.exit58.sw.epilog_crit_edge

rtsx_pci_update_phy.exit58.sw.epilog_crit_edge:   ; preds = %rtsx_pci_update_phy.exit58
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

rtsx_pci_update_phy.exit58.cleanup_crit_edge:     ; preds = %rtsx_pci_update_phy.exit58
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_base_switch_output_voltage.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_base_switch_output_voltage, %if.then21)) #4
          to label %cleanup [label %if.then21], !srcloc !61

if.then21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pcr, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_base_switch_output_voltage.__UNIQUE_ID_ddebug245, ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %conv) #4
  br label %cleanup

sw.epilog:                                        ; preds = %rtsx_pci_update_phy.exit58.sw.epilog_crit_edge, %rtsx_pci_update_phy.exit.sw.epilog_crit_edge
  %ci = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 11
  %16 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %ci, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %driving_3v3.i) #4
  %17 = call ptr @memcpy(ptr %driving_3v3.i, ptr @__const.rts5249_fill_driving.driving_3v3, i32 12)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %driving_1v8.i) #4
  %18 = call ptr @memcpy(ptr %driving_1v8.i, ptr @__const.rts5249_fill_driving.driving_1v8, i32 12)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %voltage)
  %cmp.i59 = icmp eq i8 %voltage, 0
  %sd30_drive_sel_3v3.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 34
  %sd30_drive_sel_1v8.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 33
  %driving.0.i = select i1 %cmp.i59, ptr %driving_3v3.i, ptr %driving_1v8.i
  %drive_sel.0.in.i = select i1 %cmp.i59, ptr %sd30_drive_sel_3v3.i, ptr %sd30_drive_sel_1v8.i
  %19 = ptrtoint ptr %drive_sel.0.in.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %drive_sel.0.i = load i8, ptr %drive_sel.0.in.i, align 1
  %idxprom.i = zext i8 %drive_sel.0.i to i32
  %arrayidx.i = getelementptr [3 x i8], ptr %driving.0.i, i32 %idxprom.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i, align 1
  call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -678, i8 noundef zeroext -1, i8 noundef zeroext %21) #4
  %arrayidx6.i = getelementptr [3 x i8], ptr %driving.0.i, i32 %idxprom.i, i32 1
  %22 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx6.i, align 1
  call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -674, i8 noundef zeroext -1, i8 noundef zeroext %23) #4
  %arrayidx9.i = getelementptr [3 x i8], ptr %driving.0.i, i32 %idxprom.i, i32 2
  %24 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx9.i, align 1
  call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -673, i8 noundef zeroext -1, i8 noundef zeroext %25) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %driving_1v8.i) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %driving_3v3.i) #4
  %call25 = call i32 @rtsx_pci_send_cmd(ptr noundef %pcr, i32 noundef 100) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then21, %do.body, %rtsx_pci_update_phy.exit58.cleanup_crit_edge, %rtsx_pci_update_phy.exit58.thread, %rtsx_pci_update_phy.exit49.cleanup_crit_edge, %rtsx_pci_update_phy.exit49.thread, %rtsx_pci_update_phy.exit.cleanup_crit_edge, %rtsx_pci_update_phy.exit.thread
  %retval.0 = phi i32 [ %call25, %sw.epilog ], [ %call4.i, %rtsx_pci_update_phy.exit.cleanup_crit_edge ], [ %call4.i46, %rtsx_pci_update_phy.exit49.cleanup_crit_edge ], [ %call4.i55, %rtsx_pci_update_phy.exit58.cleanup_crit_edge ], [ -22, %if.then21 ], [ %call.i, %rtsx_pci_update_phy.exit.thread ], [ %call.i43, %rtsx_pci_update_phy.exit49.thread ], [ %call.i51, %rtsx_pci_update_phy.exit58.thread ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtsx_base_fetch_vendor_settings(ptr nocapture noundef %pcr) #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #4
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg, align 4, !annotation !59
  %call = call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef 1828, ptr noundef nonnull %reg) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_base_fetch_vendor_settings.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_base_fetch_vendor_settings, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !61

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcr, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_base_fetch_vendor_settings.__UNIQUE_ID_ddebug236, ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef 1828, i32 noundef %6) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg, align 4
  %and = and i32 %8, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end25, label %do.body7

do.body7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_base_fetch_vendor_settings.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_base_fetch_vendor_settings, %if.then19)) #4
          to label %cleanup [label %if.then19], !srcloc !61

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pcr, align 4
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_base_fetch_vendor_settings.__UNIQUE_ID_ddebug237, ptr noundef %dev21, ptr noundef nonnull @.str.15) #4
  br label %cleanup

if.end25:                                         ; preds = %do.end
  %shr = lshr i32 %8, 28
  %11 = trunc i32 %shr to i8
  %conv = and i8 %11, 3
  %aspm_en = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 36
  %12 = ptrtoint ptr %aspm_en to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %aspm_en, align 4
  %shr27 = lshr i32 %8, 26
  %13 = trunc i32 %shr27 to i8
  %conv29 = and i8 %13, 3
  %sd30_drive_sel_1v8 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 33
  %14 = ptrtoint ptr %sd30_drive_sel_1v8 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv29, ptr %sd30_drive_sel_1v8, align 1
  %card_drive_sel = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 35
  %15 = ptrtoint ptr %card_drive_sel to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %card_drive_sel, align 1
  %17 = and i8 %16, 63
  %18 = lshr i32 %8, 19
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 64
  %conv37 = or i8 %17, %20
  store i8 %conv37, ptr %card_drive_sel, align 1
  %call38 = call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef 2068, ptr noundef nonnull %reg) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_base_fetch_vendor_settings.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_base_fetch_vendor_settings, %if.then51)) #4
          to label %do.end56 [label %if.then51], !srcloc !61

if.then51:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pcr, align 4
  %dev53 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %23 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %reg, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_base_fetch_vendor_settings.__UNIQUE_ID_ddebug238, ptr noundef %dev53, ptr noundef nonnull @.str.14, i32 noundef 2068, i32 noundef %24) #4
  br label %do.end56

do.end56:                                         ; preds = %if.then51, %if.end25
  %25 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %reg, align 4
  %27 = trunc i32 %26 to i8
  %conv58 = and i8 %27, 4
  %rtd3_en = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 54
  %28 = ptrtoint ptr %rtd3_en to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv58, ptr %rtd3_en, align 1
  %and59 = and i32 %26, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %do.end56.if.end63_crit_edge, label %if.then61

do.end56.if.end63_crit_edge:                      ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end63

if.then61:                                        ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #6
  %extra_caps = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 31
  %29 = ptrtoint ptr %extra_caps to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %extra_caps, align 4
  %or62 = or i32 %30, 128
  store i32 %or62, ptr %extra_caps, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %do.end56.if.end63_crit_edge
  %31 = lshr i8 %27, 5
  %conv66 = and i8 %31, 3
  %sd30_drive_sel_3v3 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 34
  %32 = ptrtoint ptr %sd30_drive_sel_3v3 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv66, ptr %sd30_drive_sel_3v3, align 2
  %and67 = and i32 %26, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end63.cleanup_crit_edge, label %if.then69

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then69:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #6
  %flags = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 39
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags, align 4
  %or70 = or i32 %34, 2
  store i32 %or70, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then69, %if.end63.cleanup_crit_edge, %if.then19, %do.body7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rts52xa_save_content_to_autoload_space(ptr noundef %pcr) unnamed_addr #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #4
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !59
  %call = call i32 @rtsx_pci_read_register(ptr noundef %pcr, i16 noundef zeroext -418, ptr noundef nonnull %val) #4
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %val, align 1
  %3 = and i8 %2, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.body21, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 @rtsx_pci_read_register(ptr noundef %pcr, i16 noundef zeroext -211, ptr noundef nonnull %val) #4
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %val, align 1
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool4.not = icmp eq i8 %6, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then
  %call6 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -211, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  %call7 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -136, i8 noundef zeroext 3, i8 noundef zeroext 3) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rts52xa_save_content_to_autoload_space.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rts52xa_save_content_to_autoload_space, %if.then12)) #4
          to label %do.end [label %if.then12], !srcloc !61

if.then12:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcr, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rts52xa_save_content_to_autoload_space.__UNIQUE_ID_ddebug242, ptr noundef %dev, ptr noundef nonnull @.str.5) #4
  br label %do.end

do.end:                                           ; preds = %if.then12, %if.then5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %9(i32 noundef 214748000) #4
  call fastcc void @rts52xa_save_content_from_efuse(ptr noundef %pcr)
  br label %if.end57

if.else:                                          ; preds = %if.then
  %call13 = call i32 @rtsx_pci_read_register(ptr noundef %pcr, i16 noundef zeroext -136, ptr noundef nonnull %val) #4
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %val, align 1
  %12 = and i8 %11, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool16.not = icmp eq i8 %12, 0
  br i1 %tobool16.not, label %if.then17, label %if.else.if.end57_crit_edge

if.else.if.end57_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @rts52xa_save_content_from_efuse(ptr noundef %pcr)
  br label %if.end57

do.body21:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rts52xa_save_content_to_autoload_space.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rts52xa_save_content_to_autoload_space, %if.then33)) #4
          to label %do.end38 [label %if.then33], !srcloc !61

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pcr, align 4
  %dev35 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rts52xa_save_content_to_autoload_space.__UNIQUE_ID_ddebug243, ptr noundef %dev35, ptr noundef nonnull @.str.6) #4
  br label %do.end38

do.end38:                                         ; preds = %if.then33, %do.body21
  %call39 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -256, i8 noundef zeroext -1, i8 noundef zeroext -128) #4
  %15 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pcr, align 4
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %vendor, align 8
  %conv41 = trunc i16 %18 to i8
  %call42 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -252, i8 noundef zeroext -1, i8 noundef zeroext %conv41) #4
  %19 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pcr, align 4
  %vendor44 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %vendor44 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vendor44, align 8
  %23 = lshr i16 %22, 8
  %conv46 = trunc i16 %23 to i8
  %call47 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -251, i8 noundef zeroext -1, i8 noundef zeroext %conv46) #4
  %24 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pcr, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %device, align 2
  %conv49 = trunc i16 %27 to i8
  %call50 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -250, i8 noundef zeroext -1, i8 noundef zeroext %conv49) #4
  %28 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pcr, align 4
  %device52 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %device52 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %device52, align 2
  %32 = lshr i16 %31, 8
  %conv55 = trunc i16 %32 to i8
  %call56 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -249, i8 noundef zeroext -1, i8 noundef zeroext %conv55) #4
  br label %if.end57

if.end57:                                         ; preds = %do.end38, %if.then17, %if.else.if.end57_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_pci_add_cmd(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pci_send_cmd(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pci_write_register(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @pci_find_ext_capability(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_pci_enable_oobs_polling(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_pci_disable_oobs_polling(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_read_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_set_ltr_latency(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pci_read_register(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rts52xa_save_content_from_efuse(ptr noundef %pcr) unnamed_addr #0 align 64 {
entry:
  %tmp = alloca i8, align 1
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #4
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %tmp, align 1, !annotation !59
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #4
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %val, align 1, !annotation !59
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -136, i8 noundef zeroext 12, i8 noundef zeroext 4) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rts52xa_save_content_from_efuse.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rts52xa_save_content_from_efuse, %if.then)) #4
          to label %do.body5 [label %if.then], !srcloc !61

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcr, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rts52xa_save_content_from_efuse.__UNIQUE_ID_ddebug239, ptr noundef %dev, ptr noundef nonnull @.str.8) #4
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rts52xa_save_content_from_efuse.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rts52xa_save_content_from_efuse, %if.then17)) #4
          to label %do.end22 [label %if.then17], !srcloc !61

if.then17:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcr, align 4
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rts52xa_save_content_from_efuse.__UNIQUE_ID_ddebug240, ptr noundef %dev19, ptr noundef nonnull @.str.9) #4
  br label %do.end22

do.end22:                                         ; preds = %if.then17, %do.body5
  %call23 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -973, i8 noundef zeroext 63, i8 noundef zeroext 0) #4
  %call24 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -974, i8 noundef zeroext -64, i8 noundef zeroext -128) #4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end22
  %j.0201 = phi i16 [ 0, %do.end22 ], [ %inc, %for.body.for.body_crit_edge ]
  %call26 = call i32 @rtsx_pci_read_register(ptr noundef %pcr, i16 noundef zeroext -974, ptr noundef nonnull %tmp) #4
  %7 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tmp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp28 = icmp slt i8 %8, 0
  %inc = add nuw nsw i16 %j.0201, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1023, i16 %j.0201)
  %cmp = icmp ult i16 %j.0201, 1023
  %or.cond209 = select i1 %cmp28, i1 %cmp, i1 false
  br i1 %or.cond209, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body
  %call32 = call i32 @rtsx_pci_read_register(ptr noundef %pcr, i16 noundef zeroext -971, ptr noundef nonnull %val) #4
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %val, align 1
  %and34 = and i8 %10, 15
  %11 = and i8 %10, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool39.not = icmp eq i8 %11, 0
  br i1 %tobool39.not, label %if.else, label %for.body44.preheader

for.body44.preheader:                             ; preds = %for.end
  %call46 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -973, i8 noundef zeroext 63, i8 noundef zeroext 4) #4
  %call47 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -974, i8 noundef zeroext -64, i8 noundef zeroext -128) #4
  br label %for.body52

for.body52:                                       ; preds = %for.body52.for.body52_crit_edge, %for.body44.preheader
  %j.1202 = phi i16 [ 0, %for.body44.preheader ], [ %inc61, %for.body52.for.body52_crit_edge ]
  %call53 = call i32 @rtsx_pci_read_register(ptr noundef %pcr, i16 noundef zeroext -974, ptr noundef nonnull %tmp) #4
  %12 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tmp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp56 = icmp slt i8 %13, 0
  %inc61 = add nuw nsw i16 %j.1202, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1023, i16 %j.1202)
  %cmp50 = icmp ult i16 %j.1202, 1023
  %or.cond = select i1 %cmp56, i1 %cmp50, i1 false
  br i1 %or.cond, label %for.body52.for.body52_crit_edge, label %for.end62

for.body52.for.body52_crit_edge:                  ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body52

for.end62:                                        ; preds = %for.body52
  %call63 = call i32 @rtsx_pci_read_register(ptr noundef %pcr, i16 noundef zeroext -971, ptr noundef nonnull %val) #4
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %val, align 1
  %call66 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -252, i8 noundef zeroext -1, i8 noundef zeroext %15) #4
  %call46.1 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -973, i8 noundef zeroext 63, i8 noundef zeroext 5) #4
  %call47.1 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -974, i8 noundef zeroext -64, i8 noundef zeroext -128) #4
  br label %for.body52.1

for.body52.1:                                     ; preds = %for.body52.1.for.body52.1_crit_edge, %for.end62
  %j.1202.1 = phi i16 [ 0, %for.end62 ], [ %inc61.1, %for.body52.1.for.body52.1_crit_edge ]
  %call53.1 = call i32 @rtsx_pci_read_register(ptr noundef %pcr, i16 noundef zeroext -974, ptr noundef nonnull %tmp) #4
  %16 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tmp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp56.1 = icmp slt i8 %17, 0
  %inc61.1 = add nuw nsw i16 %j.1202.1, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1023, i16 %j.1202.1)
  %cmp50.1 = icmp ult i16 %j.1202.1, 1023
  %or.cond.1 = select i1 %cmp56.1, i1 %cmp50.1, i1 false
  br i1 %or.cond.1, label %for.body52.1.for.body52.1_crit_edge, label %for.end62.1

for.body52.1.for.body52.1_crit_edge:              ; preds = %for.body52.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body52.1

for.end62.1:                                      ; preds = %for.body52.1
  %call63.1 = call i32 @rtsx_pci_read_register(ptr noundef %pcr, i16 noundef zeroext -971, ptr noundef nonnull %val) #4
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %val, align 1
  %call66.1 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -251, i8 noundef zeroext -1, i8 noundef zeroext %19) #4
  %call46.2 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -973, i8 noundef zeroext 63, i8 noundef zeroext 6) #4
  %call47.2 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -974, i8 noundef zeroext -64, i8 noundef zeroext -128) #4
  br label %for.body52.2

for.body52.2:                                     ; preds = %for.body52.2.for.body52.2_crit_edge, %for.end62.1
  %j.1202.2 = phi i16 [ 0, %for.end62.1 ], [ %inc61.2, %for.body52.2.for.body52.2_crit_edge ]
  %call53.2 = call i32 @rtsx_pci_read_register(ptr noundef %pcr, i16 noundef zeroext -974, ptr noundef nonnull %tmp) #4
  %20 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %tmp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp56.2 = icmp slt i8 %21, 0
  %inc61.2 = add nuw nsw i16 %j.1202.2, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1023, i16 %j.1202.2)
  %cmp50.2 = icmp ult i16 %j.1202.2, 1023
  %or.cond.2 = select i1 %cmp56.2, i1 %cmp50.2, i1 false
  br i1 %or.cond.2, label %for.body52.2.for.body52.2_crit_edge, label %for.end62.2

for.body52.2.for.body52.2_crit_edge:              ; preds = %for.body52.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body52.2

for.end62.2:                                      ; preds = %for.body52.2
  %call63.2 = call i32 @rtsx_pci_read_register(ptr noundef %pcr, i16 noundef zeroext -971, ptr noundef nonnull %val) #4
  %22 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %val, align 1
  %call66.2 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -250, i8 noundef zeroext -1, i8 noundef zeroext %23) #4
  %call46.3 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -973, i8 noundef zeroext 63, i8 noundef zeroext 7) #4
  %call47.3 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -974, i8 noundef zeroext -64, i8 noundef zeroext -128) #4
  br label %for.body52.3

for.body52.3:                                     ; preds = %for.body52.3.for.body52.3_crit_edge, %for.end62.2
  %j.1202.3 = phi i16 [ 0, %for.end62.2 ], [ %inc61.3, %for.body52.3.for.body52.3_crit_edge ]
  %call53.3 = call i32 @rtsx_pci_read_register(ptr noundef %pcr, i16 noundef zeroext -974, ptr noundef nonnull %tmp) #4
  %24 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %tmp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp56.3 = icmp slt i8 %25, 0
  %inc61.3 = add nuw nsw i16 %j.1202.3, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1023, i16 %j.1202.3)
  %cmp50.3 = icmp ult i16 %j.1202.3, 1023
  %or.cond.3 = select i1 %cmp56.3, i1 %cmp50.3, i1 false
  br i1 %or.cond.3, label %for.body52.3.for.body52.3_crit_edge, label %for.end62.3

for.body52.3.for.body52.3_crit_edge:              ; preds = %for.body52.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body52.3

for.end62.3:                                      ; preds = %for.body52.3
  call void @__sanitizer_cov_trace_pc() #6
  %call63.3 = call i32 @rtsx_pci_read_register(ptr noundef %pcr, i16 noundef zeroext -971, ptr noundef nonnull %val) #4
  %26 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %val, align 1
  br label %if.end87

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %28 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pcr, align 4
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %vendor, align 8
  %conv71 = trunc i16 %31 to i8
  %call72 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -252, i8 noundef zeroext -1, i8 noundef zeroext %conv71) #4
  %32 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pcr, align 4
  %vendor74 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %vendor74 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %vendor74, align 8
  %36 = lshr i16 %35, 8
  %conv76 = trunc i16 %36 to i8
  %call77 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -251, i8 noundef zeroext -1, i8 noundef zeroext %conv76) #4
  %37 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pcr, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 8
  %39 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %device, align 2
  %conv79 = trunc i16 %40 to i8
  %call80 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -250, i8 noundef zeroext -1, i8 noundef zeroext %conv79) #4
  %41 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pcr, align 4
  %device82 = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 8
  %43 = ptrtoint ptr %device82 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %device82, align 2
  %45 = lshr i16 %44, 8
  %conv85 = trunc i16 %45 to i8
  br label %if.end87

if.end87:                                         ; preds = %if.else, %for.end62.3
  %.sink = phi i8 [ %27, %for.end62.3 ], [ %conv85, %if.else ]
  %call66.3 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -249, i8 noundef zeroext -1, i8 noundef zeroext %.sink) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and34)
  %cmp90205.not = icmp eq i8 %and34, 0
  br i1 %cmp90205.not, label %if.end87.for.end125_crit_edge, label %for.body92.preheader

if.end87.for.end125_crit_edge:                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end125

for.body92.preheader:                             ; preds = %if.end87
  %46 = shl nuw nsw i8 %and34, 2
  %mul = zext i8 %46 to i32
  %smax = call i32 @llvm.smax.i32(i32 %mul, i32 1)
  %. = select i1 %tobool39.not, i8 4, i8 8
  br label %for.body92

for.body92:                                       ; preds = %for.end118.for.body92_crit_edge, %for.body92.preheader
  %i.1206 = phi i32 [ %inc124, %for.end118.for.body92_crit_edge ], [ 0, %for.body92.preheader ]
  %47 = trunc i32 %i.1206 to i8
  %conv100 = add i8 %., %47
  %call101 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -973, i8 noundef zeroext 63, i8 noundef zeroext %conv100) #4
  %call103 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -974, i8 noundef zeroext -64, i8 noundef zeroext -128) #4
  br label %for.body108

for.body108:                                      ; preds = %for.body108.for.body108_crit_edge, %for.body92
  %j.2204 = phi i16 [ 0, %for.body92 ], [ %inc117, %for.body108.for.body108_crit_edge ]
  %call109 = call i32 @rtsx_pci_read_register(ptr noundef %pcr, i16 noundef zeroext -974, ptr noundef nonnull %tmp) #4
  %48 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %tmp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %cmp112 = icmp slt i8 %49, 0
  %inc117 = add nuw nsw i16 %j.2204, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1023, i16 %j.2204)
  %cmp106 = icmp ult i16 %j.2204, 1023
  %or.cond208 = select i1 %cmp112, i1 %cmp106, i1 false
  br i1 %or.cond208, label %for.body108.for.body108_crit_edge, label %for.end118

for.body108.for.body108_crit_edge:                ; preds = %for.body108
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body108

for.end118:                                       ; preds = %for.body108
  %call119 = call i32 @rtsx_pci_read_register(ptr noundef %pcr, i16 noundef zeroext -971, ptr noundef nonnull %val) #4
  %50 = trunc i32 %i.1206 to i16
  %conv121 = add i16 %50, -248
  %51 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %val, align 1
  %call122 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext %conv121, i8 noundef zeroext -1, i8 noundef zeroext %52) #4
  %inc124 = add nuw nsw i32 %i.1206, 1
  %exitcond.not = icmp eq i32 %inc124, %smax
  br i1 %exitcond.not, label %for.end118.for.end125_crit_edge, label %for.end118.for.body92_crit_edge

for.end118.for.body92_crit_edge:                  ; preds = %for.end118
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body92

for.end118.for.end125_crit_edge:                  ; preds = %for.end118
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end125

for.end125:                                       ; preds = %for.end118.for.end125_crit_edge, %if.end87.for.end125_crit_edge
  %or = or i8 %and34, -128
  %call129 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -256, i8 noundef zeroext -1, i8 noundef zeroext %or) #4
  %call130 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -136, i8 noundef zeroext 12, i8 noundef zeroext 8) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rts52xa_save_content_from_efuse.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rts52xa_save_content_from_efuse, %if.then143)) #4
          to label %do.end148 [label %if.then143], !srcloc !61

if.then143:                                       ; preds = %for.end125
  call void @__sanitizer_cov_trace_pc() #6
  %53 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pcr, align 4
  %dev145 = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rts52xa_save_content_from_efuse.__UNIQUE_ID_ddebug241, ptr noundef %dev145, ptr noundef nonnull @.str.10) #4
  br label %do.end148

do.end148:                                        ; preds = %if.then143, %for.end125
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pci_write_phy_register(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_pci_enable_ocp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_pci_disable_ocp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pci_read_phy_register(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rts524a_write_phy(ptr noundef %pcr, i8 noundef zeroext %addr, i16 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %and2 = and i8 %addr, 63
  %or = or i8 %and2, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %addr)
  %tobool.not8 = icmp slt i8 %addr, 0
  %cond = select i1 %tobool.not8, i8 %or, i8 %addr
  %call = tail call i32 @__rtsx_pci_write_phy_register(ptr noundef %pcr, i8 noundef zeroext %cond, i16 noundef zeroext %val) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rts524a_read_phy(ptr noundef %pcr, i8 noundef zeroext %addr, ptr noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %and2 = and i8 %addr, 63
  %or = or i8 %and2, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %addr)
  %tobool.not8 = icmp slt i8 %addr, 0
  %cond = select i1 %tobool.not8, i8 %or, i8 %addr
  %call = tail call i32 @__rtsx_pci_read_phy_register(ptr noundef %pcr, i8 noundef zeroext %cond, ptr noundef %val) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rts524a_extra_init_hw(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rts5249_extra_init_hw(ptr noundef %pcr)
  %call1 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -423, i8 noundef zeroext 2, i8 noundef zeroext 2) #4
  %call2 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -399, i8 noundef zeroext 8, i8 noundef zeroext 8) #4
  %call3 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -141, i8 noundef zeroext 8, i8 noundef zeroext 8) #4
  %call4 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -427, i8 noundef zeroext 32, i8 noundef zeroext 32) #4
  %0 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcr, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21066, i16 %3)
  %cmp = icmp eq i16 %3, 21066
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ic_version = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 32
  %4 = ptrtoint ptr %ic_version to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ic_version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp7 = icmp eq i8 %5, 0
  br i1 %cmp7, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %call9 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -144, i8 noundef zeroext -64, i8 noundef zeroext 64) #4
  %call10 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -141, i8 noundef zeroext 48, i8 noundef zeroext 32) #4
  %call11 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -139, i8 noundef zeroext 48, i8 noundef zeroext 32) #4
  %call12 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -139, i8 noundef zeroext -64, i8 noundef zeroext 64) #4
  %call13 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -138, i8 noundef zeroext 24, i8 noundef zeroext 16) #4
  %call14 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -387, i8 noundef zeroext 112, i8 noundef zeroext 48) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rts524a_optimize_phy(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -130, i8 noundef zeroext 16, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @rtsx_pci_write_phy_register(ptr noundef %pcr, i8 noundef zeroext 0, i16 noundef zeroext -17854) #4
  %call2 = tail call i32 @rtsx_pci_write_phy_register(ptr noundef %pcr, i8 noundef zeroext 3, i16 noundef zeroext 10056) #4
  %0 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcr, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21066, i16 %3)
  %cmp3 = icmp eq i16 %3, 21066
  br i1 %cmp3, label %land.lhs.true, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end
  %ic_version = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 32
  %4 = ptrtoint ptr %ic_version to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ic_version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp6 = icmp eq i8 %5, 0
  br i1 %cmp6, label %if.then8, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %call9 = tail call i32 @rtsx_pci_write_phy_register(ptr noundef %pcr, i8 noundef zeroext 3, i16 noundef zeroext 10056) #4
  %call10 = tail call i32 @rtsx_pci_write_phy_register(ptr noundef %pcr, i8 noundef zeroext 2, i16 noundef zeroext 2591) #4
  %call11 = tail call i32 @rtsx_pci_write_phy_register(ptr noundef %pcr, i8 noundef zeroext 26, i16 noundef zeroext 9542) #4
  %call12 = tail call i32 @rtsx_pci_write_phy_register(ptr noundef %pcr, i8 noundef zeroext 29, i16 noundef zeroext 4) #4
  %call13 = tail call i32 @rtsx_pci_write_phy_register(ptr noundef %pcr, i8 noundef zeroext 30, i16 noundef zeroext 23679) #4
  br label %if.end14

if.end14:                                         ; preds = %if.then8, %land.lhs.true.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %call15 = tail call i32 @rtsx_pci_write_phy_register(ptr noundef %pcr, i8 noundef zeroext 8, i16 noundef zeroext 22500) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rts5250_set_l1off_cfg_sub_d0(ptr noundef %pcr, i32 noundef %active) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %option1 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2
  %remap_addr = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 5
  %0 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %remap_addr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !63
  %3 = ptrtoint ptr %option1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %option1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %active)
  %tobool.not = icmp eq i32 %active, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %and4 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool8.not = icmp eq i32 %and4, 0
  br i1 %tobool8.not, label %if.then.if.end13_crit_edge, label %if.then9

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %ltr_l1off_snooze_sspwrgate = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 10
  %5 = ptrtoint ptr %ltr_l1off_snooze_sspwrgate to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ltr_l1off_snooze_sspwrgate, align 1
  br label %if.then16

if.else:                                          ; preds = %entry
  %and7 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool10.not = icmp eq i32 %and7, 0
  br i1 %tobool10.not, label %if.else.if.end13_crit_edge, label %if.then11

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %ltr_l1off_sspwrgate = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 9
  %7 = ptrtoint ptr %ltr_l1off_sspwrgate to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ltr_l1off_sspwrgate, align 4
  br label %if.then16

if.end13:                                         ; preds = %if.else.if.end13_crit_edge, %if.then.if.end13_crit_edge
  %9 = and i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %if.end13.if.end32_crit_edge, label %if.end13.if.then16_crit_edge

if.end13.if.then16_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then16

if.end13.if.end32_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

if.then16:                                        ; preds = %if.end13.if.then16_crit_edge, %if.then11, %if.then9
  %val.049 = phi i8 [ 0, %if.end13.if.then16_crit_edge ], [ %8, %if.then11 ], [ %6, %if.then9 ]
  %and19 = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.then16.if.end32_crit_edge, label %if.then21

if.then16.if.end32_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

if.then21:                                        ; preds = %if.then16
  %11 = and i32 %2, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool22.not = icmp eq i32 %11, 0
  br i1 %tobool22.not, label %if.else26, label %if.then23

if.then23:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  %12 = and i8 %val.049, 127
  br label %if.end32

if.else26:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  %13 = or i8 %val.049, -128
  br label %if.end32

if.end32:                                         ; preds = %if.else26, %if.then23, %if.then16.if.end32_crit_edge, %if.end13.if.end32_crit_edge
  %val.1 = phi i8 [ %12, %if.then23 ], [ %13, %if.else26 ], [ %val.049, %if.then16.if.end32_crit_edge ], [ 0, %if.end13.if.end32_crit_edge ]
  %call33 = tail call i32 @rtsx_set_l1off_sub(ptr noundef %pcr, i8 noundef zeroext %val.1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__rtsx_pci_write_phy_register(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__rtsx_pci_read_phy_register(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_set_l1off_sub(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rts525a_extra_init_hw(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rts5249_extra_init_hw(ptr noundef %pcr)
  %call1 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -135, i8 noundef zeroext -16, i8 noundef zeroext -16) #4
  %call2 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -427, i8 noundef zeroext 32, i8 noundef zeroext 32) #4
  %0 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcr, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21082, i16 %3)
  %cmp = icmp eq i16 %3, 21082
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ic_version = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 32
  %4 = ptrtoint ptr %ic_version to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ic_version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp5 = icmp eq i8 %5, 0
  br i1 %cmp5, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %call7 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -370, i8 noundef zeroext 2, i8 noundef zeroext 2) #4
  %call8 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -148, i8 noundef zeroext 56, i8 noundef zeroext 40) #4
  %call9 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -139, i8 noundef zeroext 7, i8 noundef zeroext 3) #4
  %call10 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -138, i8 noundef zeroext 7, i8 noundef zeroext 4) #4
  %call11 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -137, i8 noundef zeroext 7, i8 noundef zeroext 4) #4
  %call12 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -142, i8 noundef zeroext 48, i8 noundef zeroext 16) #4
  %call13 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -146, i8 noundef zeroext -97, i8 noundef zeroext -119) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rts525a_optimize_phy(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -130, i8 noundef zeroext 16, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @rtsx_pci_write_phy_register(ptr noundef %pcr, i8 noundef zeroext 29, i16 noundef zeroext -26113) #4
  %call2 = tail call i32 @rtsx_pci_write_phy_register(ptr noundef %pcr, i8 noundef zeroext 3, i16 noundef zeroext 10056) #4
  %0 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcr, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21082, i16 %3)
  %cmp3 = icmp eq i16 %3, 21082
  br i1 %cmp3, label %land.lhs.true, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %ic_version = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 32
  %4 = ptrtoint ptr %ic_version to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ic_version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp6 = icmp eq i8 %5, 0
  br i1 %cmp6, label %if.then8, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %call9 = tail call i32 @rtsx_pci_write_phy_register(ptr noundef %pcr, i8 noundef zeroext 25, i16 noundef zeroext 14594) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.then8 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rts525a_card_power_on(ptr noundef %pcr, i32 noundef %card) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -141, i8 noundef zeroext 7, i8 noundef zeroext 7) #4
  %call1 = tail call i32 @rtsx_base_card_power_on(ptr noundef %pcr, i32 noundef %card)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rts525a_switch_output_voltage(ptr noundef %pcr, i8 noundef zeroext %voltage) #0 align 64 {
entry:
  %driving_3v3.i = alloca [4 x [3 x i8]], align 1
  %driving_1v8.i = alloca [4 x [3 x i8]], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %voltage to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %voltage, label %entry.return_crit_edge [
    i8 0, label %entry.sw.epilog_crit_edge
    i8 1, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %entry.sw.epilog_crit_edge
  %.sink13 = phi i8 [ 2, %sw.bb2 ], [ 7, %entry.sw.epilog_crit_edge ]
  %.sink = phi i8 [ -128, %sw.bb2 ], [ %voltage, %entry.sw.epilog_crit_edge ]
  %call3 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -143, i8 noundef zeroext 7, i8 noundef zeroext %.sink13) #4
  %call4 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -602, i8 noundef zeroext -128, i8 noundef zeroext %.sink) #4
  %ci = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 11
  %1 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %ci, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %driving_3v3.i) #4
  %2 = call ptr @memcpy(ptr %driving_3v3.i, ptr @__const.rts5249_fill_driving.driving_3v3, i32 12)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %driving_1v8.i) #4
  %3 = call ptr @memcpy(ptr %driving_1v8.i, ptr @__const.rts5249_fill_driving.driving_1v8, i32 12)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %voltage)
  %cmp.i = icmp eq i8 %voltage, 0
  %sd30_drive_sel_3v3.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 34
  %sd30_drive_sel_1v8.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 33
  %driving.0.i = select i1 %cmp.i, ptr %driving_3v3.i, ptr %driving_1v8.i
  %drive_sel.0.in.i = select i1 %cmp.i, ptr %sd30_drive_sel_3v3.i, ptr %sd30_drive_sel_1v8.i
  %4 = ptrtoint ptr %drive_sel.0.in.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %drive_sel.0.i = load i8, ptr %drive_sel.0.in.i, align 1
  %idxprom.i = zext i8 %drive_sel.0.i to i32
  %arrayidx.i = getelementptr [3 x i8], ptr %driving.0.i, i32 %idxprom.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i, align 1
  tail call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -678, i8 noundef zeroext -1, i8 noundef zeroext %6) #4
  %arrayidx6.i = getelementptr [3 x i8], ptr %driving.0.i, i32 %idxprom.i, i32 1
  %7 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx6.i, align 1
  tail call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -674, i8 noundef zeroext -1, i8 noundef zeroext %8) #4
  %arrayidx9.i = getelementptr [3 x i8], ptr %driving.0.i, i32 %idxprom.i, i32 2
  %9 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx9.i, align 1
  tail call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -673, i8 noundef zeroext -1, i8 noundef zeroext %10) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %driving_1v8.i) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %driving_3v3.i) #4
  %call5 = tail call i32 @rtsx_pci_send_cmd(ptr noundef %pcr, i32 noundef 100) #4
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call5, %sw.epilog ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !17, !18, !19, !21, !22, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !38, !40, !42, !44, !46, !48}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @rts5249_pcr_ops, !1, !"rts5249_pcr_ops", i1 false, i1 false}
!1 = !{!"../drivers/misc/cardreader/rts5249.c", i32 491, i32 29}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/misc/cardreader/rts5249.c", i32 321, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @rts5249_extra_init_hw.__UNIQUE_ID_ddebug244, !3, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/misc/cardreader/rts5249.c", i32 234, i32 4}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @rts52xa_save_content_to_autoload_space.__UNIQUE_ID_ddebug242, !9, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/misc/cardreader/rts5249.c", i32 243, i32 3}
!14 = !{ptr @rts52xa_save_content_to_autoload_space.__UNIQUE_ID_ddebug243, !13, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/misc/cardreader/rts5249.c", i32 158, i32 2}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @rts52xa_save_content_from_efuse.__UNIQUE_ID_ddebug239, !16, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/misc/cardreader/rts5249.c", i32 159, i32 2}
!21 = !{ptr @rts52xa_save_content_from_efuse.__UNIQUE_ID_ddebug240, !20, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/misc/cardreader/rts5249.c", i32 217, i32 2}
!24 = !{ptr @rts52xa_save_content_from_efuse.__UNIQUE_ID_ddebug241, !23, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/misc/cardreader/rts5249.c", i32 481, i32 3}
!27 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @rtsx_base_switch_output_voltage.__UNIQUE_ID_ddebug245, !26, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/misc/cardreader/rts5249.c", i32 62, i32 2}
!31 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @rtsx_base_fetch_vendor_settings.__UNIQUE_ID_ddebug236, !30, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/misc/cardreader/rts5249.c", i32 65, i32 3}
!35 = !{ptr @rtsx_base_fetch_vendor_settings.__UNIQUE_ID_ddebug237, !34, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!36 = !{ptr @rtsx_base_fetch_vendor_settings.__UNIQUE_ID_ddebug238, !37, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!37 = !{!"../drivers/misc/cardreader/rts5249.c", i32 75, i32 2}
!38 = !{ptr @rts5249_sd_pull_ctl_enable_tbl, !39, !"rts5249_sd_pull_ctl_enable_tbl", i1 false, i1 false}
!39 = !{!"../drivers/misc/cardreader/rts5249.c", i32 511, i32 18}
!40 = !{ptr @rts5249_sd_pull_ctl_disable_tbl, !41, !"rts5249_sd_pull_ctl_disable_tbl", i1 false, i1 false}
!41 = !{!"../drivers/misc/cardreader/rts5249.c", i32 526, i32 18}
!42 = !{ptr @rts5249_ms_pull_ctl_enable_tbl, !43, !"rts5249_ms_pull_ctl_enable_tbl", i1 false, i1 false}
!43 = !{!"../drivers/misc/cardreader/rts5249.c", i32 538, i32 18}
!44 = !{ptr @rts5249_ms_pull_ctl_disable_tbl, !45, !"rts5249_ms_pull_ctl_disable_tbl", i1 false, i1 false}
!45 = !{!"../drivers/misc/cardreader/rts5249.c", i32 549, i32 18}
!46 = !{ptr @rts524a_pcr_ops, !47, !"rts524a_pcr_ops", i1 false, i1 false}
!47 = !{!"../drivers/misc/cardreader/rts5249.c", i32 714, i32 29}
!48 = !{ptr @rts525a_pcr_ops, !49, !"rts525a_pcr_ops", i1 false, i1 false}
!49 = !{!"../drivers/misc/cardreader/rts5249.c", i32 833, i32 29}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{!"auto-init"}
!60 = !{i8 0, i8 2}
!61 = !{i64 2148976795, i64 2148976800, i64 2148976813, i64 2148976857, i64 2148976891, i64 2148976912}
!62 = !{i64 5052249}
!63 = !{i64 2152592598}
