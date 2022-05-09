; ModuleID = '/llk/IR_all_yes/drivers/misc/cardreader/rtl8411.c_pt.bc'
source_filename = "../drivers/misc/cardreader/rtl8411.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pcr_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
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

@rtl8411_pcr_ops = internal constant { %struct.pcr_ops, [32 x i8] } { %struct.pcr_ops { ptr null, ptr null, ptr @rtl8411_extra_init_hw, ptr null, ptr @rtl8411_turn_on_led, ptr @rtl8411_turn_off_led, ptr @rtl8411_enable_auto_blink, ptr @rtl8411_disable_auto_blink, ptr @rtl8411_card_power_on, ptr @rtl8411_card_power_off, ptr @rtl8411_switch_output_voltage, ptr @rtl8411_cd_deglitch, ptr @rtl8411_conv_clk_and_div_n, ptr @rtl8411_fetch_vendor_settings, ptr @rtl8411_force_power_down, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@rtl8411_sd_pull_ctl_enable_tbl = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 -44040022, i32 -43974486, i32 -43908951, i32 -43843575, i32 -43778039, i32 -43712508, i32 0], [36 x i8] zeroinitializer }, align 32
@rtl8411_sd_pull_ctl_disable_tbl = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 -44040091, i32 -43974571, i32 -43908971, i32 -43843575, i32 -43778043, i32 -43712508, i32 0], [36 x i8] zeroinitializer }, align 32
@rtl8411_ms_pull_ctl_enable_tbl = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 -44040091, i32 -43974571, i32 -43908971, i32 -43843579, i32 -43778043, i32 -43712508, i32 0], [36 x i8] zeroinitializer }, align 32
@rtl8411_ms_pull_ctl_disable_tbl = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 -44040091, i32 -43974571, i32 -43908971, i32 -43843575, i32 -43778043, i32 -43712508, i32 0], [36 x i8] zeroinitializer }, align 32
@rtl8411b_pcr_ops = internal constant { %struct.pcr_ops, [32 x i8] } { %struct.pcr_ops { ptr null, ptr null, ptr @rtl8411b_extra_init_hw, ptr null, ptr @rtl8411_turn_on_led, ptr @rtl8411_turn_off_led, ptr @rtl8411_enable_auto_blink, ptr @rtl8411_disable_auto_blink, ptr @rtl8411_card_power_on, ptr @rtl8411_card_power_off, ptr @rtl8411_switch_output_voltage, ptr @rtl8411_cd_deglitch, ptr @rtl8411_conv_clk_and_div_n, ptr @rtl8411b_fetch_vendor_settings, ptr @rtl8411_force_power_down, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@rtl8411b_qfn48_sd_pull_ctl_enable_tbl = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 -43974486, i32 -43908871, i32 -43712487, i32 0], [16 x i8] zeroinitializer }, align 32
@rtl8411b_qfn48_sd_pull_ctl_disable_tbl = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 -43974571, i32 -43908875, i32 -43712491, i32 0], [16 x i8] zeroinitializer }, align 32
@rtl8411b_qfn48_ms_pull_ctl_enable_tbl = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 -43974571, i32 -43908875, i32 -43712491, i32 0], [16 x i8] zeroinitializer }, align 32
@rtl8411b_qfn48_ms_pull_ctl_disable_tbl = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 -43974571, i32 -43908875, i32 -43712491, i32 0], [16 x i8] zeroinitializer }, align 32
@rtl8411b_qfn64_sd_pull_ctl_enable_tbl = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 -44040022, i32 -43974486, i32 -43908903, i32 -43843495, i32 -43777963, i32 -43712491, i32 0], [36 x i8] zeroinitializer }, align 32
@rtl8411b_qfn64_sd_pull_ctl_disable_tbl = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 -44040091, i32 -43974571, i32 -43908907, i32 -43843495, i32 -43777963, i32 -43712491, i32 0], [36 x i8] zeroinitializer }, align 32
@rtl8411b_qfn64_ms_pull_ctl_enable_tbl = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 -44040091, i32 -43974571, i32 -43908907, i32 -43843499, i32 -43777963, i32 -43712491, i32 0], [36 x i8] zeroinitializer }, align 32
@rtl8411b_qfn64_ms_pull_ctl_disable_tbl = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 -44040091, i32 -43974571, i32 -43908907, i32 -43843495, i32 -43777963, i32 -43712491, i32 0], [36 x i8] zeroinitializer }, align 32
@rtl8402_pcr_ops = internal constant { %struct.pcr_ops, [32 x i8] } { %struct.pcr_ops { ptr null, ptr null, ptr @rtl8411_extra_init_hw, ptr null, ptr @rtl8411_turn_on_led, ptr @rtl8411_turn_off_led, ptr @rtl8411_enable_auto_blink, ptr @rtl8411_disable_auto_blink, ptr @rtl8411_card_power_on, ptr @rtl8411_card_power_off, ptr @rtl8402_switch_output_voltage, ptr @rtl8411_cd_deglitch, ptr @rtl8411_conv_clk_and_div_n, ptr @rtl8411_fetch_vendor_settings, ptr @rtl8411_force_power_down, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rtl8411_cd_deglitch.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rtsx_pci\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtl8411_cd_deglitch\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/misc/cardreader/rtl8411.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"After CD deglitch, card_exist = 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@rtl8411_fetch_vendor_settings.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 11, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rtl8411_fetch_vendor_settings\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Cfg 0x%x: 0x%x\0A\00", [16 x i8] zeroinitializer }, align 32
@rtl8411_fetch_vendor_settings.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 14, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__const.map_sd_drive.sd_drive = private unnamed_addr constant [4 x i8] c"\01\02\05\03", align 1
@rtl8411b_fetch_vendor_settings.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.5, i8 0, i8 16, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rtl8411b_fetch_vendor_settings\00", [33 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.8 = private unnamed_addr constant [16 x i8] c"rtl8411_pcr_ops\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 284, i32 29 }
@___asan_gen_.11 = private unnamed_addr constant [31 x i8] c"rtl8411_sd_pull_ctl_enable_tbl\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 339, i32 18 }
@___asan_gen_.14 = private unnamed_addr constant [32 x i8] c"rtl8411_sd_pull_ctl_disable_tbl\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 356, i32 18 }
@___asan_gen_.17 = private unnamed_addr constant [31 x i8] c"rtl8411_ms_pull_ctl_enable_tbl\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 370, i32 18 }
@___asan_gen_.20 = private unnamed_addr constant [32 x i8] c"rtl8411_ms_pull_ctl_disable_tbl\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 384, i32 18 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"rtl8411b_pcr_ops\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 316, i32 29 }
@___asan_gen_.26 = private unnamed_addr constant [38 x i8] c"rtl8411b_qfn48_sd_pull_ctl_enable_tbl\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 404, i32 18 }
@___asan_gen_.29 = private unnamed_addr constant [39 x i8] c"rtl8411b_qfn48_sd_pull_ctl_disable_tbl\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 421, i32 18 }
@___asan_gen_.32 = private unnamed_addr constant [38 x i8] c"rtl8411b_qfn48_ms_pull_ctl_enable_tbl\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 438, i32 18 }
@___asan_gen_.35 = private unnamed_addr constant [39 x i8] c"rtl8411b_qfn48_ms_pull_ctl_disable_tbl\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 455, i32 18 }
@___asan_gen_.38 = private unnamed_addr constant [38 x i8] c"rtl8411b_qfn64_sd_pull_ctl_enable_tbl\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 394, i32 18 }
@___asan_gen_.41 = private unnamed_addr constant [39 x i8] c"rtl8411b_qfn64_sd_pull_ctl_disable_tbl\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 411, i32 18 }
@___asan_gen_.44 = private unnamed_addr constant [38 x i8] c"rtl8411b_qfn64_ms_pull_ctl_enable_tbl\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 428, i32 18 }
@___asan_gen_.47 = private unnamed_addr constant [39 x i8] c"rtl8411b_qfn64_ms_pull_ctl_disable_tbl\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 445, i32 18 }
@___asan_gen_.50 = private unnamed_addr constant [16 x i8] c"rtl8402_pcr_ops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 300, i32 29 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 253, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 45, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.72 = private constant [37 x i8] c"../drivers/misc/cardreader/rtl8411.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 67, i32 2 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @rtl8411_pcr_ops, ptr @rtl8411_sd_pull_ctl_enable_tbl, ptr @rtl8411_sd_pull_ctl_disable_tbl, ptr @rtl8411_ms_pull_ctl_enable_tbl, ptr @rtl8411_ms_pull_ctl_disable_tbl, ptr @rtl8411b_pcr_ops, ptr @rtl8411b_qfn48_sd_pull_ctl_enable_tbl, ptr @rtl8411b_qfn48_sd_pull_ctl_disable_tbl, ptr @rtl8411b_qfn48_ms_pull_ctl_enable_tbl, ptr @rtl8411b_qfn48_ms_pull_ctl_disable_tbl, ptr @rtl8411b_qfn64_sd_pull_ctl_enable_tbl, ptr @rtl8411b_qfn64_sd_pull_ctl_disable_tbl, ptr @rtl8411b_qfn64_ms_pull_ctl_enable_tbl, ptr @rtl8411b_qfn64_ms_pull_ctl_disable_tbl, ptr @rtl8402_pcr_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8411_pcr_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8411_sd_pull_ctl_enable_tbl to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8411_sd_pull_ctl_disable_tbl to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8411_ms_pull_ctl_enable_tbl to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8411_ms_pull_ctl_disable_tbl to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8411b_pcr_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8411b_qfn48_sd_pull_ctl_enable_tbl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8411b_qfn48_sd_pull_ctl_disable_tbl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8411b_qfn48_ms_pull_ctl_enable_tbl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8411b_qfn48_ms_pull_ctl_disable_tbl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8411b_qfn64_sd_pull_ctl_enable_tbl to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8411b_qfn64_sd_pull_ctl_disable_tbl to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8411b_qfn64_ms_pull_ctl_enable_tbl to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8411b_qfn64_ms_pull_ctl_disable_tbl to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8402_pcr_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8411_init_params(ptr noundef %pcr) local_unnamed_addr #0 align 64 {
entry:
  %val.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %extra_caps.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 31
  %0 = ptrtoint ptr %extra_caps.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %extra_caps.i, align 4
  %num_slots.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 49
  %1 = ptrtoint ptr %num_slots.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %num_slots.i, align 4
  %flags.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 39
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %flags.i, align 4
  %card_drive_sel.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 35
  %3 = ptrtoint ptr %card_drive_sel.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 84, ptr %card_drive_sel.i, align 1
  %sd30_drive_sel_1v8.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 33
  %4 = ptrtoint ptr %sd30_drive_sel_1v8.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 3, ptr %sd30_drive_sel_1v8.i, align 1
  %sd30_drive_sel_3v3.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 34
  %5 = ptrtoint ptr %sd30_drive_sel_3v3.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %sd30_drive_sel_3v3.i, align 2
  %aspm_en.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 36
  %6 = ptrtoint ptr %aspm_en.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 2, ptr %aspm_en.i, align 4
  %aspm_mode.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 37
  %7 = ptrtoint ptr %aspm_mode.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %aspm_mode.i, align 4
  %tx_initial_phase.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 40
  %8 = ptrtoint ptr %tx_initial_phase.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 919319, ptr %tx_initial_phase.i, align 4
  %rx_initial_phase.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 41
  %9 = ptrtoint ptr %rx_initial_phase.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 656132, ptr %rx_initial_phase.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i) #5
  %10 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %val.i.i, align 1, !annotation !54
  %call.i.i = call i32 @rtsx_pci_read_register(ptr noundef %pcr, i16 noundef zeroext -974, ptr noundef nonnull %val.i.i) #5
  %11 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %val.i.i, align 1
  %13 = and i8 %12, 15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #5
  %ic_version.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 32
  %14 = ptrtoint ptr %ic_version.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %ic_version.i, align 4
  %ops = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 46
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @rtl8411_pcr_ops, ptr %ops, align 4
  %sd_pull_ctl_enable_tbl = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 42
  %16 = ptrtoint ptr %sd_pull_ctl_enable_tbl to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @rtl8411_sd_pull_ctl_enable_tbl, ptr %sd_pull_ctl_enable_tbl, align 4
  %sd_pull_ctl_disable_tbl = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 43
  %17 = ptrtoint ptr %sd_pull_ctl_disable_tbl to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @rtl8411_sd_pull_ctl_disable_tbl, ptr %sd_pull_ctl_disable_tbl, align 4
  %ms_pull_ctl_enable_tbl = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 44
  %18 = ptrtoint ptr %ms_pull_ctl_enable_tbl to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @rtl8411_ms_pull_ctl_enable_tbl, ptr %ms_pull_ctl_enable_tbl, align 4
  %ms_pull_ctl_disable_tbl = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 45
  %19 = ptrtoint ptr %ms_pull_ctl_disable_tbl to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @rtl8411_ms_pull_ctl_disable_tbl, ptr %ms_pull_ctl_disable_tbl, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8411b_init_params(ptr noundef %pcr) local_unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i8, align 1
  %val.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %extra_caps.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 31
  %0 = ptrtoint ptr %extra_caps.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %extra_caps.i, align 4
  %num_slots.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 49
  %1 = ptrtoint ptr %num_slots.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %num_slots.i, align 4
  %flags.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 39
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %flags.i, align 4
  %card_drive_sel.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 35
  %3 = ptrtoint ptr %card_drive_sel.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 84, ptr %card_drive_sel.i, align 1
  %sd30_drive_sel_1v8.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 33
  %4 = ptrtoint ptr %sd30_drive_sel_1v8.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 3, ptr %sd30_drive_sel_1v8.i, align 1
  %sd30_drive_sel_3v3.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 34
  %5 = ptrtoint ptr %sd30_drive_sel_3v3.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %sd30_drive_sel_3v3.i, align 2
  %aspm_en.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 36
  %6 = ptrtoint ptr %aspm_en.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 2, ptr %aspm_en.i, align 4
  %aspm_mode.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 37
  %7 = ptrtoint ptr %aspm_mode.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %aspm_mode.i, align 4
  %tx_initial_phase.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 40
  %8 = ptrtoint ptr %tx_initial_phase.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 919319, ptr %tx_initial_phase.i, align 4
  %rx_initial_phase.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 41
  %9 = ptrtoint ptr %rx_initial_phase.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 656132, ptr %rx_initial_phase.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i) #5
  %10 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %val.i.i, align 1, !annotation !54
  %call.i.i = call i32 @rtsx_pci_read_register(ptr noundef %pcr, i16 noundef zeroext -974, ptr noundef nonnull %val.i.i) #5
  %11 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %val.i.i, align 1
  %13 = and i8 %12, 15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #5
  %ic_version.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 32
  %14 = ptrtoint ptr %ic_version.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %ic_version.i, align 4
  %ops = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 46
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @rtl8411b_pcr_ops, ptr %ops, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #5
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %val.i, align 1
  %call.i = call i32 @rtsx_pci_read_register(ptr noundef %pcr, i16 noundef zeroext -687, ptr noundef nonnull %val.i) #5
  %17 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %val.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #5
  %19 = and i8 %18, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not = icmp eq i8 %19, 0
  br i1 %tobool.not, label %do.body1, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %do.body1, %entry.if.end_crit_edge
  %rtl8411b_qfn48_sd_pull_ctl_enable_tbl.sink = phi ptr [ @rtl8411b_qfn64_sd_pull_ctl_enable_tbl, %do.body1 ], [ @rtl8411b_qfn48_sd_pull_ctl_enable_tbl, %entry.if.end_crit_edge ]
  %rtl8411b_qfn48_sd_pull_ctl_disable_tbl.sink = phi ptr [ @rtl8411b_qfn64_sd_pull_ctl_disable_tbl, %do.body1 ], [ @rtl8411b_qfn48_sd_pull_ctl_disable_tbl, %entry.if.end_crit_edge ]
  %rtl8411b_qfn48_ms_pull_ctl_enable_tbl.sink = phi ptr [ @rtl8411b_qfn64_ms_pull_ctl_enable_tbl, %do.body1 ], [ @rtl8411b_qfn48_ms_pull_ctl_enable_tbl, %entry.if.end_crit_edge ]
  %rtl8411b_qfn48_ms_pull_ctl_disable_tbl.sink = phi ptr [ @rtl8411b_qfn64_ms_pull_ctl_disable_tbl, %do.body1 ], [ @rtl8411b_qfn48_ms_pull_ctl_disable_tbl, %entry.if.end_crit_edge ]
  %20 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 42
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %rtl8411b_qfn48_sd_pull_ctl_enable_tbl.sink, ptr %20, align 4
  %22 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 43
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %rtl8411b_qfn48_sd_pull_ctl_disable_tbl.sink, ptr %22, align 4
  %24 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 44
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %rtl8411b_qfn48_ms_pull_ctl_enable_tbl.sink, ptr %24, align 4
  %26 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 45
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %rtl8411b_qfn48_ms_pull_ctl_disable_tbl.sink, ptr %26, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8402_init_params(ptr noundef %pcr) local_unnamed_addr #0 align 64 {
entry:
  %val.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %extra_caps.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 31
  %0 = ptrtoint ptr %extra_caps.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %extra_caps.i, align 4
  %num_slots.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 49
  %1 = ptrtoint ptr %num_slots.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %num_slots.i, align 4
  %flags.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 39
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %flags.i, align 4
  %card_drive_sel.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 35
  %3 = ptrtoint ptr %card_drive_sel.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 84, ptr %card_drive_sel.i, align 1
  %sd30_drive_sel_1v8.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 33
  %4 = ptrtoint ptr %sd30_drive_sel_1v8.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 3, ptr %sd30_drive_sel_1v8.i, align 1
  %sd30_drive_sel_3v3.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 34
  %5 = ptrtoint ptr %sd30_drive_sel_3v3.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %sd30_drive_sel_3v3.i, align 2
  %aspm_en.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 36
  %6 = ptrtoint ptr %aspm_en.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 2, ptr %aspm_en.i, align 4
  %aspm_mode.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 37
  %7 = ptrtoint ptr %aspm_mode.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %aspm_mode.i, align 4
  %tx_initial_phase.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 40
  %8 = ptrtoint ptr %tx_initial_phase.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 919319, ptr %tx_initial_phase.i, align 4
  %rx_initial_phase.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 41
  %9 = ptrtoint ptr %rx_initial_phase.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 656132, ptr %rx_initial_phase.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i) #5
  %10 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %val.i.i, align 1, !annotation !54
  %call.i.i = call i32 @rtsx_pci_read_register(ptr noundef %pcr, i16 noundef zeroext -974, ptr noundef nonnull %val.i.i) #5
  %11 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %val.i.i, align 1
  %13 = and i8 %12, 15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #5
  %ic_version.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 32
  %14 = ptrtoint ptr %ic_version.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %ic_version.i, align 4
  %ops = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 46
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @rtl8402_pcr_ops, ptr %ops, align 4
  %sd_pull_ctl_enable_tbl = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 42
  %16 = ptrtoint ptr %sd_pull_ctl_enable_tbl to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @rtl8411_sd_pull_ctl_enable_tbl, ptr %sd_pull_ctl_enable_tbl, align 4
  %sd_pull_ctl_disable_tbl = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 43
  %17 = ptrtoint ptr %sd_pull_ctl_disable_tbl to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @rtl8411_sd_pull_ctl_disable_tbl, ptr %sd_pull_ctl_disable_tbl, align 4
  %ms_pull_ctl_enable_tbl = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 44
  %18 = ptrtoint ptr %ms_pull_ctl_enable_tbl to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @rtl8411_ms_pull_ctl_enable_tbl, ptr %ms_pull_ctl_enable_tbl, align 4
  %ms_pull_ctl_disable_tbl = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 45
  %19 = ptrtoint ptr %ms_pull_ctl_disable_tbl to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @rtl8411_ms_pull_ctl_disable_tbl, ptr %ms_pull_ctl_disable_tbl, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pci_read_register(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8411_extra_init_hw(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ci = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 11
  %0 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ci, align 4
  %sd30_drive_sel_3v3 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 34
  %1 = ptrtoint ptr %sd30_drive_sel_3v3 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %sd30_drive_sel_3v3, align 2
  tail call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -674, i8 noundef zeroext -1, i8 noundef zeroext %2) #5
  tail call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -653, i8 noundef zeroext 71, i8 noundef zeroext 0) #5
  %call = tail call i32 @rtsx_pci_send_cmd(ptr noundef %pcr, i32 noundef 100) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8411_turn_on_led(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -680, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8411_turn_off_led(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -680, i8 noundef zeroext 1, i8 noundef zeroext 1) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8411_enable_auto_blink(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -682, i8 noundef zeroext -1, i8 noundef zeroext 13) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8411_disable_auto_blink(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -682, i8 noundef zeroext 8, i8 noundef zeroext 0) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8411_card_power_on(ptr noundef %pcr, i32 noundef %card) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ci = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 11
  %0 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ci, align 4
  tail call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -688, i8 noundef zeroext 15, i8 noundef zeroext 14) #5
  tail call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -994, i8 noundef zeroext 3, i8 noundef zeroext 2) #5
  %call = tail call i32 @rtsx_pci_send_cmd(ptr noundef %pcr, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 32212200) #5
  %call1 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -688, i8 noundef zeroext 15, i8 noundef zeroext 12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 32212200) #5
  %call5 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -688, i8 noundef zeroext 15, i8 noundef zeroext 8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 32212200) #5
  %call9 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -688, i8 noundef zeroext 15, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %call13 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -994, i8 noundef zeroext 3, i8 noundef zeroext 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end12 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8411_card_power_off(ptr noundef %pcr, i32 noundef %card) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -688, i8 noundef zeroext 15, i8 noundef zeroext 15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -994, i8 noundef zeroext 3, i8 noundef zeroext 2) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8411_switch_output_voltage(ptr noundef %pcr, i8 noundef zeroext %voltage) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %voltage to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %voltage, label %entry.rtl8411_do_switch_output_voltage.exit_crit_edge [
    i8 0, label %if.then.i
    i8 1, label %if.then12.i
  ]

