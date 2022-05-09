; ModuleID = '/llk/IR_all_yes/drivers/clocksource/timer-tegra.c_pt.bc'
source_filename = "../drivers/clocksource/timer-tegra.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.timer_of = type { i32, ptr, [120 x i8], %struct.clock_event_device, %struct.of_timer_base, %struct.of_timer_irq, %struct.of_timer_clk, ptr, [68 x i8] }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [124 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.of_timer_base = type { ptr, ptr, i32 }
%struct.of_timer_irq = type { i32, i32, i32, ptr, i32, ptr }
%struct.of_timer_clk = type { ptr, ptr, i32, i32, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.delay_timer = type { ptr, i32 }
%struct.clocksource = type { ptr, i64, i32, i32, i64, i32, i32, i64, ptr, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tegra_timer\00", [20 x i8] zeroinitializer }, align 32
@tegra_to = weak dso_local global %struct.timer_of { i32 3, ptr null, [120 x i8] undef, %struct.clock_event_device { ptr null, ptr @tegra_timer_set_next_event, ptr null, i64 0, i64 0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 0, ptr @tegra_timer_set_periodic, ptr @tegra_timer_shutdown, ptr null, ptr @tegra_timer_shutdown, ptr @tegra_timer_shutdown, ptr null, ptr @tegra_timer_suspend, ptr @tegra_timer_resume, i32 0, i32 0, ptr @.str, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, [124 x i8] undef }, %struct.of_timer_base zeroinitializer, %struct.of_timer_irq zeroinitializer, %struct.of_timer_clk zeroinitializer, ptr null, [68 x i8] undef }, section ".data..percpu", align 128
@__of_table_tegra210_timer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra210_init_timer }, section "__timer_of_table", align 4
@__of_table_tegra20_timer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra20_init_timer }, section "__timer_of_table", align 4
@__of_table_tegra20_rtc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra20_init_rtc }, section "__timer_of_table", align 4
@__pcpu_unique_tegra_to = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@usec_config = internal global { i32, [28 x i8] } zeroinitializer, align 32
@timer_reg_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@tegra_init_timer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013tegra-timer: failed to map irq for cpu%d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tegra_init_timer\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/clocksource/timer-tegra.c\00", [62 x i8] zeroinitializer }, align 32
@tegra_init_timer._entry_ptr = internal global ptr @tegra_init_timer._entry, section ".printk_index", align 4
@tegra_init_timer._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013tegra-timer: failed to set up irq for cpu%d: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@tegra_init_timer._entry_ptr.6 = internal global ptr @tegra_init_timer._entry.4, section ".printk_index", align 4
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"timer_us\00", [23 x i8] zeroinitializer }, align 32
@tegra_init_timer._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013tegra-timer: failed to register clocksource: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@tegra_init_timer._entry_ptr.10 = internal global ptr @tegra_init_timer._entry.8, section ".printk_index", align 4
@tegra_delay_timer = internal global { %struct.delay_timer, [24 x i8] } { %struct.delay_timer { ptr @tegra_delay_timer_read_counter_long, i32 1000000 }, [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"AP_TEGRA_TIMER_STARTING\00", [40 x i8] zeroinitializer }, align 32
@tegra_init_timer._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013tegra-timer: failed to set up cpu hp state: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@tegra_init_timer._entry_ptr.14 = internal global ptr @tegra_init_timer._entry.12, section ".printk_index", align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nvidia,tegra20\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nvidia,tegra30\00", [17 x i8] zeroinitializer }, align 32
@suspend_rtc_to = internal global %struct.timer_of { i32 3, ptr null, [120 x i8] undef, %struct.clock_event_device zeroinitializer, %struct.of_timer_base zeroinitializer, %struct.of_timer_irq zeroinitializer, %struct.of_timer_clk zeroinitializer, ptr null, [68 x i8] undef }, align 128
@suspend_rtc_clocksource = internal global { %struct.clocksource, [56 x i8] } { %struct.clocksource { ptr @tegra_rtc_read_ms, i64 4294967295, i32 0, i32 0, i64 0, i32 0, i32 0, i64 0, ptr @.str.17, %struct.list_head zeroinitializer, i32 200, i32 0, i32 0, i32 129, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tegra_suspend_timer\00", [44 x i8] zeroinitializer }, align 32
@switch.table.tegra_init_timer = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 8, i32 80], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 12000000, i64 12800000, i64 13000000, i64 16800000, i64 19200000, i64 26000000, i64 38400000, i64 48000000]
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 120, i32 11 }
@___asan_gen_.21 = private unnamed_addr constant [12 x i8] c"usec_config\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 51, i32 12 }
@___asan_gen_.24 = private unnamed_addr constant [15 x i8] c"timer_reg_base\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 52, i32 22 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 310, i32 4 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 327, i32 4 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 338, i32 9 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 341, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [18 x i8] c"tegra_delay_timer\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 178, i32 27 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 348, i32 5 }
@___asan_gen_.60 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 351, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 396, i32 31 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 397, i32 31 }
@___asan_gen_.72 = private unnamed_addr constant [24 x i8] c"suspend_rtc_clocksource\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 204, i32 27 }
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.76 = private constant [37 x i8] c"../drivers/clocksource/timer-tegra.c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 205, i32 10 }
@___asan_gen_.78 = private unnamed_addr constant [30 x i8] c"switch.table.tegra_init_timer\00", align 1
@llvm.compiler.used = appending global [28 x ptr] [ptr @__of_table_tegra20_rtc, ptr @__of_table_tegra20_timer, ptr @__of_table_tegra210_timer, ptr @tegra_init_timer._entry, ptr @tegra_init_timer._entry.12, ptr @tegra_init_timer._entry.4, ptr @tegra_init_timer._entry.8, ptr @tegra_init_timer._entry_ptr, ptr @tegra_init_timer._entry_ptr.10, ptr @tegra_init_timer._entry_ptr.14, ptr @tegra_init_timer._entry_ptr.6, ptr @.str, ptr @usec_config, ptr @timer_reg_base, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @tegra_delay_timer, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @suspend_rtc_clocksource, ptr @.str.17, ptr @switch.table.tegra_init_timer], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usec_config to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timer_reg_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_init_timer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_init_timer._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_init_timer._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_delay_timer to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_init_timer._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @suspend_rtc_clocksource to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tegra_init_timer to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_timer_set_next_event(i32 noundef %cycles, ptr nocapture noundef readonly %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %of_base.i = getelementptr i8, ptr %evt, i32 256
  %0 = ptrtoint ptr %of_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_base.i, align 128
  %sub = add i32 %cycles, 2147483647
  %or = or i32 %sub, -2147483648
  %2 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %2) #7, !srcloc !59
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_timer_set_periodic(ptr nocapture noundef readonly %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %of_base.i = getelementptr i8, ptr %evt, i32 256
  %0 = ptrtoint ptr %of_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_base.i, align 128
  %period.i = getelementptr i8, ptr %evt, i32 308
  %2 = ptrtoint ptr %period.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %period.i, align 4
  %sub = add i32 %3, 1073741823
  %or = or i32 %sub, -1073741824
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %4) #7, !srcloc !59
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_timer_shutdown(ptr nocapture noundef readonly %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %of_base.i = getelementptr i8, ptr %evt, i32 256
  %0 = ptrtoint ptr %of_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_base.i, align 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 0) #7, !srcloc !59
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_timer_suspend(ptr nocapture noundef readonly %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %of_base.i = getelementptr i8, ptr %evt, i32 256
  %0 = ptrtoint ptr %of_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_base.i, align 128
  %add.ptr = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 64) #7, !srcloc !59
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_timer_resume(ptr nocapture noundef readnone %evt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @usec_config, align 4
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  %2 = load ptr, ptr @timer_reg_base, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #7, !srcloc !59
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_init_timer(ptr noundef %np) #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @tegra_init_timer(ptr noundef %np, i1 noundef zeroext false, i32 noundef 460) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra20_init_timer(ptr noundef %np) #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  %spec.select = select i1 %tobool2.not, i32 330, i32 460
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false, %entry.if.end_crit_edge
  %rating.0 = phi i32 [ 460, %entry.if.end_crit_edge ], [ %spec.select, %lor.lhs.false ]
  %call3 = tail call fastcc i32 @tegra_init_timer(ptr noundef %np, i1 noundef zeroext true, i32 noundef %rating.0) #10
  ret i32 %call3
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra20_init_rtc(ptr noundef %np) #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @timer_of_init(ptr noundef %np, ptr noundef nonnull @suspend_rtc_to) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @__clocksource_register_scale(ptr noundef nonnull @suspend_rtc_clocksource, i32 noundef 1, i32 noundef 1000) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_init_timer(ptr noundef %np, i1 noundef zeroext %tegra20, i32 noundef %rating) unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !49) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu2 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu2, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @tegra_to to i32)
  %6 = inttoptr i32 %add to ptr
  %call3 = tail call i32 @timer_of_init(ptr noundef %np, ptr noundef %6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  %of_base.i = getelementptr inbounds %struct.timer_of, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %of_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_base.i, align 128
  store ptr %8, ptr @timer_reg_base, align 4
  %rate.i = getelementptr inbounds %struct.timer_of, ptr %6, i32 0, i32 6, i32 3
  %9 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rate.i, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %if.end.out_crit_edge [
    i32 12000000, label %if.end.sw.epilog_crit_edge
    i32 12800000, label %sw.bb6
    i32 13000000, label %sw.bb7
    i32 16800000, label %sw.bb8
    i32 19200000, label %sw.bb9
    i32 26000000, label %sw.bb10
    i32 38400000, label %sw.bb11
    i32 48000000, label %sw.bb12
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %if.end.sw.epilog_crit_edge
  %.sink = phi i32 [ 47, %sw.bb12 ], [ 1215, %sw.bb11 ], [ 25, %sw.bb10 ], [ 1119, %sw.bb9 ], [ 1107, %sw.bb8 ], [ 12, %sw.bb7 ], [ 1087, %sw.bb6 ], [ 11, %if.end.sw.epilog_crit_edge ]
  store i32 %.sink, ptr @usec_config, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %.sink)
  %add.ptr = getelementptr i8, ptr %8, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %12) #7, !srcloc !59
  br label %for.cond

for.cond:                                         ; preds = %if.end37.for.cond_crit_edge, %sw.epilog
  %cpu.0 = phi i32 [ -1, %sw.epilog ], [ %call13, %if.end37.for.cond_crit_edge ]
  %call13 = tail call i32 @cpumask_next(i32 noundef %cpu.0, ptr noundef nonnull @__cpu_possible_mask) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %13 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call13, i32 %13)
  %cmp = icmp ult i32 %call13, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx21 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call13
  %14 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx21, align 4
  br i1 %tegra20, label %if.then.i, label %if.end.i163

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call13)
  %16 = icmp ult i32 %call13, 3
  br i1 %16, label %switch.lookup, label %if.then.i.tegra_base_for_cpu.exit_crit_edge

