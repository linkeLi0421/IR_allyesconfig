; ModuleID = '/llk/IR_all_yes/drivers/clocksource/timer-sun5i.c_pt.bc'
source_filename = "../drivers/clocksource/timer-sun5i.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.sun5i_timer = type { ptr, ptr, %struct.notifier_block, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.sun5i_timer_clksrc = type { %struct.sun5i_timer, %struct.clocksource }
%struct.clocksource = type { ptr, i64, i32, i32, i64, i32, i32, i64, ptr, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sun5i_timer_clkevt = type { %struct.sun5i_timer, [104 x i8], %struct.clock_event_device }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [124 x i8] }
%struct.clk_notifier_data = type { ptr, i32, i32 }

@__of_table_sun5i_a13 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun5i-a13-hstimer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun5i_timer_init }, section "__timer_of_table", align 4
@__of_table_sun7i_a20 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun7i-a20-hstimer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun5i_timer_init }, section "__timer_of_table", align 4
@sun5i_timer_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013Can't map registers\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sun5i_timer_init\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/clocksource/timer-sun5i.c\00", [62 x i8] zeroinitializer }, align 32
@sun5i_timer_init._entry_ptr = internal global ptr @sun5i_timer_init._entry, section ".printk_index", align 4
@sun5i_timer_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 352, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\013Can't parse IRQ\0A\00", [45 x i8] zeroinitializer }, align 32
@sun5i_timer_init._entry_ptr.5 = internal global ptr @sun5i_timer_init._entry.3, section ".printk_index", align 4
@sun5i_timer_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013Can't get timer clock\0A\00", [39 x i8] zeroinitializer }, align 32
@sun5i_timer_init._entry_ptr.8 = internal global ptr @sun5i_timer_init._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"<no-node>\00", [22 x i8] zeroinitializer }, align 32
@sun5i_setup_clocksource._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013Couldn't enable parent clock\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sun5i_setup_clocksource\00", [40 x i8] zeroinitializer }, align 32
@sun5i_setup_clocksource._entry_ptr = internal global ptr @sun5i_setup_clocksource._entry, section ".printk_index", align 4
@sun5i_setup_clocksource._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013Couldn't get parent clock rate\0A\00", [62 x i8] zeroinitializer }, align 32
@sun5i_setup_clocksource._entry_ptr.14 = internal global ptr @sun5i_setup_clocksource._entry.12, section ".printk_index", align 4
@sun5i_setup_clocksource._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.2, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013Unable to register clock notifier.\0A\00", [58 x i8] zeroinitializer }, align 32
@sun5i_setup_clocksource._entry_ptr.17 = internal global ptr @sun5i_setup_clocksource._entry.15, section ".printk_index", align 4
@sun5i_setup_clocksource._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.11, ptr @.str.2, i32 234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013Couldn't register clock source.\0A\00", [61 x i8] zeroinitializer }, align 32
@sun5i_setup_clocksource._entry_ptr.20 = internal global ptr @sun5i_setup_clocksource._entry.18, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sun5i_setup_clockevent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.21, ptr @.str.2, i32 278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sun5i_setup_clockevent\00", [41 x i8] zeroinitializer }, align 32
@sun5i_setup_clockevent._entry_ptr = internal global ptr @sun5i_setup_clockevent._entry, section ".printk_index", align 4
@sun5i_setup_clockevent._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.21, ptr @.str.2, i32 284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sun5i_setup_clockevent._entry_ptr.23 = internal global ptr @sun5i_setup_clockevent._entry.22, section ".printk_index", align 4
@sun5i_setup_clockevent._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.21, ptr @.str.2, i32 297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sun5i_setup_clockevent._entry_ptr.25 = internal global ptr @sun5i_setup_clockevent._entry.24, section ".printk_index", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sun5i_timer0\00", [19 x i8] zeroinitializer }, align 32
@sun5i_setup_clockevent._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.21, ptr @.str.2, i32 322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013Unable to register interrupt\0A\00", [32 x i8] zeroinitializer }, align 32
@sun5i_setup_clockevent._entry_ptr.29 = internal global ptr @sun5i_setup_clockevent._entry.27, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 346, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 352, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 358, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [22 x i8] c"../include/linux/of.h\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 261, i32 30 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 200, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 206, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 218, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 234, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 278, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 284, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 297, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 320, i32 6 }
@___asan_gen_.99 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.103 = private constant [37 x i8] c"../drivers/clocksource/timer-sun5i.c\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 322, i32 3 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__of_table_sun5i_a13, ptr @__of_table_sun7i_a20, ptr @sun5i_setup_clockevent._entry, ptr @sun5i_setup_clockevent._entry.22, ptr @sun5i_setup_clockevent._entry.24, ptr @sun5i_setup_clockevent._entry.27, ptr @sun5i_setup_clockevent._entry_ptr, ptr @sun5i_setup_clockevent._entry_ptr.23, ptr @sun5i_setup_clockevent._entry_ptr.25, ptr @sun5i_setup_clockevent._entry_ptr.29, ptr @sun5i_setup_clocksource._entry, ptr @sun5i_setup_clocksource._entry.12, ptr @sun5i_setup_clocksource._entry.15, ptr @sun5i_setup_clocksource._entry.18, ptr @sun5i_setup_clocksource._entry_ptr, ptr @sun5i_setup_clocksource._entry_ptr.14, ptr @sun5i_setup_clocksource._entry_ptr.17, ptr @sun5i_setup_clocksource._entry_ptr.20, ptr @sun5i_timer_init._entry, ptr @sun5i_timer_init._entry.3, ptr @sun5i_timer_init._entry.6, ptr @sun5i_timer_init._entry_ptr, ptr @sun5i_timer_init._entry_ptr.5, ptr @sun5i_timer_init._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.26, ptr @.str.28], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun5i_timer_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun5i_timer_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun5i_timer_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun5i_setup_clocksource._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun5i_setup_clocksource._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun5i_setup_clocksource._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun5i_setup_clocksource._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun5i_setup_clockevent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun5i_setup_clockevent._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun5i_setup_clockevent._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun5i_setup_clockevent._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sun5i_timer_init(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %node, null
  br i1 %tobool.not.i, label %entry.of_node_full_name.exit_crit_edge, label %cond.true.i

