; ModuleID = '/llk/IR_all_yes/drivers/clocksource/timer-fsl-ftm.c_pt.bc'
source_filename = "../drivers/clocksource/timer-fsl-ftm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [124 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.ftm_clock_device = type { ptr, ptr, i32, i32, i8 }

@__of_table_flextimer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ftm-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ftm_timer_init }, section "__timer_of_table", align 4
@priv = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ftm_timer_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013ftm: unable to map event timer registers\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ftm_timer_init\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/clocksource/timer-fsl-ftm.c\00", [60 x i8] zeroinitializer }, align 32
@ftm_timer_init._entry_ptr = internal global ptr @ftm_timer_init._entry, section ".printk_index", align 4
@ftm_timer_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013ftm: unable to map source timer registers\0A\00", [51 x i8] zeroinitializer }, align 32
@ftm_timer_init._entry_ptr.5 = internal global ptr @ftm_timer_init._entry.3, section ".printk_index", align 4
@ftm_timer_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013ftm: unable to get IRQ from DT, %d\0A\00", [58 x i8] zeroinitializer }, align 32
@ftm_timer_init._entry_ptr.8 = internal global ptr @ftm_timer_init._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"big-endian\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ftm-evt-counter-en\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ftm-evt\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ftm-src-counter-en\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ftm-src\00", [24 x i8] zeroinitializer }, align 32
@__ftm_clk_init._entry = internal constant %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 238, ptr null, ptr null }, align 1
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013ftm: Cannot get \22%s\22: %ld\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"__ftm_clk_init\00", [17 x i8] zeroinitializer }, align 32
@__ftm_clk_init._entry_ptr = internal global ptr @__ftm_clk_init._entry, section ".printk_index", align 4
@__ftm_clk_init._entry.16 = internal constant %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 244, ptr null, ptr null }, align 1
@.str.17 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013ftm: clock failed to prepare+enable \22%s\22: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@__ftm_clk_init._entry_ptr.18 = internal global ptr @__ftm_clk_init._entry.16, section ".printk_index", align 4
@__ftm_clk_init._entry.19 = internal constant %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 250, ptr null, ptr null }, align 1
@__ftm_clk_init._entry_ptr.20 = internal global ptr @__ftm_clk_init._entry.19, section ".printk_index", align 4
@__ftm_clk_init._entry.21 = internal constant %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 256, ptr null, ptr null }, align 1
@__ftm_clk_init._entry_ptr.22 = internal global ptr @__ftm_clk_init._entry.21, section ".printk_index", align 4
@ftm_calc_closest_round_cyc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013ftm: the prescaler is %lu > %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ftm_calc_closest_round_cyc\00", [37 x i8] zeroinitializer }, align 32
@ftm_calc_closest_round_cyc._entry_ptr = internal global ptr @ftm_calc_closest_round_cyc._entry, section ".printk_index", align 4
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fsl-ftm\00", [24 x i8] zeroinitializer }, align 32
@ftm_clocksource_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013ftm: init clock source mmio failed: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ftm_clocksource_init\00", [43 x i8] zeroinitializer }, align 32
@ftm_clocksource_init._entry_ptr = internal global ptr @ftm_clocksource_init._entry, section ".printk_index", align 4
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Freescale ftm timer\00", [44 x i8] zeroinitializer }, align 32
@ftm_clockevent = internal global %struct.clock_event_device { ptr null, ptr @ftm_set_next_event, ptr null, i64 0, i64 0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 0, ptr @ftm_set_periodic, ptr @ftm_set_oneshot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr @.str.28, i32 300, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, [124 x i8] undef }, align 128
@ftm_clockevent_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013ftm: setup irq failed: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ftm_clockevent_init\00", [44 x i8] zeroinitializer }, align 32
@ftm_clockevent_init._entry_ptr = internal global ptr @ftm_clockevent_init._entry, section ".printk_index", align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@___asan_gen_.31 = private unnamed_addr constant [5 x i8] c"priv\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 30, i32 33 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 310, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 316, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 323, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 327, i32 47 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 265, i32 28 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 265, i32 50 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 269, i32 28 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 269, i32 50 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 238, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 243, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 290, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 217, i32 59 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 221, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 189, i32 6 }
@___asan_gen_.106 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.113 = private constant [39 x i8] c"../drivers/clocksource/timer-fsl-ftm.c\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 191, i32 3 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__ftm_clk_init._entry, ptr @__ftm_clk_init._entry.16, ptr @__ftm_clk_init._entry.19, ptr @__ftm_clk_init._entry.21, ptr @__ftm_clk_init._entry_ptr, ptr @__ftm_clk_init._entry_ptr.18, ptr @__ftm_clk_init._entry_ptr.20, ptr @__ftm_clk_init._entry_ptr.22, ptr @__of_table_flextimer, ptr @ftm_calc_closest_round_cyc._entry, ptr @ftm_calc_closest_round_cyc._entry_ptr, ptr @ftm_clockevent_init._entry, ptr @ftm_clockevent_init._entry_ptr, ptr @ftm_clocksource_init._entry, ptr @ftm_clocksource_init._entry_ptr, ptr @ftm_timer_init._entry, ptr @ftm_timer_init._entry.3, ptr @ftm_timer_init._entry.6, ptr @ftm_timer_init._entry_ptr, ptr @ftm_timer_init._entry_ptr.5, ptr @ftm_timer_init._entry_ptr.8, ptr @priv, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @priv to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftm_timer_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftm_timer_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftm_timer_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftm_calc_closest_round_cyc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftm_clocksource_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftm_clockevent_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ftm_timer_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 20) #9
  store ptr %call7.i.i, ptr @priv, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #6
  %1 = load ptr, ptr @priv, align 4
  %clkevt_base = getelementptr inbounds %struct.ftm_clock_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clkevt_base to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %clkevt_base, align 4
  %tobool3.not = icmp eq ptr %call1, null
  br i1 %tobool3.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  br label %err_clkevt

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 1) #6
  %3 = load ptr, ptr @priv, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7, ptr %3, align 4
  %tobool9.not = icmp eq ptr %call7, null
  br i1 %tobool9.not, label %do.end13, label %if.end16