entry.rtl8411_do_switch_output_voltage.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl8411_do_switch_output_voltage.exit

if.then.i:                                        ; preds = %entry
  %sd30_drive_sel_3v3.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 34
  %1 = ptrtoint ptr %sd30_drive_sel_3v3.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %sd30_drive_sel_3v3.i, align 2
  %call.i = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -674, i8 noundef zeroext 7, i8 noundef zeroext %2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  br i1 %cmp3.i, label %if.then.i.rtl8411_do_switch_output_voltage.exit_crit_edge, label %if.then.i.if.end23.i_crit_edge

if.then.i.if.end23.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23.i

if.then.i.rtl8411_do_switch_output_voltage.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl8411_do_switch_output_voltage.exit

if.then12.i:                                      ; preds = %entry
  %sd30_drive_sel_1v8.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 33
  %3 = ptrtoint ptr %sd30_drive_sel_1v8.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %sd30_drive_sel_1v8.i, align 1
  %call13.i = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -674, i8 noundef zeroext 7, i8 noundef zeroext %4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp slt i32 %call13.i, 0
  br i1 %cmp14.i, label %if.then12.i.rtl8411_do_switch_output_voltage.exit_crit_edge, label %if.then12.i.if.end23.i_crit_edge

if.then12.i.if.end23.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23.i

