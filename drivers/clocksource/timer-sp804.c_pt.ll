; ModuleID = '/llk/IR_all_yes/drivers/clocksource/timer-sp804.c_pt.bc'
source_filename = "../drivers/clocksource/timer-sp804.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.sp804_timer = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sp804_clkevt = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [124 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }

@__of_table_sp804 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,sp804\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @arm_sp804_of_init }, section "__timer_of_table", align 4
@__of_table_hisi_sp804 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,sp804\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hisi_sp804_of_init }, section "__timer_of_table", align 4
@__of_table_intcp = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,integrator-cp-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @integrator_cp_of_init }, section "__timer_of_table", align 4
@arm_sp804_timer = internal global %struct.sp804_timer { i32 0, i32 0, i32 4, i32 0, i32 8, i32 12, i32 0, i32 0, i32 0, i32 0, [2 x i32] [i32 0, i32 32], i32 32 }, section ".init.data", align 4
@sp804_of_init.initialized = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"compatible\00", [21 x i8] zeroinitializer }, align 32
@sp804_of_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013timer_sp804: %pOFn clock not found: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sp804_of_init\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/clocksource/timer-sp804.c\00", [62 x i8] zeroinitializer }, align 32
@sp804_of_init._entry_ptr = internal global ptr @sp804_of_init._entry, section ".printk_index", align 4
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"arm,sp804-has-irq\00", [46 x i8] zeroinitializer }, align 32
@sp804_clkevt = internal global { [2 x %struct.sp804_clkevt], [56 x i8] } zeroinitializer, align 32
@sp804_clockevent = internal global %struct.clock_event_device { ptr null, ptr @sp804_set_next_event, ptr null, i64 0, i64 0, i64 0, i32 0, i32 0, i32 0, i32 35, i32 0, ptr @sp804_set_periodic, ptr @sp804_shutdown, ptr null, ptr @sp804_shutdown, ptr @sp804_shutdown, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 300, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, [124 x i8] undef }, align 128
@common_clkevt = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"timer\00", [26 x i8] zeroinitializer }, align 32
@sp804_clockevents_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013timer_sp804: request_irq() failed\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sp804_clockevents_init\00", [41 x i8] zeroinitializer }, align 32
@sp804_clockevents_init._entry_ptr = internal global ptr @sp804_clockevents_init._entry, section ".printk_index", align 4
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sp804\00", [26 x i8] zeroinitializer }, align 32
@sp804_get_clock_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013timer_sp804: %s clock not found: %ld\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sp804_get_clock_rate\00", [43 x i8] zeroinitializer }, align 32
@sp804_get_clock_rate._entry_ptr = internal global ptr @sp804_get_clock_rate._entry, section ".printk_index", align 4
@sp804_get_clock_rate._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.3, i32 75, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013timer_sp804: clock failed to enable: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@sp804_get_clock_rate._entry_ptr.13 = internal global ptr @sp804_get_clock_rate._entry.11, section ".printk_index", align 4
@sched_clkevt = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@hisi_sp804_timer = internal global %struct.sp804_timer { i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 0, i32 0, i32 0, i32 0, [2 x i32] [i32 0, i32 64], i32 64 }, section ".init.data", align 4
@integrator_cp_of_init.init_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@integrator_cp_of_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013timer_sp804: Failed to iomap\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"integrator_cp_of_init\00", [42 x i8] zeroinitializer }, align 32
@integrator_cp_of_init._entry_ptr = internal global ptr @integrator_cp_of_init._entry, section ".printk_index", align 4
@integrator_cp_of_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.3, i32 357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013timer_sp804: Failed to get clock\0A\00", [60 x i8] zeroinitializer }, align 32
@integrator_cp_of_init._entry_ptr.18 = internal global ptr @integrator_cp_of_init._entry.16, section ".printk_index", align 4
@___asan_gen_.19 = private unnamed_addr constant [26 x i8] c"sp804_of_init.initialized\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 260, i32 41 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 286, i32 4 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 299, i32 27 }
@___asan_gen_.38 = private unnamed_addr constant [13 x i8] c"sp804_clkevt\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 60, i32 28 }
@___asan_gen_.41 = private unnamed_addr constant [14 x i8] c"common_clkevt\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 141, i32 29 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 223, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 224, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 67, i32 21 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 69, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 75, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [13 x i8] c"sched_clkevt\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 98, i32 29 }
@___asan_gen_.77 = private unnamed_addr constant [11 x i8] c"init_count\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 343, i32 13 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 351, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.93 = private constant [37 x i8] c"../drivers/clocksource/timer-sp804.c\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 357, i32 3 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__of_table_hisi_sp804, ptr @__of_table_intcp, ptr @__of_table_sp804, ptr @integrator_cp_of_init._entry, ptr @integrator_cp_of_init._entry.16, ptr @integrator_cp_of_init._entry_ptr, ptr @integrator_cp_of_init._entry_ptr.18, ptr @sp804_clockevents_init._entry, ptr @sp804_clockevents_init._entry_ptr, ptr @sp804_get_clock_rate._entry, ptr @sp804_get_clock_rate._entry.11, ptr @sp804_get_clock_rate._entry_ptr, ptr @sp804_get_clock_rate._entry_ptr.13, ptr @sp804_of_init._entry, ptr @sp804_of_init._entry_ptr, ptr @sp804_of_init.initialized, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @sp804_clkevt, ptr @common_clkevt, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @sched_clkevt, ptr @integrator_cp_of_init.init_count, ptr @.str.14, ptr @.str.15, ptr @.str.17], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp804_of_init.initialized to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp804_of_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp804_clkevt to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @common_clkevt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp804_clockevents_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp804_get_clock_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp804_get_clock_rate._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_clkevt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @integrator_cp_of_init.init_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @integrator_cp_of_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @integrator_cp_of_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_sp804_of_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sp804_of_init(ptr noundef %np, ptr noundef nonnull @arm_sp804_timer) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_sp804_of_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sp804_of_init(ptr noundef %np, ptr noundef nonnull @hisi_sp804_timer) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @integrator_cp_of_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_get_property(ptr noundef %np, ptr noundef nonnull @.str, ptr noundef null) #7
  %call1 = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @of_clk_get(ptr noundef %np, i32 noundef 0) #7
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end8, label %do.body13

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #11
  %0 = ptrtoint ptr %call3 to i32
  br label %cleanup

