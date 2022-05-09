; ModuleID = '/llk/IR_all_yes/drivers/clocksource/timer-atmel-tcb.c_pt.bc'
source_filename = "../drivers/clocksource/timer-atmel-tcb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.atomic_t = type { i32 }
%struct.clocksource = type { ptr, i64, i32, i32, i64, i32, i32, i64, ptr, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.tc_clkevt_device = type { %struct.clock_event_device, ptr, i32, ptr, [116 x i8] }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [124 x i8] }
%struct.delay_timer = type { ptr, i32 }
%struct.atmel_tcb_config = type { i32, i8, i8 }
%struct.anon.43 = type { i32, i32, i32, i8 }
%struct.atmel_tc = type { ptr, ptr, i32, ptr, [3 x i32], [3 x ptr], ptr, %struct.list_head, i8 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }

@__of_table_atmel_tcb_clksrc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,tcb-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tcb_clksrc_init }, section "__timer_of_table", align 4
@tcaddr = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"t0_clk\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"slow_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"t1_clk\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"t2_clk\00", [25 x i8] zeroinitializer }, align 32
@atmel_tcb_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91rm9200-tcb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tcb_rm9200_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9x5-tcb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tcb_sam9x5_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-tcb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tcb_sama5d2_config }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@tcb_clksrc_init.__UNIQUE_ID_ddebug179 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, i8 0, i8 107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"timer_atmel_tcb\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tcb_clksrc_init\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/clocksource/timer-atmel-tcb.c\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"can't enable T0 clk\0A\00", [43 x i8] zeroinitializer }, align 32
@atmel_tcb_divisors = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\02\08 \80", [28 x i8] zeroinitializer }, align 32
@tcb_clksrc_init.__UNIQUE_ID_ddebug180 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, i8 0, i8 110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"TC: %u / %-3u [%d] --> %u\0A\00", [37 x i8] zeroinitializer }, align 32
@clksrc = internal global { %struct.clocksource, [56 x i8] } { %struct.clocksource { ptr @tc_get_cycles, i64 4294967295, i32 0, i32 0, i64 0, i32 0, i32 0, i64 0, ptr null, %struct.list_head zeroinitializer, i32 200, i32 0, i32 0, i32 1, ptr null, ptr null, ptr @tc_clksrc_suspend, ptr @tc_clksrc_resume, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@clkevt = internal global %struct.tc_clkevt_device { %struct.clock_event_device { ptr null, ptr @tc_next_event, ptr null, i64 0, i64 0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 0, ptr @tc_set_periodic, ptr @tc_set_oneshot, ptr null, ptr @tc_shutdown, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 125, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, [124 x i8] undef }, ptr null, i32 0, ptr null, [116 x i8] undef }, align 128
@tcb_clksrc_init.__UNIQUE_ID_ddebug181 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.9, i8 0, i8 113, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s at %d.%03d MHz\0A\00", [45 x i8] zeroinitializer }, align 32
@tc_delay_timer = internal global { %struct.delay_timer, [24 x i8] } zeroinitializer, align 32
@tcb_clksrc_init.__UNIQUE_ID_ddebug182 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.10, i8 0, i8 117, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"can't enable T1 clk\0A\00", [43 x i8] zeroinitializer }, align 32
@tcb_rm9200_config = internal global { %struct.atmel_tcb_config, [24 x i8] } { %struct.atmel_tcb_config { i32 16, i8 0, i8 0 }, [24 x i8] zeroinitializer }, align 32
@tcb_sam9x5_config = internal global { %struct.atmel_tcb_config, [24 x i8] } { %struct.atmel_tcb_config { i32 32, i8 0, i8 0 }, [24 x i8] zeroinitializer }, align 32
@tcb_sama5d2_config = internal global { %struct.atmel_tcb_config, [24 x i8] } { %struct.atmel_tcb_config { i32 32, i8 1, i8 0 }, [24 x i8] zeroinitializer }, align 32
@tcb_cache = internal global { [3 x %struct.anon.43], [48 x i8] } zeroinitializer, align 32
@bmr_cache = internal global { i32, [28 x i8] } zeroinitializer, align 32
@timer_clock = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tc_clkevt\00", [22 x i8] zeroinitializer }, align 32
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@___asan_gen_.12 = private unnamed_addr constant [7 x i8] c"tcaddr\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 41, i32 22 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 394, i32 44 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 398, i32 49 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 403, i32 47 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 406, i32 47 }
@___asan_gen_.27 = private unnamed_addr constant [19 x i8] c"atmel_tcb_of_match\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 367, i32 34 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 429, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant [19 x i8] c"atmel_tcb_divisors\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 51, i32 17 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 443, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [7 x i8] c"clksrc\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 113, i32 27 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 452, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [15 x i8] c"tc_delay_timer\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 132, i32 27 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 470, i32 4 }
@___asan_gen_.60 = private unnamed_addr constant [18 x i8] c"tcb_rm9200_config\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 354, i32 32 }
@___asan_gen_.63 = private unnamed_addr constant [18 x i8] c"tcb_sam9x5_config\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 358, i32 32 }
@___asan_gen_.66 = private unnamed_addr constant [19 x i8] c"tcb_sama5d2_config\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 362, i32 32 }
@___asan_gen_.69 = private unnamed_addr constant [10 x i8] c"tcb_cache\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 48, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [10 x i8] c"bmr_cache\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 49, i32 12 }
@___asan_gen_.75 = private unnamed_addr constant [12 x i8] c"timer_clock\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 158, i32 12 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.79 = private constant [41 x i8] c"../drivers/clocksource/timer-atmel-tcb.c\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 289, i32 46 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__of_table_atmel_tcb_clksrc, ptr @tcaddr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @atmel_tcb_of_match, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @atmel_tcb_divisors, ptr @.str.8, ptr @clksrc, ptr @.str.9, ptr @tc_delay_timer, ptr @.str.10, ptr @tcb_rm9200_config, ptr @tcb_sam9x5_config, ptr @tcb_sama5d2_config, ptr @tcb_cache, ptr @bmr_cache, ptr @timer_clock, ptr @.str.11], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcaddr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_tcb_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_tcb_divisors to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clksrc to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_delay_timer to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcb_rm9200_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcb_sam9x5_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcb_sama5d2_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcb_cache to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmr_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timer_clock to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tcb_clksrc_init(ptr nocapture noundef readonly %node) #0 section ".init.text" align 64 {
entry:
  %tc = alloca %struct.atmel_tc, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %tc) #7
  %0 = call ptr @memset(ptr %tc, i32 255, i32 56)
  %1 = load ptr, ptr @tcaddr, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup180_crit_edge