do.end13:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #10
  br label %err_clksrc

if.end16:                                         ; preds = %if.end6
  %call17 = tail call i32 @irq_of_parse_and_map(ptr noundef %np, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call17)
  %cmp = icmp slt i32 %call17, 1
  br i1 %cmp, label %do.end21, label %if.end24

do.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %call17) #10
  br label %err

if.end24:                                         ; preds = %if.end16
  %call.i = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.9, ptr noundef null) #6
  %tobool.i = icmp ne ptr %call.i, null
  %5 = load ptr, ptr @priv, align 4
  %big_endian = getelementptr inbounds %struct.ftm_clock_device, ptr %5, i32 0, i32 4
  %frombool = zext i1 %tobool.i to i8
  %6 = ptrtoint ptr %big_endian to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool, ptr %big_endian, align 4
  %call26 = tail call fastcc i32 @ftm_clk_init(ptr noundef %np) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end24.err_crit_edge, label %if.end29

if.end24.err_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end29:                                         ; preds = %if.end24
  %call30 = tail call fastcc i32 @ftm_calc_closest_round_cyc(i32 noundef %call26) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end29.err_crit_edge

if.end29.err_crit_edge:                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end33:                                         ; preds = %if.end29
  %call34 = tail call fastcc i32 @ftm_clocksource_init(i32 noundef %call26) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end33.err_crit_edge

if.end33.err_crit_edge:                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end37:                                         ; preds = %if.end33
  %call38 = tail call fastcc i32 @ftm_clockevent_init(i32 noundef %call26, i32 noundef %call17) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end37.cleanup_crit_edge, label %if.end37.err_crit_edge

if.end37.err_crit_edge:                           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err:                                              ; preds = %if.end37.err_crit_edge, %if.end33.err_crit_edge, %if.end29.err_crit_edge, %if.end24.err_crit_edge, %do.end21
  %ret.0 = phi i32 [ -22, %do.end21 ], [ %call30, %if.end29.err_crit_edge ], [ %call34, %if.end33.err_crit_edge ], [ %call38, %if.end37.err_crit_edge ], [ -22, %if.end24.err_crit_edge ]
  %7 = load ptr, ptr @priv, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  tail call void @iounmap(ptr noundef %9) #6
  br label %err_clksrc

err_clksrc:                                       ; preds = %err, %do.end13
  %ret.1 = phi i32 [ %ret.0, %err ], [ -6, %do.end13 ]
  %10 = load ptr, ptr @priv, align 4
  %clkevt_base43 = getelementptr inbounds %struct.ftm_clock_device, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %clkevt_base43 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clkevt_base43, align 4
  tail call void @iounmap(ptr noundef %12) #6
  br label %err_clkevt

err_clkevt:                                       ; preds = %err_clksrc, %do.end
  %ret.2 = phi i32 [ %ret.1, %err_clksrc ], [ -6, %do.end ]
  %13 = load ptr, ptr @priv, align 4
  tail call void @kfree(ptr noundef %13) #6
  br label %cleanup