if.then.i.tegra_base_for_cpu.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_base_for_cpu.exit

if.end.i163:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rate.i, align 4
  %mul.i = shl i32 %call13, 3
  %add.i = add i32 %mul.i, 144
  br label %tegra_base_for_cpu.exit

switch.lookup:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.tegra_init_timer, i32 0, i32 %call13
  %19 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %19)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %tegra_base_for_cpu.exit

tegra_base_for_cpu.exit:                          ; preds = %switch.lookup, %if.end.i163, %if.then.i.tegra_base_for_cpu.exit_crit_edge
  %retval.0.i169 = phi i32 [ %18, %if.end.i163 ], [ 1000000, %switch.lookup ], [ 1000000, %if.then.i.tegra_base_for_cpu.exit_crit_edge ]
  %retval.0.i164 = phi i32 [ %add.i, %if.end.i163 ], [ %switch.load, %switch.lookup ], [ 88, %if.then.i.tegra_base_for_cpu.exit_crit_edge ]
  %add1.i = add i32 %call13, 10
  %retval.0.i165 = select i1 %tegra20, i32 %call13, i32 %add1.i
  %call29 = tail call i32 @irq_of_parse_and_map(ptr noundef %np, i32 noundef %retval.0.i165) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %do.end34, label %if.end37