entry.cleanup180_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup180

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 6
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %call = tail call ptr @of_iomap(ptr noundef %3, i32 noundef 0) #7
  %regs = getelementptr inbounds %struct.atmel_tc, ptr %tc, i32 0, i32 1
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %regs, align 4
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.cleanup180_crit_edge, label %if.end4

if.end.cleanup180_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup180

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 4
  %call6 = tail call ptr @of_clk_get_by_name(ptr noundef %6, ptr noundef nonnull @.str) #7
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call6 to i32
  br label %cleanup180

if.end10:                                         ; preds = %if.end4
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 4
  %call12 = tail call ptr @of_clk_get_by_name(ptr noundef %9, ptr noundef nonnull @.str.1) #7
  %slow_clk = getelementptr inbounds %struct.atmel_tc, ptr %tc, i32 0, i32 6
  %10 = ptrtoint ptr %slow_clk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call12, ptr %slow_clk, align 4
  %cmp.i240 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i240, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %call12 to i32
  br label %cleanup180

if.end18:                                         ; preds = %if.end10
  %clk = getelementptr inbounds %struct.atmel_tc, ptr %tc, i32 0, i32 5
  %12 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call6, ptr %clk, align 4
  %13 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent, align 4
  %call20 = tail call ptr @of_clk_get_by_name(ptr noundef %14, ptr noundef nonnull @.str.2) #7
  %arrayidx22 = getelementptr inbounds %struct.atmel_tc, ptr %tc, i32 0, i32 5, i32 1
  %cmp.i241 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  %spec.store.select = select i1 %cmp.i241, ptr %call6, ptr %call20
  %15 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %spec.store.select, ptr %arrayidx22, align 4
  %16 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent, align 4
  %call31 = tail call ptr @of_clk_get_by_name(ptr noundef %17, ptr noundef nonnull @.str.3) #7
  %arrayidx33 = getelementptr inbounds %struct.atmel_tc, ptr %tc, i32 0, i32 5, i32 2
  %cmp.i242 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  %spec.store.select258 = select i1 %cmp.i242, ptr %call6, ptr %call31
  %18 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %spec.store.select258, ptr %arrayidx33, align 4
  %19 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent, align 4
  %call42 = tail call i32 @of_irq_get(ptr noundef %20, i32 noundef 2) #7
  %arrayidx43 = getelementptr inbounds %struct.atmel_tc, ptr %tc, i32 0, i32 4, i32 2
  %21 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call42, ptr %arrayidx43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call42)
  %cmp = icmp slt i32 %call42, 1
  br i1 %cmp, label %if.then46, label %if.end18.if.end56_crit_edge

if.end18.if.end56_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.then46:                                        ; preds = %if.end18
  %22 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parent, align 4
  %call48 = tail call i32 @of_irq_get(ptr noundef %23, i32 noundef 0) #7
  %24 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call48, ptr %arrayidx43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call48)
  %cmp53 = icmp slt i32 %call48, 1
  br i1 %cmp53, label %if.then46.cleanup180_crit_edge, label %if.then46.if.end56_crit_edge

if.then46.if.end56_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.then46.cleanup180_crit_edge:                   ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup180

if.end56:                                         ; preds = %if.then46.if.end56_crit_edge, %if.end18.if.end56_crit_edge
  %25 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parent, align 4
  %call58 = tail call ptr @of_match_node(ptr noundef nonnull @atmel_tcb_of_match, ptr noundef %26) #7
  %tobool59.not = icmp eq ptr %call58, null
  br i1 %tobool59.not, label %if.end56.cleanup180_crit_edge, label %if.end61

if.end56.cleanup180_crit_edge:                    ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup180

if.end61:                                         ; preds = %if.end56
  %data = getelementptr inbounds %struct.of_device_id, ptr %call58, i32 0, i32 3
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 4
  %tcb_config = getelementptr inbounds %struct.atmel_tc, ptr %tc, i32 0, i32 3
  %29 = ptrtoint ptr %tcb_config to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %tcb_config, align 4
  %30 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %28, align 4
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.end61
  %i.0259 = phi i32 [ 0, %if.end61 ], [ %inc, %do.body.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %mul = shl nuw nsw i32 %i.0259, 6
  %add = or i32 %mul, 40
  %add.ptr = getelementptr i8, ptr %call, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -16777216) #7, !srcloc !61
  %inc = add nuw nsw i32 %i.0259, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.end:                                          ; preds = %do.body
  %call.i = tail call i32 @clk_prepare(ptr noundef %call6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.end.do.body68_crit_edge

for.end.do.body68_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body68

if.end.i:                                         ; preds = %for.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %call6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end77, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call6) #7
  br label %do.body68

do.body68:                                        ; preds = %if.then3.i, %for.end.do.body68_crit_edge
  %retval.0.i243.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %for.end.do.body68_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcb_clksrc_init.__UNIQUE_ID_ddebug179, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcb_clksrc_init, %if.then73)) #7
          to label %cleanup180 [label %if.then73], !srcloc !62

if.then73:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcb_clksrc_init.__UNIQUE_ID_ddebug179, ptr noundef nonnull @.str.7) #7
  br label %cleanup180

if.end77:                                         ; preds = %if.end.i
  %call78 = tail call i32 @clk_get_rate(ptr noundef %call6) #7
  %has_gclk = getelementptr inbounds %struct.atmel_tcb_config, ptr %28, i32 0, i32 1
  %32 = ptrtoint ptr %has_gclk to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %has_gclk, align 4, !range !63
  %34 = zext i8 %33 to i32
  br label %for.body85

for.cond83:                                       ; preds = %do.end103
  %inc112 = add nuw nsw i32 %i.1260, 1
  %exitcond263.not = icmp eq i32 %inc112, 4
  br i1 %exitcond263.not, label %for.cond83.for.end113_crit_edge, label %for.cond83.for.body85_crit_edge

for.cond83.for.body85_crit_edge:                  ; preds = %for.cond83
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body85

for.cond83.for.end113_crit_edge:                  ; preds = %for.cond83
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end113

for.body85:                                       ; preds = %for.cond83.for.body85_crit_edge, %if.end77
  %divided_rate.0262 = phi i32 [ 0, %if.end77 ], [ %div, %for.cond83.for.body85_crit_edge ]
  %best_divisor_idx.0261 = phi i32 [ -1, %if.end77 ], [ %i.1260, %for.cond83.for.body85_crit_edge ]
  %i.1260 = phi i32 [ %34, %if.end77 ], [ %inc112, %for.cond83.for.body85_crit_edge ]
  %arrayidx86 = getelementptr [4 x i8], ptr @atmel_tcb_divisors, i32 0, i32 %i.1260
  %35 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx86, align 1
  %conv = zext i8 %36 to i32
  %div = udiv i32 %call78, %conv
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcb_clksrc_init.__UNIQUE_ID_ddebug180, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcb_clksrc_init, %if.then100)) #7
          to label %do.end103 [label %if.then100], !srcloc !62

