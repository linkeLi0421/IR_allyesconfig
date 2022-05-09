; ModuleID = '/llk/IR_all_yes/drivers/clocksource/timer-rockchip.c_pt.bc'
source_filename = "../drivers/clocksource/timer-rockchip.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.rk_clkevt = type { %struct.clock_event_device, %struct.rk_timer, [104 x i8] }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [124 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.rk_timer = type { ptr, ptr, ptr, ptr, i32, i32 }

@__of_table_rk3288_timer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3288-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk_timer_init }, section "__timer_of_table", align 4
@__of_table_rk3399_timer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3399-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk_timer_init }, section "__timer_of_table", align 4
@rk_clkevt = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rk_clksrc = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rk_timer_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013Too many timer definitions for '%s'\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rk_timer_init\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/clocksource/timer-rockchip.c\00", [59 x i8] zeroinitializer }, align 32
@rk_timer_init._entry_ptr = internal global ptr @rk_timer_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rk_timer\00", [23 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@rk_clkevt_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013Failed to initialize '%s': %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rk_clkevt_init\00", [17 x i8] zeroinitializer }, align 32
@rk_clkevt_init._entry_ptr = internal global ptr @rk_clkevt_init._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rk_timer_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013Failed to get base address for '%s'\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rk_timer_probe\00", [17 x i8] zeroinitializer }, align 32
@rk_timer_probe._entry_ptr = internal global ptr @rk_timer_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rockchip,rk3399-timer\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@rk_timer_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.7, ptr @.str.2, i32 149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013Failed to get pclk for '%s'\0A\00", [33 x i8] zeroinitializer }, align 32
@rk_timer_probe._entry_ptr.12 = internal global ptr @rk_timer_probe._entry.10, section ".printk_index", align 4
@rk_timer_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.7, ptr @.str.2, i32 155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013Failed to enable pclk for '%s'\0A\00", [62 x i8] zeroinitializer }, align 32
@rk_timer_probe._entry_ptr.15 = internal global ptr @rk_timer_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"timer\00", [26 x i8] zeroinitializer }, align 32
@rk_timer_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.7, ptr @.str.2, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013Failed to get timer clock for '%s'\0A\00", [58 x i8] zeroinitializer }, align 32
@rk_timer_probe._entry_ptr.19 = internal global ptr @rk_timer_probe._entry.17, section ".printk_index", align 4
@rk_timer_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.7, ptr @.str.2, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013Failed to enable timer clock\0A\00", [32 x i8] zeroinitializer }, align 32
@rk_timer_probe._entry_ptr.22 = internal global ptr @rk_timer_probe._entry.20, section ".printk_index", align 4
@rk_timer_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.7, ptr @.str.2, i32 179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013Failed to map interrupts for '%s'\0A\00", [59 x i8] zeroinitializer }, align 32
@rk_timer_probe._entry_ptr.25 = internal global ptr @rk_timer_probe._entry.23, section ".printk_index", align 4
@rk_clksrc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013Failed to register clocksource\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rk_clksrc_init\00", [17 x i8] zeroinitializer }, align 32
@rk_clksrc_init._entry_ptr = internal global ptr @rk_clksrc_init._entry, section ".printk_index", align 4
@___asan_gen_.28 = private unnamed_addr constant [10 x i8] c"rk_clkevt\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 47, i32 26 }
@___asan_gen_.31 = private unnamed_addr constant [10 x i8] c"rk_clksrc\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 48, i32 25 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 299, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 234, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 137, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 141, i32 34 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 146, i32 32 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 149, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 155, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 160, i32 37 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 163, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 169, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 179, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.113 = private constant [40 x i8] c"../drivers/clocksource/timer-rockchip.c\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 274, i32 3 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__of_table_rk3288_timer, ptr @__of_table_rk3399_timer, ptr @rk_clkevt_init._entry, ptr @rk_clkevt_init._entry_ptr, ptr @rk_clksrc_init._entry, ptr @rk_clksrc_init._entry_ptr, ptr @rk_timer_init._entry, ptr @rk_timer_init._entry_ptr, ptr @rk_timer_probe._entry, ptr @rk_timer_probe._entry.10, ptr @rk_timer_probe._entry.13, ptr @rk_timer_probe._entry.17, ptr @rk_timer_probe._entry.20, ptr @rk_timer_probe._entry.23, ptr @rk_timer_probe._entry_ptr, ptr @rk_timer_probe._entry_ptr.12, ptr @rk_timer_probe._entry_ptr.15, ptr @rk_timer_probe._entry_ptr.19, ptr @rk_timer_probe._entry_ptr.22, ptr @rk_timer_probe._entry_ptr.25, ptr @rk_clkevt, ptr @rk_clksrc, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_clkevt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_clksrc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_timer_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_clkevt_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_timer_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_timer_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_timer_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_timer_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_timer_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_timer_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_clksrc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_timer_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @rk_clkevt, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call fastcc i32 @rk_clkevt_init(ptr noundef %np) #10
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @rk_clksrc, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.then2, label %do.end

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call fastcc i32 @rk_clksrc_init(ptr noundef %np) #10
  br label %return

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #11
  br label %return