if.then12.i.rtl8411_do_switch_output_voltage.exit_crit_edge: ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl8411_do_switch_output_voltage.exit

if.end23.i:                                       ; preds = %if.then12.i.if.end23.i_crit_edge, %if.then.i.if.end23.i_crit_edge
  %val.0.i = phi i8 [ 116, %if.then.i.if.end23.i_crit_edge ], [ 16, %if.then12.i.if.end23.i_crit_edge ]
  %call24.i = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -994, i8 noundef zeroext 116, i8 noundef zeroext %val.0.i) #5
  br label %rtl8411_do_switch_output_voltage.exit

rtl8411_do_switch_output_voltage.exit:            ; preds = %if.end23.i, %if.then12.i.rtl8411_do_switch_output_voltage.exit_crit_edge, %if.then.i.rtl8411_do_switch_output_voltage.exit_crit_edge, %entry.rtl8411_do_switch_output_voltage.exit_crit_edge
  %retval.0.i = phi i32 [ %call24.i, %if.end23.i ], [ %call.i, %if.then.i.rtl8411_do_switch_output_voltage.exit_crit_edge ], [ %call13.i, %if.then12.i.rtl8411_do_switch_output_voltage.exit_crit_edge ], [ -22, %entry.rtl8411_do_switch_output_voltage.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8411_cd_deglitch(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %remap_addr = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 5
  %0 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %remap_addr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !55
  %3 = shl i32 %2, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  %and = and i32 %3, 458752
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %cond.false

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -653, i8 noundef zeroext 7, i8 noundef zeroext 0) #5
  %call2 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -417, i8 noundef zeroext -32, i8 noundef zeroext 0) #5
  br label %cleanup

