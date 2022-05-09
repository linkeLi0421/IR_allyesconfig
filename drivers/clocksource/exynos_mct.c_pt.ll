; ModuleID = '/llk/IR_all_yes/drivers/clocksource/exynos_mct.c_pt.bc'
source_filename = "../drivers/clocksource/exynos_mct.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.mct_clock_event_device = type { %struct.clock_event_device, i32, [10 x i8], [114 x i8] }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [124 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.delay_timer = type { ptr, i32 }
%struct.clocksource = type { ptr, i64, i32, i32, i64, i32, i32, i64, ptr, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__of_table_exynos4210 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4210-mct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mct_init_spi }, section "__timer_of_table", align 4
@__of_table_exynos4412 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4412-mct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mct_init_ppi }, section "__timer_of_table", align 4
@__pcpu_unique_percpu_mct_tick = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@percpu_mct_tick = weak dso_local global %struct.mct_clock_event_device zeroinitializer, section ".data..percpu", align 128
@reg_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: unable to ioremap mct address space\0A\00", [55 x i8] zeroinitializer }, align 32
@__func__.exynos4_timer_resources = private unnamed_addr constant [24 x i8] c"exynos4_timer_resources\00", align 1
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fin_pll\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: unable to determine tick clock rate\0A\00", [55 x i8] zeroinitializer }, align 32
@clk_rate = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mct\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: unable to retrieve mct clock instance\0A\00", [53 x i8] zeroinitializer }, align 32
@mct_int_type = internal global { i32, [28 x i8] } zeroinitializer, align 32
@mct_irqs = internal global { [12 x i32], [48 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MCT\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/clocksource/exynos_mct.c\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"MCT: can't request IRQ %d (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@exynos4_timer_interrupts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.6, i32 568, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013exynos-mct: cannot register IRQ (cpu%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"exynos4_timer_interrupts\00", [39 x i8] zeroinitializer }, align 32
@exynos4_timer_interrupts._entry_ptr = internal global ptr @exynos4_timer_interrupts._entry, section ".printk_index", align 4
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"clockevents/exynos4/mct_timer:starting\00", [57 x i8] zeroinitializer }, align 32
@loops_per_jiffy = external dso_local local_unnamed_addr global i32, align 4
@.str.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"MCT hangs after writing %d (offset:0x%lx)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mct_tick%d\00", [21 x i8] zeroinitializer }, align 32
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@exynos4_delay_timer = internal global { %struct.delay_timer, [24 x i8] } zeroinitializer, align 32
@mct_frc = internal global { %struct.clocksource, [56 x i8] } { %struct.clocksource { ptr @exynos4_frc_read, i64 4294967295, i32 0, i32 0, i64 0, i32 0, i32 0, i64 0, ptr @.str.14, %struct.list_head zeroinitializer, i32 450, i32 0, i32 0, i32 1, ptr null, ptr null, ptr null, ptr @exynos4_frc_resume, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: can't register clocksource\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mct-frc\00", [24 x i8] zeroinitializer }, align 32
@mct_comp_device = internal global %struct.clock_event_device { ptr null, ptr @exynos4_comp_set_next_event, ptr null, i64 0, i64 0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 0, ptr @mct_set_state_periodic, ptr @mct_set_state_shutdown, ptr @mct_set_state_shutdown, ptr @mct_set_state_shutdown, ptr @mct_set_state_shutdown, ptr null, ptr null, ptr null, i32 0, i32 0, ptr @.str.18, i32 250, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, [124 x i8] undef }, align 128
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mct_comp_irq\00", [19 x i8] zeroinitializer }, align 32
@exynos4_clockevent_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.6, i32 349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s: request_irq() failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"exynos4_clockevent_init\00", [40 x i8] zeroinitializer }, align 32
@exynos4_clockevent_init._entry_ptr = internal global ptr @exynos4_clockevent_init._entry, section ".printk_index", align 4
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mct-comp\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 8, i64 32]
@__sancov_gen_cov_switch_values.19 = internal global [8 x i64] [i64 6, i64 32, i64 256, i64 260, i64 512, i64 516, i64 520, i64 576]
@___asan_gen_.20 = private unnamed_addr constant [9 x i8] c"reg_base\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 84, i32 22 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 513, i32 9 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 515, i32 36 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 517, i32 9 }
@___asan_gen_.32 = private unnamed_addr constant [9 x i8] c"clk_rate\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 85, i32 22 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 520, i32 35 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 522, i32 9 }
@___asan_gen_.41 = private unnamed_addr constant [13 x i8] c"mct_int_type\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 86, i32 21 }
@___asan_gen_.44 = private unnamed_addr constant [9 x i8] c"mct_irqs\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 87, i32 12 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 550, i32 29 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 552, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 567, i32 5 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 578, i32 5 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 156, i32 8 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 458, i32 43 }
@___asan_gen_.74 = private unnamed_addr constant [20 x i8] c"exynos4_delay_timer\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 231, i32 27 }
@___asan_gen_.77 = private unnamed_addr constant [8 x i8] c"mct_frc\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 216, i32 27 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 252, i32 9 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 217, i32 11 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 347, i32 31 }
@___asan_gen_.89 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 349, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.99 = private constant [36 x i8] c"../drivers/clocksource/exynos_mct.c\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 318, i32 12 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__of_table_exynos4210, ptr @__of_table_exynos4412, ptr @exynos4_clockevent_init._entry, ptr @exynos4_clockevent_init._entry_ptr, ptr @exynos4_timer_interrupts._entry, ptr @exynos4_timer_interrupts._entry_ptr, ptr @reg_base, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @clk_rate, ptr @.str.3, ptr @.str.4, ptr @mct_int_type, ptr @mct_irqs, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @exynos4_delay_timer, ptr @mct_frc, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_rate to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mct_int_type to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mct_irqs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos4_timer_interrupts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos4_delay_timer to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mct_frc to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos4_clockevent_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mct_init_spi(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mct_init_dt(ptr noundef %np, i32 noundef 0) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mct_init_ppi(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mct_init_dt(ptr noundef %np, i32 noundef 1) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mct_init_dt(ptr noundef %np, i32 noundef %int_type) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @exynos4_timer_resources(ptr noundef %np) #11
  %call1 = tail call fastcc i32 @exynos4_timer_interrupts(ptr noundef %np, i32 noundef %int_type) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %entry
  tail call fastcc void @exynos4_clocksource_init() #11
  store ptr getelementptr inbounds ([33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 1), ptr getelementptr inbounds (%struct.clock_event_device, ptr @mct_comp_device, i32 0, i32 25), align 4
  %0 = load i32, ptr @clk_rate, align 4
  tail call void @clockevents_config_and_register(ptr noundef nonnull @mct_comp_device, i32 noundef %0, i32 noundef 15, i32 noundef -1) #8
  %1 = load i32, ptr @mct_irqs, align 4
  %call.i.i = tail call i32 @request_threaded_irq(i32 noundef %1, ptr noundef nonnull @exynos4_mct_comp_isr, ptr noundef null, i32 noundef 86528, ptr noundef nonnull @.str.15, ptr noundef nonnull @mct_comp_device) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end4.cleanup_crit_edge, label %do.end.i

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @exynos4_timer_resources(ptr noundef %np) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #8
  store ptr %call, ptr @reg_base, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.exynos4_timer_resources) #13
  unreachable

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @of_clk_get_by_name(ptr noundef %np, ptr noundef nonnull @.str.1) #8
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.exynos4_timer_resources) #13
  unreachable

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @clk_get_rate(ptr noundef %call1) #8
  store i32 %call5, ptr @clk_rate, align 4
  %call6 = tail call ptr @of_clk_get_by_name(ptr noundef %np, ptr noundef nonnull @.str.3) #8
  %cmp.i1 = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.exynos4_timer_resources) #13
  unreachable

