; ModuleID = '/llk/IR_all_yes/drivers/clocksource/timer-pxa.c_pt.bc'
source_filename = "../drivers/clocksource/timer-pxa.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [124 x i8] }
%struct.list_head = type { ptr, ptr }

@__of_table_pxa_timer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,pxa-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pxa_timer_dt_init }, section "__timer_of_table", align 4
@timer_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OSTIMER0\00", [23 x i8] zeroinitializer }, align 32
@pxa_timer_nodt_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\012%s: unable to get clk\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pxa_timer_nodt_init\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/clocksource/timer-pxa.c\00", [32 x i8] zeroinitializer }, align 32
@pxa_timer_nodt_init._entry_ptr = internal global ptr @pxa_timer_nodt_init._entry, section ".printk_index", align 4
@pxa_timer_dt_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%pOFn: unable to map resource\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pxa_timer_dt_init\00", [46 x i8] zeroinitializer }, align 32
@pxa_timer_dt_init._entry_ptr = internal global ptr @pxa_timer_dt_init._entry, section ".printk_index", align 4
@pxa_timer_dt_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.3, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\012%pOFn: unable to get clk\0A\00", [36 x i8] zeroinitializer }, align 32
@pxa_timer_dt_init._entry_ptr.8 = internal global ptr @pxa_timer_dt_init._entry.6, section ".printk_index", align 4
@pxa_timer_dt_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.3, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\012Failed to prepare clock\0A\00", [37 x i8] zeroinitializer }, align 32
@pxa_timer_dt_init._entry_ptr.11 = internal global ptr @pxa_timer_dt_init._entry.9, section ".printk_index", align 4
@pxa_timer_dt_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.3, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\012%pOFn: unable to parse OS-timer0 irq\0A\00", [56 x i8] zeroinitializer }, align 32
@pxa_timer_dt_init._entry_ptr.14 = internal global ptr @pxa_timer_dt_init._entry.12, section ".printk_index", align 4
@ckevt_pxa_osmr0 = internal global %struct.clock_event_device { ptr null, ptr @pxa_osmr0_set_next_event, ptr null, i64 0, i64 0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 0, ptr null, ptr @pxa_osmr0_shutdown, ptr null, ptr @pxa_osmr0_shutdown, ptr null, ptr null, ptr @pxa_timer_suspend, ptr @pxa_timer_resume, i32 0, i32 0, ptr @.str.22, i32 200, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, [124 x i8] undef }, align 128
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ost0\00", [27 x i8] zeroinitializer }, align 32
@pxa_timer_common_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013Failed to setup irq\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pxa_timer_common_init\00", [42 x i8] zeroinitializer }, align 32
@pxa_timer_common_init._entry_ptr = internal global ptr @pxa_timer_common_init._entry, section ".printk_index", align 4
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"oscr0\00", [26 x i8] zeroinitializer }, align 32
@pxa_timer_common_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.17, ptr @.str.3, i32 167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013Failed to init clocksource\0A\00", [34 x i8] zeroinitializer }, align 32
@pxa_timer_common_init._entry_ptr.21 = internal global ptr @pxa_timer_common_init._entry.19, section ".printk_index", align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"osmr0\00", [26 x i8] zeroinitializer }, align 32
@osmr.0 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@osmr.1 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@osmr.2 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@osmr.3 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@oier = internal global { i32, [28 x i8] } zeroinitializer, align 32
@oscr = internal global { i32, [28 x i8] } zeroinitializer, align 32
@___asan_gen_.23 = private unnamed_addr constant [11 x i8] c"timer_base\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 55, i32 22 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 220, i32 22 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 225, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 185, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 191, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 197, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 204, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 158, i32 6 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 160, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 164, i32 49 }
@___asan_gen_.83 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 167, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 136, i32 12 }
@___asan_gen_.92 = private unnamed_addr constant [7 x i8] c"osmr.0\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [7 x i8] c"osmr.1\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [7 x i8] c"osmr.2\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [7 x i8] c"osmr.3\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [5 x i8] c"oier\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 100, i32 31 }
@___asan_gen_.99 = private unnamed_addr constant [5 x i8] c"oscr\00", align 1
@___asan_gen_.100 = private constant [35 x i8] c"../drivers/clocksource/timer-pxa.c\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 100, i32 37 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__of_table_pxa_timer, ptr @pxa_timer_common_init._entry, ptr @pxa_timer_common_init._entry.19, ptr @pxa_timer_common_init._entry_ptr, ptr @pxa_timer_common_init._entry_ptr.21, ptr @pxa_timer_dt_init._entry, ptr @pxa_timer_dt_init._entry.12, ptr @pxa_timer_dt_init._entry.6, ptr @pxa_timer_dt_init._entry.9, ptr @pxa_timer_dt_init._entry_ptr, ptr @pxa_timer_dt_init._entry_ptr.11, ptr @pxa_timer_dt_init._entry_ptr.14, ptr @pxa_timer_dt_init._entry_ptr.8, ptr @pxa_timer_nodt_init._entry, ptr @pxa_timer_nodt_init._entry_ptr, ptr @timer_base, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @osmr.0, ptr @osmr.1, ptr @osmr.2, ptr @osmr.3, ptr @oier, ptr @oscr], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timer_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_timer_nodt_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_timer_dt_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_timer_dt_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_timer_dt_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_timer_dt_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_timer_common_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_timer_common_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @osmr.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @osmr.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @osmr.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @osmr.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oier to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oscr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_timer_dt_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #5
  store ptr %call, ptr @timer_base, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %np) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_clk_get(ptr noundef %np, i32 noundef 0) #5
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end7, label %if.end11

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %np) #8
  %0 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call.i = tail call i32 @clk_prepare(ptr noundef %call2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end11.do.end17_crit_edge

if.end11.do.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end17

if.end.i:                                         ; preds = %if.end11
  %call1.i = tail call i32 @clk_enable(ptr noundef %call2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end20, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %call2) #5
  br label %do.end17

do.end17:                                         ; preds = %if.then3.i, %if.end11.do.end17_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end11.do.end17_crit_edge ]
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #8
  br label %cleanup