cond.false:                                       ; preds = %entry
  %call.i = tail call i32 @__sw_hweight32(i32 noundef %and) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp = icmp ugt i32 %call.i, 1
  br i1 %cmp, label %if.then286, label %cond.false.if.end310_crit_edge

cond.false.if.end310_crit_edge:                   ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end310

if.then286:                                       ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #7
  %call287 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -688, i8 noundef zeroext 15, i8 noundef zeroext 14) #5
  tail call void @msleep(i32 noundef 100) #5
  %4 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %remap_addr, align 4
  %add.ptr289 = getelementptr i8, ptr %5, i32 20
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr289) #5, !srcloc !55
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  %and291 = and i32 %7, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and291)
  %tobool292.not = icmp eq i32 %and291, 0
  %and294 = and i32 %7, 65536
  %card_exist.0 = select i1 %tobool292.not, i32 %and294, i32 131072
  %call300 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -688, i8 noundef zeroext 15, i8 noundef zeroext 15) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8411_cd_deglitch.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8411_cd_deglitch, %if.then308)) #5
          to label %if.end310 [label %if.then308], !srcloc !57

if.then308:                                       ; preds = %if.then286
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcr, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl8411_cd_deglitch.__UNIQUE_ID_ddebug239, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %card_exist.0) #5
  br label %if.end310