if.end9:                                          ; preds = %if.end4
  %call.i = tail call i32 @clk_prepare(ptr noundef %call6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end9.clk_prepare_enable.exit_crit_edge

if.end9.clk_prepare_enable.exit_crit_edge:        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end9
  %call1.i = tail call i32 @clk_enable(ptr noundef %call6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %call6) #8
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.end9.clk_prepare_enable.exit_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @exynos4_timer_interrupts(ptr noundef %np, i32 noundef %int_type) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 %int_type, ptr @mct_int_type, align 4
  %call = tail call i32 @irq_of_parse_and_map(ptr noundef %np, i32 noundef 0) #8
  store i32 %call, ptr @mct_irqs, align 4
  %call1 = tail call i32 @of_irq_count(ptr noundef %np) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call1)
  %cmp114 = icmp sgt i32 %call1, 4
  br i1 %cmp114, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0115 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 4, %entry.for.body_crit_edge ]
  %call2 = tail call i32 @irq_of_parse_and_map(ptr noundef %np, i32 noundef %i.0115) #8
  %arrayidx = getelementptr [12 x i32], ptr @mct_irqs, i32 0, i32 %i.0115
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call2, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.0115, 1
  %exitcond.not = icmp eq i32 %inc, %call1
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %1 = load i32, ptr @mct_int_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp3 = icmp eq i32 %1, 1
  br i1 %cmp3, label %if.then, label %for.cond25.preheader

for.cond25.preheader:                             ; preds = %for.end
  %call26116 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call26116, i32 %2)
  %cmp27117 = icmp ult i32 %call26116, %2
  br i1 %cmp27117, label %for.cond25.preheader.for.body28_crit_edge, label %for.cond25.preheader.if.end50_crit_edge

for.cond25.preheader.if.end50_crit_edge:          ; preds = %for.cond25.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

for.cond25.preheader.for.body28_crit_edge:        ; preds = %for.cond25.preheader
  br label %for.body28

if.then:                                          ; preds = %for.end
  %3 = load i32, ptr getelementptr inbounds ([12 x i32], ptr @mct_irqs, i32 0, i32 4), align 4
  %call.i = tail call i32 @__request_percpu_irq(i32 noundef %3, ptr noundef nonnull @exynos4_mct_tick_isr, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull @percpu_mct_tick) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then.if.end50_crit_edge, label %do.end, !prof !71

if.then.if.end50_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %4 = load i32, ptr getelementptr inbounds ([12 x i32], ptr @mct_irqs, i32 0, i32 4), align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 553, i32 noundef 9, ptr noundef nonnull @.str.7, i32 noundef %4, i32 noundef %call.i) #8
  br label %if.end50

for.body28:                                       ; preds = %cleanup.for.body28_crit_edge, %for.cond25.preheader.for.body28_crit_edge
  %call26118 = phi i32 [ %call26, %cleanup.for.body28_crit_edge ], [ %call26116, %for.cond25.preheader.for.body28_crit_edge ]
  %add = add i32 %call26118, 4
  %arrayidx29 = getelementptr [12 x i32], ptr @mct_irqs, i32 0, i32 %add
  %5 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx29, align 4
  %arrayidx35 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call26118
  %7 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx35, align 4
  %add36 = add i32 %8, ptrtoint (ptr @percpu_mct_tick to i32)
  %9 = inttoptr i32 %add36 to ptr
  %irq = getelementptr inbounds %struct.clock_event_device, ptr %9, i32 0, i32 23
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %irq, align 4
  tail call void @irq_modify_status(i32 noundef %6, i32 noundef 0, i32 noundef 4096) #8
  %name = getelementptr inbounds %struct.mct_clock_event_device, ptr %9, i32 0, i32 2
  %call.i112 = tail call i32 @request_threaded_irq(i32 noundef %6, ptr noundef nonnull @exynos4_mct_tick_isr, ptr noundef null, i32 noundef 84480, ptr noundef %name, ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112)
  %tobool38.not = icmp eq i32 %call.i112, 0
  br i1 %tobool38.not, label %if.end45, label %do.end42

do.end42:                                         ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #10
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %call26118) #12
  br label %cleanup

if.end45:                                         ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %6, ptr %irq, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %do.end42
  %call26 = tail call i32 @cpumask_next(i32 noundef %call26118, ptr noundef nonnull @__cpu_possible_mask) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %12 = load i32, ptr @nr_cpu_ids, align 4
  %cmp27 = icmp ult i32 %call26, %12
  br i1 %cmp27, label %cleanup.for.body28_crit_edge, label %cleanup.if.end50_crit_edge

cleanup.if.end50_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

cleanup.for.body28_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body28

if.end50:                                         ; preds = %cleanup.if.end50_crit_edge, %do.end, %if.then.if.end50_crit_edge, %for.cond25.preheader.if.end50_crit_edge
  %call.i113 = tail call i32 @__cpuhp_setup_state(i32 noundef 121, ptr noundef nonnull @.str.10, i1 noundef zeroext true, ptr noundef nonnull @exynos4_mct_starting_cpu, ptr noundef nonnull @exynos4_mct_dying_cpu, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i113)
  %tobool52.not = icmp eq i32 %call.i113, 0
  br i1 %tobool52.not, label %if.end50.cleanup84_crit_edge, label %out_irq

if.end50.cleanup84_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup84

out_irq:                                          ; preds = %if.end50
  %13 = load i32, ptr @mct_int_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp55 = icmp eq i32 %13, 1
  br i1 %cmp55, label %if.then56, label %for.cond58.preheader

for.cond58.preheader:                             ; preds = %out_irq
  %call59119 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %14 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call59119, i32 %14)
  %cmp60120 = icmp ult i32 %call59119, %14
  br i1 %cmp60120, label %for.cond58.preheader.for.body61_crit_edge, label %for.cond58.preheader.cleanup84_crit_edge

for.cond58.preheader.cleanup84_crit_edge:         ; preds = %for.cond58.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup84

for.cond58.preheader.for.body61_crit_edge:        ; preds = %for.cond58.preheader
  br label %for.body61

if.then56:                                        ; preds = %out_irq
  call void @__sanitizer_cov_trace_pc() #10
  %15 = load i32, ptr getelementptr inbounds ([12 x i32], ptr @mct_irqs, i32 0, i32 4), align 4
  tail call void @free_percpu_irq(i32 noundef %15, ptr noundef nonnull @percpu_mct_tick) #8
  br label %cleanup84