return:                                           ; preds = %do.end, %if.then2, %if.then
  %retval.0 = phi i32 [ -22, %do.end ], [ %call3, %if.then2 ], [ %call, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rk_clkevt_init(ptr noundef %np) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 384) #12
  store ptr %call7.i.i, ptr @rk_clkevt, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  %timer = getelementptr inbounds %struct.rk_clkevt, ptr %call7.i.i, i32 0, i32 1
  %call1 = tail call fastcc i32 @rk_timer_probe(ptr noundef %timer, ptr noundef %np) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_probe_crit_edge

if.end.out_probe_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_probe

if.end4:                                          ; preds = %if.end
  %1 = load ptr, ptr @rk_clkevt, align 4
  %name = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.3, ptr %name, align 4
  %features = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 35, ptr %features, align 4
  %set_next_event = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %set_next_event to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @rk_timer_set_next_event, ptr %set_next_event, align 4
  %set_state_shutdown = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 14
  %5 = ptrtoint ptr %set_state_shutdown to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @rk_timer_shutdown, ptr %set_state_shutdown, align 8
  %set_state_periodic = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %set_state_periodic to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @rk_timer_set_periodic, ptr %set_state_periodic, align 4
  %irq = getelementptr inbounds %struct.rk_clkevt, ptr %1, i32 0, i32 1, i32 5
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  %irq7 = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 23
  %9 = ptrtoint ptr %irq7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %irq7, align 4
  %cpumask = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 25
  %10 = ptrtoint ptr %cpumask to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @__cpu_possible_mask, ptr %cpumask, align 4
  %rating = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 22
  %11 = ptrtoint ptr %rating to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 250, ptr %rating, align 8
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %8, ptr noundef nonnull @rk_timer_interrupt, ptr noundef null, i32 noundef 82432, ptr noundef nonnull @.str.3, ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not = icmp eq i32 %call.i, 0
  br i1 %tobool11.not, label %if.end14, label %do.end

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef %call.i) #11
  %12 = load ptr, ptr @rk_clkevt, align 4
  %timer17 = getelementptr inbounds %struct.rk_clkevt, ptr %12, i32 0, i32 1
  tail call fastcc void @rk_timer_cleanup(ptr noundef %timer17) #10
  br label %out_probe

if.end14:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %13 = load ptr, ptr @rk_clkevt, align 4
  %freq = getelementptr inbounds %struct.rk_clkevt, ptr %13, i32 0, i32 1, i32 4
  %14 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %freq, align 16
  tail call void @clockevents_config_and_register(ptr noundef %13, i32 noundef %15, i32 noundef 1, i32 noundef -1) #7
  br label %cleanup

out_probe:                                        ; preds = %do.end, %if.end.out_probe_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.out_probe_crit_edge ], [ %call.i, %do.end ]
  %16 = load ptr, ptr @rk_clkevt, align 4
  tail call void @kfree(ptr noundef %16) #7
  br label %out

out:                                              ; preds = %out_probe, %entry.out_crit_edge
  %ret.1 = phi i32 [ %ret.0, %out_probe ], [ -12, %entry.out_crit_edge ]
  %17 = inttoptr i32 %ret.1 to ptr
  store ptr %17, ptr @rk_clkevt, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end14
  %retval.0 = phi i32 [ %ret.1, %out ], [ 0, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rk_clksrc_init(ptr noundef %np) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 24) #12
  store ptr %call7.i.i, ptr @rk_clksrc, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @rk_timer_probe(ptr noundef nonnull %call7.i.i, ptr noundef %np) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_probe_crit_edge