do.body13:                                        ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !68
  tail call void @arm_heavy_mb() #7
  %1 = load i32, ptr getelementptr inbounds (%struct.sp804_timer, ptr @arm_sp804_timer, i32 0, i32 4), align 4
  %add.ptr = getelementptr i8, ptr %call1, i32 %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !69
  %2 = load i32, ptr @integrator_cp_of_init.init_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp eq i32 %2, 2
  br i1 %cmp, label %do.body13.err_crit_edge, label %lor.lhs.false

do.body13.err_crit_edge:                          ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

lor.lhs.false:                                    ; preds = %do.body13
  %call16 = tail call zeroext i1 @of_device_is_available(ptr noundef %np) #7
  br i1 %call16, label %if.end18, label %lor.lhs.false.err_crit_edge

lor.lhs.false.err_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end18:                                         ; preds = %lor.lhs.false
  tail call fastcc void @sp804_clkevt_init(ptr noundef nonnull @arm_sp804_timer, ptr noundef nonnull %call1) #10
  %3 = load i32, ptr @integrator_cp_of_init.init_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool19.not = icmp eq i32 %3, 0
  br i1 %tobool19.not, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.end18
  %call21 = tail call fastcc i32 @sp804_clocksource_and_sched_clock_init(ptr noundef nonnull %call1, ptr noundef %call, ptr noundef %call3, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then20.if.end33_crit_edge, label %if.then20.err_crit_edge

if.then20.err_crit_edge:                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.then20.if.end33_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.else:                                          ; preds = %if.end18
  %call25 = tail call i32 @irq_of_parse_and_map(ptr noundef %np, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 1
  br i1 %cmp26, label %if.else.err_crit_edge, label %if.end28

if.else.err_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end28:                                         ; preds = %if.else
  %call29 = tail call fastcc i32 @sp804_clockevents_init(ptr noundef nonnull %call1, i32 noundef %call25, ptr noundef %call3, ptr noundef %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end28.if.end33_crit_edge, label %if.end28.err_crit_edge

if.end28.err_crit_edge:                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end28.if.end33_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.end33:                                         ; preds = %if.end28.if.end33_crit_edge, %if.then20.if.end33_crit_edge
  %4 = load i32, ptr @integrator_cp_of_init.init_count, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr @integrator_cp_of_init.init_count, align 4
  br label %cleanup

err:                                              ; preds = %if.end28.err_crit_edge, %if.else.err_crit_edge, %if.then20.err_crit_edge, %lor.lhs.false.err_crit_edge, %do.body13.err_crit_edge
  %ret.0 = phi i32 [ -22, %do.body13.err_crit_edge ], [ -22, %if.else.err_crit_edge ], [ %call29, %if.end28.err_crit_edge ], [ %call21, %if.then20.err_crit_edge ], [ -22, %lor.lhs.false.err_crit_edge ]
  tail call void @iounmap(ptr noundef nonnull %call1) #7
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end33, %do.end8, %do.end
  %retval.0 = phi i32 [ %0, %do.end8 ], [ %ret.0, %err ], [ 0, %if.end33 ], [ -6, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sp804_of_init(ptr noundef %np, ptr nocapture noundef readonly %timer) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %irq_num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq_num) #7
  %0 = ptrtoint ptr %irq_num to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %irq_num, align 4
  %call = tail call ptr @of_get_property(ptr noundef %np, ptr noundef nonnull @.str, ptr noundef null) #7
  %call1 = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %timer_base = getelementptr inbounds %struct.sp804_timer, ptr %timer, i32 0, i32 10
  %1 = ptrtoint ptr %timer_base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %timer_base, align 4
  %add.ptr = getelementptr i8, ptr %call1, i32 %2
  %arrayidx3 = getelementptr %struct.sp804_timer, ptr %timer, i32 0, i32 10, i32 1
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx3, align 4
  %add.ptr4 = getelementptr i8, ptr %call1, i32 %4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  tail call void @arm_heavy_mb() #7
  %ctrl = getelementptr inbounds %struct.sp804_timer, ptr %timer, i32 0, i32 4
  %5 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ctrl, align 4
  %add.ptr5 = getelementptr i8, ptr %add.ptr, i32 %6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 0) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !71
  tail call void @arm_heavy_mb() #7
  %7 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ctrl, align 4
  %add.ptr10 = getelementptr i8, ptr %add.ptr4, i32 %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 0) #7, !srcloc !69
  %.b99 = load i1, ptr @sp804_of_init.initialized, align 1
  br i1 %.b99, label %if.end.err_crit_edge, label %lor.lhs.false

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

lor.lhs.false:                                    ; preds = %if.end
  %call12 = tail call zeroext i1 @of_device_is_available(ptr noundef %np) #7
  br i1 %call12, label %if.end14, label %lor.lhs.false.err_crit_edge

lor.lhs.false.err_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end14:                                         ; preds = %lor.lhs.false
  %call15 = tail call ptr @of_clk_get(ptr noundef %np, i32 noundef 0) #7
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  %spec.select = select i1 %cmp.i, ptr null, ptr %call15
  %call19 = tail call i32 @of_clk_get_parent_count(ptr noundef %np) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call19)
  %cmp = icmp eq i32 %call19, 3
  br i1 %cmp, label %if.then20, label %if.end14.if.end30_crit_edge