for.body61:                                       ; preds = %if.end81.for.body61_crit_edge, %for.cond58.preheader.for.body61_crit_edge
  %call59121 = phi i32 [ %call59, %if.end81.for.body61_crit_edge ], [ %call59119, %for.cond58.preheader.for.body61_crit_edge ]
  %arrayidx70 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call59121
  %16 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx70, align 4
  %add71 = add i32 %17, ptrtoint (ptr @percpu_mct_tick to i32)
  %18 = inttoptr i32 %add71 to ptr
  %irq73 = getelementptr inbounds %struct.clock_event_device, ptr %18, i32 0, i32 23
  %19 = ptrtoint ptr %irq73 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp74.not = icmp eq i32 %20, -1
  br i1 %cmp74.not, label %for.body61.if.end81_crit_edge, label %if.then75

for.body61.if.end81_crit_edge:                    ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

if.then75:                                        ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #10
  %call78 = tail call ptr @free_irq(i32 noundef %20, ptr noundef %18) #8
  %21 = ptrtoint ptr %irq73 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %irq73, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then75, %for.body61.if.end81_crit_edge
  %call59 = tail call i32 @cpumask_next(i32 noundef %call59121, ptr noundef nonnull @__cpu_possible_mask) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %22 = load i32, ptr @nr_cpu_ids, align 4
  %cmp60 = icmp ult i32 %call59, %22
  br i1 %cmp60, label %if.end81.for.body61_crit_edge, label %if.end81.cleanup84_crit_edge

if.end81.cleanup84_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup84

if.end81.for.body61_crit_edge:                    ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body61

cleanup84:                                        ; preds = %if.end81.cleanup84_crit_edge, %if.then56, %for.cond58.preheader.cleanup84_crit_edge, %if.end50.cleanup84_crit_edge
  ret i32 %call.i113
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @exynos4_clocksource_init() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @reg_base, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 576
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !72
  %2 = or i32 %1, 65536
  %3 = load ptr, ptr @reg_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %2) #8, !srcloc !73
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %4 = load i32, ptr @loops_per_jiffy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %4)
  %5 = icmp ult i32 %4, 1000
  br i1 %5, label %entry.for.end.i.i_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.for.end.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.034.i.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %6 = load i32, ptr @loops_per_jiffy, align 4
  %div.i.i = udiv i32 %6, 1000
  %mul.i.i = mul nuw nsw i32 %div.i.i, 100
  %cmp13.i.i = icmp ult i32 %inc.i.i, %mul.i.i
  br i1 %cmp13.i.i, label %for.cond.i.i.for.body.i.i_crit_edge, label %for.cond.i.i.for.end.i.i_crit_edge

for.cond.i.i.for.end.i.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %i.034.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %entry.for.body.i.i_crit_edge ]
  %7 = load ptr, ptr @reg_base, align 4
  %add.ptr14.i.i = getelementptr i8, ptr %7, i32 588
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i.i) #8, !srcloc !72
  %9 = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool16.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool16.not.i.i, label %for.cond.i.i, label %exynos4_mct_frc_start.exit

for.end.i.i:                                      ; preds = %for.cond.i.i.for.end.i.i_crit_edge, %entry.for.end.i.i_crit_edge
  %10 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.11, i32 noundef %10, i32 noundef 576) #13
  unreachable

exynos4_mct_frc_start.exit:                       ; preds = %for.body.i.i
  %11 = load ptr, ptr @reg_base, align 4
  %add.ptr18.i.i = getelementptr i8, ptr %11, i32 588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i.i, i32 256) #8, !srcloc !73
  store ptr @exynos4_read_current_timer, ptr @exynos4_delay_timer, align 4
  %12 = load i32, ptr @clk_rate, align 4
  store i32 %12, ptr getelementptr inbounds (%struct.delay_timer, ptr @exynos4_delay_timer, i32 0, i32 1), align 4
  tail call void @register_current_timer_delay(ptr noundef nonnull @exynos4_delay_timer) #8
  %13 = load i32, ptr @clk_rate, align 4
  %call.i = tail call i32 @__clocksource_register_scale(ptr noundef nonnull @mct_frc, i32 noundef 1, i32 noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %exynos4_mct_frc_start.exit
  call void @__sanitizer_cov_trace_pc() #10
  %14 = load ptr, ptr getelementptr inbounds (%struct.clocksource, ptr @mct_frc, i32 0, i32 8), align 8
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.13, ptr noundef %14) #13
  unreachable