if.then100:                                       ; preds = %for.body85
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcb_clksrc_init.__UNIQUE_ID_ddebug180, ptr noundef nonnull @.str.8, i32 noundef %call78, i32 noundef %conv, i32 noundef %i.1260, i32 noundef %div) #7
  br label %do.end103

do.end103:                                        ; preds = %if.then100, %for.body85
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %best_divisor_idx.0261)
  %cmp104 = icmp sgt i32 %best_divisor_idx.0261, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000000, i32 %div)
  %cmp106 = icmp ult i32 %div, 5000000
  %or.cond = select i1 %cmp104, i1 %cmp106, i1 false
  br i1 %or.cond, label %do.end103.for.end113_crit_edge, label %for.cond83

do.end103.for.end113_crit_edge:                   ; preds = %do.end103
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end113

for.end113:                                       ; preds = %do.end103.for.end113_crit_edge, %for.cond83.for.end113_crit_edge
  %best_divisor_idx.0.lcssa = phi i32 [ %best_divisor_idx.0261, %do.end103.for.end113_crit_edge ], [ 3, %for.cond83.for.end113_crit_edge ]
  %divided_rate.0.lcssa = phi i32 [ %divided_rate.0262, %do.end103.for.end113_crit_edge ], [ %div, %for.cond83.for.end113_crit_edge ]
  %37 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %parent, align 4
  %full_name = getelementptr inbounds %struct.device_node, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %full_name to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %full_name, align 4
  %call.i244 = tail call ptr @strrchr(ptr noundef %40, i32 noundef 47) #7
  %tobool.not.i245 = icmp eq ptr %call.i244, null
  %add.ptr.i = getelementptr i8, ptr %call.i244, i32 1
  %cond.i = select i1 %tobool.not.i245, ptr %40, ptr %add.ptr.i
  store ptr %cond.i, ptr getelementptr inbounds (%struct.clocksource, ptr @clksrc, i32 0, i32 8), align 8
  %41 = ptrtoint ptr %full_name to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %full_name, align 4
  %call.i246 = tail call ptr @strrchr(ptr noundef %42, i32 noundef 47) #7
  %tobool.not.i247 = icmp eq ptr %call.i246, null
  %add.ptr.i248 = getelementptr i8, ptr %call.i246, i32 1
  %cond.i249 = select i1 %tobool.not.i247, ptr %42, ptr %add.ptr.i248
  store ptr %cond.i249, ptr getelementptr inbounds (%struct.tc_clkevt_device, ptr @clkevt, i32 0, i32 0, i32 21), align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcb_clksrc_init.__UNIQUE_ID_ddebug181, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcb_clksrc_init, %if.then131)) #7
          to label %do.end137 [label %if.then131], !srcloc !62

if.then131:                                       ; preds = %for.end113
  call void @__sanitizer_cov_trace_pc() #9
  %43 = load ptr, ptr getelementptr inbounds (%struct.clocksource, ptr @clksrc, i32 0, i32 8), align 8
  %divided_rate.0.lcssa.frozen = freeze i32 %divided_rate.0.lcssa
  %div132 = udiv i32 %divided_rate.0.lcssa.frozen, 1000000
  %44 = mul i32 %div132, 1000000
  %rem.decomposed = sub i32 %divided_rate.0.lcssa.frozen, %44
  %add133 = add nuw nsw i32 %rem.decomposed, 500
  %div134 = udiv i32 %add133, 1000
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcb_clksrc_init.__UNIQUE_ID_ddebug181, ptr noundef nonnull @.str.9, ptr noundef %43, i32 noundef %div132, i32 noundef %div134) #7
  br label %do.end137

do.end137:                                        ; preds = %if.then131, %for.end113
  store ptr %call, ptr @tcaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %31)
  %cmp139 = icmp eq i32 %31, 32
  br i1 %cmp139, label %if.then141, label %if.else

if.then141:                                       ; preds = %do.end137
  call void @__sanitizer_cov_trace_pc() #9
  store ptr @tc_get_cycles32, ptr @clksrc, align 8
  tail call fastcc void @tcb_setup_single_chan(i32 noundef %best_divisor_idx.0.lcssa) #10
  br label %if.end164

if.else:                                          ; preds = %do.end137
  %45 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx22, align 4
  %call144 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %46)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %if.end163, label %do.body147

do.body147:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcb_clksrc_init.__UNIQUE_ID_ddebug182, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcb_clksrc_init, %if.then159)) #7
          to label %err_disable_t0 [label %if.then159], !srcloc !62

if.then159:                                       ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcb_clksrc_init.__UNIQUE_ID_ddebug182, ptr noundef nonnull @.str.10) #7
  br label %err_disable_t0

if.end163:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @tcb_setup_dual_chan(i32 noundef %best_divisor_idx.0.lcssa) #10
  br label %if.end164

if.end164:                                        ; preds = %if.end163, %if.then141
  %storemerge = phi ptr [ @tc_delay_timer_read, %if.end163 ], [ @tc_delay_timer_read32, %if.then141 ]
  %tc_sched_clock.0 = phi ptr [ @tc_sched_clock_read, %if.end163 ], [ @tc_sched_clock_read32, %if.then141 ]
  store ptr %storemerge, ptr @tc_delay_timer, align 4
  %call.i250 = tail call i32 @__clocksource_register_scale(ptr noundef nonnull @clksrc, i32 noundef 1, i32 noundef %divided_rate.0.lcssa) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i250)
  %tobool166.not = icmp eq i32 %call.i250, 0
  br i1 %tobool166.not, label %if.end168, label %if.end164.err_disable_t1_crit_edge

if.end164.err_disable_t1_crit_edge:               ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_disable_t1

if.end168:                                        ; preds = %if.end164
  %call169 = call fastcc i32 @setup_clkevents(ptr noundef nonnull %tc, i32 noundef %best_divisor_idx.0.lcssa) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169)
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %if.end172, label %err_unregister_clksrc

if.end172:                                        ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @sched_clock_register(ptr noundef nonnull %tc_sched_clock.0, i32 noundef 32, i32 noundef %divided_rate.0.lcssa) #7
  store i32 %divided_rate.0.lcssa, ptr getelementptr inbounds (%struct.delay_timer, ptr @tc_delay_timer, i32 0, i32 1), align 4
  tail call void @register_current_timer_delay(ptr noundef nonnull @tc_delay_timer) #7
  br label %cleanup180