cleanup:                                          ; preds = %err_clkevt, %if.end37.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %err_clkevt ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end37.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ftm_clk_init(ptr noundef %np) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__ftm_clk_init(ptr noundef %np, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call fastcc i32 @__ftm_clk_init(ptr noundef %np, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #11
  %0 = tail call i32 @llvm.smax.i32(i32 %call1, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ftm_calc_closest_round_cyc(i32 noundef %freq) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @priv, align 4
  %ps = getelementptr inbounds %struct.ftm_clock_device, ptr %0, i32 0, i32 3
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %1 = phi i32 [ %inc, %do.body.do.body_crit_edge ], [ 0, %entry ]
  %inc = add i32 %1, 1
  %mul = shl i32 100, %1
  %div = sdiv i32 %mul, 2
  %add = add i32 %div, %freq
  %div2 = udiv i32 %add, %mul
  %cmp = icmp ugt i32 %div2, 65535
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.end:                                           ; preds = %do.body
  %periodic_cyc = getelementptr inbounds %struct.ftm_clock_device, ptr %0, i32 0, i32 2
  %2 = ptrtoint ptr %ps to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %inc, ptr %ps, align 4
  %3 = ptrtoint ptr %periodic_cyc to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %div2, ptr %periodic_cyc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %inc)
  %cmp5 = icmp ugt i32 %inc, 7
  br i1 %cmp5, label %do.end8, label %do.end.return_crit_edge

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %inc, i32 noundef 7) #10
  br label %return

return:                                           ; preds = %do.end8, %do.end.return_crit_edge
  %retval.0 = phi i32 [ -22, %do.end8 ], [ 0, %do.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ftm_clocksource_init(i32 noundef %freq) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @priv, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6
  %3 = load ptr, ptr @priv, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr2 = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 -1) #6
  %6 = load ptr, ptr @priv, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6
  %9 = load ptr, ptr @priv, align 4
  %ps = getelementptr inbounds %struct.ftm_clock_device, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ps, align 4
  %div14 = lshr i32 %freq, %11
  tail call void @sched_clock_register(ptr noundef nonnull @ftm_read_sched_clock, i32 noundef 16, i32 noundef %div14) #6
  %12 = load ptr, ptr @priv, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %add.ptr5 = getelementptr i8, ptr %14, i32 4
  %ps6 = getelementptr inbounds %struct.ftm_clock_device, ptr %12, i32 0, i32 3
  %15 = ptrtoint ptr %ps6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ps6, align 4
  %div815 = lshr i32 %freq, %16
  %call = tail call i32 @clocksource_mmio_init(ptr noundef %add.ptr5, ptr noundef nonnull @.str.25, i32 noundef %div815, i32 noundef 300, i32 noundef 16, ptr noundef nonnull @clocksource_mmio_readl_up) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %call) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %17 = load ptr, ptr @priv, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %big_endian.i.i = getelementptr inbounds %struct.ftm_clock_device, ptr %17, i32 0, i32 4
  %20 = ptrtoint ptr %big_endian.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %big_endian.i.i, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i.i = icmp eq i8 %21, 0
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #6
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  br label %ftm_readl.exit.i

if.else.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  br label %ftm_readl.exit.i

ftm_readl.exit.i:                                 ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %22, %if.then.i.i ], [ %23, %if.else.i.i ]
  %and.i = and i32 %retval.0.i.i, -32
  %24 = load ptr, ptr @priv, align 4
  %ps.i = getelementptr inbounds %struct.ftm_clock_device, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %ps.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ps.i, align 4
  %or.i = or i32 %and.i, %26
  %or1.i = or i32 %or.i, 8
  %big_endian.i6.i = getelementptr inbounds %struct.ftm_clock_device, ptr %24, i32 0, i32 4
  %27 = ptrtoint ptr %big_endian.i6.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %big_endian.i6.i, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i7.i = icmp eq i8 %28, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  br i1 %tobool.not.i7.i, label %if.else.i8.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %ftm_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %or1.i) #6, !srcloc !76
  br label %cleanup

if.else.i8.i:                                     ; preds = %ftm_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %29 = tail call i32 @llvm.bswap.i32(i32 %or1.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %29) #6, !srcloc !76
  br label %cleanup