if.end:                                           ; preds = %exynos4_mct_frc_start.exit
  call void @__sanitizer_cov_trace_pc() #10
  %15 = load i32, ptr @clk_rate, align 4
  tail call void @sched_clock_register(ptr noundef nonnull @exynos4_read_sched_clock, i32 noundef 32, i32 noundef %15) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos4_mct_tick_isr(i32 noundef %irq, ptr noundef %dev_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state_use_accessors.i = getelementptr inbounds %struct.clock_event_device, ptr %dev_id, i32 0, i32 8
  %0 = ptrtoint ptr %state_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state_use_accessors.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %base.i = getelementptr inbounds %struct.mct_clock_event_device, ptr %dev_id, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base.i, align 128
  %add.i = add i32 %3, 32
  %4 = load ptr, ptr @reg_base, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 %add.i
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !72
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #8
  %and.i = and i32 %6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %and2.i = and i32 %6, -4
  tail call fastcc void @exynos4_mct_write(i32 noundef %and2.i, i32 noundef %add.i) #8
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %7 = load ptr, ptr @reg_base, align 4
  %base.i7 = getelementptr inbounds %struct.mct_clock_event_device, ptr %dev_id, i32 0, i32 1
  %8 = ptrtoint ptr %base.i7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base.i7, align 128
  %add.ptr.i8 = getelementptr i8, ptr %7, i32 %9
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i8, i32 48
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #8, !srcloc !72
  %11 = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i9 = icmp eq i32 %11, 0
  br i1 %tobool.not.i9, label %if.end.exynos4_mct_tick_clear.exit_crit_edge, label %if.then.i11

if.end.exynos4_mct_tick_clear.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %exynos4_mct_tick_clear.exit

if.then.i11:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %base.i7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base.i7, align 128
  %add.i10 = add i32 %13, 48
  tail call fastcc void @exynos4_mct_write(i32 noundef 1, i32 noundef %add.i10) #8
  br label %exynos4_mct_tick_clear.exit

exynos4_mct_tick_clear.exit:                      ; preds = %if.then.i11, %if.end.exynos4_mct_tick_clear.exit_crit_edge
  %14 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_id, align 128
  tail call void %15(ptr noundef %dev_id) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos4_mct_starting_cpu(i32 noundef %cpu) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @percpu_mct_tick to i32)
  %2 = inttoptr i32 %add to ptr
  %mul = shl i32 %cpu, 8
  %add3 = add i32 %mul, 768
  %base = getelementptr inbounds %struct.mct_clock_event_device, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %add3, ptr %base, align 128
  %name = getelementptr inbounds %struct.mct_clock_event_device, ptr %2, i32 0, i32 2
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 10, ptr noundef nonnull @.str.12, i32 noundef %cpu)
  %name6 = getelementptr inbounds %struct.clock_event_device, ptr %2, i32 0, i32 21
  %4 = ptrtoint ptr %name6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %name, ptr %name6, align 4
  %rem.i = and i32 %cpu, 31
  %add.i = add nuw nsw i32 %rem.i, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %div3.i = lshr i32 %cpu, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  %cpumask = getelementptr inbounds %struct.clock_event_device, ptr %2, i32 0, i32 25
  %5 = ptrtoint ptr %cpumask to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr.i, ptr %cpumask, align 4
  %set_next_event = getelementptr inbounds %struct.clock_event_device, ptr %2, i32 0, i32 1
  %6 = ptrtoint ptr %set_next_event to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @exynos4_tick_set_next_event, ptr %set_next_event, align 4
  %set_state_periodic = getelementptr inbounds %struct.clock_event_device, ptr %2, i32 0, i32 11
  %7 = ptrtoint ptr %set_state_periodic to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @set_state_periodic, ptr %set_state_periodic, align 4
  %set_state_shutdown = getelementptr inbounds %struct.clock_event_device, ptr %2, i32 0, i32 14
  %8 = ptrtoint ptr %set_state_shutdown to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @set_state_shutdown, ptr %set_state_shutdown, align 8
  %set_state_oneshot = getelementptr inbounds %struct.clock_event_device, ptr %2, i32 0, i32 12
  %9 = ptrtoint ptr %set_state_oneshot to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @set_state_shutdown, ptr %set_state_oneshot, align 64
  %set_state_oneshot_stopped = getelementptr inbounds %struct.clock_event_device, ptr %2, i32 0, i32 13
  %10 = ptrtoint ptr %set_state_oneshot_stopped to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @set_state_shutdown, ptr %set_state_oneshot_stopped, align 4
  %tick_resume = getelementptr inbounds %struct.clock_event_device, ptr %2, i32 0, i32 15
  %11 = ptrtoint ptr %tick_resume to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @set_state_shutdown, ptr %tick_resume, align 4
  %features = getelementptr inbounds %struct.clock_event_device, ptr %2, i32 0, i32 9
  %12 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 67, ptr %features, align 4
  %rating = getelementptr inbounds %struct.clock_event_device, ptr %2, i32 0, i32 22
  %13 = ptrtoint ptr %rating to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 500, ptr %rating, align 8
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %base, align 128
  tail call fastcc void @exynos4_mct_write(i32 noundef 1, i32 noundef %15)
  %16 = load i32, ptr @mct_int_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp = icmp eq i32 %16, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %irq = getelementptr inbounds %struct.clock_event_device, ptr %2, i32 0, i32 23
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp10 = icmp eq i32 %18, -1
  br i1 %cmp10, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call14 = tail call i32 @irq_force_affinity(i32 noundef %18, ptr noundef %add.ptr.i) #8
  %19 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %20) #8
  br label %if.end16

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %21 = load i32, ptr getelementptr inbounds ([12 x i32], ptr @mct_irqs, i32 0, i32 4), align 4
  tail call void @enable_percpu_irq(i32 noundef %21, i32 noundef 0) #8
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.end
  %22 = load i32, ptr @clk_rate, align 4
  %div39 = lshr i32 %22, 1
  tail call void @clockevents_config_and_register(ptr noundef %2, i32 noundef %div39, i32 noundef 15, i32 noundef 2147483647) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ -5, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos4_mct_dying_cpu(i32 noundef %cpu) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @percpu_mct_tick to i32)
  %2 = inttoptr i32 %add to ptr
  %set_state_shutdown = getelementptr inbounds %struct.clock_event_device, ptr %2, i32 0, i32 14
  %3 = ptrtoint ptr %set_state_shutdown to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %set_state_shutdown, align 8
  %call = tail call i32 %4(ptr noundef %2) #8
  %5 = load i32, ptr @mct_int_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %irq = getelementptr inbounds %struct.clock_event_device, ptr %2, i32 0, i32 23
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp3.not = icmp eq i32 %7, -1
  br i1 %cmp3.not, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @disable_irq_nosync(i32 noundef %7) #8
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %base = getelementptr inbounds %struct.mct_clock_event_device, ptr %2, i32 0, i32 1
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base, align 128
  %add6 = add i32 %9, 48
  tail call fastcc void @exynos4_mct_write(i32 noundef 1, i32 noundef %add6)
  br label %if.end7

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = load i32, ptr getelementptr inbounds ([12 x i32], ptr @mct_irqs, i32 0, i32 4), align 4
  tail call void @disable_percpu_irq(i32 noundef %10) #8
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.end
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_percpu_irq(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @exynos4_mct_write(i32 noundef %value, i32 noundef %offset) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.bswap.i32(i32 %value)
  %1 = load ptr, ptr @reg_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %offset
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #8, !srcloc !73
  call void @__sanitizer_cov_trace_const_cmp4(i32 767, i32 %offset)
  %cmp = icmp ugt i32 %offset, 767
  br i1 %cmp, label %if.then, label %if.else, !prof !71

if.then:                                          ; preds = %entry
  %and = and i32 %offset, -256
  %add = or i32 %and, 64
  %trunc = trunc i32 %offset to i8
  %2 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %if.then.cleanup_crit_edge [
    i8 32, label %if.then.if.end_crit_edge
    i8 8, label %sw.bb3
    i8 0, label %sw.bb4
  ]

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb3:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

sw.bb4:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = zext i32 %offset to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %offset, label %if.else.cleanup_crit_edge [
    i32 576, label %if.else.if.end_crit_edge
    i32 512, label %sw.bb6
    i32 516, label %sw.bb7
    i32 520, label %sw.bb8
    i32 256, label %sw.bb9
    i32 260, label %sw.bb10
  ]

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb6:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

sw.bb7:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

sw.bb8:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

sw.bb9:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

sw.bb10:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %if.else.if.end_crit_edge, %sw.bb4, %sw.bb3, %if.then.if.end_crit_edge
  %mask.0 = phi i32 [ 1, %sw.bb4 ], [ 2, %sw.bb3 ], [ 2, %sw.bb10 ], [ 1, %sw.bb9 ], [ 4, %sw.bb8 ], [ 2, %sw.bb7 ], [ 1, %sw.bb6 ], [ 8, %if.then.if.end_crit_edge ], [ 65536, %if.else.if.end_crit_edge ]
  %stat_addr.0 = phi i32 [ %add, %sw.bb4 ], [ %add, %sw.bb3 ], [ 272, %sw.bb10 ], [ 272, %sw.bb9 ], [ 588, %sw.bb8 ], [ 588, %sw.bb7 ], [ 588, %sw.bb6 ], [ %add, %if.then.if.end_crit_edge ], [ 588, %if.else.if.end_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %4 = load i32, ptr @loops_per_jiffy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %4)
  %5 = icmp ult i32 %4, 1000
  br i1 %5, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.034, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %6 = load i32, ptr @loops_per_jiffy, align 4
  %div = udiv i32 %6, 1000
  %mul = mul nuw nsw i32 %div, 100
  %cmp13 = icmp ult i32 %inc, %mul
  br i1 %cmp13, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.034 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %7 = load ptr, ptr @reg_base, align 4
  %add.ptr14 = getelementptr i8, ptr %7, i32 %stat_addr.0
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #8, !srcloc !72
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %and15 = and i32 %9, %mask.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %for.cond, label %if.then17

if.then17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %10 = tail call i32 @llvm.bswap.i32(i32 %mask.0)
  %11 = load ptr, ptr @reg_base, align 4
  %add.ptr18 = getelementptr i8, ptr %11, i32 %stat_addr.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %10) #8, !srcloc !73
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.11, i32 noundef %value, i32 noundef %offset) #13
  unreachable