if.end14.if.end30_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then20:                                        ; preds = %if.end14
  %call21 = tail call ptr @of_clk_get(ptr noundef %np, i32 noundef 1) #7
  %cmp.i100 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i100, label %do.end26, label %if.then20.if.end30_crit_edge

if.then20.if.end30_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

do.end26:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call21 to i32
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %np, i32 noundef %9) #11
  br label %if.end30

if.end30:                                         ; preds = %do.end26, %if.then20.if.end30_crit_edge, %if.end14.if.end30_crit_edge
  %clk2.0 = phi ptr [ null, %do.end26 ], [ %call21, %if.then20.if.end30_crit_edge ], [ %spec.select, %if.end14.if.end30_crit_edge ]
  %call31 = tail call i32 @irq_of_parse_and_map(ptr noundef %np, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 1
  br i1 %cmp32, label %if.end30.err_crit_edge, label %if.end34

if.end30.err_crit_edge:                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end34:                                         ; preds = %if.end30
  tail call fastcc void @sp804_clkevt_init(ptr noundef %timer, ptr noundef nonnull %call1) #10
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.4, ptr noundef nonnull %irq_num, i32 noundef 1, i32 noundef 0) #7
  %10 = ptrtoint ptr %irq_num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp36 = icmp eq i32 %11, 2
  br i1 %cmp36, label %if.then37, label %if.else46