cleanup:                                          ; preds = %if.else.i8.i, %do.body.i.i, %do.end
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ftm_clockevent_init(i32 noundef %freq, i32 noundef %irq) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @priv, align 4
  %clkevt_base = getelementptr inbounds %struct.ftm_clock_device, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %clkevt_base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %clkevt_base, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6
  %3 = load ptr, ptr @priv, align 4
  %clkevt_base1 = getelementptr inbounds %struct.ftm_clock_device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %clkevt_base1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clkevt_base1, align 4
  %add.ptr2 = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 -1) #6
  %6 = load ptr, ptr @priv, align 4
  %clkevt_base3 = getelementptr inbounds %struct.ftm_clock_device, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %clkevt_base3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clkevt_base3, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %irq, ptr noundef nonnull @ftm_evt_interrupt, ptr noundef null, i32 noundef 86528, ptr noundef nonnull @.str.28, ptr noundef nonnull @ftm_clockevent) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %call.i) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  store ptr getelementptr inbounds ([33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 1), ptr getelementptr inbounds (%struct.clock_event_device, ptr @ftm_clockevent, i32 0, i32 25), align 4
  store i32 %irq, ptr getelementptr inbounds (%struct.clock_event_device, ptr @ftm_clockevent, i32 0, i32 23), align 4
  %9 = load ptr, ptr @priv, align 4
  %ps = getelementptr inbounds %struct.ftm_clock_device, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ps, align 4
  %div10 = lshr i32 %freq, %11
  tail call void @clockevents_config_and_register(ptr noundef nonnull @ftm_clockevent, i32 noundef %div10, i32 noundef 1, i32 noundef 65535) #6
  %12 = load ptr, ptr @priv, align 4
  %clkevt_base6 = getelementptr inbounds %struct.ftm_clock_device, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %clkevt_base6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clkevt_base6, align 4
  %big_endian.i.i = getelementptr inbounds %struct.ftm_clock_device, ptr %12, i32 0, i32 4
  %15 = ptrtoint ptr %big_endian.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %big_endian.i.i, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i.i = icmp eq i8 %16, 0
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #6
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  br label %ftm_readl.exit.i

if.else.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  br label %ftm_readl.exit.i

ftm_readl.exit.i:                                 ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %17, %if.then.i.i ], [ %18, %if.else.i.i ]
  %and.i = and i32 %retval.0.i.i, -32
  %19 = load ptr, ptr @priv, align 4
  %ps.i = getelementptr inbounds %struct.ftm_clock_device, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %ps.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ps.i, align 4
  %or.i = or i32 %and.i, %21
  %or1.i = or i32 %or.i, 8
  %big_endian.i6.i = getelementptr inbounds %struct.ftm_clock_device, ptr %19, i32 0, i32 4
  %22 = ptrtoint ptr %big_endian.i6.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %big_endian.i6.i, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i7.i = icmp eq i8 %23, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  br i1 %tobool.not.i7.i, label %if.else.i8.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %ftm_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %or1.i) #6, !srcloc !76
  br label %cleanup

if.else.i8.i:                                     ; preds = %ftm_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %24 = tail call i32 @llvm.bswap.i32(i32 %or1.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %24) #6, !srcloc !76
  br label %cleanup

cleanup:                                          ; preds = %if.else.i8.i, %do.body.i.i, %do.end
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ftm_clk_init(ptr noundef %np, ptr noundef %cnt_name, ptr noundef %ftm_name) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_clk_get_by_name(ptr noundef %np, ptr noundef %cnt_name) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %call to i32
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %cnt_name, i32 noundef %0) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @clk_prepare(ptr noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.do.end9_crit_edge

if.end.do.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end9

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end12, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call) #6
  br label %do.end9

do.end9:                                          ; preds = %if.then3.i, %if.end.do.end9_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end.do.end9_crit_edge ]
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %cnt_name, i32 noundef %retval.0.i.ph) #10
  br label %cleanup

if.end12:                                         ; preds = %if.end.i
  %call13 = tail call ptr @of_clk_get_by_name(ptr noundef %np, ptr noundef %ftm_name) #6
  %cmp.i52 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i52, label %do.end18, label %if.end23

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call13 to i32
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %ftm_name, i32 noundef %1) #10
  br label %cleanup

if.end23:                                         ; preds = %if.end12
  %call.i53 = tail call i32 @clk_prepare(ptr noundef %call13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53)
  %tobool.not.i54 = icmp eq i32 %call.i53, 0
  br i1 %tobool.not.i54, label %if.end.i57, label %if.end23.do.end29_crit_edge

if.end23.do.end29_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end29

if.end.i57:                                       ; preds = %if.end23
  %call1.i55 = tail call i32 @clk_enable(ptr noundef %call13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i55)
  %tobool2.not.i56 = icmp eq i32 %call1.i55, 0
  br i1 %tobool2.not.i56, label %if.end.i57.if.end32_crit_edge, label %if.then3.i58

if.end.i57.if.end32_crit_edge:                    ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then3.i58:                                     ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call13) #6
  br label %do.end29

do.end29:                                         ; preds = %if.then3.i58, %if.end23.do.end29_crit_edge
  %retval.0.i59.ph = phi i32 [ %call1.i55, %if.then3.i58 ], [ %call.i53, %if.end23.do.end29_crit_edge ]
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %ftm_name, i32 noundef %retval.0.i59.ph) #10
  br label %if.end32