entry.of_node_full_name.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %of_node_full_name.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %full_name.i = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 2
  %0 = ptrtoint ptr %full_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %full_name.i, align 4
  br label %of_node_full_name.exit

of_node_full_name.exit:                           ; preds = %cond.true.i, %entry.of_node_full_name.exit_crit_edge
  %cond.i = phi ptr [ %1, %cond.true.i ], [ @.str.9, %entry.of_node_full_name.exit_crit_edge ]
  %call1 = tail call ptr @of_io_request_and_map(ptr noundef %node, i32 noundef 0, ptr noundef %cond.i) #6
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %of_node_full_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  %2 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %of_node_full_name.exit
  %call5 = tail call i32 @irq_of_parse_and_map(ptr noundef %node, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5)
  %cmp = icmp slt i32 %call5, 1
  br i1 %cmp, label %do.end9, label %if.end12

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %call13 = tail call ptr @of_clk_get(ptr noundef %node, i32 noundef 0) #6
  %cmp.i52 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i52, label %do.end18, label %if.end22

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  %3 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end12
  %call.i.i = tail call ptr @__of_reset_control_get(ptr noundef %node, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %cmp.i53 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i53, label %if.end22.if.end27_crit_edge, label %if.then25

if.end22.if.end27_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %call26 = tail call i32 @reset_control_deassert(ptr noundef %call.i.i) #6
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end22.if.end27_crit_edge
  %call28 = tail call fastcc i32 @sun5i_setup_clocksource(ptr noundef %node, ptr noundef %call1, ptr noundef %call13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool.not = icmp eq i32 %call28, 0
  br i1 %tobool.not, label %if.end30, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end30:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %call31 = tail call fastcc i32 @sun5i_setup_clockevent(ptr noundef %node, ptr noundef %call1, ptr noundef %call13, i32 noundef %call5) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.end27.cleanup_crit_edge, %do.end18, %do.end9, %do.end
  %retval.0 = phi i32 [ %2, %do.end ], [ -22, %do.end9 ], [ %3, %do.end18 ], [ %call31, %if.end30 ], [ %call28, %if.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_io_request_and_map(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sun5i_setup_clocksource(ptr nocapture noundef readonly %node, ptr noundef %base, ptr noundef %clk) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 128) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @clk_prepare(ptr noundef %clk) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %clk) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end5, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %clk) #6
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.end.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end.do.end_crit_edge ]
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #9
  br label %err_free