err_unregister_clksrc:                            ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #9
  %call173 = tail call i32 @clocksource_unregister(ptr noundef nonnull @clksrc) #7
  br label %err_disable_t1

err_disable_t1:                                   ; preds = %err_unregister_clksrc, %if.end164.err_disable_t1_crit_edge
  %ret.0 = phi i32 [ %call.i250, %if.end164.err_disable_t1_crit_edge ], [ %call169, %err_unregister_clksrc ]
  br i1 %cmp139, label %err_disable_t1.err_disable_t0_crit_edge, label %if.then176

err_disable_t1.err_disable_t0_crit_edge:          ; preds = %err_disable_t1
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_disable_t0

if.then176:                                       ; preds = %err_disable_t1
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx22, align 4
  tail call void @clk_disable(ptr noundef %48) #7
  tail call void @clk_unprepare(ptr noundef %48) #7
  br label %err_disable_t0

err_disable_t0:                                   ; preds = %if.then176, %err_disable_t1.err_disable_t0_crit_edge, %if.then159, %do.body147
  %ret.1 = phi i32 [ %ret.0, %if.then176 ], [ %ret.0, %err_disable_t1.err_disable_t0_crit_edge ], [ %call144, %if.then159 ], [ %call144, %do.body147 ]
  tail call void @clk_disable(ptr noundef %call6) #7
  tail call void @clk_unprepare(ptr noundef %call6) #7
  store ptr null, ptr @tcaddr, align 4
  br label %cleanup180

cleanup180:                                       ; preds = %err_disable_t0, %if.end172, %if.then73, %do.body68, %if.end56.cleanup180_crit_edge, %if.then46.cleanup180_crit_edge, %if.then15, %if.then8, %if.end.cleanup180_crit_edge, %entry.cleanup180_crit_edge
  %retval.0 = phi i32 [ %7, %if.then8 ], [ %11, %if.then15 ], [ %ret.1, %err_disable_t0 ], [ 0, %if.end172 ], [ 0, %entry.cleanup180_crit_edge ], [ -6, %if.end.cleanup180_crit_edge ], [ -22, %if.then46.cleanup180_crit_edge ], [ -19, %if.end56.cleanup180_crit_edge ], [ %retval.0.i243.ph, %if.then73 ], [ %retval.0.i243.ph, %do.body68 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %tc) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %clk) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @tc_get_cycles32(ptr nocapture noundef readnone %cs) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @tcaddr, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 16
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !64
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %conv = zext i32 %2 to i64
  ret i64 %conv
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tcb_setup_single_chan(i32 noundef %mck_divisor_idx) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  tail call void @arm_heavy_mb() #7
  %or = or i32 %mck_divisor_idx, 32768
  %0 = tail call i32 @llvm.bswap.i32(i32 %or)
  %1 = load ptr, ptr @tcaddr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #7, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  tail call void @arm_heavy_mb() #7
  %2 = load ptr, ptr @tcaddr, align 4
  %add.ptr4 = getelementptr i8, ptr %2, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 -16777216) #7, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !67
  tail call void @arm_heavy_mb() #7
  %3 = load ptr, ptr @tcaddr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 16777216) #7, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !68
  tail call void @arm_heavy_mb() #7
  %4 = load ptr, ptr @tcaddr, align 4
  %add.ptr10 = getelementptr i8, ptr %4, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 16777216) #7, !srcloc !61
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @tc_sched_clock_read32() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load ptr, ptr @tcaddr, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 16
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !64
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #7
  %conv.i = zext i32 %2 to i64
  ret i64 %conv.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc_delay_timer_read32() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load ptr, ptr @tcaddr, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 16
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !64
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #7
  ret i32 %2
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tcb_setup_dual_chan(i32 noundef %mck_divisor_idx) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  tail call void @arm_heavy_mb() #7
  %or3 = or i32 %mck_divisor_idx, 622592
  %0 = tail call i32 @llvm.bswap.i32(i32 %or3)
  %1 = load ptr, ptr @tcaddr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #7, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  tail call void @arm_heavy_mb() #7
  %2 = load ptr, ptr @tcaddr, align 4
  %add.ptr6 = getelementptr i8, ptr %2, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 0) #7, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !71
  tail call void @arm_heavy_mb() #7
  %3 = load ptr, ptr @tcaddr, align 4
  %add.ptr9 = getelementptr i8, ptr %3, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 8388608) #7, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  tail call void @arm_heavy_mb() #7
  %4 = load ptr, ptr @tcaddr, align 4
  %add.ptr12 = getelementptr i8, ptr %4, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 -16777216) #7, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !73
  tail call void @arm_heavy_mb() #7
  %5 = load ptr, ptr @tcaddr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 16777216) #7, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  %6 = load ptr, ptr @tcaddr, align 4
  %add.ptr18 = getelementptr i8, ptr %6, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 109051904) #7, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  tail call void @arm_heavy_mb() #7
  %7 = load ptr, ptr @tcaddr, align 4
  %add.ptr21 = getelementptr i8, ptr %7, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 -16777216) #7, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %8 = load ptr, ptr @tcaddr, align 4
  %add.ptr24 = getelementptr i8, ptr %8, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 16777216) #7, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %9 = load ptr, ptr @tcaddr, align 4
  %add.ptr27 = getelementptr i8, ptr %9, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 134217728) #7, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  tail call void @arm_heavy_mb() #7
  %10 = load ptr, ptr @tcaddr, align 4
  %add.ptr30 = getelementptr i8, ptr %10, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 16777216) #7, !srcloc !61
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @tc_sched_clock_read() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !79
  br label %do.body1.i

do.body1.i:                                       ; preds = %do.body1.i.do.body1.i_crit_edge, %entry
  %1 = load ptr, ptr @tcaddr, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 80
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !64
  %3 = load ptr, ptr @tcaddr, align 4
  %add.ptr5.i = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #7, !srcloc !64
  %5 = load ptr, ptr @tcaddr, align 4
  %add.ptr10.i = getelementptr i8, ptr %5, i32 80
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #7, !srcloc !64
  %cmp13.not.i = icmp eq i32 %2, %6
  br i1 %cmp13.not.i, label %do.body16.i, label %do.body1.i.do.body1.i_crit_edge

do.body1.i.do.body1.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1.i

do.body16.i:                                      ; preds = %do.body1.i
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !80
  %and.i.i.i = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body16.i.tc_get_cycles.exit_crit_edge, !prof !81