if.then37:                                        ; preds = %if.end34
  %call38 = call fastcc i32 @sp804_clockevents_init(ptr noundef %add.ptr4, i32 noundef %call31, ptr noundef %clk2.0, ptr noundef %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.then37.err_crit_edge

if.then37.err_crit_edge:                          ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end41:                                         ; preds = %if.then37
  %call42 = call fastcc i32 @sp804_clocksource_and_sched_clock_init(ptr noundef %add.ptr, ptr noundef %call, ptr noundef %spec.select, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end41.if.end55_crit_edge, label %if.end41.err_crit_edge

if.end41.err_crit_edge:                           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end41.if.end55_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.else46:                                        ; preds = %if.end34
  %call47 = call fastcc i32 @sp804_clockevents_init(ptr noundef %add.ptr, i32 noundef %call31, ptr noundef %spec.select, ptr noundef %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.else46.err_crit_edge

if.else46.err_crit_edge:                          ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end50:                                         ; preds = %if.else46
  %call51 = call fastcc i32 @sp804_clocksource_and_sched_clock_init(ptr noundef %add.ptr4, ptr noundef %call, ptr noundef %clk2.0, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end50.if.end55_crit_edge, label %if.end50.err_crit_edge

if.end50.err_crit_edge:                           ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end50.if.end55_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.end55:                                         ; preds = %if.end50.if.end55_crit_edge, %if.end41.if.end55_crit_edge
  store i1 true, ptr @sp804_of_init.initialized, align 1
  br label %cleanup

err:                                              ; preds = %if.end50.err_crit_edge, %if.else46.err_crit_edge, %if.end41.err_crit_edge, %if.then37.err_crit_edge, %if.end30.err_crit_edge, %lor.lhs.false.err_crit_edge, %if.end.err_crit_edge
  %ret.0 = phi i32 [ -22, %if.end30.err_crit_edge ], [ %call38, %if.then37.err_crit_edge ], [ %call42, %if.end41.err_crit_edge ], [ %call47, %if.else46.err_crit_edge ], [ %call51, %if.end50.err_crit_edge ], [ -22, %lor.lhs.false.err_crit_edge ], [ -22, %if.end.err_crit_edge ]
  call void @iounmap(ptr noundef nonnull %call1) #7
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end55, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %if.end55 ], [ -6, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq_num) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_get_parent_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sp804_clkevt_init(ptr nocapture noundef readonly %timer, ptr noundef %base) unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %load_h = getelementptr inbounds %struct.sp804_timer, ptr %timer, i32 0, i32 1
  %value = getelementptr inbounds %struct.sp804_timer, ptr %timer, i32 0, i32 2
  %value_h = getelementptr inbounds %struct.sp804_timer, ptr %timer, i32 0, i32 3
  %ctrl = getelementptr inbounds %struct.sp804_timer, ptr %timer, i32 0, i32 4
  %intclr = getelementptr inbounds %struct.sp804_timer, ptr %timer, i32 0, i32 5
  %width = getelementptr inbounds %struct.sp804_timer, ptr %timer, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %cmp = phi i1 [ true, %entry ], [ false, %for.body.for.body_crit_edge ]
  %i.040 = phi i32 [ 0, %entry ], [ 1, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sp804_timer, ptr %timer, i32 0, i32 10, i32 %i.040
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %base, i32 %1
  %arrayidx2 = getelementptr [2 x %struct.sp804_clkevt], ptr @sp804_clkevt, i32 0, i32 %i.040
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr, ptr %arrayidx2, align 4
  %3 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %timer, align 4
  %add.ptr4 = getelementptr i8, ptr %add.ptr, i32 %4
  %load5 = getelementptr [2 x %struct.sp804_clkevt], ptr @sp804_clkevt, i32 0, i32 %i.040, i32 1
  %5 = ptrtoint ptr %load5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr4, ptr %load5, align 4
  %6 = ptrtoint ptr %load_h to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %load_h, align 4
  %add.ptr6 = getelementptr i8, ptr %add.ptr, i32 %7
  %load_h7 = getelementptr [2 x %struct.sp804_clkevt], ptr @sp804_clkevt, i32 0, i32 %i.040, i32 2
  %8 = ptrtoint ptr %load_h7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr6, ptr %load_h7, align 4
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  %add.ptr8 = getelementptr i8, ptr %add.ptr, i32 %10
  %value9 = getelementptr [2 x %struct.sp804_clkevt], ptr @sp804_clkevt, i32 0, i32 %i.040, i32 3
  %11 = ptrtoint ptr %value9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr8, ptr %value9, align 4
  %12 = ptrtoint ptr %value_h to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %value_h, align 4
  %add.ptr10 = getelementptr i8, ptr %add.ptr, i32 %13
  %value_h11 = getelementptr [2 x %struct.sp804_clkevt], ptr @sp804_clkevt, i32 0, i32 %i.040, i32 4
  %14 = ptrtoint ptr %value_h11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr10, ptr %value_h11, align 4
  %15 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ctrl, align 4
  %add.ptr12 = getelementptr i8, ptr %add.ptr, i32 %16
  %ctrl13 = getelementptr [2 x %struct.sp804_clkevt], ptr @sp804_clkevt, i32 0, i32 %i.040, i32 5
  %17 = ptrtoint ptr %ctrl13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr12, ptr %ctrl13, align 4
  %18 = ptrtoint ptr %intclr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %intclr, align 4
  %add.ptr14 = getelementptr i8, ptr %add.ptr, i32 %19
  %intclr15 = getelementptr [2 x %struct.sp804_clkevt], ptr @sp804_clkevt, i32 0, i32 %i.040, i32 6
  %20 = ptrtoint ptr %intclr15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr14, ptr %intclr15, align 4
  %21 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %width, align 4
  %width16 = getelementptr [2 x %struct.sp804_clkevt], ptr @sp804_clkevt, i32 0, i32 %i.040, i32 12
  %23 = ptrtoint ptr %width16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %width16, align 4
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sp804_clockevents_init(ptr noundef readnone %base, i32 noundef %irq, ptr noundef %clk, ptr noundef %name) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sp804_get_clock_rate(ptr noundef %clk, ptr noundef %name) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.i:                                       ; preds = %for.body.i
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %do.end.i

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %cmp.i = phi i1 [ false, %for.cond.i.for.body.i_crit_edge ], [ true, %entry.for.body.i_crit_edge ]
  %i.024.i = phi i32 [ 1, %for.cond.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [2 x %struct.sp804_clkevt], ptr @sp804_clkevt, i32 0, i32 %i.024.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %cmp2.i = icmp eq ptr %1, %base
  br i1 %cmp2.i, label %for.body.i.sp804_clkevt_get.exit_crit_edge, label %for.cond.i

for.body.i.sp804_clkevt_get.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sp804_clkevt_get.exit

do.end.i:                                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 93, i32 noundef 9, ptr noundef null) #7
  br label %sp804_clkevt_get.exit

sp804_clkevt_get.exit:                            ; preds = %do.end.i, %for.body.i.sp804_clkevt_get.exit_crit_edge
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %arrayidx.i, %for.body.i.sp804_clkevt_get.exit_crit_edge ]
  store ptr %retval.0.i, ptr @common_clkevt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2.not = icmp eq i32 %call, 0
  %add = add i32 %call, 50
  %div7 = sdiv i32 %add, 100
  %cond = select i1 %cmp2.not, i32 0, i32 %div7
  %reload = getelementptr inbounds %struct.sp804_clkevt, ptr %retval.0.i, i32 0, i32 11
  %2 = ptrtoint ptr %reload to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %cond, ptr %reload, align 4
  store ptr %name, ptr getelementptr inbounds (%struct.clock_event_device, ptr @sp804_clockevent, i32 0, i32 21), align 4
  store i32 %irq, ptr getelementptr inbounds (%struct.clock_event_device, ptr @sp804_clockevent, i32 0, i32 23), align 4
  store ptr @__cpu_possible_mask, ptr getelementptr inbounds (%struct.clock_event_device, ptr @sp804_clockevent, i32 0, i32 25), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  tail call void @arm_heavy_mb() #7
  %3 = load ptr, ptr @common_clkevt, align 4
  %ctrl = getelementptr inbounds %struct.sp804_clkevt, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #7, !srcloc !69
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %irq, ptr noundef nonnull @sp804_timer_interrupt, ptr noundef null, i32 noundef 86528, ptr noundef nonnull @.str.5, ptr noundef nonnull @sp804_clockevent) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %sp804_clkevt_get.exit.if.end19_crit_edge, label %do.end16

sp804_clkevt_get.exit.if.end19_crit_edge:         ; preds = %sp804_clkevt_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

do.end16:                                         ; preds = %sp804_clkevt_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #11
  br label %if.end19

if.end19:                                         ; preds = %do.end16, %sp804_clkevt_get.exit.if.end19_crit_edge
  tail call void @clockevents_config_and_register(ptr noundef nonnull @sp804_clockevent, i32 noundef %call, i32 noundef 15, i32 noundef -1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end19 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sp804_clocksource_and_sched_clock_init(ptr noundef readnone %base, ptr noundef %name, ptr noundef %clk, i32 noundef %use_sched_clock) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sp804_get_clock_rate(ptr noundef %clk, ptr noundef %name) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.i:                                       ; preds = %for.body.i
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %do.end.i

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %cmp.i = phi i1 [ false, %for.cond.i.for.body.i_crit_edge ], [ true, %entry.for.body.i_crit_edge ]
  %i.024.i = phi i32 [ 1, %for.cond.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [2 x %struct.sp804_clkevt], ptr @sp804_clkevt, i32 0, i32 %i.024.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %cmp2.i = icmp eq ptr %1, %base
  br i1 %cmp2.i, label %for.body.i.sp804_clkevt_get.exit_crit_edge, label %for.cond.i

for.body.i.sp804_clkevt_get.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sp804_clkevt_get.exit

do.end.i:                                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 93, i32 noundef 9, ptr noundef null) #7
  br label %sp804_clkevt_get.exit

sp804_clkevt_get.exit:                            ; preds = %do.end.i, %for.body.i.sp804_clkevt_get.exit_crit_edge
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %arrayidx.i, %for.body.i.sp804_clkevt_get.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !73
  tail call void @arm_heavy_mb() #7
  %ctrl = getelementptr inbounds %struct.sp804_clkevt, ptr %retval.0.i, i32 0, i32 5
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  %load = getelementptr inbounds %struct.sp804_clkevt, ptr %retval.0.i, i32 0, i32 1
  %4 = ptrtoint ptr %load to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %load, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 -1) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  tail call void @arm_heavy_mb() #7
  %value = getelementptr inbounds %struct.sp804_clkevt, ptr %retval.0.i, i32 0, i32 3
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %value, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 -1) #7, !srcloc !69
  %width = getelementptr inbounds %struct.sp804_clkevt, ptr %retval.0.i, i32 0, i32 12
  %8 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %9)
  %cmp8 = icmp eq i32 %9, 64
  br i1 %cmp8, label %do.body10, label %sp804_clkevt_get.exit.do.body17_crit_edge

