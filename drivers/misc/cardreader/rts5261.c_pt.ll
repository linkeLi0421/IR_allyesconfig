; ModuleID = '/llk/IR_all_yes/drivers/misc/cardreader/rts5261.c_pt.bc'
source_filename = "../drivers/misc/cardreader/rts5261.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pcr_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.rtsx_pcr = type { ptr, i32, %struct.rtsx_cr_option, %struct.rtsx_hw_param, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, i32, i8, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.spinlock, %struct.mutex, ptr, ptr, i32, i8, i8, i8, i32, i8, i8, i8, i8, i8, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i16, i32, ptr, i8, i8, i8, i8 }
%struct.rtsx_cr_option = type { i32, i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i8 }
%struct.rtsx_hw_param = type { i32, i8 }

@rts5261_pci_switch_clock.depth = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\00\02\03\04\05", [27 x i8] zeroinitializer }, align 32
@rts5261_pci_switch_clock.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -89, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rtsx_pci\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rts5261_pci_switch_clock\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/misc/cardreader/rts5261.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Switch card clock to %dMHz\0A\00", [36 x i8] zeroinitializer }, align 32
@rts5261_pci_switch_clock.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 -88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Internal SSC clock: %dMHz (cur_clock = %d)\0A\00", [52 x i8] zeroinitializer }, align 32
@rts5261_pci_switch_clock.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 -80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"n = %d, div = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@rts5261_pci_switch_clock.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 -74, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ssc_depth = %d\0A\00", [16 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rts5261_pcr_ops = internal constant { %struct.pcr_ops, [32 x i8] } { %struct.pcr_ops { ptr null, ptr null, ptr @rts5261_extra_init_hw, ptr null, ptr @rts5261_turn_on_led, ptr @rts5261_turn_off_led, ptr @rts5261_enable_auto_blink, ptr @rts5261_disable_auto_blink, ptr @rts5261_card_power_on, ptr @rts5261_card_power_off, ptr @rts5261_switch_output_voltage, ptr null, ptr null, ptr @rtsx5261_fetch_vendor_settings, ptr @rts5261_force_power_down, ptr @rts5261_stop_cmd, ptr @rts5261_set_aspm, ptr @rts5261_set_l1off_cfg_sub_d0, ptr @rts5261_enable_ocp, ptr @rts5261_disable_ocp, ptr @rts5261_init_ocp, ptr @rts5261_process_ocp, ptr null, ptr @rts5261_clear_ocpstat }, [32 x i8] zeroinitializer }, align 32
@rts5261_sd_pull_ctl_enable_tbl = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 -43974486, i32 -43908887, i32 0], [20 x i8] zeroinitializer }, align 32
@rts5261_sd_pull_ctl_disable_tbl = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 -43974571, i32 -43908907, i32 0], [20 x i8] zeroinitializer }, align 32
@rts5261_init_from_hw.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 100, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rts5261_init_from_hw\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Load efuse valid: 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@rts5261_init_from_hw.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.9, i8 0, i8 101, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"read 0x814 DW fail\0A\00", [44 x i8] zeroinitializer }, align 32
@rts5261_init_from_hw.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.10, i8 0, i8 101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DW from 0x814: 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@rts5261_init_from_hw.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.11, i8 0, i8 102, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"0x816: %d\0A\00", [21 x i8] zeroinitializer }, align 32
@rts5261_init_from_hw.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.12, i8 0, i8 103, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Disable efuse por!\0A\00", [44 x i8] zeroinitializer }, align 32
@rts5261_init_from_hw.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.13, i8 0, i8 105, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"write config fail\0A\00", [45 x i8] zeroinitializer }, align 32
@__const.rts5261_fill_driving.driving_3v3 = private unnamed_addr constant [4 x [3 x i8]] [[3 x i8] c"\96\96\96", [3 x i8] c"\96\96\96", [3 x i8] c"\7F\7F\7F", [3 x i8] c"\13\13\13"], align 1
@__const.rts5261_fill_driving.driving_1v8 = private unnamed_addr constant [4 x [3 x i8]] [[3 x i8] c"\B3\B3\B3", [3 x i8] c":::", [3 x i8] c"\E6\E6\E6", [3 x i8] c"\99\99\99"], align 1
@rtsx5261_fetch_vendor_settings.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 16, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rtsx5261_fetch_vendor_settings\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Cfg 0x%x: 0x%x\0A\00", [16 x i8] zeroinitializer }, align 32
@rtsx5261_fetch_vendor_settings.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.16, i8 0, i8 18, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"skip fetch vendor setting\0A\00", [37 x i8] zeroinitializer }, align 32
@rtsx5261_fetch_vendor_settings.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 21, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 7, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.18 = private unnamed_addr constant [6 x i8] c"depth\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 643, i32 18 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 668, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 673, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 704, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 730, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [16 x i8] c"rts5261_pcr_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 611, i32 29 }
@___asan_gen_.45 = private unnamed_addr constant [31 x i8] c"rts5261_sd_pull_ctl_enable_tbl\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 141, i32 18 }
@___asan_gen_.48 = private unnamed_addr constant [32 x i8] c"rts5261_sd_pull_ctl_disable_tbl\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 154, i32 18 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 401, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 406, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 407, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 410, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 414, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 420, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 67, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.79 = private constant [37 x i8] c"../drivers/misc/cardreader/rts5261.c\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 72, i32 3 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @rts5261_pci_switch_clock.depth, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @rts5261_pcr_ops, ptr @rts5261_sd_pull_ctl_enable_tbl, ptr @rts5261_sd_pull_ctl_disable_tbl, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rts5261_pci_switch_clock.depth to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rts5261_pcr_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rts5261_sd_pull_ctl_enable_tbl to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rts5261_sd_pull_ctl_disable_tbl to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rts5261_pci_switch_clock(ptr noundef %pcr, i32 noundef %card_clock, i8 noundef zeroext %ssc_depth, i1 noundef zeroext %initial_mode, i1 noundef zeroext %double_clk, i1 noundef zeroext %vpclk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %initial_mode, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcr, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21089, i16 %3)
  %cmp = icmp eq i16 %3, 21089
  br i1 %cmp, label %land.lhs.true, label %if.then.if.else_crit_edge

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true:                                    ; preds = %if.then
  %ic_version = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 32
  %4 = ptrtoint ptr %ic_version to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ic_version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp5 = icmp ugt i8 %5, 2
  br i1 %cmp5, label %land.lhs.true.if.end9_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then.if.else_crit_edge
  br label %if.end9

if.end9:                                          ; preds = %if.else, %land.lhs.true.if.end9_crit_edge, %entry.if.end9_crit_edge
  %clk_divider.0 = phi i8 [ -128, %if.else ], [ -64, %land.lhs.true.if.end9_crit_edge ], [ 0, %entry.if.end9_crit_edge ]
  %card_clock.addr.0 = phi i32 [ 30000000, %if.else ], [ 60000000, %land.lhs.true.if.end9_crit_edge ], [ %card_clock, %entry.if.end9_crit_edge ]
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -608, i8 noundef zeroext -64, i8 noundef zeroext %clk_divider.0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp10 = icmp slt i32 %call, 0
  br i1 %cmp10, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %div14 = udiv i32 %card_clock.addr.0, 1000000
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rts5261_pci_switch_clock.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rts5261_pci_switch_clock, %if.then20)) #4
          to label %do.end [label %if.then20], !srcloc !60

if.then20:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcr, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rts5261_pci_switch_clock.__UNIQUE_ID_ddebug245, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %div14) #4
  br label %do.end

do.end:                                           ; preds = %if.then20, %if.end13
  %not.initial_mode = xor i1 %initial_mode, true
  %narrow = and i1 %not.initial_mode, %double_clk
  %spec.select = zext i1 %narrow to i32
  %clk.0 = shl nuw nsw i32 %div14, %spec.select
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rts5261_pci_switch_clock.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rts5261_pci_switch_clock, %if.then41)) #4
          to label %do.end46 [label %if.then41], !srcloc !60