if.end20:                                         ; preds = %if.end.i
  %call21 = tail call i32 @irq_of_parse_and_map(ptr noundef %np, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call21)
  %cmp = icmp slt i32 %call21, 1
  br i1 %cmp, label %do.end25, label %if.end28

do.end25:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %np) #8
  br label %cleanup

if.end28:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %call29 = tail call i32 @clk_get_rate(ptr noundef %call2) #5
  %call30 = tail call fastcc i32 @pxa_timer_common_init(i32 noundef %call21, i32 noundef %call29) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %do.end25, %do.end17, %do.end7, %do.end
  %retval.0 = phi i32 [ %0, %do.end7 ], [ %retval.0.i.ph, %do.end17 ], [ -22, %do.end25 ], [ %call30, %if.end28 ], [ -6, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @pxa_timer_nodt_init(i32 noundef %irq, ptr noundef %base) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %base, ptr @timer_base, align 4
  %call = tail call ptr @clk_get(ptr noundef null, ptr noundef nonnull @.str) #5
  %tobool.not = icmp eq ptr %call, null
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %or.cond = or i1 %tobool.not, %cmp.i
  br i1 %or.cond, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @clk_prepare(ptr noundef nonnull %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.clk_prepare_enable.exit_crit_edge

if.then.clk_prepare_enable.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef nonnull %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef nonnull %call) #5
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.then.clk_prepare_enable.exit_crit_edge
  %call3 = tail call i32 @clk_get_rate(ptr noundef nonnull %call) #5
  %call4 = tail call fastcc i32 @pxa_timer_common_init(i32 noundef %irq, i32 noundef %call3) #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %clk_prepare_enable.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pxa_timer_common_init(i32 noundef %irq, i32 noundef %clock_tick_rate) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @timer_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #5, !srcloc !61
  %1 = load ptr, ptr @timer_base, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 251658240) #5, !srcloc !61
  tail call void @sched_clock_register(ptr noundef nonnull @pxa_read_sched_clock, i32 noundef 32, i32 noundef %clock_tick_rate) #5
  store ptr getelementptr inbounds ([33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 1), ptr getelementptr inbounds (%struct.clock_event_device, ptr @ckevt_pxa_osmr0, i32 0, i32 25), align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %irq, ptr noundef nonnull @pxa_ost0_interrupt, ptr noundef null, i32 noundef 86528, ptr noundef nonnull @.str.15, ptr noundef nonnull @ckevt_pxa_osmr0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr @timer_base, align 4
  %add.ptr4 = getelementptr i8, ptr %2, i32 16
  %call5 = tail call i32 @clocksource_mmio_init(ptr noundef %add.ptr4, ptr noundef nonnull @.str.18, i32 noundef %clock_tick_rate, i32 noundef 200, i32 noundef 32, ptr noundef nonnull @clocksource_mmio_readl_up) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end13, label %do.end10

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #8
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clockevents_config_and_register(ptr noundef nonnull @ckevt_pxa_osmr0, i32 noundef %clock_tick_rate, i32 noundef 32, i32 noundef 2147483647) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.end10, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call5, %do.end10 ], [ 0, %if.end13 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @pxa_read_sched_clock() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = load ptr, ptr @timer_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 16
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !62
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %conv = zext i32 %2 to i64
  ret i64 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_ost0_interrupt(i32 noundef %irq, ptr noundef %dev_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @timer_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 28
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !62
  %2 = and i32 %1, -16777217
  %3 = load ptr, ptr @timer_base, align 4
  %add.ptr1 = getelementptr i8, ptr %3, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %2) #5, !srcloc !61
  %4 = load ptr, ptr @timer_base, align 4
  %add.ptr2 = getelementptr i8, ptr %4, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 16777216) #5, !srcloc !61
  %5 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_id, align 128
  tail call void %6(ptr noundef %dev_id) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clocksource_mmio_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clocksource_mmio_readl_up(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_osmr0_set_next_event(i32 noundef %delta, ptr nocapture noundef readnone %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @timer_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 28
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !62
  %2 = or i32 %1, 16777216
  %3 = load ptr, ptr @timer_base, align 4
  %add.ptr1 = getelementptr i8, ptr %3, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %2) #5, !srcloc !61
  %4 = load ptr, ptr @timer_base, align 4
  %add.ptr3 = getelementptr i8, ptr %4, i32 16
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #5, !srcloc !62
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %add = add i32 %6, %delta
  %7 = tail call i32 @llvm.bswap.i32(i32 %add)
  %8 = load ptr, ptr @timer_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %7) #5, !srcloc !61
  %9 = load ptr, ptr @timer_base, align 4
  %add.ptr8 = getelementptr i8, ptr %9, i32 16
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #5, !srcloc !62
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %sub = sub i32 %add, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %sub)
  %cmp = icmp slt i32 %sub, 17
  %cond = select i1 %cmp, i32 -62, i32 0
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_osmr0_shutdown(ptr nocapture noundef readnone %evt) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @timer_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 28
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !62
  %2 = and i32 %1, -16777217
  %3 = load ptr, ptr @timer_base, align 4
  %add.ptr1 = getelementptr i8, ptr %3, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %2) #5, !srcloc !61
  %4 = load ptr, ptr @timer_base, align 4
  %add.ptr2 = getelementptr i8, ptr %4, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 16777216) #5, !srcloc !61
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pxa_timer_suspend(ptr nocapture noundef readnone %cedev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @timer_base, align 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #5, !srcloc !62
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  store i32 %2, ptr @osmr.0, align 4
  %3 = load ptr, ptr @timer_base, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #5, !srcloc !62
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  store i32 %5, ptr @osmr.1, align 4
  %6 = load ptr, ptr @timer_base, align 4
  %add.ptr6 = getelementptr i8, ptr %6, i32 8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #5, !srcloc !62
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  store i32 %8, ptr @osmr.2, align 4
  %9 = load ptr, ptr @timer_base, align 4
  %add.ptr10 = getelementptr i8, ptr %9, i32 12
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #5, !srcloc !62
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  store i32 %11, ptr @osmr.3, align 4
  %12 = load ptr, ptr @timer_base, align 4
  %add.ptr14 = getelementptr i8, ptr %12, i32 28
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #5, !srcloc !62
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  store i32 %14, ptr @oier, align 4
  %15 = load ptr, ptr @timer_base, align 4
  %add.ptr18 = getelementptr i8, ptr %15, i32 16
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #5, !srcloc !62
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  store i32 %17, ptr @oscr, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pxa_timer_resume(ptr nocapture noundef readnone %cedev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @osmr.0, align 4
  %1 = load i32, ptr @oscr, align 4
  %sub = sub i32 %0, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub)
  %cmp = icmp ult i32 %sub, 16
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add = add i32 %0, 16
  store i32 %add, ptr @osmr.0, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = load i32, ptr @osmr.0, align 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = load ptr, ptr @timer_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %3) #5, !srcloc !61
  %5 = load i32, ptr @osmr.1, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = load ptr, ptr @timer_base, align 4
  %add.ptr1 = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %6) #5, !srcloc !61
  %8 = load i32, ptr @osmr.2, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = load ptr, ptr @timer_base, align 4
  %add.ptr2 = getelementptr i8, ptr %10, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %9) #5, !srcloc !61
  %11 = load i32, ptr @osmr.3, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %13 = load ptr, ptr @timer_base, align 4
  %add.ptr3 = getelementptr i8, ptr %13, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %12) #5, !srcloc !61
  %14 = load i32, ptr @oier, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = load ptr, ptr @timer_base, align 4
  %add.ptr4 = getelementptr i8, ptr %16, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %15) #5, !srcloc !61
  %17 = load i32, ptr @oscr, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %19 = load ptr, ptr @timer_base, align 4
  %add.ptr5 = getelementptr i8, ptr %19, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %18) #5, !srcloc !61
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !33, !34, !35, !36, !38, !40, !41, !42, !44, !46, !48, !50}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @__of_table_pxa_timer, !1, !"__of_table_pxa_timer", i1 false, i1 false}
!1 = !{!"../drivers/clocksource/timer-pxa.c", i32 210, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clocksource/timer-pxa.c", i32 220, i32 22}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clocksource/timer-pxa.c", i32 225, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @pxa_timer_nodt_init._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @pxa_timer_nodt_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @timer_base, !11, !"timer_base", i1 false, i1 false}
!11 = !{!"../drivers/clocksource/timer-pxa.c", i32 55, i32 22}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clocksource/timer-pxa.c", i32 185, i32 3}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @pxa_timer_dt_init._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @pxa_timer_dt_init._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/clocksource/timer-pxa.c", i32 191, i32 3}
!19 = !{ptr @pxa_timer_dt_init._entry.6, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @pxa_timer_dt_init._entry_ptr.8, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clocksource/timer-pxa.c", i32 197, i32 3}
!23 = !{ptr @pxa_timer_dt_init._entry.9, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @pxa_timer_dt_init._entry_ptr.11, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clocksource/timer-pxa.c", i32 204, i32 3}
!27 = !{ptr @pxa_timer_dt_init._entry.12, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @pxa_timer_dt_init._entry_ptr.14, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/clocksource/timer-pxa.c", i32 158, i32 6}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clocksource/timer-pxa.c", i32 160, i32 3}
!33 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @pxa_timer_common_init._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @pxa_timer_common_init._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clocksource/timer-pxa.c", i32 164, i32 49}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clocksource/timer-pxa.c", i32 167, i32 3}
!40 = !{ptr @pxa_timer_common_init._entry.19, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @pxa_timer_common_init._entry_ptr.21, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clocksource/timer-pxa.c", i32 136, i32 12}
!44 = !{ptr @ckevt_pxa_osmr0, !45, !"ckevt_pxa_osmr0", i1 false, i1 false}
!45 = !{!"../drivers/clocksource/timer-pxa.c", i32 135, i32 34}
!46 = distinct !{null, !47, !"osmr", i1 false, i1 false}
!47 = !{!"../drivers/clocksource/timer-pxa.c", i32 100, i32 22}
!48 = !{ptr @oier, !49, !"oier", i1 false, i1 false}
!49 = !{!"../drivers/clocksource/timer-pxa.c", i32 100, i32 31}
!50 = !{ptr @oscr, !51, !"oscr", i1 false, i1 false}
!51 = !{!"../drivers/clocksource/timer-pxa.c", i32 100, i32 37}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{i64 4202089}
!62 = !{i64 4202507}