if.end.out_probe_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_probe

if.end4:                                          ; preds = %if.end
  %1 = load ptr, ptr @rk_clksrc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 -1) #7, !srcloc !65
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %add.ptr2.i = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 0) #7, !srcloc !65
  %6 = load ptr, ptr @rk_clksrc, align 4
  %ctrl.i = getelementptr inbounds %struct.rk_timer, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctrl.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 16777216) #7, !srcloc !65
  %9 = load ptr, ptr @rk_clksrc, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 8
  %freq = getelementptr inbounds %struct.rk_timer, ptr %9, i32 0, i32 4
  %12 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %freq, align 4
  %call5 = tail call i32 @clocksource_mmio_init(ptr noundef %add.ptr, ptr noundef nonnull @.str.3, i32 noundef %13, i32 noundef 250, i32 noundef 32, ptr noundef nonnull @clocksource_mmio_readl_down) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end9, label %do.end

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #11
  %14 = load ptr, ptr @rk_clksrc, align 4
  tail call fastcc void @rk_timer_cleanup(ptr noundef %14) #10
  br label %out_probe

if.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %15 = load ptr, ptr @rk_clksrc, align 4
  %freq10 = getelementptr inbounds %struct.rk_timer, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %freq10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %freq10, align 4
  tail call void @sched_clock_register(ptr noundef nonnull @rk_timer_sched_read, i32 noundef 32, i32 noundef %17) #7
  br label %cleanup

out_probe:                                        ; preds = %do.end, %if.end.out_probe_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.out_probe_crit_edge ], [ %call5, %do.end ]
  %18 = load ptr, ptr @rk_clksrc, align 4
  tail call void @kfree(ptr noundef %18) #7
  br label %out

out:                                              ; preds = %out_probe, %entry.out_crit_edge
  %ret.1 = phi i32 [ %ret.0, %out_probe ], [ -12, %entry.out_crit_edge ]
  %19 = inttoptr i32 %ret.1 to ptr
  store ptr %19, ptr @rk_clksrc, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end9
  %retval.0 = phi i32 [ %ret.1, %out ], [ 0, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rk_timer_probe(ptr nocapture noundef %timer, ptr noundef %np) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #7
  %0 = ptrtoint ptr %timer to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %timer, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @of_device_is_compatible(ptr noundef %np, ptr noundef nonnull @.str.8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  %spec.select = select i1 %tobool4.not, i32 16, i32 28
  %1 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %timer, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 %spec.select
  %ctrl = getelementptr inbounds %struct.rk_timer, ptr %timer, i32 0, i32 1
  %3 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr, ptr %ctrl, align 4
  %call8 = tail call ptr @of_clk_get_by_name(ptr noundef %np, ptr noundef nonnull @.str.9) #7
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end17

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call8 to i32
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3) #11
  br label %out_unmap

if.end17:                                         ; preds = %if.end
  %call.i = tail call i32 @clk_prepare(ptr noundef %call8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end17.do.end23_crit_edge

if.end17.do.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end23

if.end.i:                                         ; preds = %if.end17
  %call1.i = tail call i32 @clk_enable(ptr noundef %call8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end26, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call8) #7
  br label %do.end23

do.end23:                                         ; preds = %if.then3.i, %if.end17.do.end23_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end17.do.end23_crit_edge ]
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.3) #11
  br label %out_unmap

if.end26:                                         ; preds = %if.end.i
  %pclk27 = getelementptr inbounds %struct.rk_timer, ptr %timer, i32 0, i32 3
  %5 = ptrtoint ptr %pclk27 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8, ptr %pclk27, align 4
  %call28 = tail call ptr @of_clk_get_by_name(ptr noundef %np, ptr noundef nonnull @.str.16) #7
  %cmp.i89 = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i89, label %if.then30, label %if.end37

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call28 to i32
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.3) #11
  br label %out_timer_clk

if.end37:                                         ; preds = %if.end26
  %call.i90 = tail call i32 @clk_prepare(ptr noundef %call28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90)
  %tobool.not.i91 = icmp eq i32 %call.i90, 0
  br i1 %tobool.not.i91, label %if.end.i94, label %if.end37.do.end43_crit_edge