if.end5:                                          ; preds = %if.end.i
  %call6 = tail call i32 @clk_get_rate(ptr noundef %clk) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.end11, label %if.end14

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #9
  br label %err_disable_clk

if.end14:                                         ; preds = %if.end5
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %base, ptr %call7.i.i, align 8
  %clk17 = getelementptr inbounds %struct.sun5i_timer, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %clk17 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %clk, ptr %clk17, align 4
  %clk_rate_cb = getelementptr inbounds %struct.sun5i_timer, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %clk_rate_cb to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @sun5i_rate_cb_clksrc, ptr %clk_rate_cb, align 8
  %next = getelementptr inbounds %struct.sun5i_timer, ptr %call7.i.i, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %next, align 4
  %call23 = tail call i32 @clk_notifier_register(ptr noundef %clk, ptr noundef %clk_rate_cb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %do.body32, label %do.end28

do.end28:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #9
  br label %err_disable_clk

do.body32:                                        ; preds = %if.end14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  tail call void @arm_heavy_mb() #6
  %add.ptr = getelementptr i8, ptr %base, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  tail call void @arm_heavy_mb() #6
  %add.ptr38 = getelementptr i8, ptr %base, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 50331648) #6, !srcloc !63
  %5 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %node, align 4
  %clksrc = getelementptr inbounds %struct.sun5i_timer_clksrc, ptr %call7.i.i, i32 0, i32 1
  %name39 = getelementptr inbounds %struct.sun5i_timer_clksrc, ptr %call7.i.i, i32 0, i32 1, i32 8
  %7 = ptrtoint ptr %name39 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %name39, align 8
  %rating = getelementptr inbounds %struct.sun5i_timer_clksrc, ptr %call7.i.i, i32 0, i32 1, i32 10
  %8 = ptrtoint ptr %rating to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 340, ptr %rating, align 4
  %9 = ptrtoint ptr %clksrc to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @sun5i_clksrc_read, ptr %clksrc, align 8
  %mask = getelementptr inbounds %struct.sun5i_timer_clksrc, ptr %call7.i.i, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %mask to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 4294967295, ptr %mask, align 8
  %flags = getelementptr inbounds %struct.sun5i_timer_clksrc, ptr %call7.i.i, i32 0, i32 1, i32 13
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %flags, align 8
  %call.i1 = tail call i32 @__clocksource_register_scale(ptr noundef %clksrc, i32 noundef 1, i32 noundef %call6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1)
  %tobool46.not = icmp eq i32 %call.i1, 0
  br i1 %tobool46.not, label %do.body32.cleanup_crit_edge, label %do.end50

do.body32.cleanup_crit_edge:                      ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end50:                                         ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #8
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #9
  %call56 = tail call i32 @clk_notifier_unregister(ptr noundef %clk, ptr noundef %clk_rate_cb) #6
  br label %err_disable_clk

err_disable_clk:                                  ; preds = %do.end50, %do.end28, %do.end11
  %ret.0 = phi i32 [ %call23, %do.end28 ], [ %call.i1, %do.end50 ], [ -22, %do.end11 ]
  tail call void @clk_disable(ptr noundef %clk) #6
  tail call void @clk_unprepare(ptr noundef %clk) #6
  br label %err_free