if.end310:                                        ; preds = %if.then308, %if.then286, %cond.false.if.end310_crit_edge
  %card_exist.1 = phi i32 [ %card_exist.0, %if.then308 ], [ %and, %cond.false.if.end310_crit_edge ], [ %card_exist.0, %if.then286 ]
  %and311 = and i32 %card_exist.1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and311)
  %tobool312.not = icmp eq i32 %and311, 0
  br i1 %tobool312.not, label %if.else316, label %if.then313

if.then313:                                       ; preds = %if.end310
  call void @__sanitizer_cov_trace_pc() #7
  %call314 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -417, i8 noundef zeroext -32, i8 noundef zeroext 64) #5
  %call315 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -653, i8 noundef zeroext 7, i8 noundef zeroext 3) #5
  br label %cleanup

if.else316:                                       ; preds = %if.end310
  %and317 = and i32 %card_exist.1, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and317)
  %tobool318.not = icmp eq i32 %and317, 0
  br i1 %tobool318.not, label %if.else316.cleanup_crit_edge, label %if.then319

if.else316.cleanup_crit_edge:                     ; preds = %if.else316
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then319:                                       ; preds = %if.else316
  call void @__sanitizer_cov_trace_pc() #7
  %call320 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -417, i8 noundef zeroext -32, i8 noundef zeroext -128) #5
  %call321 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -653, i8 noundef zeroext 7, i8 noundef zeroext 5) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then319, %if.else316.cleanup_crit_edge, %if.then313, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %card_exist.1, %if.else316.cleanup_crit_edge ], [ %card_exist.1, %if.then319 ], [ %card_exist.1, %if.then313 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rtl8411_conv_clk_and_div_n(i32 noundef %input, i32 noundef %dir) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %cmp = icmp eq i32 %dir, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %mul = shl i32 %input, 2
  %div = sdiv i32 %mul, 5
  %sub = add nsw i32 %div, -2
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = mul i32 %input, 5
  %mul1 = add i32 %0, 10
  %div2 = sdiv i32 %mul1, 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %output.0 = phi i32 [ %sub, %if.then ], [ %div2, %if.else ]
  ret i32 %output.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8411_fetch_vendor_settings(ptr nocapture noundef %pcr) #0 align 64 {
entry:
  %reg1 = alloca i32, align 4
  %reg3 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg1) #5
  %2 = ptrtoint ptr %reg1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %reg1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg3) #5
  %3 = ptrtoint ptr %reg3 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %reg3, align 1
  %call = call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef 1828, ptr noundef nonnull %reg1) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8411_fetch_vendor_settings.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8411_fetch_vendor_settings, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !57

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcr, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %6 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg1, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl8411_fetch_vendor_settings.__UNIQUE_ID_ddebug236, ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef 1828, i32 noundef %7) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg1, align 4
  %and = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end7, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %shr = lshr i32 %9, 28
  %10 = trunc i32 %shr to i8
  %conv = and i8 %10, 3
  %aspm_en = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 36
  %11 = ptrtoint ptr %aspm_en to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %aspm_en, align 4
  %shr9 = lshr i32 %9, 26
  %and10 = and i32 %shr9, 3
  %arrayidx.i = getelementptr [4 x i8], ptr @__const.map_sd_drive.sd_drive, i32 0, i32 %and10
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 1
  %sd30_drive_sel_1v8 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 33
  %14 = ptrtoint ptr %sd30_drive_sel_1v8 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %sd30_drive_sel_1v8, align 1
  %card_drive_sel = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 35
  %15 = ptrtoint ptr %card_drive_sel to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %card_drive_sel, align 1
  %17 = and i8 %16, 63
  %18 = lshr i32 %9, 19
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 64
  %conv19 = or i8 %17, %20
  store i8 %conv19, ptr %card_drive_sel, align 1
  %call20 = call i32 @pci_read_config_byte(ptr noundef %1, i32 noundef 1863, ptr noundef nonnull %reg3) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8411_fetch_vendor_settings.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8411_fetch_vendor_settings, %if.then33)) #5
          to label %do.end39 [label %if.then33], !srcloc !57

