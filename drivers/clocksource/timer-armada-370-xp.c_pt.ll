; ModuleID = '/llk/IR_all_yes/drivers/clocksource/timer-armada-370-xp.c_pt.bc'
source_filename = "../drivers/clocksource/timer-armada-370-xp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.delay_timer = type { ptr, i32 }
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [124 x i8] }

@__of_table_armada_xp = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-xp-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada_xp_timer_init }, section "__timer_of_table", align 4
@__of_table_armada_375 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-375-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada_375_timer_init }, section "__timer_of_table", align 4
@__of_table_armada_370 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-370-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada_370_timer_init }, section "__timer_of_table", align 4
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fixed\00", [26 x i8] zeroinitializer }, align 32
@armada_xp_timer_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013Failed to get clock\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"armada_xp_timer_init\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/clocksource/timer-armada-370-xp.c\00", [54 x i8] zeroinitializer }, align 32
@armada_xp_timer_init._entry_ptr = internal global ptr @armada_xp_timer_init._entry, section ".printk_index", align 4
@timer_clk = internal global { i32, [28 x i8] } zeroinitializer, align 32
@timer_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@armada_370_xp_timer_common_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\013Failed to iomap\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"armada_370_xp_timer_common_init\00", [32 x i8] zeroinitializer }, align 32
@armada_370_xp_timer_common_init._entry_ptr = internal global ptr @armada_370_xp_timer_common_init._entry, section ".printk_index", align 4
@local_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@armada_370_xp_timer_common_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@armada_370_xp_timer_common_init._entry_ptr.7 = internal global ptr @armada_370_xp_timer_common_init._entry.6, section ".printk_index", align 4
@timer25Mhz = internal global { i1, [31 x i8] } zeroinitializer, align 32
@enable_mask = internal global { i32, [28 x i8] } zeroinitializer, align 32
@armada_370_xp_clkevt_irq = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ticks_per_jiffy = internal global { i32, [28 x i8] } zeroinitializer, align 32
@armada_370_delay_timer = internal global { %struct.delay_timer, [24 x i8] } { %struct.delay_timer { ptr @armada_370_delay_timer_read, i32 0 }, [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"armada_370_xp_clocksource\00", [38 x i8] zeroinitializer }, align 32
@armada_370_xp_timer_common_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.3, i32 301, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013Failed to initialize clocksource mmio\0A\00", [55 x i8] zeroinitializer }, align 32
@armada_370_xp_timer_common_init._entry_ptr.11 = internal global ptr @armada_370_xp_timer_common_init._entry.9, section ".printk_index", align 4
@armada_370_xp_evt = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"armada_370_xp_per_cpu_tick\00", [37 x i8] zeroinitializer }, align 32
@armada_370_xp_timer_common_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.3, i32 318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013Failed to request percpu irq\0A\00", [32 x i8] zeroinitializer }, align 32
@armada_370_xp_timer_common_init._entry_ptr.15 = internal global ptr @armada_370_xp_timer_common_init._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"clockevents/armada:starting\00", [36 x i8] zeroinitializer }, align 32
@armada_370_xp_timer_common_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.5, ptr @.str.3, i32 327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013Failed to setup hotplug state and timer\0A\00", [53 x i8] zeroinitializer }, align 32
@armada_370_xp_timer_common_init._entry_ptr.19 = internal global ptr @armada_370_xp_timer_common_init._entry.17, section ".printk_index", align 4
@armada_370_xp_timer_syscore_ops = internal global { %struct.syscore_ops, [44 x i8] } { %struct.syscore_ops { %struct.list_head zeroinitializer, ptr @armada_370_xp_timer_suspend, ptr @armada_370_xp_timer_resume, ptr null }, [44 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@timer0_ctrl_reg = internal global { i32, [28 x i8] } zeroinitializer, align 32
@timer0_local_ctrl_reg = internal global { i32, [28 x i8] } zeroinitializer, align 32
@armada_375_timer_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.20, ptr @.str.3, i32 378, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"armada_375_timer_init\00", [42 x i8] zeroinitializer }, align 32
@armada_375_timer_init._entry_ptr = internal global ptr @armada_375_timer_init._entry, section ".printk_index", align 4
@armada_370_timer_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.21, ptr @.str.3, i32 402, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"armada_370_timer_init\00", [42 x i8] zeroinitializer }, align 32
@armada_370_timer_init._entry_ptr = internal global ptr @armada_370_timer_init._entry, section ".printk_index", align 4
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 338, i32 43 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 342, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant [10 x i8] c"timer_clk\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 80, i32 21 }
@___asan_gen_.40 = private unnamed_addr constant [11 x i8] c"timer_base\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 79, i32 22 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 250, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [11 x i8] c"local_base\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 79, i32 35 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 256, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [11 x i8] c"timer25Mhz\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [12 x i8] c"enable_mask\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 82, i32 12 }
@___asan_gen_.62 = private unnamed_addr constant [25 x i8] c"armada_370_xp_clkevt_irq\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 155, i32 12 }
@___asan_gen_.65 = private unnamed_addr constant [16 x i8] c"ticks_per_jiffy\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 87, i32 12 }
@___asan_gen_.68 = private unnamed_addr constant [23 x i8] c"armada_370_delay_timer\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 239, i32 27 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 298, i32 9 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 301, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [18 x i8] c"armada_370_xp_evt\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 89, i32 44 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 314, i32 5 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 318, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 323, i32 5 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 327, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant [32 x i8] c"armada_370_xp_timer_syscore_ops\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 229, i32 27 }
@___asan_gen_.104 = private unnamed_addr constant [16 x i8] c"timer0_ctrl_reg\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 212, i32 12 }
@___asan_gen_.107 = private unnamed_addr constant [22 x i8] c"timer0_local_ctrl_reg\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 212, i32 29 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 378, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.120 = private constant [45 x i8] c"../drivers/clocksource/timer-armada-370-xp.c\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 402, i32 3 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__of_table_armada_370, ptr @__of_table_armada_375, ptr @__of_table_armada_xp, ptr @armada_370_timer_init._entry, ptr @armada_370_timer_init._entry_ptr, ptr @armada_370_xp_timer_common_init._entry, ptr @armada_370_xp_timer_common_init._entry.13, ptr @armada_370_xp_timer_common_init._entry.17, ptr @armada_370_xp_timer_common_init._entry.6, ptr @armada_370_xp_timer_common_init._entry.9, ptr @armada_370_xp_timer_common_init._entry_ptr, ptr @armada_370_xp_timer_common_init._entry_ptr.11, ptr @armada_370_xp_timer_common_init._entry_ptr.15, ptr @armada_370_xp_timer_common_init._entry_ptr.19, ptr @armada_370_xp_timer_common_init._entry_ptr.7, ptr @armada_375_timer_init._entry, ptr @armada_375_timer_init._entry_ptr, ptr @armada_xp_timer_init._entry, ptr @armada_xp_timer_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @timer_clk, ptr @timer_base, ptr @.str.4, ptr @.str.5, ptr @local_base, ptr @timer25Mhz, ptr @enable_mask, ptr @armada_370_xp_clkevt_irq, ptr @ticks_per_jiffy, ptr @armada_370_delay_timer, ptr @.str.8, ptr @.str.10, ptr @armada_370_xp_evt, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @armada_370_xp_timer_syscore_ops, ptr @timer0_ctrl_reg, ptr @timer0_local_ctrl_reg, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_xp_timer_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timer_clk to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timer_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_370_xp_timer_common_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @local_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_370_xp_timer_common_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timer25Mhz to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_370_xp_clkevt_irq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ticks_per_jiffy to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_370_delay_timer to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_370_xp_timer_common_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_370_xp_evt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_370_xp_timer_common_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_370_xp_timer_common_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_370_xp_timer_syscore_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timer0_ctrl_reg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timer0_local_ctrl_reg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_375_timer_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_370_timer_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @armada_xp_timer_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_clk_get_by_name(ptr noundef %np, ptr noundef nonnull @.str) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #9
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @clk_prepare(ptr noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end6, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call) #6
  br label %cleanup