if.end37.do.end43_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end43

if.end.i94:                                       ; preds = %if.end37
  %call1.i92 = tail call i32 @clk_enable(ptr noundef %call28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i92)
  %tobool2.not.i93 = icmp eq i32 %call1.i92, 0
  br i1 %tobool2.not.i93, label %if.end46, label %if.then3.i95

if.then3.i95:                                     ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call28) #7
  br label %do.end43

do.end43:                                         ; preds = %if.then3.i95, %if.end37.do.end43_crit_edge
  %retval.0.i96.ph = phi i32 [ %call1.i92, %if.then3.i95 ], [ %call.i90, %if.end37.do.end43_crit_edge ]
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #11
  br label %out_timer_clk

if.end46:                                         ; preds = %if.end.i94
  %clk = getelementptr inbounds %struct.rk_timer, ptr %timer, i32 0, i32 2
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call28, ptr %clk, align 4
  %call47 = tail call i32 @clk_get_rate(ptr noundef %call28) #7
  %freq = getelementptr inbounds %struct.rk_timer, ptr %timer, i32 0, i32 4
  %8 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call47, ptr %freq, align 4
  %call48 = tail call i32 @irq_of_parse_and_map(ptr noundef %np, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.then50, label %if.end56

if.then50:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.3) #11
  tail call void @clk_disable(ptr noundef %call28) #7
  tail call void @clk_unprepare(ptr noundef %call28) #7
  br label %out_timer_clk

if.end56:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  %irq57 = getelementptr inbounds %struct.rk_timer, ptr %timer, i32 0, i32 5
  %9 = ptrtoint ptr %irq57 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call48, ptr %irq57, align 4
  %10 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %timer, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #7, !srcloc !65
  %12 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctrl, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 0) #7, !srcloc !65
  br label %cleanup

out_timer_clk:                                    ; preds = %if.then50, %do.end43, %if.then30
  %ret.0 = phi i32 [ %6, %if.then30 ], [ %retval.0.i96.ph, %do.end43 ], [ -22, %if.then50 ]
  tail call void @clk_disable(ptr noundef %call8) #7
  tail call void @clk_unprepare(ptr noundef %call8) #7
  br label %out_unmap

out_unmap:                                        ; preds = %out_timer_clk, %do.end23, %if.then10
  %ret.1 = phi i32 [ %4, %if.then10 ], [ %retval.0.i.ph, %do.end23 ], [ %ret.0, %out_timer_clk ]
  %14 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %timer, align 4
  tail call void @iounmap(ptr noundef %15) #7
  br label %cleanup