sp804_clkevt_get.exit.do.body17_crit_edge:        ; preds = %sp804_clkevt_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

do.body10:                                        ; preds = %sp804_clkevt_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %load_h = getelementptr inbounds %struct.sp804_clkevt, ptr %retval.0.i, i32 0, i32 2
  %10 = ptrtoint ptr %load_h to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %load_h, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 -1) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %value_h = getelementptr inbounds %struct.sp804_clkevt, ptr %retval.0.i, i32 0, i32 4
  %12 = ptrtoint ptr %value_h to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %value_h, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 -1) #7, !srcloc !69
  br label %do.body17

do.body17:                                        ; preds = %do.body10, %sp804_clkevt_get.exit.do.body17_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctrl, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 -1040187392) #7, !srcloc !69
  %16 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %value, align 4
  %call22 = tail call i32 @clocksource_mmio_init(ptr noundef %17, ptr noundef %name, i32 noundef %call, i32 noundef 200, i32 noundef 32, ptr noundef nonnull @clocksource_mmio_readl_down) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %use_sched_clock)
  %tobool.not = icmp eq i32 %use_sched_clock, 0
  br i1 %tobool.not, label %do.body17.cleanup_crit_edge, label %if.then23

do.body17.cleanup_crit_edge:                      ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then23:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  store ptr %retval.0.i, ptr @sched_clkevt, align 4
  tail call void @sched_clock_register(ptr noundef nonnull @sp804_read, i32 noundef 32, i32 noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %do.body17.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then23 ], [ 0, %do.body17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sp804_get_clock_rate(ptr noundef %clk, ptr noundef %name) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %clk, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call ptr @clk_get_sys(ptr noundef nonnull @.str.8, ptr noundef %name) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %clk.addr.0 = phi ptr [ %clk, %entry.if.end_crit_edge ], [ %call, %if.then ]
  %cmp.i = icmp ugt ptr %clk.addr.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %clk.addr.0 to i32
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %name, i32 noundef %0) #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call.i = tail call i32 @clk_prepare(ptr noundef %clk.addr.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end6.do.end12_crit_edge