if.end6:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call i32 @clk_get_rate(ptr noundef %call) #6
  store i32 %call7, ptr @timer_clk, align 4
  %call8 = tail call fastcc i32 @armada_370_xp_timer_common_init(ptr noundef %np) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then3.i, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %0, %do.end ], [ %call8, %if.end6 ], [ %call1.i, %if.then3.i ], [ %call.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @armada_375_timer_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_clk_get_by_name(ptr noundef %np, ptr noundef nonnull @.str) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @clk_prepare(ptr noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call) #6
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 @clk_get_rate(ptr noundef %call) #6
  store i32 %call4, ptr @timer_clk, align 4
  br label %if.end16

if.else:                                          ; preds = %entry
  %call5 = tail call ptr @of_clk_get(ptr noundef %np, i32 noundef 0) #6
  %cmp.i31 = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i31, label %do.end, label %if.end10

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #9
  %0 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.else
  %call.i32 = tail call i32 @clk_prepare(ptr noundef %call5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32)
  %tobool.not.i33 = icmp eq i32 %call.i32, 0
  br i1 %tobool.not.i33, label %if.end.i36, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i36:                                       ; preds = %if.end10
  %call1.i34 = tail call i32 @clk_enable(ptr noundef %call5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i34)
  %tobool2.not.i35 = icmp eq i32 %call1.i34, 0
  br i1 %tobool2.not.i35, label %if.end14, label %if.then3.i37

if.then3.i37:                                     ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call5) #6
  br label %cleanup