do.body16.i.tc_get_cycles.exit_crit_edge:         ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tc_get_cycles.exit

if.then.i:                                        ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %tc_get_cycles.exit

tc_get_cycles.exit:                               ; preds = %if.then.i, %do.body16.i.tc_get_cycles.exit_crit_edge
  %8 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  %9 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #7, !srcloc !82
  %shl.i = shl i32 %8, 16
  %or.i = or i32 %9, %shl.i
  %conv31.i = zext i32 %or.i to i64
  ret i64 %conv31.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc_delay_timer_read() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !79
  br label %do.body1.i

do.body1.i:                                       ; preds = %do.body1.i.do.body1.i_crit_edge, %entry
  %1 = load ptr, ptr @tcaddr, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 80
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !64
  %3 = load ptr, ptr @tcaddr, align 4
  %add.ptr5.i = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #7, !srcloc !64
  %5 = load ptr, ptr @tcaddr, align 4
  %add.ptr10.i = getelementptr i8, ptr %5, i32 80
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #7, !srcloc !64
  %cmp13.not.i = icmp eq i32 %2, %6
  br i1 %cmp13.not.i, label %do.body16.i, label %do.body1.i.do.body1.i_crit_edge

do.body1.i.do.body1.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1.i

do.body16.i:                                      ; preds = %do.body1.i
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !80
  %and.i.i.i = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body16.i.tc_get_cycles.exit_crit_edge, !prof !81

do.body16.i.tc_get_cycles.exit_crit_edge:         ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tc_get_cycles.exit

if.then.i:                                        ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %tc_get_cycles.exit

tc_get_cycles.exit:                               ; preds = %if.then.i, %do.body16.i.tc_get_cycles.exit_crit_edge
  %8 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  %9 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #7, !srcloc !82
  %shl.i = shl i32 %8, 16
  %or.i = or i32 %9, %shl.i
  ret i32 %or.i
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @setup_clkevents(ptr nocapture noundef readonly %tc, i32 noundef %divisor_idx) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.atmel_tc, ptr %tc, i32 0, i32 5, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr %struct.atmel_tc, ptr %tc, i32 0, i32 4, i32 2
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  %tcb_config = getelementptr inbounds %struct.atmel_tc, ptr %tc, i32 0, i32 3
  %4 = ptrtoint ptr %tcb_config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tcb_config, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %1) #7
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %regs = getelementptr inbounds %struct.atmel_tc, ptr %tc, i32 0, i32 1
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  store ptr %9, ptr getelementptr inbounds (%struct.tc_clkevt_device, ptr @clkevt, i32 0, i32 3), align 8
  store ptr %1, ptr getelementptr inbounds (%struct.tc_clkevt_device, ptr @clkevt, i32 0, i32 1), align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %7)
  %cmp = icmp eq i32 %7, 32
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  store i32 %divisor_idx, ptr @timer_clock, align 4
  %call4 = tail call i32 @clk_get_rate(ptr noundef %1) #7
  %arrayidx5 = getelementptr [4 x i8], ptr @atmel_tcb_divisors, i32 0, i32 %divisor_idx
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx5, align 1
  %conv = zext i8 %11 to i32
  %div = udiv i32 %call4, %conv
  store i32 %div, ptr getelementptr inbounds (%struct.tc_clkevt_device, ptr @clkevt, i32 0, i32 2), align 4
  br label %if.end12

if.else:                                          ; preds = %if.end
  %slow_clk = getelementptr inbounds %struct.atmel_tc, ptr %tc, i32 0, i32 6
  %12 = ptrtoint ptr %slow_clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %slow_clk, align 4
  %call.i46 = tail call i32 @clk_prepare(ptr noundef %13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46)
  %tobool.not.i47 = icmp eq i32 %call.i46, 0
  br i1 %tobool.not.i47, label %if.end.i50, label %if.else.if.then8_crit_edge

if.else.if.then8_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

if.end.i50:                                       ; preds = %if.else
  %call1.i48 = tail call i32 @clk_enable(ptr noundef %13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i48)
  %tobool2.not.i49 = icmp eq i32 %call1.i48, 0
  br i1 %tobool2.not.i49, label %if.end9, label %if.then3.i51

if.then3.i51:                                     ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %13) #7
  br label %if.then8

if.then8:                                         ; preds = %if.then3.i51, %if.else.if.then8_crit_edge
  %retval.0.i52.ph = phi i32 [ %call1.i48, %if.then3.i51 ], [ %call.i46, %if.else.if.then8_crit_edge ]
  tail call void @clk_disable(ptr noundef %1) #7
  tail call void @clk_unprepare(ptr noundef %1) #7
  br label %cleanup

if.end9:                                          ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %slow_clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %slow_clk, align 4
  %call11 = tail call i32 @clk_get_rate(ptr noundef %15) #7
  store i32 %call11, ptr getelementptr inbounds (%struct.tc_clkevt_device, ptr @clkevt, i32 0, i32 2), align 4
  store i32 4, ptr @timer_clock, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end9, %if.then3
  tail call void @clk_disable(ptr noundef %1) #7
  store ptr getelementptr inbounds ([33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 1), ptr getelementptr inbounds (%struct.tc_clkevt_device, ptr @clkevt, i32 0, i32 0, i32 25), align 4
  %call.i54 = tail call i32 @request_threaded_irq(i32 noundef %3, ptr noundef nonnull @ch2_irq, ptr noundef null, i32 noundef 82432, ptr noundef nonnull @.str.11, ptr noundef nonnull @clkevt) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54)
  %tobool15.not = icmp eq i32 %call.i54, 0
  br i1 %tobool15.not, label %if.end22, label %if.then16

if.then16:                                        ; preds = %if.end12
  tail call void @clk_unprepare(ptr noundef %1) #7
  br i1 %cmp, label %if.then16.cleanup_crit_edge, label %if.then19

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then19:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  %slow_clk20 = getelementptr inbounds %struct.atmel_tc, ptr %tc, i32 0, i32 6
  %16 = ptrtoint ptr %slow_clk20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %slow_clk20, align 4
  tail call void @clk_disable(ptr noundef %17) #7
  tail call void @clk_unprepare(ptr noundef %17) #7
  br label %cleanup