if.end32:                                         ; preds = %do.end29, %if.end.i57.if.end32_crit_edge
  %call33 = tail call i32 @clk_get_rate(ptr noundef %call13) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %do.end18, %do.end9, %do.end
  %retval.0 = phi i32 [ %0, %do.end ], [ %retval.0.i.ph, %do.end9 ], [ %1, %do.end18 ], [ %call33, %if.end32 ]
  ret i32 %retval.0
}

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
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @ftm_read_sched_clock() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = load ptr, ptr @priv, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 4
  %big_endian.i = getelementptr inbounds %struct.ftm_clock_device, ptr %0, i32 0, i32 4
  %3 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %big_endian.i, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  br label %ftm_readl.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  br label %ftm_readl.exit

ftm_readl.exit:                                   ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %5, %if.then.i ], [ %6, %if.else.i ]
  %conv = zext i32 %retval.0.i to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clocksource_mmio_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clocksource_mmio_readl_up(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftm_evt_interrupt(i32 noundef %irq, ptr noundef %dev_id) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @priv, align 4
  %clkevt_base = getelementptr inbounds %struct.ftm_clock_device, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %clkevt_base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %clkevt_base, align 4
  %big_endian.i.i = getelementptr inbounds %struct.ftm_clock_device, ptr %0, i32 0, i32 4
  %3 = ptrtoint ptr %big_endian.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %big_endian.i.i, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i.i = icmp eq i8 %4, 0
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #6
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  br label %ftm_readl.exit.i

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  br label %ftm_readl.exit.i

ftm_readl.exit.i:                                 ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %5, %if.then.i.i ], [ %6, %if.else.i.i ]
  %and.i = and i32 %retval.0.i.i, -129
  %7 = load ptr, ptr @priv, align 4
  %big_endian.i4.i = getelementptr inbounds %struct.ftm_clock_device, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %big_endian.i4.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %big_endian.i4.i, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i5.i = icmp eq i8 %9, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  br i1 %tobool.not.i5.i, label %if.else.i6.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %ftm_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %and.i) #6, !srcloc !76
  br label %ftm_irq_acknowledge.exit

if.else.i6.i:                                     ; preds = %ftm_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = tail call i32 @llvm.bswap.i32(i32 %and.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %10) #6, !srcloc !76
  br label %ftm_irq_acknowledge.exit

ftm_irq_acknowledge.exit:                         ; preds = %if.else.i6.i, %do.body.i.i
  %state_use_accessors.i = getelementptr inbounds %struct.clock_event_device, ptr %dev_id, i32 0, i32 8
  %11 = ptrtoint ptr %state_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state_use_accessors.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp.i = icmp eq i32 %12, 3
  br i1 %cmp.i, label %if.then, label %ftm_irq_acknowledge.exit.if.end_crit_edge, !prof !77

ftm_irq_acknowledge.exit.if.end_crit_edge:        ; preds = %ftm_irq_acknowledge.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %ftm_irq_acknowledge.exit
  %13 = load ptr, ptr @priv, align 4
  %clkevt_base2 = getelementptr inbounds %struct.ftm_clock_device, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %clkevt_base2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clkevt_base2, align 4
  %big_endian.i.i6 = getelementptr inbounds %struct.ftm_clock_device, ptr %13, i32 0, i32 4
  %16 = ptrtoint ptr %big_endian.i.i6 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %big_endian.i.i6, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i.i7 = icmp eq i8 %17, 0
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #6
  br i1 %tobool.not.i.i7, label %if.else.i.i9, label %if.then.i.i8

if.then.i.i8:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  br label %ftm_readl.exit.i14

if.else.i.i9:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  br label %ftm_readl.exit.i14

ftm_readl.exit.i14:                               ; preds = %if.else.i.i9, %if.then.i.i8
  %retval.0.i.i10 = phi i32 [ %18, %if.then.i.i8 ], [ %19, %if.else.i.i9 ]
  %and.i11 = and i32 %retval.0.i.i10, -65
  %20 = load ptr, ptr @priv, align 4
  %big_endian.i4.i12 = getelementptr inbounds %struct.ftm_clock_device, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %big_endian.i4.i12 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %big_endian.i4.i12, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i5.i13 = icmp eq i8 %22, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  br i1 %tobool.not.i5.i13, label %if.else.i6.i16, label %do.body.i.i15

do.body.i.i15:                                    ; preds = %ftm_readl.exit.i14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %and.i11) #6, !srcloc !76
  br label %ftm_irq_disable.exit

if.else.i6.i16:                                   ; preds = %ftm_readl.exit.i14
  call void @__sanitizer_cov_trace_pc() #8
  %23 = tail call i32 @llvm.bswap.i32(i32 %and.i11) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %23) #6, !srcloc !76
  br label %ftm_irq_disable.exit