cleanup:                                          ; preds = %if.then17, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos4_tick_set_next_event(i32 noundef %cycles, ptr nocapture noundef readonly %evt) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @exynos4_mct_tick_start(i32 noundef %cycles, ptr noundef %evt)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_state_periodic(ptr nocapture noundef readonly %evt) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mult = getelementptr inbounds %struct.clock_event_device, ptr %evt, i32 0, i32 6
  %0 = ptrtoint ptr %mult to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mult, align 8
  %shift = getelementptr inbounds %struct.clock_event_device, ptr %evt, i32 0, i32 7
  %2 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %shift, align 4
  %base.i = getelementptr inbounds %struct.mct_clock_event_device, ptr %evt, i32 0, i32 1
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base.i, align 128
  %add.i = add i32 %5, 32
  %6 = load ptr, ptr @reg_base, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %add.i
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !72
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  %and.i = and i32 %8, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.exynos4_mct_tick_stop.exit_crit_edge, label %if.then.i

entry.exynos4_mct_tick_stop.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %exynos4_mct_tick_stop.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and2.i = and i32 %8, -4
  tail call fastcc void @exynos4_mct_write(i32 noundef %and2.i, i32 noundef %add.i) #8
  br label %exynos4_mct_tick_stop.exit

exynos4_mct_tick_stop.exit:                       ; preds = %if.then.i, %entry.exynos4_mct_tick_stop.exit_crit_edge
  %conv = zext i32 %1 to i64
  %mul = mul nuw nsw i64 %conv, 10000000
  %sh_prom = zext i32 %3 to i64
  %shr = lshr i64 %mul, %sh_prom
  %conv1 = trunc i64 %shr to i32
  tail call fastcc void @exynos4_mct_tick_start(i32 noundef %conv1, ptr noundef %evt)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_state_shutdown(ptr nocapture noundef readonly %evt) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.mct_clock_event_device, ptr %evt, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base.i, align 128
  %add.i = add i32 %1, 32
  %2 = load ptr, ptr @reg_base, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 %add.i
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !72
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #8
  %and.i = and i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.exynos4_mct_tick_stop.exit_crit_edge, label %if.then.i

entry.exynos4_mct_tick_stop.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %exynos4_mct_tick_stop.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and2.i = and i32 %4, -4
  tail call fastcc void @exynos4_mct_write(i32 noundef %and2.i, i32 noundef %add.i) #8
  br label %exynos4_mct_tick_stop.exit

exynos4_mct_tick_stop.exit:                       ; preds = %if.then.i, %entry.exynos4_mct_tick_stop.exit_crit_edge
  %5 = load ptr, ptr @reg_base, align 4
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base.i, align 128
  %add.ptr.i3 = getelementptr i8, ptr %5, i32 %7
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i3, i32 48
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #8, !srcloc !72
  %9 = and i32 %8, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i4 = icmp eq i32 %9, 0
  br i1 %tobool.not.i4, label %exynos4_mct_tick_stop.exit.exynos4_mct_tick_clear.exit_crit_edge, label %if.then.i6

exynos4_mct_tick_stop.exit.exynos4_mct_tick_clear.exit_crit_edge: ; preds = %exynos4_mct_tick_stop.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %exynos4_mct_tick_clear.exit

if.then.i6:                                       ; preds = %exynos4_mct_tick_stop.exit
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base.i, align 128
  %add.i5 = add i32 %11, 48
  tail call fastcc void @exynos4_mct_write(i32 noundef 1, i32 noundef %add.i5) #8
  br label %exynos4_mct_tick_clear.exit

exynos4_mct_tick_clear.exit:                      ; preds = %if.then.i6, %exynos4_mct_tick_stop.exit.exynos4_mct_tick_clear.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_force_affinity(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_percpu_irq(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @exynos4_mct_tick_start(i32 noundef %cycles, ptr nocapture noundef readonly %mevt) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.mct_clock_event_device, ptr %mevt, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base.i, align 128
  %add.i = add i32 %1, 32
  %2 = load ptr, ptr @reg_base, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 %add.i
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !72
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #8
  %and.i = and i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.exynos4_mct_tick_stop.exit_crit_edge, label %if.then.i

entry.exynos4_mct_tick_stop.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %exynos4_mct_tick_stop.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and2.i = and i32 %4, -4
  tail call fastcc void @exynos4_mct_write(i32 noundef %and2.i, i32 noundef %add.i) #8
  br label %exynos4_mct_tick_stop.exit

exynos4_mct_tick_stop.exit:                       ; preds = %if.then.i, %entry.exynos4_mct_tick_stop.exit_crit_edge
  %or = or i32 %cycles, -2147483648
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base.i, align 128
  %add = add i32 %6, 8
  tail call fastcc void @exynos4_mct_write(i32 noundef %or, i32 noundef %add)
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base.i, align 128
  %add2 = add i32 %8, 52
  tail call fastcc void @exynos4_mct_write(i32 noundef 1, i32 noundef %add2)
  %9 = load ptr, ptr @reg_base, align 4
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base.i, align 128
  %add.ptr = getelementptr i8, ptr %9, i32 %11
  %add.ptr4 = getelementptr i8, ptr %add.ptr, i32 32
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #8, !srcloc !72
  %13 = or i32 %12, 117440512
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %base.i, align 128
  %add8 = add i32 %16, 32
  tail call fastcc void @exynos4_mct_write(i32 noundef %14, i32 noundef %add8)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_percpu_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos4_read_current_timer() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @reg_base, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 256
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !72
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #8
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_current_timer_delay(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @exynos4_read_sched_clock() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load ptr, ptr @reg_base, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 256
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !72
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #8
  %conv = zext i32 %2 to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clocksource_register_scale(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @exynos4_frc_read(ptr nocapture noundef readnone %cs) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @reg_base, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 256
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !72
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #8
  %conv = zext i32 %2 to i64
  ret i64 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos4_frc_resume(ptr nocapture noundef readnone %cs) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @reg_base, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 576
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !72
  %2 = or i32 %1, 65536
  %3 = load ptr, ptr @reg_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %2) #8, !srcloc !73
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %4 = load i32, ptr @loops_per_jiffy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %4)
  %5 = icmp ult i32 %4, 1000
  br i1 %5, label %entry.for.end.i.i_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.for.end.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.034.i.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %6 = load i32, ptr @loops_per_jiffy, align 4
  %div.i.i = udiv i32 %6, 1000
  %mul.i.i = mul nuw nsw i32 %div.i.i, 100
  %cmp13.i.i = icmp ult i32 %inc.i.i, %mul.i.i
  br i1 %cmp13.i.i, label %for.cond.i.i.for.body.i.i_crit_edge, label %for.cond.i.i.for.end.i.i_crit_edge

for.cond.i.i.for.end.i.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %i.034.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %entry.for.body.i.i_crit_edge ]
  %7 = load ptr, ptr @reg_base, align 4
  %add.ptr14.i.i = getelementptr i8, ptr %7, i32 588
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i.i) #8, !srcloc !72
  %9 = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool16.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool16.not.i.i, label %for.cond.i.i, label %exynos4_mct_frc_start.exit