if.then41:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcr, align 4
  %dev43 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %cur_clock = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 27
  %10 = ptrtoint ptr %cur_clock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cur_clock, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rts5261_pci_switch_clock.__UNIQUE_ID_ddebug246, ptr noundef %dev43, ptr noundef nonnull @.str.4, i32 noundef %clk.0, i32 noundef %11) #4
  br label %do.end46

do.end46:                                         ; preds = %if.then41, %do.end
  %cur_clock47 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 27
  %12 = ptrtoint ptr %cur_clock47 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cur_clock47, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %clk.0, i32 %13)
  %cmp48 = icmp eq i32 %clk.0, %13
  br i1 %cmp48, label %do.end46.cleanup_crit_edge, label %if.end51

do.end46.cleanup_crit_edge:                       ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end51:                                         ; preds = %do.end46
  %ops = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 46
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  %conv_clk_and_div_n = getelementptr inbounds %struct.pcr_ops, ptr %15, i32 0, i32 12
  %16 = ptrtoint ptr %conv_clk_and_div_n to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %conv_clk_and_div_n, align 4
  %tobool52.not = icmp eq ptr %17, null
  br i1 %tobool52.not, label %if.else58, label %if.then53

if.then53:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #6
  %call56 = tail call i32 %17(i32 noundef %clk.0, i32 noundef 0) #4
  %conv57 = trunc i32 %call56 to i16
  br label %if.end60

if.else58:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #6
  %18 = trunc i32 %clk.0 to i16
  %conv59 = add nsw i16 %18, -4
  br label %if.end60

if.end60:                                         ; preds = %if.else58, %if.then53
  %n.0 = phi i16 [ %conv57, %if.then53 ], [ %conv59, %if.else58 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %clk.0)
  %cmp61 = icmp ult i32 %clk.0, 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 396, i16 %n.0)
  %cmp64 = icmp ugt i16 %n.0, 396
  %or.cond = select i1 %cmp61, i1 true, i1 %cmp64
  br i1 %or.cond, label %if.end60.cleanup_crit_edge, label %if.end67

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end67:                                         ; preds = %if.end60
  %div68304.rhs.trunc = trunc i32 %clk.0 to i16
  %div68304305 = udiv i16 125, %div68304.rhs.trunc
  %19 = trunc i16 %div68304305 to i8
  %20 = tail call i8 @llvm.umin.i8(i8 %19, i8 12)
  %21 = add nuw nsw i8 %20, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 76, i16 %n.0)
  %cmp76308 = icmp ult i16 %n.0, 76
  br i1 %cmp76308, label %while.body, label %if.end67.while.end_crit_edge

if.end67.while.end_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body:                                       ; preds = %if.end67
  %22 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops, align 4
  %conv_clk_and_div_n82 = getelementptr inbounds %struct.pcr_ops, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %conv_clk_and_div_n82 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %conv_clk_and_div_n82, align 4
  %tobool83.not = icmp eq ptr %25, null
  br i1 %tobool83.not, label %if.else94, label %if.then84

if.then84:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %conv75311 = zext i16 %n.0 to i32
  %call88 = tail call i32 %25(i32 noundef %conv75311, i32 noundef 1) #4
  %mul89 = shl i32 %call88, 1
  %26 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops, align 4
  %conv_clk_and_div_n91 = getelementptr inbounds %struct.pcr_ops, ptr %27, i32 0, i32 12
  %28 = ptrtoint ptr %conv_clk_and_div_n91 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %conv_clk_and_div_n91, align 4
  %call92 = tail call i32 %29(i32 noundef %mul89, i32 noundef 0) #4
  %conv93 = trunc i32 %call92 to i16
  br label %if.end100

if.else94:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %add96 = shl nuw nsw i16 %n.0, 1
  %sub98 = add nuw nsw i16 %add96, 4
  br label %if.end100

if.end100:                                        ; preds = %if.else94, %if.then84
  %n.2 = phi i16 [ %conv93, %if.then84 ], [ %sub98, %if.else94 ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 76, i16 %n.2)
  %cmp76 = icmp ult i16 %n.2, 76
  br i1 %cmp76, label %while.body.1, label %if.end100.while.end_crit_edge

if.end100.while.end_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.1:                                     ; preds = %if.end100
  %30 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops, align 4
  %conv_clk_and_div_n82.1 = getelementptr inbounds %struct.pcr_ops, ptr %31, i32 0, i32 12
  %32 = ptrtoint ptr %conv_clk_and_div_n82.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %conv_clk_and_div_n82.1, align 4
  %tobool83.not.1 = icmp eq ptr %33, null
  br i1 %tobool83.not.1, label %if.else94.1, label %if.then84.1

if.then84.1:                                      ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #6
  %conv75311.1 = zext i16 %n.2 to i32
  %call88.1 = tail call i32 %33(i32 noundef %conv75311.1, i32 noundef 1) #4
  %mul89.1 = shl i32 %call88.1, 1
  %34 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops, align 4
  %conv_clk_and_div_n91.1 = getelementptr inbounds %struct.pcr_ops, ptr %35, i32 0, i32 12
  %36 = ptrtoint ptr %conv_clk_and_div_n91.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %conv_clk_and_div_n91.1, align 4
  %call92.1 = tail call i32 %37(i32 noundef %mul89.1, i32 noundef 0) #4
  %conv93.1 = trunc i32 %call92.1 to i16
  br label %if.end100.1

if.else94.1:                                      ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #6
  %add96.1 = shl nuw nsw i16 %n.2, 1
  %sub98.1 = add nuw nsw i16 %add96.1, 4
  br label %if.end100.1

if.end100.1:                                      ; preds = %if.else94.1, %if.then84.1
  %n.2.1 = phi i16 [ %conv93.1, %if.then84.1 ], [ %sub98.1, %if.else94.1 ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 76, i16 %n.2.1)
  %cmp76.1 = icmp ult i16 %n.2.1, 76
  br i1 %cmp76.1, label %while.body.2, label %if.end100.1.while.end_crit_edge

if.end100.1.while.end_crit_edge:                  ; preds = %if.end100.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.2:                                     ; preds = %if.end100.1
  %38 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops, align 4
  %conv_clk_and_div_n82.2 = getelementptr inbounds %struct.pcr_ops, ptr %39, i32 0, i32 12
  %40 = ptrtoint ptr %conv_clk_and_div_n82.2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %conv_clk_and_div_n82.2, align 4
  %tobool83.not.2 = icmp eq ptr %41, null
  br i1 %tobool83.not.2, label %if.else94.2, label %if.then84.2

if.then84.2:                                      ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #6
  %conv75311.2 = zext i16 %n.2.1 to i32
  %call88.2 = tail call i32 %41(i32 noundef %conv75311.2, i32 noundef 1) #4
  %mul89.2 = shl i32 %call88.2, 1
  %42 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops, align 4
  %conv_clk_and_div_n91.2 = getelementptr inbounds %struct.pcr_ops, ptr %43, i32 0, i32 12
  %44 = ptrtoint ptr %conv_clk_and_div_n91.2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %conv_clk_and_div_n91.2, align 4
  %call92.2 = tail call i32 %45(i32 noundef %mul89.2, i32 noundef 0) #4
  %conv93.2 = trunc i32 %call92.2 to i16
  br label %while.end

if.else94.2:                                      ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #6
  %add96.2 = shl nuw nsw i16 %n.2.1, 1
  %sub98.2 = add nuw nsw i16 %add96.2, 4
  br label %while.end