err_free:                                         ; preds = %err_disable_clk, %do.end
  %ret.1 = phi i32 [ %retval.0.i.ph, %do.end ], [ %ret.0, %err_disable_clk ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %err_free, %do.body32.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err_free ], [ -12, %entry.cleanup_crit_edge ], [ 0, %do.body32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sun5i_setup_clockevent(ptr nocapture noundef readonly %node, ptr noundef %base, ptr noundef %clk, i32 noundef %irq) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 384) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @clk_prepare(ptr noundef %clk) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %clk) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end5, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %clk) #6
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.end.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end.do.end_crit_edge ]
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #9
  br label %err_free

if.end5:                                          ; preds = %if.end.i
  %call6 = tail call i32 @clk_get_rate(ptr noundef %clk) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.end11, label %if.end14

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #9
  br label %err_disable_clk

if.end14:                                         ; preds = %if.end5
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %base, ptr %call7.i.i, align 128
  %sub = add i32 %call6, 99
  %div = udiv i32 %sub, 100
  %ticks_per_jiffy = getelementptr inbounds %struct.sun5i_timer, ptr %call7.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %ticks_per_jiffy to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %div, ptr %ticks_per_jiffy, align 4
  %clk18 = getelementptr inbounds %struct.sun5i_timer, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %clk18 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %clk, ptr %clk18, align 4
  %clk_rate_cb = getelementptr inbounds %struct.sun5i_timer, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %clk_rate_cb to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @sun5i_rate_cb_clkevt, ptr %clk_rate_cb, align 8
  %next = getelementptr inbounds %struct.sun5i_timer, ptr %call7.i.i, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %next, align 4
  %call24 = tail call i32 @clk_notifier_register(ptr noundef %clk, ptr noundef %clk_rate_cb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end32, label %do.end29

do.end29:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #9
  br label %err_disable_clk

if.end32:                                         ; preds = %if.end14
  %6 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %node, align 4
  %clkevt = getelementptr inbounds %struct.sun5i_timer_clkevt, ptr %call7.i.i, i32 0, i32 2
  %name33 = getelementptr inbounds %struct.sun5i_timer_clkevt, ptr %call7.i.i, i32 0, i32 2, i32 21
  %8 = ptrtoint ptr %name33 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %name33, align 4
  %features = getelementptr inbounds %struct.sun5i_timer_clkevt, ptr %call7.i.i, i32 0, i32 2, i32 9
  %9 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %features, align 4
  %set_next_event = getelementptr inbounds %struct.sun5i_timer_clkevt, ptr %call7.i.i, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %set_next_event to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @sun5i_clkevt_next_event, ptr %set_next_event, align 4
  %set_state_shutdown = getelementptr inbounds %struct.sun5i_timer_clkevt, ptr %call7.i.i, i32 0, i32 2, i32 14
  %11 = ptrtoint ptr %set_state_shutdown to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @sun5i_clkevt_shutdown, ptr %set_state_shutdown, align 8
  %set_state_periodic = getelementptr inbounds %struct.sun5i_timer_clkevt, ptr %call7.i.i, i32 0, i32 2, i32 11
  %12 = ptrtoint ptr %set_state_periodic to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @sun5i_clkevt_set_periodic, ptr %set_state_periodic, align 4
  %set_state_oneshot = getelementptr inbounds %struct.sun5i_timer_clkevt, ptr %call7.i.i, i32 0, i32 2, i32 12
  %13 = ptrtoint ptr %set_state_oneshot to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @sun5i_clkevt_set_oneshot, ptr %set_state_oneshot, align 64
  %tick_resume = getelementptr inbounds %struct.sun5i_timer_clkevt, ptr %call7.i.i, i32 0, i32 2, i32 15
  %14 = ptrtoint ptr %tick_resume to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @sun5i_clkevt_shutdown, ptr %tick_resume, align 4
  %rating = getelementptr inbounds %struct.sun5i_timer_clkevt, ptr %call7.i.i, i32 0, i32 2, i32 22
  %15 = ptrtoint ptr %rating to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 340, ptr %rating, align 8
  %irq42 = getelementptr inbounds %struct.sun5i_timer_clkevt, ptr %call7.i.i, i32 0, i32 2, i32 23
  %16 = ptrtoint ptr %irq42 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %irq, ptr %irq42, align 4
  %cpumask = getelementptr inbounds %struct.sun5i_timer_clkevt, ptr %call7.i.i, i32 0, i32 2, i32 25
  %17 = ptrtoint ptr %cpumask to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @__cpu_possible_mask, ptr %cpumask, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %base) #6, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %19 = or i32 %18, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %base, i32 %19) #6, !srcloc !63
  tail call void @clockevents_config_and_register(ptr noundef %clkevt, i32 noundef %call6, i32 noundef 3, i32 noundef -1) #6
  %call.i100 = tail call i32 @request_threaded_irq(i32 noundef %irq, ptr noundef nonnull @sun5i_timer_interrupt, ptr noundef null, i32 noundef 86528, ptr noundef nonnull @.str.26, ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i100)
  %tobool53.not = icmp eq i32 %call.i100, 0
  br i1 %tobool53.not, label %if.end32.cleanup_crit_edge, label %do.end57

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end57:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #9
  %call63 = tail call i32 @clk_notifier_unregister(ptr noundef %clk, ptr noundef %clk_rate_cb) #6
  br label %err_disable_clk