for.end.i.i:                                      ; preds = %for.cond.i.i.for.end.i.i_crit_edge, %entry.for.end.i.i_crit_edge
  %10 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.11, i32 noundef %10, i32 noundef 576) #13
  unreachable

exynos4_mct_frc_start.exit:                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = load ptr, ptr @reg_base, align 4
  %add.ptr18.i.i = getelementptr i8, ptr %11, i32 588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i.i, i32 256) #8, !srcloc !73
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos4_mct_comp_isr(i32 noundef %irq, ptr noundef %dev_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @reg_base, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 580
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #8, !srcloc !73
  %1 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_id, align 128
  tail call void %2(ptr noundef %dev_id) #8
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos4_comp_set_next_event(i32 noundef %cycles, ptr nocapture noundef readnone %evt) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @exynos4_mct_comp0_start(i1 noundef zeroext false, i32 noundef %cycles)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mct_set_state_periodic(ptr nocapture noundef readonly %evt) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mult = getelementptr inbounds %struct.clock_event_device, ptr %evt, i32 0, i32 6
  %0 = ptrtoint ptr %mult to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mult, align 8
  %shift = getelementptr inbounds %struct.clock_event_device, ptr %evt, i32 0, i32 7
  %2 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %shift, align 4
  %4 = load ptr, ptr @reg_base, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 576
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !72
  %6 = and i32 %5, -50331649
  %7 = load ptr, ptr @reg_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %6) #8, !srcloc !73
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %8 = load i32, ptr @loops_per_jiffy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %8)
  %9 = icmp ult i32 %8, 1000
  br i1 %9, label %entry.for.end.i.i_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.for.end.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.034.i.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %10 = load i32, ptr @loops_per_jiffy, align 4
  %div.i.i = udiv i32 %10, 1000
  %mul.i.i = mul nuw nsw i32 %div.i.i, 100
  %cmp13.i.i = icmp ult i32 %inc.i.i, %mul.i.i
  br i1 %cmp13.i.i, label %for.cond.i.i.for.body.i.i_crit_edge, label %for.cond.i.i.for.end.i.i_crit_edge

for.cond.i.i.for.end.i.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %i.034.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %entry.for.body.i.i_crit_edge ]
  %11 = load ptr, ptr @reg_base, align 4
  %add.ptr14.i.i = getelementptr i8, ptr %11, i32 588
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i.i) #8, !srcloc !72
  %13 = and i32 %12, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool16.not.i.i = icmp eq i32 %13, 0
  br i1 %tobool16.not.i.i, label %for.cond.i.i, label %exynos4_mct_comp0_stop.exit

for.end.i.i:                                      ; preds = %for.cond.i.i.for.end.i.i_crit_edge, %entry.for.end.i.i_crit_edge
  %14 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.11, i32 noundef %14, i32 noundef 576) #13
  unreachable

exynos4_mct_comp0_stop.exit:                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i32 %1 to i64
  %mul = mul nuw nsw i64 %conv, 10000000
  %sh_prom = zext i32 %3 to i64
  %shr = lshr i64 %mul, %sh_prom
  %conv1 = trunc i64 %shr to i32
  %15 = load ptr, ptr @reg_base, align 4
  %add.ptr18.i.i = getelementptr i8, ptr %15, i32 588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i.i, i32 256) #8, !srcloc !73
  %16 = load ptr, ptr @reg_base, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %16, i32 584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 0) #8, !srcloc !73
  tail call fastcc void @exynos4_mct_comp0_start(i1 noundef zeroext true, i32 noundef %conv1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mct_set_state_shutdown(ptr nocapture noundef readnone %evt) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @reg_base, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 576
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !72
  %2 = and i32 %1, -50331649
  %3 = load ptr, ptr @reg_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %2) #8, !srcloc !73
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %4 = load i32, ptr @loops_per_jiffy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %4)
  %5 = icmp ult i32 %4, 1000
  br i1 %5, label %entry.for.end.i.i_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.for.end.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.034.i.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %6 = load i32, ptr @loops_per_jiffy, align 4
  %div.i.i = udiv i32 %6, 1000
  %mul.i.i = mul nuw nsw i32 %div.i.i, 100
  %cmp13.i.i = icmp ult i32 %inc.i.i, %mul.i.i
  br i1 %cmp13.i.i, label %for.cond.i.i.for.body.i.i_crit_edge, label %for.cond.i.i.for.end.i.i_crit_edge

for.cond.i.i.for.end.i.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %i.034.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %entry.for.body.i.i_crit_edge ]
  %7 = load ptr, ptr @reg_base, align 4
  %add.ptr14.i.i = getelementptr i8, ptr %7, i32 588
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i.i) #8, !srcloc !72
  %9 = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool16.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool16.not.i.i, label %for.cond.i.i, label %exynos4_mct_comp0_stop.exit

for.end.i.i:                                      ; preds = %for.cond.i.i.for.end.i.i_crit_edge, %entry.for.end.i.i_crit_edge
  %10 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.11, i32 noundef %10, i32 noundef 576) #13
  unreachable

exynos4_mct_comp0_stop.exit:                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = load ptr, ptr @reg_base, align 4
  %add.ptr18.i.i = getelementptr i8, ptr %11, i32 588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i.i, i32 256) #8, !srcloc !73
  %12 = load ptr, ptr @reg_base, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %12, i32 584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 0) #8, !srcloc !73
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @exynos4_mct_comp0_start(i1 noundef zeroext %periodic, i32 noundef %cycles) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @reg_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 576
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !72
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  br i1 %periodic, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %or = or i32 %2, 2
  %3 = tail call i32 @llvm.bswap.i32(i32 %cycles) #8
  %4 = load ptr, ptr @reg_base, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #8, !srcloc !73
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %5 = load i32, ptr @loops_per_jiffy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %5)
  %6 = icmp ult i32 %5, 1000
  br i1 %6, label %if.then.for.end.i_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.for.end.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.034.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %7 = load i32, ptr @loops_per_jiffy, align 4
  %div.i = udiv i32 %7, 1000
  %mul.i = mul nuw nsw i32 %div.i, 100
  %cmp13.i = icmp ult i32 %inc.i, %mul.i
  br i1 %cmp13.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.for.end.i_crit_edge

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.034.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %8 = load ptr, ptr @reg_base, align 4
  %add.ptr14.i = getelementptr i8, ptr %8, i32 588
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i) #8, !srcloc !72
  %10 = and i32 %9, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool16.not.i = icmp eq i32 %10, 0
  br i1 %tobool16.not.i, label %for.cond.i, label %exynos4_mct_write.exit

for.end.i:                                        ; preds = %for.cond.i.for.end.i_crit_edge, %if.then.for.end.i_crit_edge
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.11, i32 noundef %cycles, i32 noundef 520) #13
  unreachable