do.end34:                                         ; preds = %tegra_base_for_cpu.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %call13) #11
  br label %for.cond90.preheader

if.end37:                                         ; preds = %tegra_base_for_cpu.exit
  %add22 = add i32 %15, ptrtoint (ptr @tegra_to to i32)
  %20 = inttoptr i32 %add22 to ptr
  %clkevt = getelementptr inbounds %struct.timer_of, ptr %20, i32 0, i32 3
  %irq38 = getelementptr inbounds %struct.timer_of, ptr %20, i32 0, i32 3, i32 23
  %21 = ptrtoint ptr %irq38 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call29, ptr %irq38, align 4
  %rating40 = getelementptr inbounds %struct.timer_of, ptr %20, i32 0, i32 3, i32 22
  %22 = ptrtoint ptr %rating40 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %rating, ptr %rating40, align 8
  %rem.i = and i32 %call13, 31
  %add.i166 = add nuw nsw i32 %rem.i, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i166
  %div3.i = lshr i32 %call13, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  %cpumask = getelementptr inbounds %struct.timer_of, ptr %20, i32 0, i32 3, i32 25
  %23 = ptrtoint ptr %cpumask to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr.i, ptr %cpumask, align 4
  %24 = load ptr, ptr @timer_reg_base, align 4
  %add.ptr43 = getelementptr i8, ptr %24, i32 %retval.0.i164
  %of_base = getelementptr inbounds %struct.timer_of, ptr %20, i32 0, i32 4
  %25 = ptrtoint ptr %of_base to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr43, ptr %of_base, align 128
  %div = udiv i32 %retval.0.i169, 100
  %period = getelementptr inbounds %struct.timer_of, ptr %20, i32 0, i32 6, i32 4
  %26 = ptrtoint ptr %period to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %div, ptr %period, align 4
  %rate46 = getelementptr inbounds %struct.timer_of, ptr %20, i32 0, i32 6, i32 3
  %27 = ptrtoint ptr %rate46 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %retval.0.i169, ptr %rate46, align 4
  tail call void @irq_modify_status(i32 noundef %call29, i32 noundef 0, i32 noundef 4096) #7
  %28 = ptrtoint ptr %irq38 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq38, align 4
  %name = getelementptr inbounds %struct.timer_of, ptr %20, i32 0, i32 3, i32 21
  %30 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %name, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %29, ptr noundef nonnull @tegra_timer_isr, ptr noundef null, i32 noundef 84480, ptr noundef %31, ptr noundef %clkevt) #7
  %tobool54.not = icmp eq i32 %call.i, 0
  br i1 %tobool54.not, label %if.end37.for.cond_crit_edge, label %do.end58