err_disable_clk:                                  ; preds = %do.end57, %do.end29, %do.end11
  %ret.0 = phi i32 [ %call24, %do.end29 ], [ %call.i100, %do.end57 ], [ -22, %do.end11 ]
  tail call void @clk_disable(ptr noundef %clk) #6
  tail call void @clk_unprepare(ptr noundef %clk) #6
  br label %err_free

err_free:                                         ; preds = %err_disable_clk, %do.end
  %ret.1 = phi i32 [ %retval.0.i.ph, %do.end ], [ %ret.0, %err_disable_clk ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.end32.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err_free ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun5i_rate_cb_clksrc(ptr noundef %nb, i32 noundef %event, ptr nocapture noundef readonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %clksrc = getelementptr i8, ptr %nb, i32 16
  %call = tail call i32 @clocksource_unregister(ptr noundef %clksrc) #6
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %clksrc5 = getelementptr i8, ptr %nb, i32 16
  %new_rate = getelementptr inbounds %struct.clk_notifier_data, ptr %data, i32 0, i32 2
  %1 = ptrtoint ptr %new_rate to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %new_rate, align 4
  %call.i = tail call i32 @__clocksource_register_scale(ptr noundef %clksrc5, i32 noundef 1, i32 noundef %2) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @sun5i_clksrc_read(ptr nocapture noundef readonly %clksrc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %clksrc, i32 -24
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %add.ptr1 = getelementptr i8, ptr %1, i32 60
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #6, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  %3 = xor i32 %2, -1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %conv = zext i32 %4 to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clocksource_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clocksource_register_scale(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun5i_rate_cb_clkevt(ptr noundef %nb, i32 noundef %event, ptr nocapture noundef readonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event)
  %cmp = icmp eq i32 %event, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %clkevt = getelementptr i8, ptr %nb, i32 120
  %new_rate = getelementptr inbounds %struct.clk_notifier_data, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %new_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %new_rate, align 4
  %call = tail call i32 @clockevents_update_freq(ptr noundef %clkevt, i32 noundef %1) #6
  %2 = ptrtoint ptr %new_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %new_rate, align 4
  %sub = add i32 %3, 99
  %div = udiv i32 %sub, 100
  %ticks_per_jiffy = getelementptr i8, ptr %nb, i32 12
  %4 = ptrtoint ptr %ticks_per_jiffy to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %div, ptr %ticks_per_jiffy, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun5i_clkevt_next_event(i32 noundef %evt, ptr nocapture noundef readonly %clkevt) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %clkevt, i32 -128
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 128
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %3 = and i32 %2, -16777217
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 128
  %add.ptr8.i = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %3) #6, !srcloc !63
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 128
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 60
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !65
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 128
  %add.ptr617.i.i = getelementptr i8, ptr %11, i32 60
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr617.i.i) #6, !srcloc !65
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %sub18.i.i = sub i32 %9, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub18.i.i)
  %cmp19.i.i = icmp ult i32 %sub18.i.i, 3
  br i1 %cmp19.i.i, label %entry.do.end.i.i_crit_edge, label %entry.sun5i_clkevt_time_stop.exit_crit_edge