while.end:                                        ; preds = %if.else94.2, %if.then84.2, %if.end100.1.while.end_crit_edge, %if.end100.while.end_crit_edge, %if.end67.while.end_crit_edge
  %div.0.lcssa = phi i8 [ 1, %if.end67.while.end_crit_edge ], [ 2, %if.end100.while.end_crit_edge ], [ 3, %if.end100.1.while.end_crit_edge ], [ 4, %if.else94.2 ], [ 4, %if.then84.2 ]
  %n.1.lcssa = phi i16 [ %n.0, %if.end67.while.end_crit_edge ], [ %n.2, %if.end100.while.end_crit_edge ], [ %n.2.1, %if.end100.1.while.end_crit_edge ], [ %conv93.2, %if.then84.2 ], [ %sub98.2, %if.else94.2 ]
  %div102286 = lshr i16 %n.1.lcssa, 1
  %sub103 = add nsw i16 %div102286, -1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rts5261_pci_switch_clock.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rts5261_pci_switch_clock, %if.then117)) #4
          to label %do.end124 [label %if.then117], !srcloc !60

if.then117:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  %46 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pcr, align 4
  %dev119 = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  %conv120 = zext i16 %sub103 to i32
  %conv121 = zext i8 %div.0.lcssa to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rts5261_pci_switch_clock.__UNIQUE_ID_ddebug247, ptr noundef %dev119, ptr noundef nonnull @.str.5, i32 noundef %conv120, i32 noundef %conv121) #4
  br label %do.end124

do.end124:                                        ; preds = %if.then117, %while.end
  %idxprom = zext i8 %ssc_depth to i32
  %arrayidx = getelementptr [5 x i8], ptr @rts5261_pci_switch_clock.depth, i32 0, i32 %idxprom
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ssc_depth)
  %cmp.i = icmp ne i8 %ssc_depth, 0
  %narrow306 = and i1 %cmp.i, %double_clk
  %cond.i = sext i1 %narrow306 to i8
  %ssc_depth.addr.0 = add i8 %49, %cond.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ssc_depth.addr.0)
  %tobool129.not = icmp eq i8 %ssc_depth.addr.0, 0
  br i1 %tobool129.not, label %do.end124.do.body177_crit_edge, label %if.then130

do.end124.do.body177_crit_edge:                   ; preds = %do.end124
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body177

if.then130:                                       ; preds = %do.end124
  %trunc = trunc i8 %div.0.lcssa to i7
  %50 = zext i7 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values)
  switch i7 %trunc, label %if.then130.do.body177_crit_edge [
    i7 2, label %if.then134
    i7 3, label %if.then148
    i7 4, label %if.then162
  ]

if.then130.do.body177_crit_edge:                  ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body177

if.then134:                                       ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %ssc_depth.addr.0)
  %cmp136 = icmp ugt i8 %ssc_depth.addr.0, 1
  %sub140 = add i8 %ssc_depth.addr.0, -1
  %spec.select288 = select i1 %cmp136, i8 %sub140, i8 1
  br label %do.body177

if.then148:                                       ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %ssc_depth.addr.0)
  %cmp150 = icmp ugt i8 %ssc_depth.addr.0, 2
  %sub154 = add i8 %ssc_depth.addr.0, -2
  %spec.select289 = select i1 %cmp150, i8 %sub154, i8 1
  br label %do.body177

if.then162:                                       ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %ssc_depth.addr.0)
  %cmp164 = icmp ugt i8 %ssc_depth.addr.0, 3
  %sub168 = add i8 %ssc_depth.addr.0, -3
  %spec.select290 = select i1 %cmp164, i8 %sub168, i8 1
  br label %do.body177

do.body177:                                       ; preds = %if.then162, %if.then148, %if.then134, %if.then130.do.body177_crit_edge, %do.end124.do.body177_crit_edge
  %ssc_depth.addr.1 = phi i8 [ %ssc_depth.addr.0, %if.then130.do.body177_crit_edge ], [ 0, %do.end124.do.body177_crit_edge ], [ %spec.select288, %if.then134 ], [ %spec.select289, %if.then148 ], [ %spec.select290, %if.then162 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rts5261_pci_switch_clock.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rts5261_pci_switch_clock, %if.then189)) #4
          to label %do.end195 [label %if.then189], !srcloc !60

if.then189:                                       ; preds = %do.body177
  call void @__sanitizer_cov_trace_pc() #6
  %51 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pcr, align 4
  %dev191 = getelementptr inbounds %struct.pci_dev, ptr %52, i32 0, i32 44
  %conv192 = zext i8 %ssc_depth.addr.1 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rts5261_pci_switch_clock.__UNIQUE_ID_ddebug248, ptr noundef %dev191, ptr noundef nonnull @.str.6, i32 noundef %conv192) #4
  br label %do.end195

do.end195:                                        ; preds = %if.then189, %do.body177
  %ci = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 11
  %53 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %ci, align 4
  tail call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -1022, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %shl = shl nuw nsw i8 %div.0.lcssa, 4
  %or = or i8 %shl, %21
  tail call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -1021, i8 noundef zeroext -1, i8 noundef zeroext %or) #4
  tail call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -1007, i8 noundef zeroext -128, i8 noundef zeroext 0) #4
  tail call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -1006, i8 noundef zeroext 7, i8 noundef zeroext %ssc_depth.addr.1) #4
  %conv199 = trunc i16 %sub103 to i8
  tail call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -1009, i8 noundef zeroext -1, i8 noundef zeroext %conv199) #4
  tail call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -1007, i8 noundef zeroext -128, i8 noundef zeroext -128) #4
  br i1 %vpclk, label %if.then201, label %do.end195.if.end202_crit_edge

do.end195.if.end202_crit_edge:                    ; preds = %do.end195
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end202

if.then201:                                       ; preds = %do.end195
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -982, i8 noundef zeroext 64, i8 noundef zeroext 0) #4
  tail call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -981, i8 noundef zeroext 64, i8 noundef zeroext 0) #4
  tail call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -982, i8 noundef zeroext 64, i8 noundef zeroext 64) #4
  tail call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -981, i8 noundef zeroext 64, i8 noundef zeroext 64) #4
  br label %if.end202

if.end202:                                        ; preds = %if.then201, %do.end195.if.end202_crit_edge
  %call203 = tail call i32 @rtsx_pci_send_cmd(ptr noundef %pcr, i32 noundef 2000) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call203)
  %cmp204 = icmp slt i32 %call203, 0
  br i1 %cmp204, label %if.end202.cleanup_crit_edge, label %if.end207

if.end202.cleanup_crit_edge:                      ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end207:                                        ; preds = %if.end202
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 27917240) #4
  %call208 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -1022, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call208)
  %cmp209 = icmp slt i32 %call208, 0
  br i1 %cmp209, label %if.end207.cleanup_crit_edge, label %if.end212