ftm_irq_disable.exit:                             ; preds = %if.else.i6.i16, %do.body.i.i15
  %24 = load ptr, ptr @priv, align 4
  %clkevt_base3 = getelementptr inbounds %struct.ftm_clock_device, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %clkevt_base3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %clkevt_base3, align 4
  %big_endian.i.i17 = getelementptr inbounds %struct.ftm_clock_device, ptr %24, i32 0, i32 4
  %27 = ptrtoint ptr %big_endian.i.i17 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %big_endian.i.i17, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i.i18 = icmp eq i8 %28, 0
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #6
  br i1 %tobool.not.i.i18, label %if.else.i.i20, label %if.then.i.i19

if.then.i.i19:                                    ; preds = %ftm_irq_disable.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  br label %ftm_readl.exit.i25

if.else.i.i20:                                    ; preds = %ftm_irq_disable.exit
  call void @__sanitizer_cov_trace_pc() #8
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  br label %ftm_readl.exit.i25

ftm_readl.exit.i25:                               ; preds = %if.else.i.i20, %if.then.i.i19
  %retval.0.i.i21 = phi i32 [ %29, %if.then.i.i19 ], [ %30, %if.else.i.i20 ]
  %and.i22 = and i32 %retval.0.i.i21, -32
  %31 = load ptr, ptr @priv, align 4
  %big_endian.i4.i23 = getelementptr inbounds %struct.ftm_clock_device, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %big_endian.i4.i23 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %big_endian.i4.i23, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i5.i24 = icmp eq i8 %33, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  br i1 %tobool.not.i5.i24, label %if.else.i6.i27, label %do.body.i.i26

do.body.i.i26:                                    ; preds = %ftm_readl.exit.i25
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %and.i22) #6, !srcloc !76
  br label %if.end

if.else.i6.i27:                                   ; preds = %ftm_readl.exit.i25
  call void @__sanitizer_cov_trace_pc() #8
  %34 = tail call i32 @llvm.bswap.i32(i32 %and.i22) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %34) #6, !srcloc !76
  br label %if.end

if.end:                                           ; preds = %if.else.i6.i27, %do.body.i.i26, %ftm_irq_acknowledge.exit.if.end_crit_edge
  %35 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev_id, align 128
  tail call void %36(ptr noundef %dev_id) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftm_set_next_event(i32 noundef %delta, ptr nocapture noundef readnone %unused) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @priv, align 4
  %clkevt_base = getelementptr inbounds %struct.ftm_clock_device, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %clkevt_base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %clkevt_base, align 4
  %big_endian.i.i = getelementptr inbounds %struct.ftm_clock_device, ptr %0, i32 0, i32 4
  %3 = ptrtoint ptr %big_endian.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %big_endian.i.i, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i.i = icmp eq i8 %4, 0
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #6
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  br label %ftm_readl.exit.i

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  br label %ftm_readl.exit.i

ftm_readl.exit.i:                                 ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %5, %if.then.i.i ], [ %6, %if.else.i.i ]
  %and.i = and i32 %retval.0.i.i, -32
  %7 = load ptr, ptr @priv, align 4
  %big_endian.i4.i = getelementptr inbounds %struct.ftm_clock_device, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %big_endian.i4.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %big_endian.i4.i, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i5.i = icmp eq i8 %9, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  br i1 %tobool.not.i5.i, label %if.else.i6.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %ftm_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %and.i) #6, !srcloc !76
  br label %ftm_counter_disable.exit

if.else.i6.i:                                     ; preds = %ftm_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = tail call i32 @llvm.bswap.i32(i32 %and.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %10) #6, !srcloc !76
  br label %ftm_counter_disable.exit

ftm_counter_disable.exit:                         ; preds = %if.else.i6.i, %do.body.i.i
  %11 = load ptr, ptr @priv, align 4
  %clkevt_base1 = getelementptr inbounds %struct.ftm_clock_device, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %clkevt_base1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clkevt_base1, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6
  %sub = add i32 %delta, -1
  %14 = load ptr, ptr @priv, align 4
  %clkevt_base2 = getelementptr inbounds %struct.ftm_clock_device, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %clkevt_base2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clkevt_base2, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 8
  %big_endian.i = getelementptr inbounds %struct.ftm_clock_device, ptr %14, i32 0, i32 4
  %17 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %big_endian.i, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  br i1 %tobool.not.i, label %if.else.i, label %do.body.i

do.body.i:                                        ; preds = %ftm_counter_disable.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %sub) #6, !srcloc !76
  br label %ftm_writel.exit

if.else.i:                                        ; preds = %ftm_counter_disable.exit
  call void @__sanitizer_cov_trace_pc() #8
  %19 = tail call i32 @llvm.bswap.i32(i32 %sub) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %19) #6, !srcloc !76
  br label %ftm_writel.exit