if.then33:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pcr, align 4
  %dev35 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %23 = ptrtoint ptr %reg3 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %reg3, align 1
  %conv36 = zext i8 %24 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl8411_fetch_vendor_settings.__UNIQUE_ID_ddebug237, ptr noundef %dev35, ptr noundef nonnull @.str.5, i32 noundef 1863, i32 noundef %conv36) #5
  br label %do.end39

do.end39:                                         ; preds = %if.then33, %if.end7
  %25 = ptrtoint ptr %reg3 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %reg3, align 1
  %27 = lshr i8 %26, 5
  %sd30_drive_sel_3v3 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 34
  %28 = ptrtoint ptr %sd30_drive_sel_3v3 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %sd30_drive_sel_3v3, align 2
  br label %cleanup

cleanup:                                          ; preds = %do.end39, %do.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg3) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8411_force_power_down(ptr noundef %pcr, i8 noundef zeroext %pm_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -1024, i8 noundef zeroext 7, i8 noundef zeroext 7) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_pci_add_cmd(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pci_send_cmd(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pci_write_register(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8411b_extra_init_hw(ptr noundef %pcr) #0 align 64 {
entry:
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ci = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 11
  %0 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ci, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #5
  %1 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %val.i, align 1
  %call.i = call i32 @rtsx_pci_read_register(ptr noundef %pcr, i16 noundef zeroext -687, ptr noundef nonnull %val.i) #5
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %val.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #5
  %4 = and i8 %3, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -670, i8 noundef zeroext -1, i8 noundef zeroext -11) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sd30_drive_sel_3v3 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 34
  %5 = ptrtoint ptr %sd30_drive_sel_3v3 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sd30_drive_sel_3v3, align 2
  call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -674, i8 noundef zeroext -1, i8 noundef zeroext %6) #5
  call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -653, i8 noundef zeroext 71, i8 noundef zeroext 0) #5
  call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -423, i8 noundef zeroext 6, i8 noundef zeroext 0) #5
  %call1 = call i32 @rtsx_pci_send_cmd(ptr noundef %pcr, i32 noundef 100) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8411b_fetch_vendor_settings(ptr nocapture noundef %pcr) #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #5
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %reg, align 4
  %call = call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef 1828, ptr noundef nonnull %reg) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8411b_fetch_vendor_settings.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8411b_fetch_vendor_settings, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !57

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcr, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl8411b_fetch_vendor_settings.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef 1828, i32 noundef %6) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg, align 4
  %and = and i32 %8, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end7, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %shr = lshr i32 %8, 28
  %9 = trunc i32 %shr to i8
  %conv = and i8 %9, 3
  %aspm_en = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 36
  %10 = ptrtoint ptr %aspm_en to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %aspm_en, align 4
  %shr9 = lshr i32 %8, 26
  %and10 = and i32 %shr9, 3
  %arrayidx.i = getelementptr [4 x i8], ptr @__const.map_sd_drive.sd_drive, i32 0, i32 %and10
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i, align 1
  %sd30_drive_sel_1v8 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 33
  %13 = ptrtoint ptr %sd30_drive_sel_1v8 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %sd30_drive_sel_1v8, align 1
  %and12 = and i32 %8, 3
  %arrayidx.i19 = getelementptr [4 x i8], ptr @__const.map_sd_drive.sd_drive, i32 0, i32 %and12
  %14 = ptrtoint ptr %arrayidx.i19 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i19, align 1
  %sd30_drive_sel_3v3 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 34
  %16 = ptrtoint ptr %sd30_drive_sel_3v3 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %sd30_drive_sel_3v3, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8402_switch_output_voltage(ptr noundef %pcr, i8 noundef zeroext %voltage) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %voltage to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.7)
  switch i8 %voltage, label %entry.rtl8411_do_switch_output_voltage.exit_crit_edge [
    i8 0, label %if.then.i
    i8 1, label %if.then12.i
  ]