if.end207.cleanup_crit_edge:                      ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end212:                                        ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #6
  %55 = ptrtoint ptr %cur_clock47 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %clk.0, ptr %cur_clock47, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end212, %if.end207.cleanup_crit_edge, %if.end202.cleanup_crit_edge, %if.end60.cleanup_crit_edge, %do.end46.cleanup_crit_edge, %if.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end212 ], [ %call, %if.end9.cleanup_crit_edge ], [ 0, %do.end46.cleanup_crit_edge ], [ -22, %if.end60.cleanup_crit_edge ], [ %call203, %if.end202.cleanup_crit_edge ], [ %call208, %if.end207.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pci_write_register(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_pci_add_cmd(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pci_send_cmd(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rts5261_init_params(ptr noundef %pcr) local_unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i8, align 1
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #4
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !61
  %extra_caps = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 31
  %1 = ptrtoint ptr %extra_caps to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 3, ptr %extra_caps, align 4
  %call = call i32 @rtsx_pci_read_register(ptr noundef %pcr, i16 noundef zeroext -170, ptr noundef nonnull %val) #4
  %2 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %tobool.not = icmp sgt i8 %3, -1
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %extra_caps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %extra_caps, align 4
  %or = or i32 %5, 256
  store i32 %or, ptr %extra_caps, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %hw_param2 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 3
  %option1 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2
  %num_slots = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 49
  %6 = ptrtoint ptr %num_slots to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %num_slots, align 4
  %ops = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 46
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @rts5261_pcr_ops, ptr %ops, align 4
  %flags = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 39
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %flags, align 4
  %card_drive_sel = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 35
  %9 = ptrtoint ptr %card_drive_sel to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 65, ptr %card_drive_sel, align 1
  %sd30_drive_sel_1v8 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 33
  %10 = ptrtoint ptr %sd30_drive_sel_1v8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %sd30_drive_sel_1v8, align 1
  %sd30_drive_sel_3v3 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 34
  %11 = ptrtoint ptr %sd30_drive_sel_3v3 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %sd30_drive_sel_3v3, align 2
  %aspm_en = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 36
  %12 = ptrtoint ptr %aspm_en to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %aspm_en, align 4
  %aspm_mode = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 37
  %13 = ptrtoint ptr %aspm_mode to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %aspm_mode, align 4
  %tx_initial_phase = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 40
  %14 = ptrtoint ptr %tx_initial_phase to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 727835, ptr %tx_initial_phase, align 4
  %rx_initial_phase = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 41
  %15 = ptrtoint ptr %rx_initial_phase to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 329240, ptr %rx_initial_phase, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #4
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %val.i, align 1, !annotation !61
  %call.i = call i32 @rtsx_pci_read_register(ptr noundef %pcr, i16 noundef zeroext -368, ptr noundef nonnull %val.i) #4
  %17 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %val.i, align 1
  %19 = and i8 %18, 15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #4
  %ic_version = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 32
  %20 = ptrtoint ptr %ic_version to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %ic_version, align 4
  %sd_pull_ctl_enable_tbl = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 42
  %21 = ptrtoint ptr %sd_pull_ctl_enable_tbl to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @rts5261_sd_pull_ctl_enable_tbl, ptr %sd_pull_ctl_enable_tbl, align 4
  %sd_pull_ctl_disable_tbl = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 43
  %22 = ptrtoint ptr %sd_pull_ctl_disable_tbl to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @rts5261_sd_pull_ctl_disable_tbl, ptr %sd_pull_ctl_disable_tbl, align 4
  %reg_pm_ctrl3 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 48
  %23 = ptrtoint ptr %reg_pm_ctrl3 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 -130, ptr %reg_pm_ctrl3, align 4
  %24 = ptrtoint ptr %option1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 80, ptr %option1, align 4
  %ltr_en = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 2
  %25 = ptrtoint ptr %ltr_en to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %ltr_en, align 1
  %ltr_active_latency = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 5
  %26 = ptrtoint ptr %ltr_active_latency to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 34876, ptr %ltr_active_latency, align 4
  %ltr_idle_latency = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 6
  %27 = ptrtoint ptr %ltr_idle_latency to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 35116, ptr %ltr_idle_latency, align 4
  %ltr_l1off_latency = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 7
  %28 = ptrtoint ptr %ltr_l1off_latency to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 36867, ptr %ltr_l1off_latency, align 4
  %l1_snooze_delay = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 8
  %29 = ptrtoint ptr %l1_snooze_delay to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %l1_snooze_delay, align 4
  %ltr_l1off_sspwrgate = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 9
  %30 = ptrtoint ptr %ltr_l1off_sspwrgate to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 127, ptr %ltr_l1off_sspwrgate, align 4
  %ltr_l1off_snooze_sspwrgate = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 10
  %31 = ptrtoint ptr %ltr_l1off_snooze_sspwrgate to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 120, ptr %ltr_l1off_snooze_sspwrgate, align 1
  %ocp_en = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 11
  %32 = ptrtoint ptr %ocp_en to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %ocp_en, align 2
  %33 = ptrtoint ptr %hw_param2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hw_param2, align 4
  %or5 = or i32 %34, 4194304
  store i32 %or5, ptr %hw_param2, align 4
  %ocp_glitch = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 3, i32 1
  %35 = ptrtoint ptr %ocp_glitch to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 5, ptr %ocp_glitch, align 4
  %sd_800mA_ocp_thd = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 13
  %36 = ptrtoint ptr %sd_800mA_ocp_thd to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -96, ptr %sd_800mA_ocp_thd, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pci_read_register(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rts5261_extra_init_hw(ptr noundef %pcr) #0 align 64 {
entry:
  %lval.i = alloca i32, align 4
  %val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -132, i8 noundef zeroext -16, i8 noundef zeroext -16) #4
  %0 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lval.i) #4
  %2 = ptrtoint ptr %lval.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %lval.i, align 4, !annotation !61
  %option1.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2
  %call.i = tail call zeroext i16 @pci_find_ext_capability(ptr noundef %1, i32 noundef 30) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i)
  %tobool.not.i = icmp eq i16 %call.i, 0
  br i1 %tobool.not.i, label %entry.rts5261_init_from_cfg.exit_crit_edge, label %if.end.i

entry.rts5261_init_from_cfg.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %rts5261_init_from_cfg.exit

if.end.i:                                         ; preds = %entry
  %conv.i = zext i16 %call.i to i32
  %add.i = add nuw nsw i32 %conv.i, 8
  %call2.i = call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef %add.i, ptr noundef nonnull %lval.i) #4
  %3 = ptrtoint ptr %lval.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %lval.i, align 4
  %5 = ptrtoint ptr %option1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %option1.i, align 4
  %and8.i = and i32 %6, -16
  %and.i = lshr i32 %4, 3
  %and.lobit.i = and i32 %and.i, 1
  %storemerge.i = or i32 %and8.i, %and.lobit.i
  %trunc.i = trunc i32 %4 to i4
  %rev.i = call i4 @llvm.bitreverse.i4(i4 %trunc.i) #4
  %mask.i = and i4 %rev.i, -2
  %storemerge89.i = zext i4 %mask.i to i32
  %storemerge90.i = or i32 %storemerge.i, %storemerge89.i
  %7 = ptrtoint ptr %option1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %storemerge90.i, ptr %option1.i, align 4
  %call43.i = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -425, i8 noundef zeroext -1, i8 noundef zeroext 0) #4
  %ltr_en.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %ltr_en.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ltr_en.i, align 1, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool44.not.i = icmp eq i8 %9, 0
  br i1 %tobool44.not.i, label %if.end.i.if.end55.i_crit_edge, label %if.then45.i

if.end.i.if.end55.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end55.i

if.then45.i:                                      ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #4
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %val.i, align 2, !annotation !61
  %call46.i = call i32 @pcie_capability_read_word(ptr noundef %1, i32 noundef 40, ptr noundef nonnull %val.i) #4
  %11 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %val.i, align 2
  %13 = and i16 %12, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool49.not.i = icmp eq i16 %13, 0
  %ltr_enabled53.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 3
  br i1 %tobool49.not.i, label %if.else52.i, label %if.then50.i

if.then50.i:                                      ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %ltr_enabled53.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %ltr_enabled53.i, align 2
  %ltr_active.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 4
  %15 = ptrtoint ptr %ltr_active.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %ltr_active.i, align 1
  %ltr_active_latency.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 5
  %16 = ptrtoint ptr %ltr_active_latency.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ltr_active_latency.i, align 4
  %call51.i = call i32 @rtsx_set_ltr_latency(ptr noundef %pcr, i32 noundef %17) #4
  br label %if.end54.i