exynos4_mct_write.exit:                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = load ptr, ptr @reg_base, align 4
  %add.ptr18.i = getelementptr i8, ptr %11, i32 588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 67108864) #8, !srcloc !73
  br label %if.end

if.end:                                           ; preds = %exynos4_mct_write.exit, %entry.if.end_crit_edge
  %tcon.0 = phi i32 [ %or, %exynos4_mct_write.exit ], [ %2, %entry.if.end_crit_edge ]
  %12 = load ptr, ptr @reg_base, align 4
  %add.ptr.i9 = getelementptr i8, ptr %12, i32 260
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9) #8, !srcloc !72
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #8
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end
  %hi2.0.i = phi i32 [ %14, %if.end ], [ %19, %do.body.i.do.body.i_crit_edge ]
  %15 = load ptr, ptr @reg_base, align 4
  %add.ptr2.i = getelementptr i8, ptr %15, i32 256
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #8, !srcloc !72
  %17 = load ptr, ptr @reg_base, align 4
  %add.ptr6.i = getelementptr i8, ptr %17, i32 260
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #8, !srcloc !72
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #8
  %cmp.not.i = icmp eq i32 %hi2.0.i, %19
  br i1 %cmp.not.i, label %exynos4_read_count_64.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

exynos4_read_count_64.exit:                       ; preds = %do.body.i
  %20 = tail call i32 @llvm.bswap.i32(i32 %16) #8
  %conv.i = zext i32 %hi2.0.i to i64
  %shl.i = shl nuw i64 %conv.i, 32
  %conv9.i = zext i32 %20 to i64
  %conv = zext i32 %cycles to i64
  %or.i = or i64 %shl.i, %conv
  %add = add i64 %or.i, %conv9.i
  %conv2 = trunc i64 %add to i32
  %21 = tail call i32 @llvm.bswap.i32(i32 %conv2) #8
  %22 = load ptr, ptr @reg_base, align 4
  %add.ptr.i10 = getelementptr i8, ptr %22, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 %21) #8, !srcloc !73
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %23 = load i32, ptr @loops_per_jiffy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %23)
  %24 = icmp ult i32 %23, 1000
  br i1 %24, label %exynos4_read_count_64.exit.for.end.i22_crit_edge, label %exynos4_read_count_64.exit.for.body.i20_crit_edge

exynos4_read_count_64.exit.for.body.i20_crit_edge: ; preds = %exynos4_read_count_64.exit
  br label %for.body.i20

exynos4_read_count_64.exit.for.end.i22_crit_edge: ; preds = %exynos4_read_count_64.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i22

for.cond.i15:                                     ; preds = %for.body.i20
  %inc.i11 = add nuw nsw i32 %i.034.i16, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %25 = load i32, ptr @loops_per_jiffy, align 4
  %div.i12 = udiv i32 %25, 1000
  %mul.i13 = mul nuw nsw i32 %div.i12, 100
  %cmp13.i14 = icmp ult i32 %inc.i11, %mul.i13
  br i1 %cmp13.i14, label %for.cond.i15.for.body.i20_crit_edge, label %for.cond.i15.for.end.i22_crit_edge

for.cond.i15.for.end.i22_crit_edge:               ; preds = %for.cond.i15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i22

for.cond.i15.for.body.i20_crit_edge:              ; preds = %for.cond.i15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i20

for.body.i20:                                     ; preds = %for.cond.i15.for.body.i20_crit_edge, %exynos4_read_count_64.exit.for.body.i20_crit_edge
  %i.034.i16 = phi i32 [ %inc.i11, %for.cond.i15.for.body.i20_crit_edge ], [ 0, %exynos4_read_count_64.exit.for.body.i20_crit_edge ]
  %26 = load ptr, ptr @reg_base, align 4
  %add.ptr14.i17 = getelementptr i8, ptr %26, i32 588
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i17) #8, !srcloc !72
  %28 = and i32 %27, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool16.not.i19 = icmp eq i32 %28, 0
  br i1 %tobool16.not.i19, label %for.cond.i15, label %exynos4_mct_write.exit23

for.end.i22:                                      ; preds = %for.cond.i15.for.end.i22_crit_edge, %exynos4_read_count_64.exit.for.end.i22_crit_edge
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.11, i32 noundef %conv2, i32 noundef 512) #13
  unreachable

exynos4_mct_write.exit23:                         ; preds = %for.body.i20
  %29 = load ptr, ptr @reg_base, align 4
  %add.ptr18.i21 = getelementptr i8, ptr %29, i32 588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i21, i32 16777216) #8, !srcloc !73
  %shr = lshr i64 %add, 32
  %conv3 = trunc i64 %shr to i32
  %30 = tail call i32 @llvm.bswap.i32(i32 %conv3) #8
  %31 = load ptr, ptr @reg_base, align 4
  %add.ptr.i24 = getelementptr i8, ptr %31, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 %30) #8, !srcloc !73
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %32 = load i32, ptr @loops_per_jiffy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %32)
  %33 = icmp ult i32 %32, 1000
  br i1 %33, label %exynos4_mct_write.exit23.for.end.i36_crit_edge, label %exynos4_mct_write.exit23.for.body.i34_crit_edge

exynos4_mct_write.exit23.for.body.i34_crit_edge:  ; preds = %exynos4_mct_write.exit23
  br label %for.body.i34

exynos4_mct_write.exit23.for.end.i36_crit_edge:   ; preds = %exynos4_mct_write.exit23
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i36

for.cond.i29:                                     ; preds = %for.body.i34
  %inc.i25 = add nuw nsw i32 %i.034.i30, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %34 = load i32, ptr @loops_per_jiffy, align 4
  %div.i26 = udiv i32 %34, 1000
  %mul.i27 = mul nuw nsw i32 %div.i26, 100
  %cmp13.i28 = icmp ult i32 %inc.i25, %mul.i27
  br i1 %cmp13.i28, label %for.cond.i29.for.body.i34_crit_edge, label %for.cond.i29.for.end.i36_crit_edge

for.cond.i29.for.end.i36_crit_edge:               ; preds = %for.cond.i29
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i36

for.cond.i29.for.body.i34_crit_edge:              ; preds = %for.cond.i29
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i34

for.body.i34:                                     ; preds = %for.cond.i29.for.body.i34_crit_edge, %exynos4_mct_write.exit23.for.body.i34_crit_edge
  %i.034.i30 = phi i32 [ %inc.i25, %for.cond.i29.for.body.i34_crit_edge ], [ 0, %exynos4_mct_write.exit23.for.body.i34_crit_edge ]
  %35 = load ptr, ptr @reg_base, align 4
  %add.ptr14.i31 = getelementptr i8, ptr %35, i32 588
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i31) #8, !srcloc !72
  %37 = and i32 %36, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool16.not.i33 = icmp eq i32 %37, 0
  br i1 %tobool16.not.i33, label %for.cond.i29, label %exynos4_mct_write.exit37

for.end.i36:                                      ; preds = %for.cond.i29.for.end.i36_crit_edge, %exynos4_mct_write.exit23.for.end.i36_crit_edge
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.11, i32 noundef %conv3, i32 noundef 516) #13
  unreachable