if.end22:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %18 = load i32, ptr getelementptr inbounds (%struct.tc_clkevt_device, ptr @clkevt, i32 0, i32 2), align 4
  %notmask = shl nsw i32 -1, %7
  %sub = xor i32 %notmask, -1
  tail call void @clockevents_config_and_register(ptr noundef nonnull @clkevt, i32 noundef %18, i32 noundef 1, i32 noundef %sub) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then19, %if.then16.cleanup_crit_edge, %if.then8, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ %retval.0.i52.ph, %if.then8 ], [ %call.i54, %if.then19 ], [ %call.i54, %if.then16.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_current_timer_delay(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clocksource_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @tc_get_cycles(ptr nocapture noundef readnone %cs) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !79
  br label %do.body1

do.body1:                                         ; preds = %do.body1.do.body1_crit_edge, %entry
  %1 = load ptr, ptr @tcaddr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 80
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !64
  %3 = load ptr, ptr @tcaddr, align 4
  %add.ptr5 = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #7, !srcloc !64
  %5 = load ptr, ptr @tcaddr, align 4
  %add.ptr10 = getelementptr i8, ptr %5, i32 80
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #7, !srcloc !64
  %cmp13.not = icmp eq i32 %2, %6
  br i1 %cmp13.not, label %do.body16, label %do.body1.do.body1_crit_edge

do.body1.do.body1_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1

do.body16:                                        ; preds = %do.body1
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !80
  %and.i.i = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %if.then, label %do.body16.do.end28_crit_edge, !prof !81

do.body16.do.end28_crit_edge:                     ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end28

if.then:                                          ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %do.end28

do.end28:                                         ; preds = %if.then, %do.body16.do.end28_crit_edge
  %8 = tail call i32 @llvm.bswap.i32(i32 %2)
  %9 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #7, !srcloc !82
  %shl = shl i32 %8, 16
  %or = or i32 %9, %shl
  %conv31 = zext i32 %or to i64
  ret i64 %conv31
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tc_clksrc_suspend(ptr nocapture noundef readnone %cs) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @tcaddr, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !64
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  store i32 %2, ptr @tcb_cache, align 4
  %3 = load ptr, ptr @tcaddr, align 4
  %add.ptr6 = getelementptr i8, ptr %3, i32 44
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !64
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  store i32 %5, ptr getelementptr inbounds ([3 x %struct.anon.43], ptr @tcb_cache, i32 0, i32 0, i32 1), align 4
  %6 = load ptr, ptr @tcaddr, align 4
  %add.ptr15 = getelementptr i8, ptr %6, i32 28
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #7, !srcloc !64
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  store i32 %8, ptr getelementptr inbounds ([3 x %struct.anon.43], ptr @tcb_cache, i32 0, i32 0, i32 2), align 4
  %9 = load ptr, ptr @tcaddr, align 4
  %add.ptr24 = getelementptr i8, ptr %9, i32 32
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #7, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  %11 = lshr i32 %10, 8
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  store i8 %13, ptr getelementptr inbounds ([3 x %struct.anon.43], ptr @tcb_cache, i32 0, i32 0, i32 3), align 4
  %14 = load ptr, ptr @tcaddr, align 4
  %add.ptr.1 = getelementptr i8, ptr %14, i32 68
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1) #7, !srcloc !64
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  store i32 %16, ptr getelementptr inbounds ([3 x %struct.anon.43], ptr @tcb_cache, i32 0, i32 1), align 4
  %17 = load ptr, ptr @tcaddr, align 4
  %add.ptr6.1 = getelementptr i8, ptr %17, i32 108
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.1) #7, !srcloc !64
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  store i32 %19, ptr getelementptr inbounds ([3 x %struct.anon.43], ptr @tcb_cache, i32 0, i32 1, i32 1), align 4
  %20 = load ptr, ptr @tcaddr, align 4
  %add.ptr15.1 = getelementptr i8, ptr %20, i32 92
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.1) #7, !srcloc !64
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  store i32 %22, ptr getelementptr inbounds ([3 x %struct.anon.43], ptr @tcb_cache, i32 0, i32 1, i32 2), align 4
  %23 = load ptr, ptr @tcaddr, align 4
  %add.ptr24.1 = getelementptr i8, ptr %23, i32 96
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.1) #7, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  %25 = lshr i32 %24, 8
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  store i8 %27, ptr getelementptr inbounds ([3 x %struct.anon.43], ptr @tcb_cache, i32 0, i32 1, i32 3), align 4
  %28 = load ptr, ptr @tcaddr, align 4
  %add.ptr.2 = getelementptr i8, ptr %28, i32 132
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.2) #7, !srcloc !64
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  store i32 %30, ptr getelementptr inbounds ([3 x %struct.anon.43], ptr @tcb_cache, i32 0, i32 2), align 4
  %31 = load ptr, ptr @tcaddr, align 4
  %add.ptr6.2 = getelementptr i8, ptr %31, i32 172
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.2) #7, !srcloc !64
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  store i32 %33, ptr getelementptr inbounds ([3 x %struct.anon.43], ptr @tcb_cache, i32 0, i32 2, i32 1), align 4
  %34 = load ptr, ptr @tcaddr, align 4
  %add.ptr15.2 = getelementptr i8, ptr %34, i32 156
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.2) #7, !srcloc !64
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  store i32 %36, ptr getelementptr inbounds ([3 x %struct.anon.43], ptr @tcb_cache, i32 0, i32 2, i32 2), align 4
  %37 = load ptr, ptr @tcaddr, align 4
  %add.ptr24.2 = getelementptr i8, ptr %37, i32 160
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.2) #7, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  %39 = lshr i32 %38, 8
  %40 = trunc i32 %39 to i8
  %41 = and i8 %40, 1
  store i8 %41, ptr getelementptr inbounds ([3 x %struct.anon.43], ptr @tcb_cache, i32 0, i32 2, i32 3), align 4
  %42 = load ptr, ptr @tcaddr, align 4
  %add.ptr32 = getelementptr i8, ptr %42, i32 196
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #7, !srcloc !64
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  store i32 %44, ptr @bmr_cache, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tc_clksrc_resume(ptr nocapture noundef readnone %cs) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %entry
  %i.060 = phi i32 [ 0, %entry ], [ %inc, %for.inc.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %arrayidx = getelementptr [3 x %struct.anon.43], ptr @tcb_cache, i32 0, i32 %i.060
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = load ptr, ptr @tcaddr, align 4
  %mul = shl nuw nsw i32 %i.060, 6
  %add = or i32 %mul, 4
  %add.ptr = getelementptr i8, ptr %3, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #7, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %rc = getelementptr [3 x %struct.anon.43], ptr @tcb_cache, i32 0, i32 %i.060, i32 2
  %4 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rc, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = load ptr, ptr @tcaddr, align 4
  %add6 = or i32 %mul, 28
  %add.ptr7 = getelementptr i8, ptr %7, i32 %add6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %6) #7, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void @arm_heavy_mb() #7
  %8 = load ptr, ptr @tcaddr, align 4
  %add12 = or i32 %mul, 20
  %add.ptr13 = getelementptr i8, ptr %8, i32 %add12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 0) #7, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %9 = load ptr, ptr @tcaddr, align 4
  %add18 = or i32 %mul, 24
  %add.ptr19 = getelementptr i8, ptr %9, i32 %add18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 0) #7, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !92
  tail call void @arm_heavy_mb() #7
  %10 = load ptr, ptr @tcaddr, align 4
  %add24 = or i32 %mul, 40
  %add.ptr25 = getelementptr i8, ptr %10, i32 %add24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 -16777216) #7, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  tail call void @arm_heavy_mb() #7
  %imr = getelementptr [3 x %struct.anon.43], ptr @tcb_cache, i32 0, i32 %i.060, i32 1
  %11 = ptrtoint ptr %imr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %imr, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %14 = load ptr, ptr @tcaddr, align 4
  %add31 = or i32 %mul, 36
  %add.ptr32 = getelementptr i8, ptr %14, i32 %add31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %13) #7, !srcloc !61
  %clken = getelementptr [3 x %struct.anon.43], ptr @tcb_cache, i32 0, i32 %i.060, i32 3
  %15 = ptrtoint ptr %clken to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %clken, align 4, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %do.body.for.inc_crit_edge, label %do.body34