if.else52.i:                                      ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %ltr_enabled53.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %ltr_enabled53.i, align 2
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.else52.i, %if.then50.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #4
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.end54.i, %if.end.i.if.end55.i_crit_edge
  %19 = ptrtoint ptr %option1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %option1.i, align 4
  %and58.i = and i32 %20, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.i)
  %tobool59.not.i = icmp eq i32 %and58.i, 0
  %force_clkreq_062.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 1
  %..i = zext i1 %tobool59.not.i to i8
  %21 = ptrtoint ptr %force_clkreq_062.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %..i, ptr %force_clkreq_062.i, align 4
  br label %rts5261_init_from_cfg.exit

rts5261_init_from_cfg.exit:                       ; preds = %if.end55.i, %entry.rts5261_init_from_cfg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lval.i) #4
  call fastcc void @rts5261_init_from_hw(ptr noundef %pcr)
  %call3 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -136, i8 noundef zeroext 3, i8 noundef zeroext 0) #4
  %call4 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -371, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  %call5 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -369, i8 noundef zeroext -1, i8 noundef zeroext 0) #4
  %22 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pcr, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21089, i16 %25)
  %cmp = icmp eq i16 %25, 21089
  br i1 %cmp, label %land.lhs.true, label %rts5261_init_from_cfg.exit.if.end_crit_edge

rts5261_init_from_cfg.exit.if.end_crit_edge:      ; preds = %rts5261_init_from_cfg.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %rts5261_init_from_cfg.exit
  %ic_version = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 32
  %26 = ptrtoint ptr %ic_version to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ic_version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %27)
  %cmp8 = icmp ugt i8 %27, 1
  br i1 %cmp8, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %remap_addr = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 5
  %28 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %remap_addr, align 4
  %add.ptr = getelementptr i8, ptr %29, i32 28
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !63
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !64
  %31 = or i32 %30, 16777216
  %32 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %remap_addr, align 4
  %add.ptr12 = getelementptr i8, ptr %33, i32 28
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !65
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %31) #4, !srcloc !66
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %rts5261_init_from_cfg.exit.if.end_crit_edge
  %call13 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -129, i8 noundef zeroext 32, i8 noundef zeroext 0) #4
  %call14 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -129, i8 noundef zeroext 64, i8 noundef zeroext 0) #4
  %call15 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -423, i8 noundef zeroext 2, i8 noundef zeroext 2) #4
  %call16 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -427, i8 noundef zeroext 32, i8 noundef zeroext 32) #4
  %call17 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -399, i8 noundef zeroext 8, i8 noundef zeroext 8) #4
  %call18 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -424, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %call19 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -994, i8 noundef zeroext 15, i8 noundef zeroext 2) #4
  %sd30_drive_sel_3v3.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 34
  %34 = ptrtoint ptr %sd30_drive_sel_3v3.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %drive_sel.0.i = load i8, ptr %sd30_drive_sel_3v3.i, align 1
  %idxprom.i = zext i8 %drive_sel.0.i to i32
  %arrayidx.i = getelementptr [3 x i8], ptr @__const.rts5261_fill_driving.driving_3v3, i32 %idxprom.i
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.i, align 1
  %call.i62 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -678, i8 noundef zeroext -1, i8 noundef zeroext %36) #4
  %arrayidx6.i = getelementptr [3 x i8], ptr @__const.rts5261_fill_driving.driving_3v3, i32 %idxprom.i, i32 1
  %37 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx6.i, align 1
  %call7.i = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -674, i8 noundef zeroext -1, i8 noundef zeroext %38) #4
  %arrayidx10.i = getelementptr [3 x i8], ptr @__const.rts5261_fill_driving.driving_3v3, i32 %idxprom.i, i32 2
  %39 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx10.i, align 1
  %call11.i = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -673, i8 noundef zeroext -1, i8 noundef zeroext %40) #4
  %flags = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 39
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags, align 4
  %and = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i8 0, i8 48
  %call22 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -253, i8 noundef zeroext 48, i8 noundef zeroext %.) #4
  %force_clkreq_0 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 1
  %43 = ptrtoint ptr %force_clkreq_0 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %force_clkreq_0, align 4, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool24.not = icmp eq i8 %44, 0
  %.sink63 = select i1 %tobool24.not, i8 0, i8 -128
  %call28 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -253, i8 noundef zeroext -128, i8 noundef zeroext %.sink63) #4
  %call30 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -394, i8 noundef zeroext -1, i8 noundef zeroext -5) #4
  %reg_pm_ctrl3 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 48
  %45 = ptrtoint ptr %reg_pm_ctrl3 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %reg_pm_ctrl3, align 4
  %call31 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext %46, i8 noundef zeroext 16, i8 noundef zeroext 0) #4
  %call32 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -136, i8 noundef zeroext 48, i8 noundef zeroext 32) #4
  %call33 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -161, i8 noundef zeroext 32, i8 noundef zeroext 0) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rts5261_turn_on_led(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -993, i8 noundef zeroext 2, i8 noundef zeroext 2) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rts5261_turn_off_led(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -993, i8 noundef zeroext 2, i8 noundef zeroext 0) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rts5261_enable_auto_blink(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -994, i8 noundef zeroext 8, i8 noundef zeroext 8) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rts5261_disable_auto_blink(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -994, i8 noundef zeroext 8, i8 noundef zeroext 0) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rts5261_card_power_on(ptr noundef %pcr, i32 noundef %card) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ocp_en = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 11
  %0 = ptrtoint ptr %ocp_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ocp_en, align 2, !range !62
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
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -655, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %call2 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -141, i8 noundef zeroext 14, i8 noundef zeroext 14) #4
  %call3 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -144, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %call4 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -144, i8 noundef zeroext 8, i8 noundef zeroext 8) #4
  tail call void @msleep(i32 noundef 20) #4
  %call5 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -683, i8 noundef zeroext 4, i8 noundef zeroext 4) #4
  %call6 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -608, i8 noundef zeroext -1, i8 noundef zeroext -128) #4
  %call7 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -601, i8 noundef zeroext -1, i8 noundef zeroext 0) #4
  %call8 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -600, i8 noundef zeroext -1, i8 noundef zeroext 0) #4
  %call9 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -684, i8 noundef zeroext 68, i8 noundef zeroext 68) #4
  %call10 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -606, i8 noundef zeroext 16, i8 noundef zeroext 0) #4
  %call11 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -584, i8 noundef zeroext 7, i8 noundef zeroext 0) #4
  %extra_caps = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 31
  %2 = ptrtoint ptr %extra_caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %extra_caps, align 4
  %4 = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %if.end.if.end18_crit_edge, label %if.then16

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -608, i8 noundef zeroext 28, i8 noundef zeroext 24) #4
  %call1.i = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -1022, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %call2.i = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -978, i8 noundef zeroext -1, i8 noundef zeroext 33) #4
  %call3.i = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -1022, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end.if.end18_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rts5261_card_power_off(ptr noundef %pcr, i32 noundef %card) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %remap_addr.i.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 5
  %0 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !65
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16) #4, !srcloc !66
  %2 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %3, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !65
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 16) #4, !srcloc !66
  %call.i.i = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -321, i8 noundef zeroext -64, i8 noundef zeroext -64) #4
  %call3.i.i = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -460, i8 noundef zeroext -128, i8 noundef zeroext -128) #4
  %call.i = tail call i32 @rts5261_switch_output_voltage(ptr noundef %pcr, i8 noundef zeroext 0) #4
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -144, i8 noundef zeroext 15, i8 noundef zeroext 0) #4
  %call1 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -655, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  %ocp_en = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 11
  %4 = ptrtoint ptr %ocp_en to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ocp_en, align 2, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @rtsx_pci_disable_ocp(ptr noundef %pcr) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rts5261_switch_output_voltage(ptr noundef %pcr, i8 noundef zeroext %voltage) #0 align 64 {