ftm_writel.exit:                                  ; preds = %if.else.i, %do.body.i
  %20 = load ptr, ptr @priv, align 4
  %clkevt_base3 = getelementptr inbounds %struct.ftm_clock_device, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %clkevt_base3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clkevt_base3, align 4
  %big_endian.i.i5 = getelementptr inbounds %struct.ftm_clock_device, ptr %20, i32 0, i32 4
  %23 = ptrtoint ptr %big_endian.i.i5 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %big_endian.i.i5, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i.i6 = icmp eq i8 %24, 0
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #6
  br i1 %tobool.not.i.i6, label %if.else.i.i8, label %if.then.i.i7

if.then.i.i7:                                     ; preds = %ftm_writel.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  br label %ftm_readl.exit.i11

if.else.i.i8:                                     ; preds = %ftm_writel.exit
  call void @__sanitizer_cov_trace_pc() #8
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  br label %ftm_readl.exit.i11

ftm_readl.exit.i11:                               ; preds = %if.else.i.i8, %if.then.i.i7
  %retval.0.i.i9 = phi i32 [ %25, %if.then.i.i7 ], [ %26, %if.else.i.i8 ]
  %and.i10 = and i32 %retval.0.i.i9, -32
  %27 = load ptr, ptr @priv, align 4
  %ps.i = getelementptr inbounds %struct.ftm_clock_device, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %ps.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ps.i, align 4
  %or.i = or i32 %and.i10, %29
  %or1.i = or i32 %or.i, 8
  %big_endian.i6.i = getelementptr inbounds %struct.ftm_clock_device, ptr %27, i32 0, i32 4
  %30 = ptrtoint ptr %big_endian.i6.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %big_endian.i6.i, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i7.i = icmp eq i8 %31, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  br i1 %tobool.not.i7.i, label %if.else.i8.i, label %do.body.i.i12

do.body.i.i12:                                    ; preds = %ftm_readl.exit.i11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %or1.i) #6, !srcloc !76
  br label %ftm_counter_enable.exit

if.else.i8.i:                                     ; preds = %ftm_readl.exit.i11
  call void @__sanitizer_cov_trace_pc() #8
  %32 = tail call i32 @llvm.bswap.i32(i32 %or1.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %32) #6, !srcloc !76
  br label %ftm_counter_enable.exit

ftm_counter_enable.exit:                          ; preds = %if.else.i8.i, %do.body.i.i12
  %33 = load ptr, ptr @priv, align 4
  %clkevt_base4 = getelementptr inbounds %struct.ftm_clock_device, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %clkevt_base4 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %clkevt_base4, align 4
  %big_endian.i.i13 = getelementptr inbounds %struct.ftm_clock_device, ptr %33, i32 0, i32 4
  %36 = ptrtoint ptr %big_endian.i.i13 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %big_endian.i.i13, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i.i14 = icmp eq i8 %37, 0
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #6
  br i1 %tobool.not.i.i14, label %if.else.i.i16, label %if.then.i.i15

if.then.i.i15:                                    ; preds = %ftm_counter_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  br label %ftm_readl.exit.i21

if.else.i.i16:                                    ; preds = %ftm_counter_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  br label %ftm_readl.exit.i21

ftm_readl.exit.i21:                               ; preds = %if.else.i.i16, %if.then.i.i15
  %retval.0.i.i17 = phi i32 [ %38, %if.then.i.i15 ], [ %39, %if.else.i.i16 ]
  %or.i18 = or i32 %retval.0.i.i17, 64
  %40 = load ptr, ptr @priv, align 4
  %big_endian.i4.i19 = getelementptr inbounds %struct.ftm_clock_device, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %big_endian.i4.i19 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %big_endian.i4.i19, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i5.i20 = icmp eq i8 %42, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  br i1 %tobool.not.i5.i20, label %if.else.i6.i23, label %do.body.i.i22

do.body.i.i22:                                    ; preds = %ftm_readl.exit.i21
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %or.i18) #6, !srcloc !76
  br label %ftm_irq_enable.exit

if.else.i6.i23:                                   ; preds = %ftm_readl.exit.i21
  call void @__sanitizer_cov_trace_pc() #8
  %43 = tail call i32 @llvm.bswap.i32(i32 %or.i18) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %43) #6, !srcloc !76
  br label %ftm_irq_enable.exit