entry.sun5i_clkevt_time_stop.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun5i_clkevt_time_stop.exit

entry.do.end.i.i_crit_edge:                       ; preds = %entry
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %entry.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !74
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 128
  %add.ptr6.i.i = getelementptr i8, ptr %15, i32 60
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i) #6, !srcloc !65
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %sub.i.i = sub i32 %9, %17
  %cmp.i.i = icmp ult i32 %sub.i.i, 3
  br i1 %cmp.i.i, label %do.end.i.i.do.end.i.i_crit_edge, label %do.end.i.i.sun5i_clkevt_time_stop.exit_crit_edge

do.end.i.i.sun5i_clkevt_time_stop.exit_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun5i_clkevt_time_stop.exit

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i.i

sun5i_clkevt_time_stop.exit:                      ; preds = %do.end.i.i.sun5i_clkevt_time_stop.exit_crit_edge, %entry.sun5i_clkevt_time_stop.exit_crit_edge
  %sub = add i32 %evt, -3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %18 = tail call i32 @llvm.bswap.i32(i32 %sub) #6
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr, align 128
  %add.ptr.i3 = getelementptr i8, ptr %20, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3, i32 %18) #6, !srcloc !63
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr, align 128
  %add.ptr.i4 = getelementptr i8, ptr %22, i32 16
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4) #6, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  tail call void @arm_heavy_mb() #6
  %24 = or i32 %23, -2097152000
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr, align 128
  %add.ptr10.i = getelementptr i8, ptr %26, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %24) #6, !srcloc !63
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun5i_clkevt_shutdown(ptr nocapture noundef readonly %clkevt) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %clkevt, i32 -128
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 128
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %3 = and i32 %2, -16777217
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 128
  %add.ptr8.i = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %3) #6, !srcloc !63
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 128
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 60
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !65
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 128
  %add.ptr617.i.i = getelementptr i8, ptr %11, i32 60
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr617.i.i) #6, !srcloc !65
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %sub18.i.i = sub i32 %9, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub18.i.i)
  %cmp19.i.i = icmp ult i32 %sub18.i.i, 3
  br i1 %cmp19.i.i, label %entry.do.end.i.i_crit_edge, label %entry.sun5i_clkevt_time_stop.exit_crit_edge

entry.sun5i_clkevt_time_stop.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun5i_clkevt_time_stop.exit

entry.do.end.i.i_crit_edge:                       ; preds = %entry
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %entry.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !74
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 128
  %add.ptr6.i.i = getelementptr i8, ptr %15, i32 60
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i) #6, !srcloc !65
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %sub.i.i = sub i32 %9, %17
  %cmp.i.i = icmp ult i32 %sub.i.i, 3
  br i1 %cmp.i.i, label %do.end.i.i.do.end.i.i_crit_edge, label %do.end.i.i.sun5i_clkevt_time_stop.exit_crit_edge

do.end.i.i.sun5i_clkevt_time_stop.exit_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun5i_clkevt_time_stop.exit

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i.i