if.end6.do.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

if.end.i:                                         ; preds = %if.end6
  %call1.i = tail call i32 @clk_enable(ptr noundef %clk.addr.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end15, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %clk.addr.0) #7
  br label %do.end12

do.end12:                                         ; preds = %if.then3.i, %if.end6.do.end12_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end6.do.end12_crit_edge ]
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %retval.0.i.ph) #11
  tail call void @clk_put(ptr noundef %clk.addr.0) #7
  br label %cleanup

if.end15:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = tail call i32 @clk_get_rate(ptr noundef %clk.addr.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %do.end12, %do.end
  %retval.0 = phi i32 [ %0, %do.end ], [ %retval.0.i.ph, %do.end12 ], [ %call16, %if.end15 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sp804_timer_interrupt(i32 noundef %irq, ptr noundef %dev_id) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %0 = load ptr, ptr @common_clkevt, align 4
  %intclr = getelementptr inbounds %struct.sp804_clkevt, ptr %0, i32 0, i32 6
  %1 = ptrtoint ptr %intclr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %intclr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 16777216) #7, !srcloc !69
  %3 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_id, align 128
  tail call void %4(ptr noundef %dev_id) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sp804_set_next_event(i32 noundef %next, ptr nocapture noundef readnone %evt) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %0 = tail call i32 @llvm.bswap.i32(i32 %next)
  %1 = load ptr, ptr @common_clkevt, align 4
  %load = getelementptr inbounds %struct.sp804_clkevt, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %load to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %load, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %0) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  tail call void @arm_heavy_mb() #7
  %4 = load ptr, ptr @common_clkevt, align 4
  %ctrl4 = getelementptr inbounds %struct.sp804_clkevt, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %ctrl4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctrl4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 -1560281088) #7, !srcloc !69
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sp804_set_periodic(ptr nocapture noundef readnone %evt) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void @arm_heavy_mb() #7
  %0 = load ptr, ptr @common_clkevt, align 4
  %ctrl.i = getelementptr inbounds %struct.sp804_clkevt, ptr %0, i32 0, i32 5
  %1 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctrl.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 0) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  tail call void @arm_heavy_mb() #7
  %3 = load ptr, ptr @common_clkevt, align 4
  %reload = getelementptr inbounds %struct.sp804_clkevt, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %reload to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reload, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %load = getelementptr inbounds %struct.sp804_clkevt, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %load to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %load, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  tail call void @arm_heavy_mb() #7
  %9 = load ptr, ptr @common_clkevt, align 4
  %ctrl4 = getelementptr inbounds %struct.sp804_clkevt, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %ctrl4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctrl4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 -503316480) #7, !srcloc !69
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sp804_shutdown(ptr nocapture noundef readnone %evt) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void @arm_heavy_mb() #7
  %0 = load ptr, ptr @common_clkevt, align 4
  %ctrl.i = getelementptr inbounds %struct.sp804_clkevt, ptr %0, i32 0, i32 5
  %1 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctrl.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 0) #7, !srcloc !69
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_sys(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clocksource_mmio_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clocksource_mmio_readl_down(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @sp804_read() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load ptr, ptr @sched_clkevt, align 4
  %value = getelementptr inbounds %struct.sp804_clkevt, ptr %0, i32 0, i32 3
  %1 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %value, align 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #7, !srcloc !85
  %4 = xor i32 %3, -1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %conv = zext i32 %5 to i64
  ret i64 %conv
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !18, !20, !22, !24, !25, !26, !27, !29, !31, !33, !34, !35, !36, !38, !39, !40, !42, !44, !46, !48, !50, !52, !53, !54, !55, !57, !58}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @__of_table_sp804, !1, !"__of_table_sp804", i1 false, i1 false}
!1 = !{!"../drivers/clocksource/timer-sp804.c", i32 333, i32 1}
!2 = !{ptr @__of_table_hisi_sp804, !3, !"__of_table_hisi_sp804", i1 false, i1 false}
!3 = !{!"../drivers/clocksource/timer-sp804.c", i32 339, i32 1}
!4 = !{ptr @__of_table_intcp, !5, !"__of_table_intcp", i1 false, i1 false}
!5 = !{!"../drivers/clocksource/timer-sp804.c", i32 390, i32 1}
!6 = distinct !{null, !7, !"initialized", i1 false, i1 false}
!7 = !{!"../drivers/clocksource/timer-sp804.c", i32 253, i32 14}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clocksource/timer-sp804.c", i32 260, i32 41}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clocksource/timer-sp804.c", i32 286, i32 4}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @sp804_of_init._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @sp804_of_init._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clocksource/timer-sp804.c", i32 299, i32 27}
!18 = !{ptr @sp804_clkevt, !19, !"sp804_clkevt", i1 false, i1 false}
!19 = !{!"../drivers/clocksource/timer-sp804.c", i32 60, i32 28}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clocksource/timer-sp804.c", i32 223, i32 4}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clocksource/timer-sp804.c", i32 224, i32 3}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @sp804_clockevents_init._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @sp804_clockevents_init._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @sp804_clockevent, !28, !"sp804_clockevent", i1 false, i1 false}
!28 = !{!"../drivers/clocksource/timer-sp804.c", i32 192, i32 34}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/clocksource/timer-sp804.c", i32 67, i32 21}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clocksource/timer-sp804.c", i32 69, i32 3}
!33 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @sp804_get_clock_rate._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @sp804_get_clock_rate._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clocksource/timer-sp804.c", i32 75, i32 3}
!38 = !{ptr @sp804_get_clock_rate._entry.11, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @sp804_get_clock_rate._entry_ptr.13, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @common_clkevt, !41, !"common_clkevt", i1 false, i1 false}
!41 = !{!"../drivers/clocksource/timer-sp804.c", i32 141, i32 29}
!42 = !{ptr @sched_clkevt, !43, !"sched_clkevt", i1 false, i1 false}
!43 = !{!"../drivers/clocksource/timer-sp804.c", i32 98, i32 29}
!44 = !{ptr @arm_sp804_timer, !45, !"arm_sp804_timer", i1 false, i1 false}
!45 = !{!"../drivers/clocksource/timer-sp804.c", i32 40, i32 27}
!46 = !{ptr @hisi_sp804_timer, !47, !"hisi_sp804_timer", i1 false, i1 false}
!47 = !{!"../drivers/clocksource/timer-sp804.c", i32 49, i32 27}
!48 = !{ptr @integrator_cp_of_init.init_count, !49, !"init_count", i1 false, i1 false}
!49 = !{!"../drivers/clocksource/timer-sp804.c", i32 343, i32 13}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clocksource/timer-sp804.c", i32 351, i32 3}
!52 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @integrator_cp_of_init._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @integrator_cp_of_init._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/clocksource/timer-sp804.c", i32 357, i32 3}
!57 = !{ptr @integrator_cp_of_init._entry.16, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @integrator_cp_of_init._entry_ptr.18, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{i64 2152818865}
!69 = !{i64 4009313}
!70 = !{i64 2152810991}
!71 = !{i64 2152811388}
!72 = !{i64 2152808451}
!73 = !{i64 2152802672}
!74 = !{i64 2152803052}
!75 = !{i64 2152803460}
!76 = !{i64 2152803870}
!77 = !{i64 2152804282}
!78 = !{i64 2152804739}
!79 = !{i64 2152805206}
!80 = !{i64 2152807084}
!81 = !{i64 2152807481}
!82 = !{i64 2152805762}
!83 = !{i64 2152806203}
!84 = !{i64 2152806651}
!85 = !{i64 4009731}