ftm_irq_enable.exit:                              ; preds = %if.else.i6.i23, %do.body.i.i22
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftm_set_periodic(ptr nocapture noundef readnone %evt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @priv, align 4
  %periodic_cyc = getelementptr inbounds %struct.ftm_clock_device, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %periodic_cyc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %periodic_cyc, align 4
  %call = tail call i32 @ftm_set_next_event(i32 noundef %2, ptr noundef %evt)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftm_set_oneshot(ptr nocapture noundef readnone %evt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @priv, align 4
  %clkevt_base = getelementptr inbounds %struct.ftm_clock_device, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %clkevt_base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %clkevt_base, align 4
  %big_endian.i.i = getelementptr inbounds %struct.ftm_clock_device, ptr %0, i32 0, i32 4
  %3 = ptrtoint ptr %big_endian.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %big_endian.i.i, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i.i = icmp eq i8 %4, 0
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #6
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  br label %ftm_readl.exit.i

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  br label %ftm_readl.exit.i

ftm_readl.exit.i:                                 ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %5, %if.then.i.i ], [ %6, %if.else.i.i ]
  %and.i = and i32 %retval.0.i.i, -32
  %7 = load ptr, ptr @priv, align 4
  %big_endian.i4.i = getelementptr inbounds %struct.ftm_clock_device, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %big_endian.i4.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %big_endian.i4.i, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i5.i = icmp eq i8 %9, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  br i1 %tobool.not.i5.i, label %if.else.i6.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %ftm_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %and.i) #6, !srcloc !76
  br label %ftm_counter_disable.exit

if.else.i6.i:                                     ; preds = %ftm_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = tail call i32 @llvm.bswap.i32(i32 %and.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %10) #6, !srcloc !76
  br label %ftm_counter_disable.exit

ftm_counter_disable.exit:                         ; preds = %if.else.i6.i, %do.body.i.i
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }
attributes #11 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !42, !43, !45, !46, !47, !48, !50, !52, !53, !54, !55, !57, !59, !60, !61, !62}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__of_table_flextimer, !1, !"__of_table_flextimer", i1 false, i1 false}
!1 = !{!"../drivers/clocksource/timer-fsl-ftm.c", i32 355, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clocksource/timer-fsl-ftm.c", i32 310, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ftm_timer_init._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @ftm_timer_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clocksource/timer-fsl-ftm.c", i32 316, i32 3}
!10 = !{ptr @ftm_timer_init._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @ftm_timer_init._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clocksource/timer-fsl-ftm.c", i32 323, i32 3}
!14 = !{ptr @ftm_timer_init._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @ftm_timer_init._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clocksource/timer-fsl-ftm.c", i32 327, i32 47}
!18 = !{ptr @priv, !19, !"priv", i1 false, i1 false}
!19 = !{!"../drivers/clocksource/timer-fsl-ftm.c", i32 30, i32 33}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clocksource/timer-fsl-ftm.c", i32 265, i32 28}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clocksource/timer-fsl-ftm.c", i32 265, i32 50}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clocksource/timer-fsl-ftm.c", i32 269, i32 28}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clocksource/timer-fsl-ftm.c", i32 269, i32 50}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clocksource/timer-fsl-ftm.c", i32 238, i32 3}
!30 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @__ftm_clk_init._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @__ftm_clk_init._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/clocksource/timer-fsl-ftm.c", i32 243, i32 3}
!35 = !{ptr @__ftm_clk_init._entry.16, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @__ftm_clk_init._entry_ptr.18, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @__ftm_clk_init._entry.19, !38, !"_entry", i1 false, i1 false}
!38 = !{!"../drivers/clocksource/timer-fsl-ftm.c", i32 250, i32 3}
!39 = !{ptr @__ftm_clk_init._entry_ptr.20, !38, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @__ftm_clk_init._entry.21, !41, !"_entry", i1 false, i1 false}
!41 = !{!"../drivers/clocksource/timer-fsl-ftm.c", i32 255, i32 3}
!42 = !{ptr @__ftm_clk_init._entry_ptr.22, !41, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/clocksource/timer-fsl-ftm.c", i32 290, i32 3}
!45 = !{ptr @.str.24, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @ftm_calc_closest_round_cyc._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @ftm_calc_closest_round_cyc._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clocksource/timer-fsl-ftm.c", i32 217, i32 59}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clocksource/timer-fsl-ftm.c", i32 221, i32 3}
!52 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @ftm_clocksource_init._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @ftm_clocksource_init._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/clocksource/timer-fsl-ftm.c", i32 189, i32 6}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/clocksource/timer-fsl-ftm.c", i32 191, i32 3}
!59 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @ftm_clockevent_init._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @ftm_clockevent_init._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @ftm_clockevent, !63, !"ftm_clockevent", i1 false, i1 false}
!63 = !{!"../drivers/clocksource/timer-fsl-ftm.c", i32 169, i32 34}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{i8 0, i8 2}
!74 = !{i64 2152797023}
!75 = !{i64 2151549037}
!76 = !{i64 4015760}
!77 = !{!"branch_weights", i32 2000, i32 1}