if.end37.for.cond_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

do.end58:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %32 = inttoptr i32 %add22 to ptr
  %irq38.le = getelementptr inbounds %struct.timer_of, ptr %32, i32 0, i32 3, i32 23
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call13, i32 noundef %call.i) #11
  %33 = ptrtoint ptr %irq38.le to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irq38.le, align 4
  tail call void @irq_dispose_mapping(i32 noundef %34) #7
  %35 = ptrtoint ptr %irq38.le to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %irq38.le, align 4
  br label %for.cond90.preheader

for.cond90.preheader:                             ; preds = %do.end58, %do.end34
  %ret.0.ph = phi i32 [ -22, %do.end34 ], [ %call.i, %do.end58 ]
  %call91172 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %36 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call91172, i32 %36)
  %cmp92173 = icmp ult i32 %call91172, %36
  br i1 %cmp92173, label %for.cond90.preheader.for.body93_crit_edge, label %for.cond90.preheader.for.end115_crit_edge

for.cond90.preheader.for.end115_crit_edge:        ; preds = %for.cond90.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end115

for.cond90.preheader.for.body93_crit_edge:        ; preds = %for.cond90.preheader
  br label %for.body93

for.end:                                          ; preds = %for.cond
  tail call void @sched_clock_register(ptr noundef nonnull @tegra_read_sched_clock, i32 noundef 32, i32 noundef 1000000) #7
  %37 = load ptr, ptr @timer_reg_base, align 4
  %add.ptr71 = getelementptr i8, ptr %37, i32 16
  %call72 = tail call i32 @clocksource_mmio_init(ptr noundef %add.ptr71, ptr noundef nonnull @.str.7, i32 noundef 1000000, i32 noundef 300, i32 noundef 32, ptr noundef nonnull @clocksource_mmio_readl_up) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %for.end.if.end80_crit_edge, label %do.end77

for.end.if.end80_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

do.end77:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call72) #11
  br label %if.end80

if.end80:                                         ; preds = %do.end77, %for.end.if.end80_crit_edge
  tail call void @register_current_timer_delay(ptr noundef nonnull @tegra_delay_timer) #7
  %call.i167 = tail call i32 @__cpuhp_setup_state(i32 noundef 127, ptr noundef nonnull @.str.11, i1 noundef zeroext true, ptr noundef nonnull @tegra_timer_setup, ptr noundef nonnull @tegra_timer_stop, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i167)
  %tobool82.not = icmp eq i32 %call.i167, 0
  br i1 %tobool82.not, label %if.end80.cleanup118_crit_edge, label %do.end86

if.end80.cleanup118_crit_edge:                    ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup118

do.end86:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  %call88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call.i167) #11
  br label %cleanup118