if.end14:                                         ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #8
  %call15 = tail call i32 @clk_get_rate(ptr noundef %call5) #6
  %div30 = lshr i32 %call15, 5
  store i32 %div30, ptr @timer_clk, align 4
  store i1 true, ptr @timer25Mhz, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.end14, %if.end
  %call17 = tail call fastcc i32 @armada_370_xp_timer_common_init(ptr noundef %np) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then3.i37, %if.end10.cleanup_crit_edge, %do.end, %if.then3.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %do.end ], [ %call17, %if.end16 ], [ %call1.i, %if.then3.i ], [ %call.i, %if.then.cleanup_crit_edge ], [ %call1.i34, %if.then3.i37 ], [ %call.i32, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @armada_370_timer_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_clk_get(ptr noundef %np, i32 noundef 0) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #9
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @clk_prepare(ptr noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end6, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call) #6
  br label %cleanup

if.end6:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call i32 @clk_get_rate(ptr noundef %call) #6
  %div15 = lshr i32 %call7, 5
  store i32 %div15, ptr @timer_clk, align 4
  store i1 true, ptr @timer25Mhz, align 1
  %call8 = tail call fastcc i32 @armada_370_xp_timer_common_init(ptr noundef %np) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then3.i, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %0, %do.end ], [ %call8, %if.end6 ], [ %call1.i, %if.then3.i ], [ %call.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @armada_370_xp_timer_common_init(ptr noundef %np) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #6
  store ptr %call, ptr @timer_base, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 1) #6
  store ptr %call2, ptr @local_base, align 4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %.b = load i1, ptr @timer25Mhz, align 1
  %. = select i1 %.b, i32 2621441, i32 1
  %.70 = select i1 %.b, i32 0, i32 2048
  store i32 %., ptr @enable_mask, align 4
  %0 = load ptr, ptr @timer_base, align 4
  tail call void @atomic_io_modify(ptr noundef %0, i32 noundef 2048, i32 noundef %.70) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  tail call void @arm_heavy_mb() #6
  %1 = load ptr, ptr @local_base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !82
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  %neg.i = select i1 %.b, i32 -2049, i32 -1
  %and.i = and i32 %3, %neg.i
  %or.i = or i32 %and.i, %.70
  %4 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %5 = load ptr, ptr @local_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %4) #6, !srcloc !84
  %call14 = tail call i32 @irq_of_parse_and_map(ptr noundef %np, i32 noundef 4) #6
  store i32 %call14, ptr @armada_370_xp_clkevt_irq, align 4
  %6 = load i32, ptr @timer_clk, align 4
  %add = add i32 %6, 50
  %div = udiv i32 %add, 100
  store i32 %div, ptr @ticks_per_jiffy, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %7 = load ptr, ptr @timer_base, align 4
  %add.ptr18 = getelementptr i8, ptr %7, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 -1) #6, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void @arm_heavy_mb() #6
  %8 = load ptr, ptr @timer_base, align 4
  %add.ptr22 = getelementptr i8, ptr %8, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 -1) #6, !srcloc !84
  %9 = load ptr, ptr @timer_base, align 4
  %10 = load i32, ptr @enable_mask, align 4
  %or24 = or i32 %10, 2
  tail call void @atomic_io_modify(ptr noundef %9, i32 noundef %or24, i32 noundef %or24) #6
  %11 = load i32, ptr @timer_clk, align 4
  store i32 %11, ptr getelementptr inbounds (%struct.delay_timer, ptr @armada_370_delay_timer, i32 0, i32 1), align 4
  tail call void @register_current_timer_delay(ptr noundef nonnull @armada_370_delay_timer) #6
  %12 = load i32, ptr @timer_clk, align 4
  tail call void @sched_clock_register(ptr noundef nonnull @armada_370_xp_read_sched_clock, i32 noundef 32, i32 noundef %12) #6
  %13 = load ptr, ptr @timer_base, align 4
  %add.ptr26 = getelementptr i8, ptr %13, i32 20
  %14 = load i32, ptr @timer_clk, align 4
  %call27 = tail call i32 @clocksource_mmio_init(ptr noundef %add.ptr26, ptr noundef nonnull @.str.8, i32 noundef %14, i32 noundef 300, i32 noundef 32, ptr noundef nonnull @clocksource_mmio_readl_down) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end35, label %do.end32