entry.rtl8411_do_switch_output_voltage.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl8411_do_switch_output_voltage.exit

if.then.i:                                        ; preds = %entry
  %sd30_drive_sel_3v3.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 34
  %1 = ptrtoint ptr %sd30_drive_sel_3v3.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %sd30_drive_sel_3v3.i, align 2
  %call.i = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -674, i8 noundef zeroext 7, i8 noundef zeroext %2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  br i1 %cmp3.i, label %if.then.i.rtl8411_do_switch_output_voltage.exit_crit_edge, label %if.then.i.if.end23.i_crit_edge

if.then.i.if.end23.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23.i

if.then.i.rtl8411_do_switch_output_voltage.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl8411_do_switch_output_voltage.exit

if.then12.i:                                      ; preds = %entry
  %sd30_drive_sel_1v8.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 33
  %3 = ptrtoint ptr %sd30_drive_sel_1v8.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %sd30_drive_sel_1v8.i, align 1
  %call13.i = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -674, i8 noundef zeroext 7, i8 noundef zeroext %4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp slt i32 %call13.i, 0
  br i1 %cmp14.i, label %if.then12.i.rtl8411_do_switch_output_voltage.exit_crit_edge, label %if.then12.i.if.end23.i_crit_edge

if.then12.i.if.end23.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23.i

if.then12.i.rtl8411_do_switch_output_voltage.exit_crit_edge: ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl8411_do_switch_output_voltage.exit

if.end23.i:                                       ; preds = %if.then12.i.if.end23.i_crit_edge, %if.then.i.if.end23.i_crit_edge
  %val.0.i = phi i8 [ -28, %if.then.i.if.end23.i_crit_edge ], [ 96, %if.then12.i.if.end23.i_crit_edge ]
  %call24.i = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -994, i8 noundef zeroext -28, i8 noundef zeroext %val.0.i) #5
  br label %rtl8411_do_switch_output_voltage.exit

rtl8411_do_switch_output_voltage.exit:            ; preds = %if.end23.i, %if.then12.i.rtl8411_do_switch_output_voltage.exit_crit_edge, %if.then.i.rtl8411_do_switch_output_voltage.exit_crit_edge, %entry.rtl8411_do_switch_output_voltage.exit_crit_edge
  %retval.0.i = phi i32 [ %call24.i, %if.end23.i ], [ %call.i, %if.then.i.rtl8411_do_switch_output_voltage.exit_crit_edge ], [ %call13.i, %if.then12.i.rtl8411_do_switch_output_voltage.exit_crit_edge ], [ -22, %entry.rtl8411_do_switch_output_voltage.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !18, !20, !22, !24, !26, !27, !29, !31, !33, !35, !37, !39, !41, !43}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @rtl8411_pcr_ops, !1, !"rtl8411_pcr_ops", i1 false, i1 false}