for.body93:                                       ; preds = %if.end114.for.body93_crit_edge, %for.cond90.preheader.for.body93_crit_edge
  %call91174 = phi i32 [ %call91, %if.end114.for.body93_crit_edge ], [ %call91172, %for.cond90.preheader.for.body93_crit_edge ]
  %arrayidx102 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call91174
  %38 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx102, align 4
  %add103 = add i32 %39, ptrtoint (ptr @tegra_to to i32)
  %40 = inttoptr i32 %add103 to ptr
  %irq105 = getelementptr inbounds %struct.timer_of, ptr %40, i32 0, i32 3, i32 23
  %41 = ptrtoint ptr %irq105 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %irq105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool106.not = icmp eq i32 %42, 0
  br i1 %tobool106.not, label %for.body93.if.end114_crit_edge, label %if.then107

for.body93.if.end114_crit_edge:                   ; preds = %for.body93
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end114

if.then107:                                       ; preds = %for.body93
  call void @__sanitizer_cov_trace_pc() #9
  %clkevt104 = getelementptr inbounds %struct.timer_of, ptr %40, i32 0, i32 3
  %call111 = tail call ptr @free_irq(i32 noundef %42, ptr noundef %clkevt104) #7
  %43 = ptrtoint ptr %irq105 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %irq105, align 4
  tail call void @irq_dispose_mapping(i32 noundef %44) #7
  br label %if.end114

if.end114:                                        ; preds = %if.then107, %for.body93.if.end114_crit_edge
  %call91 = tail call i32 @cpumask_next(i32 noundef %call91174, ptr noundef nonnull @__cpu_possible_mask) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %45 = load i32, ptr @nr_cpu_ids, align 4
  %cmp92 = icmp ult i32 %call91, %45
  br i1 %cmp92, label %if.end114.for.body93_crit_edge, label %if.end114.for.end115_crit_edge

if.end114.for.end115_crit_edge:                   ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end115

if.end114.for.body93_crit_edge:                   ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body93

for.end115:                                       ; preds = %if.end114.for.end115_crit_edge, %for.cond90.preheader.for.end115_crit_edge
  %46 = load ptr, ptr @timer_reg_base, align 4
  %47 = ptrtoint ptr %of_base.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %of_base.i, align 128
  br label %out

out:                                              ; preds = %for.end115, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.1 = phi i32 [ %call3, %entry.out_crit_edge ], [ %ret.0.ph, %for.end115 ], [ -22, %if.end.out_crit_edge ]
  tail call void @timer_of_cleanup(ptr noundef %6) #11
  br label %cleanup118