cleanup:                                          ; preds = %out_unmap, %if.end56, %do.end
  %retval.0 = phi i32 [ %ret.1, %out_unmap ], [ 0, %if.end56 ], [ -6, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_timer_set_next_event(i32 noundef %cycles, ptr nocapture noundef readonly %ce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %timer.i = getelementptr inbounds %struct.rk_clkevt, ptr %ce, i32 0, i32 1
  %ctrl.i = getelementptr inbounds %struct.rk_clkevt, ptr %ce, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 0) #7, !srcloc !65
  %2 = tail call i32 @llvm.bswap.i32(i32 %cycles) #7
  %3 = ptrtoint ptr %timer.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %timer.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %2) #7, !srcloc !65
  %5 = ptrtoint ptr %timer.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %timer.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 0) #7, !srcloc !65
  %7 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctrl.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 117440512) #7, !srcloc !65
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_timer_shutdown(ptr nocapture noundef readonly %ce) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl.i = getelementptr inbounds %struct.rk_clkevt, ptr %ce, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 0) #7, !srcloc !65
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_timer_set_periodic(ptr nocapture noundef readonly %ce) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %timer.i = getelementptr inbounds %struct.rk_clkevt, ptr %ce, i32 0, i32 1
  %ctrl.i = getelementptr inbounds %struct.rk_clkevt, ptr %ce, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 0) #7, !srcloc !65
  %freq = getelementptr inbounds %struct.rk_clkevt, ptr %ce, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %freq, align 4
  %div = udiv i32 %3, 100
  %sub = add nsw i32 %div, -1
  %4 = tail call i32 @llvm.bswap.i32(i32 %sub) #7
  %5 = ptrtoint ptr %timer.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %timer.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #7, !srcloc !65
  %7 = ptrtoint ptr %timer.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %timer.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 0) #7, !srcloc !65
  %9 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctrl.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 83886080) #7, !srcloc !65
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_timer_interrupt(i32 noundef %irq, ptr noundef %dev_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %timer.i = getelementptr inbounds %struct.rk_clkevt, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %timer.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %timer.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #7, !srcloc !65
  %state_use_accessors.i = getelementptr inbounds %struct.clock_event_device, ptr %dev_id, i32 0, i32 8
  %2 = ptrtoint ptr %state_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state_use_accessors.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.i = icmp eq i32 %3, 3
  br i1 %cmp.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ctrl.i = getelementptr inbounds %struct.rk_clkevt, ptr %dev_id, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #7, !srcloc !65
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_id, align 128
  tail call void %7(ptr noundef %dev_id) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rk_timer_cleanup(ptr nocapture noundef readonly %timer) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.rk_timer, ptr %timer, i32 0, i32 2
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %1) #7
  tail call void @clk_unprepare(ptr noundef %1) #7
  %pclk = getelementptr inbounds %struct.rk_timer, ptr %timer, i32 0, i32 3
  %2 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %3) #7
  tail call void @clk_unprepare(ptr noundef %3) #7
  %4 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %timer, align 4
  tail call void @iounmap(ptr noundef %5) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clocksource_mmio_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clocksource_mmio_readl_down(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @rk_timer_sched_read() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load ptr, ptr @rk_clksrc, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 8
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !66
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !13, !15, !16, !17, !18, !20, !21, !22, !23, !25, !27, !29, !30, !31, !33, !34, !35, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !53, !54, !55}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @__of_table_rk3288_timer, !1, !"__of_table_rk3288_timer", i1 false, i1 false}
!1 = !{!"../drivers/clocksource/timer-rockchip.c", i32 303, i32 1}
!2 = !{ptr @__of_table_rk3399_timer, !3, !"__of_table_rk3399_timer", i1 false, i1 false}
!3 = !{!"../drivers/clocksource/timer-rockchip.c", i32 304, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clocksource/timer-rockchip.c", i32 299, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @rk_timer_init._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @rk_timer_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @rk_clkevt, !12, !"rk_clkevt", i1 false, i1 false}
!12 = !{!"../drivers/clocksource/timer-rockchip.c", i32 47, i32 26}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/clocksource/timer-rockchip.c", i32 234, i32 3}
!15 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @rk_clkevt_init._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @rk_clkevt_init._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clocksource/timer-rockchip.c", i32 137, i32 3}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @rk_timer_probe._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @rk_timer_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/clocksource/timer-rockchip.c", i32 141, i32 34}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clocksource/timer-rockchip.c", i32 146, i32 32}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clocksource/timer-rockchip.c", i32 149, i32 3}
!29 = !{ptr @rk_timer_probe._entry.10, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @rk_timer_probe._entry_ptr.12, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clocksource/timer-rockchip.c", i32 155, i32 3}
!33 = !{ptr @rk_timer_probe._entry.13, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @rk_timer_probe._entry_ptr.15, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clocksource/timer-rockchip.c", i32 160, i32 37}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/clocksource/timer-rockchip.c", i32 163, i32 3}
!39 = !{ptr @rk_timer_probe._entry.17, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @rk_timer_probe._entry_ptr.19, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/clocksource/timer-rockchip.c", i32 169, i32 3}
!43 = !{ptr @rk_timer_probe._entry.20, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @rk_timer_probe._entry_ptr.22, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/clocksource/timer-rockchip.c", i32 179, i32 3}
!47 = !{ptr @rk_timer_probe._entry.23, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @rk_timer_probe._entry_ptr.25, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @rk_clksrc, !50, !"rk_clksrc", i1 false, i1 false}
!50 = !{!"../drivers/clocksource/timer-rockchip.c", i32 48, i32 25}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/clocksource/timer-rockchip.c", i32 274, i32 3}
!53 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @rk_clksrc_init._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @rk_clksrc_init._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{i64 4014797}
!66 = !{i64 4015215}