entry:
  %driving_3v3.i = alloca [4 x [3 x i8]], align 1
  %driving_1v8.i = alloca [4 x [3 x i8]], align 1
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #4
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %val, align 2
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -688, i8 noundef zeroext 32, i8 noundef zeroext 32) #4
  %1 = zext i8 %voltage to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %voltage, label %entry.cleanup_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb8
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call1 = call i32 @rtsx_pci_read_phy_register(ptr noundef %pcr, i8 noundef zeroext 8, ptr noundef nonnull %val) #4
  %2 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %val, align 2
  %4 = or i16 %3, 512
  store i16 %4, ptr %val, align 2
  %call4 = call i32 @rtsx_pci_write_phy_register(ptr noundef %pcr, i8 noundef zeroext 8, i16 noundef zeroext %4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %call9 = call i32 @rtsx_pci_read_phy_register(ptr noundef %pcr, i8 noundef zeroext 8, ptr noundef nonnull %val) #4
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %val, align 2
  %7 = and i16 %6, -513
  store i16 %7, ptr %val, align 2
  %call12 = call i32 @rtsx_pci_write_phy_register(ptr noundef %pcr, i8 noundef zeroext 8, i16 noundef zeroext %7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %sw.bb8.cleanup_crit_edge, label %sw.bb8.sw.epilog_crit_edge

sw.bb8.sw.epilog_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb8.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %.sink33 = phi i8 [ 112, %sw.bb.sw.epilog_crit_edge ], [ 32, %sw.bb8.sw.epilog_crit_edge ]
  %.sink = phi i8 [ 0, %sw.bb.sw.epilog_crit_edge ], [ -128, %sw.bb8.sw.epilog_crit_edge ]
  %call17 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -143, i8 noundef zeroext 112, i8 noundef zeroext %.sink33) #4
  %call18 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -602, i8 noundef zeroext -128, i8 noundef zeroext %.sink) #4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %driving_3v3.i) #4
  %8 = call ptr @memcpy(ptr %driving_3v3.i, ptr @__const.rts5261_fill_driving.driving_3v3, i32 12)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %driving_1v8.i) #4
  %9 = call ptr @memcpy(ptr %driving_1v8.i, ptr @__const.rts5261_fill_driving.driving_1v8, i32 12)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %voltage)
  %cmp.i = icmp eq i8 %voltage, 0
  %sd30_drive_sel_3v3.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 34
  %sd30_drive_sel_1v8.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 33
  %driving.0.i = select i1 %cmp.i, ptr %driving_3v3.i, ptr %driving_1v8.i
  %drive_sel.0.in.i = select i1 %cmp.i, ptr %sd30_drive_sel_3v3.i, ptr %sd30_drive_sel_1v8.i
  %10 = ptrtoint ptr %drive_sel.0.in.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %drive_sel.0.i = load i8, ptr %drive_sel.0.in.i, align 1
  %idxprom.i = zext i8 %drive_sel.0.i to i32
  %arrayidx.i = getelementptr [3 x i8], ptr %driving.0.i, i32 %idxprom.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i, align 1
  %call.i = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -678, i8 noundef zeroext -1, i8 noundef zeroext %12) #4
  %arrayidx6.i = getelementptr [3 x i8], ptr %driving.0.i, i32 %idxprom.i, i32 1
  %13 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx6.i, align 1
  %call7.i = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -674, i8 noundef zeroext -1, i8 noundef zeroext %14) #4
  %arrayidx10.i = getelementptr [3 x i8], ptr %driving.0.i, i32 %idxprom.i, i32 2
  %15 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx10.i, align 1
  %call11.i = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -673, i8 noundef zeroext -1, i8 noundef zeroext %16) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %driving_1v8.i) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %driving_3v3.i) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb8.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ %call4, %sw.bb.cleanup_crit_edge ], [ %call12, %sw.bb8.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtsx5261_fetch_vendor_settings(ptr nocapture noundef %pcr) #0 align 64 {
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
  store i32 -1, ptr %reg, align 4, !annotation !61
  %call = call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef 2068, ptr noundef nonnull %reg) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx5261_fetch_vendor_settings.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx5261_fetch_vendor_settings, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !60

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcr, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx5261_fetch_vendor_settings.__UNIQUE_ID_ddebug236, ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef 2068, i32 noundef %6) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg, align 4
  %and = and i32 %8, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.then6, label %if.end25

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %extra_caps = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 31
  %9 = ptrtoint ptr %extra_caps to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %extra_caps, align 4
  %or = or i32 %10, 128
  store i32 %or, ptr %extra_caps, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx5261_fetch_vendor_settings.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx5261_fetch_vendor_settings, %if.then19)) #4
          to label %cleanup [label %if.then19], !srcloc !60

if.then19:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pcr, align 4
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx5261_fetch_vendor_settings.__UNIQUE_ID_ddebug237, ptr noundef %dev21, ptr noundef nonnull @.str.16) #4
  br label %cleanup

if.end25:                                         ; preds = %do.end
  %and26 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.then28, label %if.end25.if.end31_crit_edge

if.end25.if.end31_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  %extra_caps29 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 31
  %13 = ptrtoint ptr %extra_caps29 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %extra_caps29, align 4
  %or30 = or i32 %14, 128
  store i32 %or30, ptr %extra_caps29, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end25.if.end31_crit_edge
  %15 = trunc i32 %8 to i8
  %conv = and i8 %15, 8
  %rtd3_en = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 54
  %16 = ptrtoint ptr %rtd3_en to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %rtd3_en, align 1
  %and33 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end31.if.end37_crit_edge, label %if.then35

if.end31.if.end37_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  %flags = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 39
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 4
  %or36 = or i32 %18, 2
  store i32 %or36, ptr %flags, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end31.if.end37_crit_edge
  %call38 = call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef 1828, ptr noundef nonnull %reg) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx5261_fetch_vendor_settings.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx5261_fetch_vendor_settings, %if.then51)) #4
          to label %do.end56 [label %if.then51], !srcloc !60

if.then51:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pcr, align 4
  %dev53 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %21 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reg, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx5261_fetch_vendor_settings.__UNIQUE_ID_ddebug238, ptr noundef %dev53, ptr noundef nonnull @.str.15, i32 noundef 1828, i32 noundef %22) #4
  br label %do.end56

do.end56:                                         ; preds = %if.then51, %if.end37
  %23 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %reg, align 4
  %neg = xor i32 %24, -1
  %shr = lshr i32 %neg, 28
  %and57 = and i32 %shr, 2
  %shr58 = lshr i32 %24, 28
  %and59 = and i32 %shr58, 1
  %or60 = or i32 %and57, %and59
  %conv61 = trunc i32 %or60 to i8
  %aspm_en = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 36
  %25 = ptrtoint ptr %aspm_en to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv61, ptr %aspm_en, align 4
  %shr62 = lshr i32 %24, 22
  %26 = trunc i32 %shr62 to i8
  %conv64 = and i8 %26, 3
  %sd30_drive_sel_1v8 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 33
  %27 = ptrtoint ptr %sd30_drive_sel_1v8 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv64, ptr %sd30_drive_sel_1v8, align 1
  %shr65 = lshr i32 %24, 16
  %28 = trunc i32 %shr65 to i8
  %conv67 = and i8 %28, 3
  %sd30_drive_sel_3v3 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 34
  %29 = ptrtoint ptr %sd30_drive_sel_3v3 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv67, ptr %sd30_drive_sel_3v3, align 2
  br label %cleanup