cleanup118:                                       ; preds = %out, %do.end86, %if.end80.cleanup118_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out ], [ %call.i167, %do.end86 ], [ 0, %if.end80.cleanup118_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @timer_of_init(ptr noundef, ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_timer_isr(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %of_base.i = getelementptr i8, ptr %dev_id, i32 256
  %0 = ptrtoint ptr %of_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_base.i, align 128
  %add.ptr = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 64) #7, !srcloc !59
  %2 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_id, align 128
  tail call void %3(ptr noundef %dev_id) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @tegra_read_sched_clock() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load ptr, ptr @timer_reg_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 16
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !60
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %conv = zext i32 %2 to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clocksource_mmio_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clocksource_mmio_readl_up(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_current_timer_delay(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_timer_setup(i32 noundef %cpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @tegra_to to i32)
  %2 = inttoptr i32 %add to ptr
  %of_base.i = getelementptr inbounds %struct.timer_of, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %of_base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_base.i, align 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #7, !srcloc !59
  %5 = ptrtoint ptr %of_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_base.i, align 128
  %add.ptr3 = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 64) #7, !srcloc !59
  %clkevt = getelementptr inbounds %struct.timer_of, ptr %2, i32 0, i32 3
  %irq = getelementptr inbounds %struct.timer_of, ptr %2, i32 0, i32 3, i32 23
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  %rem.i = and i32 %cpu, 31
  %add.i = add nuw nsw i32 %rem.i, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %div3.i = lshr i32 %cpu, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  %call5 = tail call i32 @irq_force_affinity(i32 noundef %8, ptr noundef %add.ptr.i) #7
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %10) #7
  %rate.i = getelementptr inbounds %struct.timer_of, ptr %2, i32 0, i32 6, i32 3
  %11 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rate.i, align 4
  tail call void @clockevents_config_and_register(ptr noundef %clkevt, i32 noundef %12, i32 noundef 1, i32 noundef 536870912) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_timer_stop(i32 noundef %cpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @tegra_to to i32)
  %2 = inttoptr i32 %add to ptr
  %clkevt = getelementptr inbounds %struct.timer_of, ptr %2, i32 0, i32 3
  %set_state_shutdown = getelementptr inbounds %struct.timer_of, ptr %2, i32 0, i32 3, i32 14
  %3 = ptrtoint ptr %set_state_shutdown to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %set_state_shutdown, align 8
  %call = tail call i32 %4(ptr noundef %clkevt) #7
  %irq = getelementptr inbounds %struct.timer_of, ptr %2, i32 0, i32 3, i32 23
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  tail call void @disable_irq_nosync(i32 noundef %6) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @timer_of_cleanup(ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_delay_timer_read_counter_long() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @timer_reg_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 16
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !60
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_force_affinity(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clocksource_register_scale(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @tegra_rtc_read_ms(ptr nocapture noundef readnone %cs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.timer_of, ptr @suspend_rtc_to, i32 0, i32 4), align 128
  %add.ptr = getelementptr i8, ptr %0, i32 16
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !60
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %add.ptr3 = getelementptr i8, ptr %0, i32 12
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #7, !srcloc !60
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %conv = zext i32 %4 to i64
  %mul = mul nuw nsw i64 %conv, 1000
  %conv6 = zext i32 %2 to i64
  %add = add nuw nsw i64 %mul, %conv6
  ret i64 %add
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !20, !21, !23, !24, !25, !27, !29, !30, !31, !33, !35, !36, !37, !39, !41, !43, !45, !47}
!llvm.named.register.sp = !{!49}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clocksource/timer-tegra.c", i32 120, i32 11}
!2 = !{ptr @tegra_to, !3, !"tegra_to", i1 false, i1 false}
!3 = !{!"../drivers/clocksource/timer-tegra.c", i32 116, i32 8}
!4 = !{ptr @__of_table_tegra210_timer, !5, !"__of_table_tegra210_timer", i1 false, i1 false}
!5 = !{!"../drivers/clocksource/timer-tegra.c", i32 382, i32 1}
!6 = !{ptr @__of_table_tegra20_timer, !7, !"__of_table_tegra20_timer", i1 false, i1 false}
!7 = !{!"../drivers/clocksource/timer-tegra.c", i32 404, i32 1}
!8 = !{ptr @__of_table_tegra20_rtc, !9, !"__of_table_tegra20_rtc", i1 false, i1 false}
!9 = !{!"../drivers/clocksource/timer-tegra.c", i32 416, i32 1}
!10 = !{ptr @__pcpu_unique_tegra_to, !3, !"__pcpu_unique_tegra_to", i1 false, i1 false}
!11 = !{ptr @usec_config, !12, !"usec_config", i1 false, i1 false}
!12 = !{!"../drivers/clocksource/timer-tegra.c", i32 51, i32 12}
!13 = !{ptr @timer_reg_base, !14, !"timer_reg_base", i1 false, i1 false}
!14 = !{!"../drivers/clocksource/timer-tegra.c", i32 52, i32 22}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/clocksource/timer-tegra.c", i32 310, i32 4}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @tegra_init_timer._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @tegra_init_timer._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clocksource/timer-tegra.c", i32 327, i32 4}
!23 = !{ptr @tegra_init_timer._entry.4, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @tegra_init_timer._entry_ptr.6, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clocksource/timer-tegra.c", i32 338, i32 9}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clocksource/timer-tegra.c", i32 341, i32 3}
!29 = !{ptr @tegra_init_timer._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @tegra_init_timer._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clocksource/timer-tegra.c", i32 348, i32 5}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/clocksource/timer-tegra.c", i32 351, i32 3}
!35 = !{ptr @tegra_init_timer._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @tegra_init_timer._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @tegra_delay_timer, !38, !"tegra_delay_timer", i1 false, i1 false}
!38 = !{!"../drivers/clocksource/timer-tegra.c", i32 178, i32 27}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/clocksource/timer-tegra.c", i32 396, i32 31}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/clocksource/timer-tegra.c", i32 397, i32 31}
!43 = !{ptr @suspend_rtc_to, !44, !"suspend_rtc_to", i1 false, i1 false}
!44 = !{!"../drivers/clocksource/timer-tegra.c", i32 184, i32 24}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/clocksource/timer-tegra.c", i32 205, i32 10}
!47 = !{ptr @suspend_rtc_clocksource, !48, !"suspend_rtc_clocksource", i1 false, i1 false}
!48 = !{!"../drivers/clocksource/timer-tegra.c", i32 204, i32 27}
!49 = !{!"sp"}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{i64 4018373}
!60 = !{i64 4018791}