do.body.for.inc_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.body34:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %17 = load ptr, ptr @tcaddr, align 4
  %add.ptr39 = getelementptr i8, ptr %17, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 16777216) #7, !srcloc !61
  br label %for.inc

for.inc:                                          ; preds = %do.body34, %do.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.060, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %do.body40, label %for.inc.do.body_crit_edge

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body40:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  tail call void @arm_heavy_mb() #7
  %18 = load i32, ptr @bmr_cache, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %20 = load ptr, ptr @tcaddr, align 4
  %add.ptr43 = getelementptr i8, ptr %20, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 %19) #7, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !96
  tail call void @arm_heavy_mb() #7
  %21 = load ptr, ptr @tcaddr, align 4
  %add.ptr47 = getelementptr i8, ptr %21, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 16777216) #7, !srcloc !61
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc_next_event(i32 noundef %delta, ptr nocapture noundef readnone %d) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.bswap.i32(i32 %delta)
  %1 = load ptr, ptr @tcaddr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #7, !srcloc !61
  %2 = load ptr, ptr @tcaddr, align 4
  %add.ptr1 = getelementptr i8, ptr %2, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 83886080) #7, !srcloc !61
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc_set_periodic(ptr nocapture noundef readonly %d) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.tc_clkevt_device, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 8
  %state_use_accessors.i = getelementptr inbounds %struct.clock_event_device, ptr %d, i32 0, i32 8
  %2 = ptrtoint ptr %state_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state_use_accessors.i, align 16
  %4 = and i32 %3, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %switch = icmp eq i32 %4, 2
  br i1 %switch, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  tail call void @arm_heavy_mb() #7
  %add.ptr.i = getelementptr i8, ptr %1, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -16777216) #7, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  tail call void @arm_heavy_mb() #7
  %add.ptr5.i = getelementptr i8, ptr %1, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 33554432) #7, !srcloc !61
  %5 = ptrtoint ptr %state_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state_use_accessors.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.i = icmp eq i32 %6, 0
  br i1 %cmp.i.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %clk.i = getelementptr inbounds %struct.tc_clkevt_device, ptr %d, i32 0, i32 1
  %7 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk.i, align 128
  tail call void @clk_disable(ptr noundef %8) #7
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %clk = getelementptr inbounds %struct.tc_clkevt_device, ptr %d, i32 0, i32 1
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk, align 128
  %call5 = tail call i32 @clk_enable(ptr noundef %10) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !99
  tail call void @arm_heavy_mb() #7
  %11 = load i32, ptr @timer_clock, align 4
  %or6 = or i32 %11, 49152
  %12 = tail call i32 @llvm.bswap.i32(i32 %or6)
  %add.ptr = getelementptr i8, ptr %1, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %12) #7, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !100
  tail call void @arm_heavy_mb() #7
  %rate = getelementptr inbounds %struct.tc_clkevt_device, ptr %d, i32 0, i32 2
  %13 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rate, align 4
  %add = add i32 %14, 50
  %div = udiv i32 %add, 100
  %15 = tail call i32 @llvm.bswap.i32(i32 %div)
  %16 = load ptr, ptr @tcaddr, align 4
  %add.ptr10 = getelementptr i8, ptr %16, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %15) #7, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %add.ptr14 = getelementptr i8, ptr %1, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 268435456) #7, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %add.ptr18 = getelementptr i8, ptr %1, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 83886080) #7, !srcloc !61
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc_set_oneshot(ptr nocapture noundef readonly %d) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.tc_clkevt_device, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 8
  %state_use_accessors.i = getelementptr inbounds %struct.clock_event_device, ptr %d, i32 0, i32 8
  %2 = ptrtoint ptr %state_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state_use_accessors.i, align 16
  %4 = and i32 %3, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %switch = icmp eq i32 %4, 2
  br i1 %switch, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  tail call void @arm_heavy_mb() #7
  %add.ptr.i = getelementptr i8, ptr %1, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -16777216) #7, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  tail call void @arm_heavy_mb() #7
  %add.ptr5.i = getelementptr i8, ptr %1, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 33554432) #7, !srcloc !61
  %5 = ptrtoint ptr %state_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state_use_accessors.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.i = icmp eq i32 %6, 0
  br i1 %cmp.i.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %clk.i = getelementptr inbounds %struct.tc_clkevt_device, ptr %d, i32 0, i32 1
  %7 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk.i, align 128
  tail call void @clk_disable(ptr noundef %8) #7
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %clk = getelementptr inbounds %struct.tc_clkevt_device, ptr %d, i32 0, i32 1
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk, align 128
  %call5 = tail call i32 @clk_enable(ptr noundef %10) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %11 = load i32, ptr @timer_clock, align 4
  %or7 = or i32 %11, 49216
  %12 = tail call i32 @llvm.bswap.i32(i32 %or7)
  %add.ptr = getelementptr i8, ptr %1, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %12) #7, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  tail call void @arm_heavy_mb() #7
  %add.ptr11 = getelementptr i8, ptr %1, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 268435456) #7, !srcloc !61
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc_shutdown(ptr nocapture noundef readonly %d) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.tc_clkevt_device, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  tail call void @arm_heavy_mb() #7
  %add.ptr = getelementptr i8, ptr %1, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -16777216) #7, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  tail call void @arm_heavy_mb() #7
  %add.ptr5 = getelementptr i8, ptr %1, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 33554432) #7, !srcloc !61
  %state_use_accessors.i = getelementptr inbounds %struct.clock_event_device, ptr %d, i32 0, i32 8
  %2 = ptrtoint ptr %state_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state_use_accessors.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %clk = getelementptr inbounds %struct.tc_clkevt_device, ptr %d, i32 0, i32 1
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 128
  tail call void @clk_disable(ptr noundef %5) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clocksource_register_scale(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ch2_irq(i32 noundef %irq, ptr noundef %handle) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.tc_clkevt_device, ptr %handle, i32 0, i32 3
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 160
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !64
  %3 = and i32 %2, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %handle, align 128
  tail call void %5(ptr noundef %handle) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !18, !19, !21, !22, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @__of_table_atmel_tcb_clksrc, !1, !"__of_table_atmel_tcb_clksrc", i1 false, i1 false}