cleanup:                                          ; preds = %do.end56, %if.then19, %if.then6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rts5261_force_power_down(ptr noundef %pcr, i8 noundef zeroext %pm_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -255, i8 noundef zeroext -1, i8 noundef zeroext 0) #4
  %call1 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -254, i8 noundef zeroext -1, i8 noundef zeroext 0) #4
  %call2 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -253, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %pm_state)
  %cmp = icmp eq i8 %pm_state, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %reg_pm_ctrl3 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 48
  %0 = ptrtoint ptr %reg_pm_ctrl3 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %reg_pm_ctrl3, align 4
  %call4 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext %1, i8 noundef zeroext 16, i8 noundef zeroext 16) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call5 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -160, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rts5261_stop_cmd(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %remap_addr = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 5
  %0 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %remap_addr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !65
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16) #4, !srcloc !66
  %2 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remap_addr, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !65
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 16) #4, !srcloc !66
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -321, i8 noundef zeroext -64, i8 noundef zeroext -64) #4
  %call3 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -460, i8 noundef zeroext -128, i8 noundef zeroext -128) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rts5261_set_aspm(ptr noundef %pcr, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %aspm_enabled.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 38
  %0 = ptrtoint ptr %aspm_enabled.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %aspm_enabled.i, align 4, !range !62
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.i = icmp eq i8 %1, 1
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %aspm_en.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 36
  %2 = ptrtoint ptr %aspm_en.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %aspm_en.i, align 4
  %4 = and i8 %3, 2
  %5 = or i8 %4, 48
  %call.i = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -425, i8 noundef zeroext 51, i8 noundef zeroext %5) #4
  %6 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcr, align 4
  %8 = ptrtoint ptr %aspm_en.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %aspm_en.i, align 4
  %conv8.i = zext i8 %9 to i16
  %call9.i = tail call i32 @pcie_capability_clear_and_set_word(ptr noundef %7, i32 noundef 16, i16 noundef zeroext 3, i16 noundef zeroext %conv8.i) #4
  br label %if.end.sink.split

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.i3 = icmp eq i8 %1, 0
  br i1 %cmp.i3, label %if.else.if.end_crit_edge, label %if.end.i5

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end.i5:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcr, align 4
  %call.i4 = tail call i32 @pcie_capability_clear_and_set_word(ptr noundef %11, i32 noundef 16, i16 noundef zeroext 3, i16 noundef zeroext 0) #4
  %call4.i = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -425, i8 noundef zeroext 51, i8 noundef zeroext 48) #4
  %call5.i = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -608, i8 noundef zeroext 16, i8 noundef zeroext 0) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 2147480) #4
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %if.end.i5, %if.end.i
  %.sink = phi i8 [ 0, %if.end.i5 ], [ 1, %if.end.i ]
  %13 = ptrtoint ptr %aspm_enabled.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %.sink, ptr %aspm_enabled.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.else.if.end_crit_edge, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rts5261_set_l1off_cfg_sub_d0(ptr noundef %pcr, i32 noundef %active) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %option1 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2
  %0 = ptrtoint ptr %option1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %option1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %active)
  %tobool.not = icmp eq i32 %active, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.then.if.end11_crit_edge, label %if.then7

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %ltr_l1off_snooze_sspwrgate = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 10
  %2 = ptrtoint ptr %ltr_l1off_snooze_sspwrgate to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ltr_l1off_snooze_sspwrgate, align 1
  br label %if.end11

if.else:                                          ; preds = %entry
  %and5 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool8.not = icmp eq i32 %and5, 0
  br i1 %tobool8.not, label %if.else.if.end11_crit_edge, label %if.then9

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %ltr_l1off_sspwrgate = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 9
  %4 = ptrtoint ptr %ltr_l1off_sspwrgate to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ltr_l1off_sspwrgate, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.else.if.end11_crit_edge, %if.then7, %if.then.if.end11_crit_edge
  %val.0 = phi i8 [ %3, %if.then7 ], [ 0, %if.then.if.end11_crit_edge ], [ %5, %if.then9 ], [ 0, %if.else.if.end11_crit_edge ]
  %call = tail call i32 @rtsx_set_l1off_sub(ptr noundef %pcr, i8 noundef zeroext %val.0) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rts5261_enable_ocp(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -142, i8 noundef zeroext 18, i8 noundef zeroext 18) #4
  %call1 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -662, i8 noundef zeroext -1, i8 noundef zeroext 12) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rts5261_disable_ocp(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -662, i8 noundef zeroext 12, i8 noundef zeroext 0) #4
  %call1 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -142, i8 noundef zeroext 18, i8 noundef zeroext 0) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rts5261_init_ocp(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ocp_en = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 11
  %0 = ptrtoint ptr %ocp_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ocp_en, align 2, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -142, i8 noundef zeroext 18, i8 noundef zeroext 18) #4
  %sd_800mA_ocp_thd = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 13
  %2 = ptrtoint ptr %sd_800mA_ocp_thd to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sd_800mA_ocp_thd, align 4
  %call2 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -142, i8 noundef zeroext -32, i8 noundef zeroext %3) #4
  %call3 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -142, i8 noundef zeroext 12, i8 noundef zeroext 12) #4
  %ocp_glitch = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %ocp_glitch to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ocp_glitch, align 4
  %call4 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -660, i8 noundef zeroext 15, i8 noundef zeroext %5) #4
  %call.i = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -142, i8 noundef zeroext 18, i8 noundef zeroext 18) #4
  %call1.i = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -662, i8 noundef zeroext -1, i8 noundef zeroext 12) #4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call5 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -142, i8 noundef zeroext 18, i8 noundef zeroext 0) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rts5261_process_ocp(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ocp_en = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 11
  %0 = ptrtoint ptr %ocp_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ocp_en, align 2, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.end

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.end:                                           ; preds = %entry
  %ocp_stat = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 52
  %call = tail call i32 @rtsx_pci_get_ocpstat(ptr noundef %pcr, ptr noundef %ocp_stat) #4
  %2 = ptrtoint ptr %ocp_stat to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ocp_stat, align 1
  %4 = and i8 %3, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -662, i8 noundef zeroext 3, i8 noundef zeroext 3) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #4
  %call1.i = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -662, i8 noundef zeroext 3, i8 noundef zeroext 0) #4
  %call4 = tail call i32 @rts5261_card_power_off(ptr noundef %pcr, i32 noundef 0)
  %call5 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -683, i8 noundef zeroext 4, i8 noundef zeroext 0) #4
  %6 = ptrtoint ptr %ocp_stat to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %ocp_stat, align 1
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end.if.end7_crit_edge, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rts5261_clear_ocpstat(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -662, i8 noundef zeroext 3, i8 noundef zeroext 3) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748000) #4
  %call1 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -662, i8 noundef zeroext 3, i8 noundef zeroext 0) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rts5261_init_from_hw(ptr noundef %pcr) unnamed_addr #0 align 64 {
entry:
  %lval = alloca i32, align 4
  %tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lval) #4
  %2 = ptrtoint ptr %lval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %lval, align 4, !annotation !61
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #4
  %3 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %tmp, align 1, !annotation !61
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -136, i8 noundef zeroext 7, i8 noundef zeroext 7) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #4
  %call2 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -975, i8 noundef zeroext 63, i8 noundef zeroext 0) #4
  %call3 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -976, i8 noundef zeroext -64, i8 noundef zeroext -128) #4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.022 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %call4 = call i32 @rtsx_pci_read_register(ptr noundef %pcr, i16 noundef zeroext -976, ptr noundef nonnull %tmp) #4
  %5 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tmp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %cmp5 = icmp sgt i8 %6, -1
  %inc = add nuw nsw i32 %i.022, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 1024
  %or.cond = select i1 %cmp5, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body
  %call7 = call i32 @rtsx_pci_read_register(ptr noundef %pcr, i16 noundef zeroext -972, ptr noundef nonnull %tmp) #4
  %7 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tmp, align 1
  %9 = lshr i8 %8, 2
  %10 = and i8 %9, 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rts5261_init_from_hw.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rts5261_init_from_hw, %if.then15)) #4
          to label %do.end [label %if.then15], !srcloc !60

if.then15:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pcr, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %conv17 = zext i8 %10 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rts5261_init_from_hw.__UNIQUE_ID_ddebug239, ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv17) #4
  br label %do.end