sun5i_clkevt_time_stop.exit:                      ; preds = %do.end.i.i.sun5i_clkevt_time_stop.exit_crit_edge, %entry.sun5i_clkevt_time_stop.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun5i_clkevt_set_periodic(ptr nocapture noundef readonly %clkevt) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %clkevt, i32 -128
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 128
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %3 = and i32 %2, -16777217
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 128
  %add.ptr8.i = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %3) #6, !srcloc !63
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 128
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 60
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !65
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 128
  %add.ptr617.i.i = getelementptr i8, ptr %11, i32 60
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr617.i.i) #6, !srcloc !65
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %sub18.i.i = sub i32 %9, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub18.i.i)
  %cmp19.i.i = icmp ult i32 %sub18.i.i, 3
  br i1 %cmp19.i.i, label %entry.do.end.i.i_crit_edge, label %entry.sun5i_clkevt_time_stop.exit_crit_edge

entry.sun5i_clkevt_time_stop.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun5i_clkevt_time_stop.exit

entry.do.end.i.i_crit_edge:                       ; preds = %entry
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %entry.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !74
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 128
  %add.ptr6.i.i = getelementptr i8, ptr %15, i32 60
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i) #6, !srcloc !65
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %sub.i.i = sub i32 %9, %17
  %cmp.i.i = icmp ult i32 %sub.i.i, 3
  br i1 %cmp.i.i, label %do.end.i.i.do.end.i.i_crit_edge, label %do.end.i.i.sun5i_clkevt_time_stop.exit_crit_edge

do.end.i.i.sun5i_clkevt_time_stop.exit_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun5i_clkevt_time_stop.exit

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i.i

sun5i_clkevt_time_stop.exit:                      ; preds = %do.end.i.i.sun5i_clkevt_time_stop.exit_crit_edge, %entry.sun5i_clkevt_time_stop.exit_crit_edge
  %ticks_per_jiffy = getelementptr i8, ptr %clkevt, i32 -108
  %18 = ptrtoint ptr %ticks_per_jiffy to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ticks_per_jiffy, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #6
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr, align 128
  %add.ptr.i4 = getelementptr i8, ptr %22, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 %20) #6, !srcloc !63
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr, align 128
  %add.ptr.i5 = getelementptr i8, ptr %24, i32 16
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5) #6, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  %26 = and i32 %25, 2097151999
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  tail call void @arm_heavy_mb() #6
  %27 = or i32 %26, 50331648
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr, align 128
  %add.ptr10.i = getelementptr i8, ptr %29, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %27) #6, !srcloc !63
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun5i_clkevt_set_oneshot(ptr nocapture noundef readonly %clkevt) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %clkevt, i32 -128
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 128
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %3 = and i32 %2, -16777217
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 128
  %add.ptr8.i = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %3) #6, !srcloc !63
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 128
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 60
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !65
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 128
  %add.ptr617.i.i = getelementptr i8, ptr %11, i32 60
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr617.i.i) #6, !srcloc !65
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %sub18.i.i = sub i32 %9, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub18.i.i)
  %cmp19.i.i = icmp ult i32 %sub18.i.i, 3
  br i1 %cmp19.i.i, label %entry.do.end.i.i_crit_edge, label %entry.sun5i_clkevt_time_stop.exit_crit_edge

entry.sun5i_clkevt_time_stop.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun5i_clkevt_time_stop.exit

entry.do.end.i.i_crit_edge:                       ; preds = %entry
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %entry.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !74
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 128
  %add.ptr6.i.i = getelementptr i8, ptr %15, i32 60
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i) #6, !srcloc !65
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %sub.i.i = sub i32 %9, %17
  %cmp.i.i = icmp ult i32 %sub.i.i, 3
  br i1 %cmp.i.i, label %do.end.i.i.do.end.i.i_crit_edge, label %do.end.i.i.sun5i_clkevt_time_stop.exit_crit_edge

do.end.i.i.sun5i_clkevt_time_stop.exit_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun5i_clkevt_time_stop.exit

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i.i