!1 = !{!"../drivers/clocksource/timer-atmel-tcb.c", i32 510, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clocksource/timer-atmel-tcb.c", i32 394, i32 44}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clocksource/timer-atmel-tcb.c", i32 398, i32 49}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clocksource/timer-atmel-tcb.c", i32 403, i32 47}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clocksource/timer-atmel-tcb.c", i32 406, i32 47}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clocksource/timer-atmel-tcb.c", i32 429, i32 3}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @tcb_clksrc_init.__UNIQUE_ID_ddebug179, !11, !"__UNIQUE_ID_ddebug179", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clocksource/timer-atmel-tcb.c", i32 443, i32 3}
!18 = !{ptr @tcb_clksrc_init.__UNIQUE_ID_ddebug180, !17, !"__UNIQUE_ID_ddebug180", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/clocksource/timer-atmel-tcb.c", i32 452, i32 2}
!21 = !{ptr @tcb_clksrc_init.__UNIQUE_ID_ddebug181, !20, !"__UNIQUE_ID_ddebug181", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clocksource/timer-atmel-tcb.c", i32 470, i32 4}
!24 = !{ptr @tcb_clksrc_init.__UNIQUE_ID_ddebug182, !23, !"__UNIQUE_ID_ddebug182", i1 false, i1 false}
!25 = !{ptr @tcaddr, !26, !"tcaddr", i1 false, i1 false}
!26 = !{!"../drivers/clocksource/timer-atmel-tcb.c", i32 41, i32 22}
!27 = !{ptr @atmel_tcb_of_match, !28, !"atmel_tcb_of_match", i1 false, i1 false}
!28 = !{!"../drivers/clocksource/timer-atmel-tcb.c", i32 367, i32 34}
!29 = !{ptr @tcb_rm9200_config, !30, !"tcb_rm9200_config", i1 false, i1 false}
!30 = !{!"../drivers/clocksource/timer-atmel-tcb.c", i32 354, i32 32}
!31 = !{ptr @tcb_sam9x5_config, !32, !"tcb_sam9x5_config", i1 false, i1 false}
!32 = !{!"../drivers/clocksource/timer-atmel-tcb.c", i32 358, i32 32}
!33 = !{ptr @tcb_sama5d2_config, !34, !"tcb_sama5d2_config", i1 false, i1 false}
!34 = !{!"../drivers/clocksource/timer-atmel-tcb.c", i32 362, i32 32}
!35 = !{ptr @atmel_tcb_divisors, !36, !"atmel_tcb_divisors", i1 false, i1 false}
!36 = !{!"../drivers/clocksource/timer-atmel-tcb.c", i32 51, i32 17}
!37 = !{ptr @clksrc, !38, !"clksrc", i1 false, i1 false}
!38 = !{!"../drivers/clocksource/timer-atmel-tcb.c", i32 113, i32 27}
!39 = !{ptr @tcb_cache, !40, !"tcb_cache", i1 false, i1 false}
!40 = !{!"../drivers/clocksource/timer-atmel-tcb.c", i32 48, i32 3}
!41 = !{ptr @bmr_cache, !42, !"bmr_cache", i1 false, i1 false}
!42 = !{!"../drivers/clocksource/timer-atmel-tcb.c", i32 49, i32 12}
!43 = !{ptr @clkevt, !44, !"clkevt", i1 false, i1 false}
!44 = !{!"../drivers/clocksource/timer-atmel-tcb.c", i32 229, i32 32}
!45 = !{ptr @timer_clock, !46, !"timer_clock", i1 false, i1 false}
!46 = !{!"../drivers/clocksource/timer-atmel-tcb.c", i32 158, i32 12}
!47 = !{ptr @tc_delay_timer, !48, !"tc_delay_timer", i1 false, i1 false}
!48 = !{!"../drivers/clocksource/timer-atmel-tcb.c", i32 132, i32 27}
!49 = !{ptr @.str.11, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/clocksource/timer-atmel-tcb.c", i32 289, i32 46}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{i64 2152851042}
!61 = !{i64 3985914}
!62 = !{i64 2148900903, i64 2148900908, i64 2148900921, i64 2148900965, i64 2148900999, i64 2148901020}
!63 = !{i8 0, i8 2}
!64 = !{i64 3986332}
!65 = !{i64 2152848041}
!66 = !{i64 2152848738}
!67 = !{i64 2152849253}
!68 = !{i64 2152849687}
!69 = !{i64 2152842448}
!70 = !{i64 2152843217}
!71 = !{i64 2152843725}
!72 = !{i64 2152844233}
!73 = !{i64 2152844748}
!74 = !{i64 2152845319}
!75 = !{i64 2152845905}
!76 = !{i64 2152846420}
!77 = !{i64 2152846854}
!78 = !{i64 2152847269}
!79 = !{i64 641781, i64 641842}
!80 = !{i64 644513}
!81 = !{!"branch_weights", i32 1, i32 2000}
!82 = !{i64 644798}
!83 = !{i64 2152826367}
!84 = !{i64 2152826992}
!85 = !{i64 2152827615}
!86 = !{i64 2152828238}
!87 = !{i64 2152828723}
!88 = !{i64 2152829403}
!89 = !{i64 2152829950}
!90 = !{i64 2152830480}
!91 = !{i64 2152830968}
!92 = !{i64 2152831461}
!93 = !{i64 2152831975}
!94 = !{i64 2152832526}
!95 = !{i64 2152832952}
!96 = !{i64 2152833370}
!97 = !{i64 2152836038}
!98 = !{i64 2152836549}
!99 = !{i64 2152838338}
!100 = !{i64 2152838980}
!101 = !{i64 2152839564}
!102 = !{i64 2152840110}
!103 = !{i64 2152837132}
!104 = !{i64 2152837774}