do.end:                                           ; preds = %if.then15, %for.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp20 = icmp eq i8 %10, 0
  br i1 %cmp20, label %if.then22, label %do.end.if.end86_crit_edge

do.end.if.end86_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end86

if.then22:                                        ; preds = %do.end
  %call23 = call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef 2068, ptr noundef nonnull %lval) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24.not = icmp eq i32 %call23, 0
  br i1 %cmp24.not, label %if.then22.do.body46_crit_edge, label %do.body27

if.then22.do.body46_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body46

do.body27:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rts5261_init_from_hw.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rts5261_init_from_hw, %if.then39)) #4
          to label %do.body46 [label %if.then39], !srcloc !60

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pcr, align 4
  %dev41 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rts5261_init_from_hw.__UNIQUE_ID_ddebug240, ptr noundef %dev41, ptr noundef nonnull @.str.9) #4
  br label %do.body46

do.body46:                                        ; preds = %if.then39, %do.body27, %if.then22.do.body46_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rts5261_init_from_hw.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rts5261_init_from_hw, %if.then58)) #4
          to label %do.end63 [label %if.then58], !srcloc !60

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pcr, align 4
  %dev60 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %17 = ptrtoint ptr %lval to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %lval, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rts5261_init_from_hw.__UNIQUE_ID_ddebug241, ptr noundef %dev60, ptr noundef nonnull @.str.10, i32 noundef %18) #4
  br label %do.end63

do.end63:                                         ; preds = %if.then58, %do.body46
  %19 = ptrtoint ptr %lval to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lval, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rts5261_init_from_hw.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rts5261_init_from_hw, %if.then79)) #4
          to label %if.end86 [label %if.then79], !srcloc !60

if.then79:                                        ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #6
  %shr64 = lshr i32 %20, 16
  %conv66 = and i32 %shr64, 3
  %21 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pcr, align 4
  %dev81 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rts5261_init_from_hw.__UNIQUE_ID_ddebug242, ptr noundef %dev81, ptr noundef nonnull @.str.11, i32 noundef %conv66) #4
  br label %if.end86

if.end86:                                         ; preds = %if.then79, %do.end63, %do.end.if.end86_crit_edge
  %call87 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -136, i8 noundef zeroext 4, i8 noundef zeroext 0) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rts5261_init_from_hw.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rts5261_init_from_hw, %if.then100)) #4
          to label %do.end105 [label %if.then100], !srcloc !60

if.then100:                                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pcr, align 4
  %dev102 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rts5261_init_from_hw.__UNIQUE_ID_ddebug243, ptr noundef %dev102, ptr noundef nonnull @.str.12) #4
  br label %do.end105

do.end105:                                        ; preds = %if.then100, %if.end86
  %call106 = call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef 2068, ptr noundef nonnull %lval) #4
  %25 = ptrtoint ptr %lval to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %lval, align 4
  %and107 = and i32 %26, 16777215
  store i32 %and107, ptr %lval, align 4
  %call108 = call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef 2068, i32 noundef %and107) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %cmp109.not = icmp eq i32 %call108, 0
  br i1 %cmp109.not, label %do.end105.if.end130_crit_edge, label %do.body112

do.end105.if.end130_crit_edge:                    ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end130

do.body112:                                       ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rts5261_init_from_hw.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rts5261_init_from_hw, %if.then124)) #4
          to label %if.end130 [label %if.then124], !srcloc !60

if.then124:                                       ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pcr, align 4
  %dev126 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rts5261_init_from_hw.__UNIQUE_ID_ddebug244, ptr noundef %dev126, ptr noundef nonnull @.str.13) #4
  br label %if.end130

if.end130:                                        ; preds = %if.then124, %do.body112, %do.end105.if.end130_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lval) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @pci_find_ext_capability(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_read_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_set_ltr_latency(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_pci_enable_ocp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_pci_disable_ocp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pci_read_phy_register(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pci_write_phy_register(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_clear_and_set_word(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_set_l1off_sub(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pci_get_ocpstat(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i4 @llvm.bitreverse.i4(i4) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !13, !14, !16, !17, !19, !21, !22, !23, !25, !26, !28, !29, !31, !32, !34, !35, !37, !38, !40, !41, !42, !44, !45, !47, !49}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @rts5261_pci_switch_clock.depth, !1, !"depth", i1 false, i1 false}
!1 = !{!"../drivers/misc/cardreader/rts5261.c", i32 643, i32 18}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/misc/cardreader/rts5261.c", i32 668, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @rts5261_pci_switch_clock.__UNIQUE_ID_ddebug245, !3, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/misc/cardreader/rts5261.c", i32 673, i32 2}
!10 = !{ptr @rts5261_pci_switch_clock.__UNIQUE_ID_ddebug246, !9, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/misc/cardreader/rts5261.c", i32 704, i32 2}
!13 = !{ptr @rts5261_pci_switch_clock.__UNIQUE_ID_ddebug247, !12, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/misc/cardreader/rts5261.c", i32 730, i32 2}
!16 = !{ptr @rts5261_pci_switch_clock.__UNIQUE_ID_ddebug248, !15, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!17 = !{ptr @rts5261_pcr_ops, !18, !"rts5261_pcr_ops", i1 false, i1 false}
!18 = !{!"../drivers/misc/cardreader/rts5261.c", i32 611, i32 29}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/misc/cardreader/rts5261.c", i32 401, i32 2}
!21 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @rts5261_init_from_hw.__UNIQUE_ID_ddebug239, !20, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/misc/cardreader/rts5261.c", i32 406, i32 4}
!25 = !{ptr @rts5261_init_from_hw.__UNIQUE_ID_ddebug240, !24, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/misc/cardreader/rts5261.c", i32 407, i32 3}
!28 = !{ptr @rts5261_init_from_hw.__UNIQUE_ID_ddebug241, !27, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/misc/cardreader/rts5261.c", i32 410, i32 3}
!31 = !{ptr @rts5261_init_from_hw.__UNIQUE_ID_ddebug242, !30, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/misc/cardreader/rts5261.c", i32 414, i32 2}
!34 = !{ptr @rts5261_init_from_hw.__UNIQUE_ID_ddebug243, !33, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/misc/cardreader/rts5261.c", i32 420, i32 3}
!37 = !{ptr @rts5261_init_from_hw.__UNIQUE_ID_ddebug244, !36, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/misc/cardreader/rts5261.c", i32 67, i32 2}
!40 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @rtsx5261_fetch_vendor_settings.__UNIQUE_ID_ddebug236, !39, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/misc/cardreader/rts5261.c", i32 72, i32 3}
!44 = !{ptr @rtsx5261_fetch_vendor_settings.__UNIQUE_ID_ddebug237, !43, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!45 = !{ptr @rtsx5261_fetch_vendor_settings.__UNIQUE_ID_ddebug238, !46, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!46 = !{!"../drivers/misc/cardreader/rts5261.c", i32 87, i32 2}
!47 = !{ptr @rts5261_sd_pull_ctl_enable_tbl, !48, !"rts5261_sd_pull_ctl_enable_tbl", i1 false, i1 false}
!48 = !{!"../drivers/misc/cardreader/rts5261.c", i32 141, i32 18}
!49 = !{ptr @rts5261_sd_pull_ctl_disable_tbl, !50, !"rts5261_sd_pull_ctl_disable_tbl", i1 false, i1 false}
!50 = !{!"../drivers/misc/cardreader/rts5261.c", i32 154, i32 18}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{i64 2148973678, i64 2148973683, i64 2148973696, i64 2148973740, i64 2148973774, i64 2148973795}
!61 = !{!"auto-init"}
!62 = !{i8 0, i8 2}
!63 = !{i64 5049132}
!64 = !{i64 2152589481}
!65 = !{i64 2152590836}
!66 = !{i64 5048714}