do.end32:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end35:                                         ; preds = %if.end10
  %call36 = tail call noalias ptr @__alloc_percpu(i32 noundef 256, i32 noundef 128) #11
  store ptr %call36, ptr @armada_370_xp_evt, align 4
  %tobool37.not = icmp eq ptr %call36, null
  br i1 %tobool37.not, label %if.end35.cleanup_crit_edge, label %if.end39

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end39:                                         ; preds = %if.end35
  %15 = load i32, ptr @armada_370_xp_clkevt_irq, align 4
  %call.i = tail call i32 @__request_percpu_irq(i32 noundef %15, ptr noundef nonnull @armada_370_xp_timer_interrupt, i32 noundef 0, ptr noundef nonnull @.str.12, ptr noundef nonnull %call36) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool41.not = icmp eq i32 %call.i, 0
  br i1 %tobool41.not, label %if.end48, label %do.end45

do.end45:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #9
  br label %cleanup

if.end48:                                         ; preds = %if.end39
  %call.i72 = tail call i32 @__cpuhp_setup_state(i32 noundef 128, ptr noundef nonnull @.str.16, i1 noundef zeroext true, ptr noundef nonnull @armada_370_xp_timer_starting_cpu, ptr noundef nonnull @armada_370_xp_timer_dying_cpu, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72)
  %tobool50.not = icmp eq i32 %call.i72, 0
  br i1 %tobool50.not, label %if.end57, label %do.end54

do.end54:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #9
  br label %cleanup