sun5i_clkevt_time_stop.exit:                      ; preds = %do.end.i.i.sun5i_clkevt_time_stop.exit_crit_edge, %entry.sun5i_clkevt_time_stop.exit_crit_edge
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 128
  %add.ptr.i2 = getelementptr i8, ptr %19, i32 16
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2) #6, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  tail call void @arm_heavy_mb() #6
  %21 = or i32 %20, -2097152000
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr, align 128
  %add.ptr10.i = getelementptr i8, ptr %23, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %21) #6, !srcloc !63
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun5i_timer_interrupt(i32 noundef %irq, ptr noundef %dev_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 128
  %add.ptr = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #6, !srcloc !63
  %clkevt = getelementptr inbounds %struct.sun5i_timer_clkevt, ptr %dev_id, i32 0, i32 2
  %2 = ptrtoint ptr %clkevt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clkevt, align 128
  tail call void %3(ptr noundef %clkevt) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clockevents_update_freq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { cold }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !46, !47, !49, !51, !52}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__of_table_sun5i_a13, !1, !"__of_table_sun5i_a13", i1 false, i1 false}
!1 = !{!"../drivers/clocksource/timer-sun5i.c", i32 372, i32 1}
!2 = !{ptr @__of_table_sun7i_a20, !3, !"__of_table_sun7i_a20", i1 false, i1 false}
!3 = !{!"../drivers/clocksource/timer-sun5i.c", i32 374, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clocksource/timer-sun5i.c", i32 346, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @sun5i_timer_init._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @sun5i_timer_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clocksource/timer-sun5i.c", i32 352, i32 3}
!12 = !{ptr @sun5i_timer_init._entry.3, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @sun5i_timer_init._entry_ptr.5, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clocksource/timer-sun5i.c", i32 358, i32 3}
!16 = !{ptr @sun5i_timer_init._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @sun5i_timer_init._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../include/linux/of.h", i32 261, i32 30}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clocksource/timer-sun5i.c", i32 200, i32 3}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @sun5i_setup_clocksource._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @sun5i_setup_clocksource._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clocksource/timer-sun5i.c", i32 206, i32 3}
!27 = !{ptr @sun5i_setup_clocksource._entry.12, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @sun5i_setup_clocksource._entry_ptr.14, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/clocksource/timer-sun5i.c", i32 218, i32 3}
!31 = !{ptr @sun5i_setup_clocksource._entry.15, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @sun5i_setup_clocksource._entry_ptr.17, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/clocksource/timer-sun5i.c", i32 234, i32 3}
!35 = !{ptr @sun5i_setup_clocksource._entry.18, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @sun5i_setup_clocksource._entry_ptr.20, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/clocksource/timer-sun5i.c", i32 278, i32 3}
!39 = !{ptr @sun5i_setup_clockevent._entry, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @sun5i_setup_clockevent._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @sun5i_setup_clockevent._entry.22, !42, !"_entry", i1 false, i1 false}
!42 = !{!"../drivers/clocksource/timer-sun5i.c", i32 284, i32 3}
!43 = !{ptr @sun5i_setup_clockevent._entry_ptr.23, !42, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @sun5i_setup_clockevent._entry.24, !45, !"_entry", i1 false, i1 false}
!45 = !{!"../drivers/clocksource/timer-sun5i.c", i32 297, i32 3}
!46 = !{ptr @sun5i_setup_clockevent._entry_ptr.25, !45, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/clocksource/timer-sun5i.c", i32 320, i32 6}
!49 = !{ptr @.str.28, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/clocksource/timer-sun5i.c", i32 322, i32 3}
!51 = !{ptr @sun5i_setup_clockevent._entry.27, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @sun5i_setup_clockevent._entry_ptr.29, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{i64 2152862445}
!63 = !{i64 4017475}
!64 = !{i64 2152863095}
!65 = !{i64 4017893}
!66 = !{i64 2152874266}
!67 = !{i64 2152874595}
!68 = !{i64 2152854367}
!69 = !{i64 2152843943}
!70 = !{i64 2152844324}
!71 = !{i64 2152842458}
!72 = !{i64 2152843052}
!73 = !{i64 2152843329}
!74 = !{i64 2152843171}
!75 = !{i64 2152844889}
!76 = !{i64 2152845709}
!77 = !{i64 2152846364}
!78 = !{i64 2152852269}