!1 = !{!"../drivers/misc/cardreader/rtl8411.c", i32 284, i32 29}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/misc/cardreader/rtl8411.c", i32 253, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @rtl8411_cd_deglitch.__UNIQUE_ID_ddebug239, !3, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/misc/cardreader/rtl8411.c", i32 45, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @rtl8411_fetch_vendor_settings.__UNIQUE_ID_ddebug236, !9, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!12 = !{ptr @rtl8411_fetch_vendor_settings.__UNIQUE_ID_ddebug237, !13, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!13 = !{!"../drivers/misc/cardreader/rtl8411.c", i32 57, i32 2}
!14 = !{ptr @rtl8411_sd_pull_ctl_enable_tbl, !15, !"rtl8411_sd_pull_ctl_enable_tbl", i1 false, i1 false}
!15 = !{!"../drivers/misc/cardreader/rtl8411.c", i32 339, i32 18}
!16 = !{ptr @rtl8411_sd_pull_ctl_disable_tbl, !17, !"rtl8411_sd_pull_ctl_disable_tbl", i1 false, i1 false}
!17 = !{!"../drivers/misc/cardreader/rtl8411.c", i32 356, i32 18}
!18 = !{ptr @rtl8411_ms_pull_ctl_enable_tbl, !19, !"rtl8411_ms_pull_ctl_enable_tbl", i1 false, i1 false}
!19 = !{!"../drivers/misc/cardreader/rtl8411.c", i32 370, i32 18}
!20 = !{ptr @rtl8411_ms_pull_ctl_disable_tbl, !21, !"rtl8411_ms_pull_ctl_disable_tbl", i1 false, i1 false}
!21 = !{!"../drivers/misc/cardreader/rtl8411.c", i32 384, i32 18}
!22 = !{ptr @rtl8411b_pcr_ops, !23, !"rtl8411b_pcr_ops", i1 false, i1 false}
!23 = !{!"../drivers/misc/cardreader/rtl8411.c", i32 316, i32 29}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/misc/cardreader/rtl8411.c", i32 67, i32 2}
!26 = !{ptr @rtl8411b_fetch_vendor_settings.__UNIQUE_ID_ddebug238, !25, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!27 = !{ptr @rtl8411b_qfn48_sd_pull_ctl_enable_tbl, !28, !"rtl8411b_qfn48_sd_pull_ctl_enable_tbl", i1 false, i1 false}
!28 = !{!"../drivers/misc/cardreader/rtl8411.c", i32 404, i32 18}
!29 = !{ptr @rtl8411b_qfn48_sd_pull_ctl_disable_tbl, !30, !"rtl8411b_qfn48_sd_pull_ctl_disable_tbl", i1 false, i1 false}
!30 = !{!"../drivers/misc/cardreader/rtl8411.c", i32 421, i32 18}
!31 = !{ptr @rtl8411b_qfn48_ms_pull_ctl_enable_tbl, !32, !"rtl8411b_qfn48_ms_pull_ctl_enable_tbl", i1 false, i1 false}
!32 = !{!"../drivers/misc/cardreader/rtl8411.c", i32 438, i32 18}
!33 = !{ptr @rtl8411b_qfn48_ms_pull_ctl_disable_tbl, !34, !"rtl8411b_qfn48_ms_pull_ctl_disable_tbl", i1 false, i1 false}
!34 = !{!"../drivers/misc/cardreader/rtl8411.c", i32 455, i32 18}
!35 = !{ptr @rtl8411b_qfn64_sd_pull_ctl_enable_tbl, !36, !"rtl8411b_qfn64_sd_pull_ctl_enable_tbl", i1 false, i1 false}
!36 = !{!"../drivers/misc/cardreader/rtl8411.c", i32 394, i32 18}
!37 = !{ptr @rtl8411b_qfn64_sd_pull_ctl_disable_tbl, !38, !"rtl8411b_qfn64_sd_pull_ctl_disable_tbl", i1 false, i1 false}
!38 = !{!"../drivers/misc/cardreader/rtl8411.c", i32 411, i32 18}
!39 = !{ptr @rtl8411b_qfn64_ms_pull_ctl_enable_tbl, !40, !"rtl8411b_qfn64_ms_pull_ctl_enable_tbl", i1 false, i1 false}
!40 = !{!"../drivers/misc/cardreader/rtl8411.c", i32 428, i32 18}
!41 = !{ptr @rtl8411b_qfn64_ms_pull_ctl_disable_tbl, !42, !"rtl8411b_qfn64_ms_pull_ctl_disable_tbl", i1 false, i1 false}
!42 = !{!"../drivers/misc/cardreader/rtl8411.c", i32 445, i32 18}
!43 = !{ptr @rtl8402_pcr_ops, !44, !"rtl8402_pcr_ops", i1 false, i1 false}
!44 = !{!"../drivers/misc/cardreader/rtl8411.c", i32 300, i32 29}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{!"auto-init"}
!55 = !{i64 5040728}
!56 = !{i64 2152581077}
!57 = !{i64 2148965274, i64 2148965279, i64 2148965292, i64 2148965336, i64 2148965370, i64 2148965391}