if.end57:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @register_syscore_ops(ptr noundef nonnull @armada_370_xp_timer_syscore_ops) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %do.end54, %do.end45, %if.end35.cleanup_crit_edge, %do.end32, %do.end7, %do.end
  %retval.0 = phi i32 [ %call27, %do.end32 ], [ %call.i, %do.end45 ], [ %call.i72, %do.end54 ], [ 0, %if.end57 ], [ -6, %do.end7 ], [ -6, %do.end ], [ -12, %if.end35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @atomic_io_modify(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_current_timer_delay(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @armada_370_xp_read_sched_clock() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = load ptr, ptr @timer_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 20
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  %2 = xor i32 %1, -1
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %conv = zext i32 %3 to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clocksource_mmio_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clocksource_mmio_readl_down(ptr noundef) #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada_370_xp_timer_interrupt(i32 noundef %irq, ptr noundef %dev_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  tail call void @arm_heavy_mb() #6
  %0 = load ptr, ptr @local_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -16777217) #6, !srcloc !84
  %1 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_id, align 128
  tail call void %2(ptr noundef %dev_id) #6
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada_370_xp_timer_starting_cpu(i32 noundef %cpu) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @armada_370_xp_evt, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %.b = load i1, ptr @timer25Mhz, align 1
  %.16 = select i1 %.b, i32 0, i32 2048
  %3 = ptrtoint ptr %0 to i32
  %add = add i32 %2, %3
  %4 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  tail call void @arm_heavy_mb() #6
  %5 = load ptr, ptr @local_base, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !82
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  %neg.i = select i1 %.b, i32 -2049, i32 -1
  %and.i = and i32 %7, %neg.i
  %or.i = or i32 %and.i, %.16
  %8 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %9 = load ptr, ptr @local_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %8) #6, !srcloc !84
  %name = getelementptr inbounds %struct.clock_event_device, ptr %4, i32 0, i32 21
  %10 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.12, ptr %name, align 4
  %features = getelementptr inbounds %struct.clock_event_device, ptr %4, i32 0, i32 9
  %11 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %features, align 4
  %shift = getelementptr inbounds %struct.clock_event_device, ptr %4, i32 0, i32 7
  %12 = ptrtoint ptr %shift to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 32, ptr %shift, align 4
  %rating = getelementptr inbounds %struct.clock_event_device, ptr %4, i32 0, i32 22
  %13 = ptrtoint ptr %rating to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 300, ptr %rating, align 8
  %set_next_event = getelementptr inbounds %struct.clock_event_device, ptr %4, i32 0, i32 1
  %14 = ptrtoint ptr %set_next_event to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @armada_370_xp_clkevt_next_event, ptr %set_next_event, align 4
  %set_state_shutdown = getelementptr inbounds %struct.clock_event_device, ptr %4, i32 0, i32 14
  %15 = ptrtoint ptr %set_state_shutdown to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @armada_370_xp_clkevt_shutdown, ptr %set_state_shutdown, align 8
  %set_state_periodic = getelementptr inbounds %struct.clock_event_device, ptr %4, i32 0, i32 11
  %16 = ptrtoint ptr %set_state_periodic to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @armada_370_xp_clkevt_set_periodic, ptr %set_state_periodic, align 4
  %set_state_oneshot = getelementptr inbounds %struct.clock_event_device, ptr %4, i32 0, i32 12
  %17 = ptrtoint ptr %set_state_oneshot to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @armada_370_xp_clkevt_shutdown, ptr %set_state_oneshot, align 64
  %tick_resume = getelementptr inbounds %struct.clock_event_device, ptr %4, i32 0, i32 15
  %18 = ptrtoint ptr %tick_resume to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @armada_370_xp_clkevt_shutdown, ptr %tick_resume, align 4
  %19 = load i32, ptr @armada_370_xp_clkevt_irq, align 4
  %irq = getelementptr inbounds %struct.clock_event_device, ptr %4, i32 0, i32 23
  %20 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %irq, align 4
  %rem.i = and i32 %cpu, 31
  %add.i = add nuw nsw i32 %rem.i, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %div3.i = lshr i32 %cpu, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  %cpumask = getelementptr inbounds %struct.clock_event_device, ptr %4, i32 0, i32 25
  %21 = ptrtoint ptr %cpumask to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr.i, ptr %cpumask, align 4
  %22 = load i32, ptr @timer_clk, align 4
  tail call void @clockevents_config_and_register(ptr noundef %4, i32 noundef %22, i32 noundef 1, i32 noundef -2) #6
  %23 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq, align 4
  tail call void @enable_percpu_irq(i32 noundef %24, i32 noundef 0) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada_370_xp_timer_dying_cpu(i32 noundef %cpu) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @armada_370_xp_evt, align 4
  %1 = ptrtoint ptr %0 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add = add i32 %3, %1
  %4 = inttoptr i32 %add to ptr
  %set_state_shutdown = getelementptr inbounds %struct.clock_event_device, ptr %4, i32 0, i32 14
  %5 = ptrtoint ptr %set_state_shutdown to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %set_state_shutdown, align 8
  %call = tail call i32 %6(ptr noundef %4) #6
  %irq = getelementptr inbounds %struct.clock_event_device, ptr %4, i32 0, i32 23
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  tail call void @disable_percpu_irq(i32 noundef %8) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada_370_delay_timer_read() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @timer_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 20
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  %2 = xor i32 %1, -1
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_percpu_irq(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada_370_xp_clkevt_next_event(i32 noundef %delta, ptr nocapture noundef readnone %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  tail call void @arm_heavy_mb() #6
  %0 = load ptr, ptr @local_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -16777217) #6, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  tail call void @arm_heavy_mb() #6
  %1 = tail call i32 @llvm.bswap.i32(i32 %delta)
  %2 = load ptr, ptr @local_base, align 4
  %add.ptr3 = getelementptr i8, ptr %2, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %1) #6, !srcloc !84
  %3 = load i32, ptr @enable_mask, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  tail call void @arm_heavy_mb() #6
  %4 = load ptr, ptr @local_base, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  %6 = and i32 %5, -33554433
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %or.i = or i32 %7, %3
  %8 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %9 = load ptr, ptr @local_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %8) #6, !srcloc !84
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada_370_xp_clkevt_shutdown(ptr nocapture noundef readnone %evt) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  tail call void @arm_heavy_mb() #6
  %0 = load ptr, ptr @local_base, align 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #6, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  %2 = and i32 %1, -16777217
  %3 = load ptr, ptr @local_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %2) #6, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %4 = load ptr, ptr @local_base, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -16777217) #6, !srcloc !84
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada_370_xp_clkevt_set_periodic(ptr nocapture noundef readnone %evt) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %0 = load i32, ptr @ticks_per_jiffy, align 4
  %sub = add i32 %0, -1
  %1 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %2 = load ptr, ptr @local_base, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #6, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %3 = load i32, ptr @ticks_per_jiffy, align 4
  %sub3 = add i32 %3, -1
  %4 = tail call i32 @llvm.bswap.i32(i32 %sub3)
  %5 = load ptr, ptr @local_base, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %4) #6, !srcloc !84
  %6 = load i32, ptr @enable_mask, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  tail call void @arm_heavy_mb() #6
  %7 = load ptr, ptr @local_base, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !82
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  %or = or i32 %6, %9
  %or.i = or i32 %or, 2
  %10 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %11 = load ptr, ptr @local_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %10) #6, !srcloc !84
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_percpu_irq(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_percpu_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada_370_xp_timer_suspend() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @timer_base, align 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #6, !srcloc !82
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  store i32 %2, ptr @timer0_ctrl_reg, align 4
  %3 = load ptr, ptr @local_base, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !82
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  store i32 %5, ptr @timer0_local_ctrl_reg, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armada_370_xp_timer_resume() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %0 = load ptr, ptr @timer_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #6, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  tail call void @arm_heavy_mb() #6
  %1 = load ptr, ptr @timer_base, align 4
  %add.ptr3 = getelementptr i8, ptr %1, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 -1) #6, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  tail call void @arm_heavy_mb() #6
  %2 = load i32, ptr @timer0_ctrl_reg, align 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = load ptr, ptr @timer_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %3) #6, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  tail call void @arm_heavy_mb() #6
  %5 = load i32, ptr @timer0_local_ctrl_reg, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = load ptr, ptr @local_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %6) #6, !srcloc !84
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { cold }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !18, !19, !20, !21, !23, !24, !26, !28, !29, !30, !32, !34, !35, !36, !38, !40, !41, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !67, !68, !70, !71}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @__of_table_armada_xp, !1, !"__of_table_armada_xp", i1 false, i1 false}
!1 = !{!"../drivers/clocksource/timer-armada-370-xp.c", i32 354, i32 1}
!2 = !{ptr @__of_table_armada_375, !3, !"__of_table_armada_375", i1 false, i1 false}
!3 = !{!"../drivers/clocksource/timer-armada-370-xp.c", i32 392, i32 1}
!4 = !{ptr @__of_table_armada_370, !5, !"__of_table_armada_370", i1 false, i1 false}
!5 = !{!"../drivers/clocksource/timer-armada-370-xp.c", i32 415, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clocksource/timer-armada-370-xp.c", i32 338, i32 43}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clocksource/timer-armada-370-xp.c", i32 342, i32 3}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @armada_xp_timer_init._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @armada_xp_timer_init._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @timer_clk, !15, !"timer_clk", i1 false, i1 false}
!15 = !{!"../drivers/clocksource/timer-armada-370-xp.c", i32 80, i32 21}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clocksource/timer-armada-370-xp.c", i32 250, i32 3}
!18 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @armada_370_xp_timer_common_init._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @armada_370_xp_timer_common_init._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @armada_370_xp_timer_common_init._entry.6, !22, !"_entry", i1 false, i1 false}
!22 = !{!"../drivers/clocksource/timer-armada-370-xp.c", i32 256, i32 3}
!23 = !{ptr @armada_370_xp_timer_common_init._entry_ptr.7, !22, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clocksource/timer-armada-370-xp.c", i32 298, i32 9}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clocksource/timer-armada-370-xp.c", i32 301, i32 3}
!28 = !{ptr @armada_370_xp_timer_common_init._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @armada_370_xp_timer_common_init._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clocksource/timer-armada-370-xp.c", i32 314, i32 5}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clocksource/timer-armada-370-xp.c", i32 318, i32 3}
!34 = !{ptr @armada_370_xp_timer_common_init._entry.13, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @armada_370_xp_timer_common_init._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clocksource/timer-armada-370-xp.c", i32 323, i32 5}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clocksource/timer-armada-370-xp.c", i32 327, i32 3}
!40 = !{ptr @armada_370_xp_timer_common_init._entry.17, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @armada_370_xp_timer_common_init._entry_ptr.19, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @timer_base, !43, !"timer_base", i1 false, i1 false}
!43 = !{!"../drivers/clocksource/timer-armada-370-xp.c", i32 79, i32 22}
!44 = !{ptr @local_base, !45, !"local_base", i1 false, i1 false}
!45 = !{!"../drivers/clocksource/timer-armada-370-xp.c", i32 79, i32 35}
!46 = distinct !{null, !47, !"timer25Mhz", i1 false, i1 false}
!47 = !{!"../drivers/clocksource/timer-armada-370-xp.c", i32 81, i32 13}
!48 = !{ptr @enable_mask, !49, !"enable_mask", i1 false, i1 false}
!49 = !{!"../drivers/clocksource/timer-armada-370-xp.c", i32 82, i32 12}
!50 = !{ptr @armada_370_xp_clkevt_irq, !51, !"armada_370_xp_clkevt_irq", i1 false, i1 false}
!51 = !{!"../drivers/clocksource/timer-armada-370-xp.c", i32 155, i32 12}
!52 = !{ptr @ticks_per_jiffy, !53, !"ticks_per_jiffy", i1 false, i1 false}
!53 = !{!"../drivers/clocksource/timer-armada-370-xp.c", i32 87, i32 12}
!54 = !{ptr @armada_370_delay_timer, !55, !"armada_370_delay_timer", i1 false, i1 false}
!55 = !{!"../drivers/clocksource/timer-armada-370-xp.c", i32 239, i32 27}
!56 = !{ptr @armada_370_xp_evt, !57, !"armada_370_xp_evt", i1 false, i1 false}
!57 = !{!"../drivers/clocksource/timer-armada-370-xp.c", i32 89, i32 44}
!58 = !{ptr @armada_370_xp_timer_syscore_ops, !59, !"armada_370_xp_timer_syscore_ops", i1 false, i1 false}
!59 = !{!"../drivers/clocksource/timer-armada-370-xp.c", i32 229, i32 27}
!60 = !{ptr @timer0_ctrl_reg, !61, !"timer0_ctrl_reg", i1 false, i1 false}
!61 = !{!"../drivers/clocksource/timer-armada-370-xp.c", i32 212, i32 12}
!62 = !{ptr @timer0_local_ctrl_reg, !63, !"timer0_local_ctrl_reg", i1 false, i1 false}
!63 = !{!"../drivers/clocksource/timer-armada-370-xp.c", i32 212, i32 29}
!64 = !{ptr @.str.20, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clocksource/timer-armada-370-xp.c", i32 378, i32 4}
!66 = !{ptr @armada_375_timer_init._entry, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @armada_375_timer_init._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.21, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clocksource/timer-armada-370-xp.c", i32 402, i32 3}
!70 = !{ptr @armada_370_timer_init._entry, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @armada_370_timer_init._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{i64 2153224080}
!82 = !{i64 4986397}
!83 = !{i64 2153225017}
!84 = !{i64 4985979}
!85 = !{i64 2153237207}
!86 = !{i64 2153237635}
!87 = !{i64 2153225588}
!88 = !{i64 2153228241}
!89 = !{i64 2153233452}
!90 = !{i64 2153225821}
!91 = !{i64 2153226232}
!92 = !{i64 2153226812}
!93 = !{i64 2153227237}
!94 = !{i64 2153227701}
!95 = !{i64 2153230674}
!96 = !{i64 2153231175}
!97 = !{i64 2153231405}
!98 = !{i64 2153231833}
!99 = !{i64 2153232266}
!100 = !{i64 2153232720}