exynos4_mct_write.exit37:                         ; preds = %for.body.i34
  %38 = load ptr, ptr @reg_base, align 4
  %add.ptr18.i35 = getelementptr i8, ptr %38, i32 588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i35, i32 33554432) #8, !srcloc !73
  %39 = load ptr, ptr @reg_base, align 4
  %add.ptr.i38 = getelementptr i8, ptr %39, i32 584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 16777216) #8, !srcloc !73
  %or4 = or i32 %tcon.0, 1
  %40 = tail call i32 @llvm.bswap.i32(i32 %or4) #8
  %41 = load ptr, ptr @reg_base, align 4
  %add.ptr.i39 = getelementptr i8, ptr %41, i32 576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 %40) #8, !srcloc !73
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %42 = load i32, ptr @loops_per_jiffy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %42)
  %43 = icmp ult i32 %42, 1000
  br i1 %43, label %exynos4_mct_write.exit37.for.end.i51_crit_edge, label %exynos4_mct_write.exit37.for.body.i49_crit_edge

exynos4_mct_write.exit37.for.body.i49_crit_edge:  ; preds = %exynos4_mct_write.exit37
  br label %for.body.i49

exynos4_mct_write.exit37.for.end.i51_crit_edge:   ; preds = %exynos4_mct_write.exit37
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i51

for.cond.i44:                                     ; preds = %for.body.i49
  %inc.i40 = add nuw nsw i32 %i.034.i45, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %44 = load i32, ptr @loops_per_jiffy, align 4
  %div.i41 = udiv i32 %44, 1000
  %mul.i42 = mul nuw nsw i32 %div.i41, 100
  %cmp13.i43 = icmp ult i32 %inc.i40, %mul.i42
  br i1 %cmp13.i43, label %for.cond.i44.for.body.i49_crit_edge, label %for.cond.i44.for.end.i51_crit_edge

for.cond.i44.for.end.i51_crit_edge:               ; preds = %for.cond.i44
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i51

for.cond.i44.for.body.i49_crit_edge:              ; preds = %for.cond.i44
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i49

for.body.i49:                                     ; preds = %for.cond.i44.for.body.i49_crit_edge, %exynos4_mct_write.exit37.for.body.i49_crit_edge
  %i.034.i45 = phi i32 [ %inc.i40, %for.cond.i44.for.body.i49_crit_edge ], [ 0, %exynos4_mct_write.exit37.for.body.i49_crit_edge ]
  %45 = load ptr, ptr @reg_base, align 4
  %add.ptr14.i46 = getelementptr i8, ptr %45, i32 588
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i46) #8, !srcloc !72
  %47 = and i32 %46, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool16.not.i48 = icmp eq i32 %47, 0
  br i1 %tobool16.not.i48, label %for.cond.i44, label %exynos4_mct_write.exit52

for.end.i51:                                      ; preds = %for.cond.i44.for.end.i51_crit_edge, %exynos4_mct_write.exit37.for.end.i51_crit_edge
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.11, i32 noundef %or4, i32 noundef 576) #13
  unreachable

exynos4_mct_write.exit52:                         ; preds = %for.body.i49
  call void @__sanitizer_cov_trace_pc() #10
  %48 = load ptr, ptr @reg_base, align 4
  %add.ptr18.i50 = getelementptr i8, ptr %48, i32 588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i50, i32 256) #8, !srcloc !73
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold }
attributes #12 = { cold nounwind }
attributes #13 = { cold noreturn nounwind }
attributes #14 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !28, !30, !31, !32, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !56, !57, !58, !60}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @__of_table_exynos4210, !1, !"__of_table_exynos4210", i1 false, i1 false}
!1 = !{!"../drivers/clocksource/exynos_mct.c", i32 632, i32 1}
!2 = !{ptr @__of_table_exynos4412, !3, !"__of_table_exynos4412", i1 false, i1 false}
!3 = !{!"../drivers/clocksource/exynos_mct.c", i32 633, i32 1}
!4 = !{ptr @__pcpu_unique_percpu_mct_tick, !5, !"__pcpu_unique_percpu_mct_tick", i1 false, i1 false}
!5 = !{!"../drivers/clocksource/exynos_mct.c", i32 354, i32 8}
!6 = !{ptr @percpu_mct_tick, !5, !"percpu_mct_tick", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/clocksource/exynos_mct.c", i32 513, i32 9}
!9 = !{ptr @__func__.exynos4_timer_resources, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/clocksource/exynos_mct.c", i32 513, i32 54}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/clocksource/exynos_mct.c", i32 515, i32 36}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/clocksource/exynos_mct.c", i32 517, i32 9}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/clocksource/exynos_mct.c", i32 520, i32 35}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/clocksource/exynos_mct.c", i32 522, i32 9}
!19 = !{ptr @reg_base, !20, !"reg_base", i1 false, i1 false}
!20 = !{!"../drivers/clocksource/exynos_mct.c", i32 84, i32 22}
!21 = !{ptr @clk_rate, !22, !"clk_rate", i1 false, i1 false}
!22 = !{!"../drivers/clocksource/exynos_mct.c", i32 85, i32 22}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/clocksource/exynos_mct.c", i32 550, i32 29}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clocksource/exynos_mct.c", i32 552, i32 3}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clocksource/exynos_mct.c", i32 567, i32 5}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @exynos4_timer_interrupts._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @exynos4_timer_interrupts._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/clocksource/exynos_mct.c", i32 578, i32 5}
!35 = !{ptr @mct_int_type, !36, !"mct_int_type", i1 false, i1 false}
!36 = !{!"../drivers/clocksource/exynos_mct.c", i32 86, i32 21}
!37 = !{ptr @mct_irqs, !38, !"mct_irqs", i1 false, i1 false}
!38 = !{!"../drivers/clocksource/exynos_mct.c", i32 87, i32 12}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/clocksource/exynos_mct.c", i32 156, i32 8}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/clocksource/exynos_mct.c", i32 458, i32 43}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/clocksource/exynos_mct.c", i32 252, i32 9}
!45 = !{ptr @exynos4_delay_timer, !46, !"exynos4_delay_timer", i1 false, i1 false}
!46 = !{!"../drivers/clocksource/exynos_mct.c", i32 231, i32 27}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/clocksource/exynos_mct.c", i32 217, i32 11}
!49 = !{ptr @mct_frc, !50, !"mct_frc", i1 false, i1 false}
!50 = !{!"../drivers/clocksource/exynos_mct.c", i32 216, i32 27}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/clocksource/exynos_mct.c", i32 347, i32 31}
!53 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/clocksource/exynos_mct.c", i32 349, i32 3}
!55 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @exynos4_clockevent_init._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @exynos4_clockevent_init._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clocksource/exynos_mct.c", i32 318, i32 12}
!60 = !{ptr @mct_comp_device, !61, !"mct_comp_device", i1 false, i1 false}
!61 = !{!"../drivers/clocksource/exynos_mct.c", i32 317, i32 34}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{!"branch_weights", i32 2000, i32 1}
!72 = !{i64 4213002}
!73 = !{i64 4212584}
