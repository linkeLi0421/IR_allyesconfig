; ModuleID = '/llk/IR_all_yes/drivers/clocksource/timer-lpc32xx.c_pt.bc'
source_filename = "../drivers/clocksource/timer-lpc32xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.delay_timer = type { ptr, i32 }
%struct.lpc32xx_clock_event_ddata = type { %struct.clock_event_device, ptr, i32, [120 x i8] }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [124 x i8] }
%struct.list_head = type { ptr, ptr }

@__of_table_lpc32xx_timer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,lpc3220-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @lpc32xx_timer_init }, section "__timer_of_table", align 4
@lpc32xx_timer_init.has_clocksource = internal global { i1, [31 x i8] } zeroinitializer, align 32
@lpc32xx_timer_init.has_clockevent = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"timerclk\00", [23 x i8] zeroinitializer }, align 32
@lpc32xx_clocksource_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: clock get failed (%ld)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lpc32xx_clocksource_init\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/clocksource/timer-lpc32xx.c\00", [60 x i8] zeroinitializer }, align 32
@lpc32xx_clocksource_init._entry_ptr = internal global ptr @lpc32xx_clocksource_init._entry, section ".printk_index", align 4
@lpc32xx_clocksource_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: clock enable failed (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@lpc32xx_clocksource_init._entry_ptr.6 = internal global ptr @lpc32xx_clocksource_init._entry.4, section ".printk_index", align 4
@lpc32xx_clocksource_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: unable to map registers\0A\00", [33 x i8] zeroinitializer }, align 32
@lpc32xx_clocksource_init._entry_ptr.9 = internal global ptr @lpc32xx_clocksource_init._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lpc3220 timer\00", [18 x i8] zeroinitializer }, align 32
@lpc32xx_clocksource_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: failed to init clocksource (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@lpc32xx_clocksource_init._entry_ptr.13 = internal global ptr @lpc32xx_clocksource_init._entry.11, section ".printk_index", align 4
@clocksource_timer_counter = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@lpc32xx_delay_timer = internal global { %struct.delay_timer, [24 x i8] } { %struct.delay_timer { ptr @lpc32xx_delay_timer_read, i32 0 }, [24 x i8] zeroinitializer }, align 32
@lpc32xx_clockevent_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.14, ptr @.str.3, i32 229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lpc32xx_clockevent_init\00", [40 x i8] zeroinitializer }, align 32
@lpc32xx_clockevent_init._entry_ptr = internal global ptr @lpc32xx_clockevent_init._entry, section ".printk_index", align 4
@lpc32xx_clockevent_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.14, ptr @.str.3, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lpc32xx_clockevent_init._entry_ptr.16 = internal global ptr @lpc32xx_clockevent_init._entry.15, section ".printk_index", align 4
@lpc32xx_clockevent_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.14, ptr @.str.3, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lpc32xx_clockevent_init._entry_ptr.18 = internal global ptr @lpc32xx_clockevent_init._entry.17, section ".printk_index", align 4
@lpc32xx_clockevent_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.14, ptr @.str.3, i32 248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013%s: get irq failed\0A\00", [42 x i8] zeroinitializer }, align 32
@lpc32xx_clockevent_init._entry_ptr.21 = internal global ptr @lpc32xx_clockevent_init._entry.19, section ".printk_index", align 4
@lpc32xx_clk_event_ddata = internal global %struct.lpc32xx_clock_event_ddata { %struct.clock_event_device { ptr null, ptr @lpc32xx_clkevt_next_event, ptr null, i64 0, i64 0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 0, ptr @lpc32xx_clkevt_periodic, ptr @lpc32xx_clkevt_oneshot, ptr null, ptr @lpc32xx_clkevt_shutdown, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr @.str.22, i32 300, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, [124 x i8] undef }, ptr null, i32 0, [120 x i8] undef }, align 128
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lpc3220 clockevent\00", [45 x i8] zeroinitializer }, align 32
@lpc32xx_clockevent_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.14, ptr @.str.3, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s: request irq failed\0A\00", [38 x i8] zeroinitializer }, align 32
@lpc32xx_clockevent_init._entry_ptr.25 = internal global ptr @lpc32xx_clockevent_init._entry.23, section ".printk_index", align 4
@___asan_gen_.26 = private unnamed_addr constant [35 x i8] c"lpc32xx_timer_init.has_clocksource\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [34 x i8] c"lpc32xx_timer_init.has_clockevent\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 166, i32 31 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 168, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 174, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 180, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 197, i32 55 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 200, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [26 x i8] c"clocksource_timer_counter\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 51, i32 22 }
@___asan_gen_.67 = private unnamed_addr constant [20 x i8] c"lpc32xx_delay_timer\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 63, i32 27 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 229, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 235, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 241, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 248, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 269, i32 33 }
@___asan_gen_.91 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.95 = private constant [39 x i8] c"../drivers/clocksource/timer-lpc32xx.c\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 272, i32 3 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__of_table_lpc32xx_timer, ptr @lpc32xx_clockevent_init._entry, ptr @lpc32xx_clockevent_init._entry.15, ptr @lpc32xx_clockevent_init._entry.17, ptr @lpc32xx_clockevent_init._entry.19, ptr @lpc32xx_clockevent_init._entry.23, ptr @lpc32xx_clockevent_init._entry_ptr, ptr @lpc32xx_clockevent_init._entry_ptr.16, ptr @lpc32xx_clockevent_init._entry_ptr.18, ptr @lpc32xx_clockevent_init._entry_ptr.21, ptr @lpc32xx_clockevent_init._entry_ptr.25, ptr @lpc32xx_clocksource_init._entry, ptr @lpc32xx_clocksource_init._entry.11, ptr @lpc32xx_clocksource_init._entry.4, ptr @lpc32xx_clocksource_init._entry.7, ptr @lpc32xx_clocksource_init._entry_ptr, ptr @lpc32xx_clocksource_init._entry_ptr.13, ptr @lpc32xx_clocksource_init._entry_ptr.6, ptr @lpc32xx_clocksource_init._entry_ptr.9, ptr @lpc32xx_timer_init.has_clocksource, ptr @lpc32xx_timer_init.has_clockevent, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @clocksource_timer_counter, ptr @lpc32xx_delay_timer, ptr @.str.14, ptr @.str.20, ptr @.str.22, ptr @.str.24], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_timer_init.has_clocksource to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_timer_init.has_clockevent to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_clocksource_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_clocksource_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_clocksource_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_clocksource_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clocksource_timer_counter to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_delay_timer to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_clockevent_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_clockevent_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_clockevent_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_clockevent_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_clockevent_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_timer_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @lpc32xx_timer_init.has_clocksource, align 4
  br i1 %.b, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @lpc32xx_clocksource_init(ptr noundef %np) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.cleanup.sink.split_crit_edge, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %ret.0 = phi i32 [ 0, %entry.if.end3_crit_edge ], [ %call, %if.then.if.end3_crit_edge ]
  %.b14 = load i1, ptr @lpc32xx_timer_init.has_clockevent, align 4
  br i1 %.b14, label %if.end3.cleanup_crit_edge, label %if.then5

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then5:                                         ; preds = %if.end3
  %call6 = tail call fastcc i32 @lpc32xx_clockevent_init(ptr noundef %np) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then5.cleanup.sink.split_crit_edge, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then5.cleanup.sink.split_crit_edge:            ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then5.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %lpc32xx_timer_init.has_clockevent.sink = phi ptr [ @lpc32xx_timer_init.has_clocksource, %if.then.cleanup.sink.split_crit_edge ], [ @lpc32xx_timer_init.has_clockevent, %if.then5.cleanup.sink.split_crit_edge ]
  %0 = ptrtoint ptr %lpc32xx_timer_init.has_clockevent.sink to i32
  call void @__asan_store1_noabort(i32 %0)
  store i1 true, ptr %lpc32xx_timer_init.has_clockevent.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then5.cleanup_crit_edge, %if.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end3.cleanup_crit_edge ], [ %call6, %if.then5.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lpc32xx_clocksource_init(ptr noundef %np) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_clk_get_by_name(ptr noundef %np, ptr noundef nonnull @.str) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call to i32
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %0) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @clk_prepare(ptr noundef %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.do.end9_crit_edge

if.end.do.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end12, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %call) #5
  br label %do.end9

do.end9:                                          ; preds = %if.then3.i, %if.end.do.end9_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end.do.end9_crit_edge ]
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2, i32 noundef %retval.0.i.ph) #9
  br label %err_clk_enable

if.end12:                                         ; preds = %if.end.i
  %call13 = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #5
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %do.end18, label %if.end21

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2) #9
  br label %err_iomap

if.end21:                                         ; preds = %if.end12
  %add.ptr = getelementptr i8, ptr %call13, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 33554432) #5, !srcloc !63
  %add.ptr22 = getelementptr i8, ptr %call13, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 0) #5, !srcloc !63
  %add.ptr23 = getelementptr i8, ptr %call13, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 0) #5, !srcloc !63
  %add.ptr24 = getelementptr i8, ptr %call13, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 0) #5, !srcloc !63
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #5, !srcloc !63
  %call26 = tail call i32 @clk_get_rate(ptr noundef %call) #5
  %add.ptr27 = getelementptr i8, ptr %call13, i32 8
  %call28 = tail call i32 @clocksource_mmio_init(ptr noundef %add.ptr27, ptr noundef nonnull @.str.10, i32 noundef %call26, i32 noundef 300, i32 noundef 32, ptr noundef nonnull @clocksource_mmio_readl_up) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end36, label %do.end33

do.end33:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.2, i32 noundef %call28) #9
  tail call void @iounmap(ptr noundef nonnull %call13) #5
  br label %err_iomap

if.end36:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  store ptr %add.ptr27, ptr @clocksource_timer_counter, align 4
  store i32 %call26, ptr getelementptr inbounds (%struct.delay_timer, ptr @lpc32xx_delay_timer, i32 0, i32 1), align 4
  tail call void @register_current_timer_delay(ptr noundef nonnull @lpc32xx_delay_timer) #5
  tail call void @sched_clock_register(ptr noundef nonnull @lpc32xx_read_sched_clock, i32 noundef 32, i32 noundef %call26) #5
  br label %cleanup

err_iomap:                                        ; preds = %do.end33, %do.end18
  %ret.0 = phi i32 [ %call28, %do.end33 ], [ -99, %do.end18 ]
  tail call void @clk_disable(ptr noundef %call) #5
  tail call void @clk_unprepare(ptr noundef %call) #5
  br label %err_clk_enable

err_clk_enable:                                   ; preds = %err_iomap, %do.end9
  %ret.1 = phi i32 [ %retval.0.i.ph, %do.end9 ], [ %ret.0, %err_iomap ]
  tail call void @clk_put(ptr noundef %call) #5
  br label %cleanup

cleanup:                                          ; preds = %err_clk_enable, %if.end36, %do.end
  %retval.0 = phi i32 [ %0, %do.end ], [ %ret.1, %err_clk_enable ], [ 0, %if.end36 ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lpc32xx_clockevent_init(ptr noundef %np) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_clk_get_by_name(ptr noundef %np, ptr noundef nonnull @.str) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call to i32
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.14, i32 noundef %0) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @clk_prepare(ptr noundef %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.do.end9_crit_edge

if.end.do.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end12, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %call) #5
  br label %do.end9

do.end9:                                          ; preds = %if.then3.i, %if.end.do.end9_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end.do.end9_crit_edge ]
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.14, i32 noundef %retval.0.i.ph) #9
  br label %err_clk_enable

if.end12:                                         ; preds = %if.end.i
  %call13 = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #5
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %do.end18, label %if.end21

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.14) #9
  br label %err_iomap

if.end21:                                         ; preds = %if.end12
  %call22 = tail call i32 @irq_of_parse_and_map(ptr noundef %np, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end21.err_irq_crit_edge, label %if.end30

if.end21.err_irq_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_irq

if.end30:                                         ; preds = %if.end21
  %add.ptr = getelementptr i8, ptr %call13, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #5, !srcloc !63
  %add.ptr31 = getelementptr i8, ptr %call13, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 0) #5, !srcloc !63
  %add.ptr32 = getelementptr i8, ptr %call13, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 0) #5, !srcloc !63
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %call13, i32 16777216) #5, !srcloc !63
  %call34 = tail call i32 @clk_get_rate(ptr noundef %call) #5
  store ptr %call13, ptr getelementptr inbounds (%struct.lpc32xx_clock_event_ddata, ptr @lpc32xx_clk_event_ddata, i32 0, i32 1), align 128
  %add = add i32 %call34, 50
  %div36 = udiv i32 %add, 100
  store i32 %div36, ptr getelementptr inbounds (%struct.lpc32xx_clock_event_ddata, ptr @lpc32xx_clk_event_ddata, i32 0, i32 2), align 4
  tail call void @clockevents_config_and_register(ptr noundef nonnull @lpc32xx_clk_event_ddata, i32 noundef %call34, i32 noundef 1, i32 noundef -1) #5
  %call.i70 = tail call i32 @request_threaded_irq(i32 noundef %call22, ptr noundef nonnull @lpc32xx_clock_event_handler, ptr noundef null, i32 noundef 86528, ptr noundef nonnull @.str.22, ptr noundef nonnull @lpc32xx_clk_event_ddata) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %tobool38.not = icmp eq i32 %call.i70, 0
  br i1 %tobool38.not, label %if.end30.cleanup_crit_edge, label %if.end30.err_irq_crit_edge

if.end30.err_irq_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_irq

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err_irq:                                          ; preds = %if.end30.err_irq_crit_edge, %if.end21.err_irq_crit_edge
  %.str.24.sink = phi ptr [ @.str.20, %if.end21.err_irq_crit_edge ], [ @.str.24, %if.end30.err_irq_crit_edge ]
  %ret.0 = phi i32 [ -2, %if.end21.err_irq_crit_edge ], [ %call.i70, %if.end30.err_irq_crit_edge ]
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.24.sink, ptr noundef nonnull @.str.14) #9
  tail call void @iounmap(ptr noundef nonnull %call13) #5
  br label %err_iomap

err_iomap:                                        ; preds = %err_irq, %do.end18
  %ret.1 = phi i32 [ %ret.0, %err_irq ], [ -99, %do.end18 ]
  tail call void @clk_disable(ptr noundef %call) #5
  tail call void @clk_unprepare(ptr noundef %call) #5
  br label %err_clk_enable

err_clk_enable:                                   ; preds = %err_iomap, %do.end9
  %ret.2 = phi i32 [ %retval.0.i.ph, %do.end9 ], [ %ret.1, %err_iomap ]
  tail call void @clk_put(ptr noundef %call) #5
  br label %cleanup

cleanup:                                          ; preds = %err_clk_enable, %if.end30.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %0, %do.end ], [ %ret.2, %err_clk_enable ], [ 0, %if.end30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clocksource_mmio_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clocksource_mmio_readl_up(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_current_timer_delay(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @lpc32xx_read_sched_clock() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = load ptr, ptr @clocksource_timer_counter, align 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #5, !srcloc !64
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  %conv = zext i32 %2 to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_delay_timer_read() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @clocksource_timer_counter, align 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #5, !srcloc !64
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  ret i32 %2
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_clock_event_handler(i32 noundef %irq, ptr noundef %dev_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.lpc32xx_clock_event_ddata, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 16777216) #5, !srcloc !63
  %2 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_id, align 128
  tail call void %3(ptr noundef %dev_id) #5
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_clkevt_next_event(i32 noundef %delta, ptr nocapture noundef readonly %evtdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.lpc32xx_clock_event_ddata, ptr %evtdev, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 128
  %add.ptr1 = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 33554432) #5, !srcloc !63
  %2 = tail call i32 @llvm.bswap.i32(i32 %delta)
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 128
  %add.ptr3 = getelementptr i8, ptr %4, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %2) #5, !srcloc !63
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 128
  %add.ptr5 = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 16777216) #5, !srcloc !63
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_clkevt_periodic(ptr nocapture noundef readonly %evtdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.lpc32xx_clock_event_ddata, ptr %evtdev, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 128
  %add.ptr1 = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 50331648) #5, !srcloc !63
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 128
  %add.ptr3 = getelementptr i8, ptr %3, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 33554432) #5, !srcloc !63
  %ticks_per_jiffy = getelementptr inbounds %struct.lpc32xx_clock_event_ddata, ptr %evtdev, i32 0, i32 2
  %4 = ptrtoint ptr %ticks_per_jiffy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ticks_per_jiffy, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 128
  %add.ptr5 = getelementptr i8, ptr %8, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %6) #5, !srcloc !63
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 128
  %add.ptr7 = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 16777216) #5, !srcloc !63
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_clkevt_oneshot(ptr nocapture noundef readonly %evtdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.lpc32xx_clock_event_ddata, ptr %evtdev, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 128
  %add.ptr1 = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 0) #5, !srcloc !63
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 128
  %add.ptr3 = getelementptr i8, ptr %3, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 117440512) #5, !srcloc !63
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_clkevt_shutdown(ptr nocapture noundef readonly %evtdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.lpc32xx_clock_event_ddata, ptr %evtdev, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 128
  %add.ptr1 = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 0) #5, !srcloc !63
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
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
attributes #8 = { cold }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !26, !27, !28, !30, !32, !34, !35, !36, !38, !39, !41, !42, !44, !45, !46, !48, !50, !51, !52}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @__of_table_lpc32xx_timer, !1, !"__of_table_lpc32xx_timer", i1 false, i1 false}
!1 = !{!"../drivers/clocksource/timer-lpc32xx.c", i32 314, i32 1}
!2 = distinct !{null, !3, !"has_clocksource", i1 false, i1 false}
!3 = !{!"../drivers/clocksource/timer-lpc32xx.c", i32 293, i32 13}
!4 = distinct !{null, !5, !"has_clockevent", i1 false, i1 false}
!5 = !{!"../drivers/clocksource/timer-lpc32xx.c", i32 293, i32 30}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clocksource/timer-lpc32xx.c", i32 166, i32 31}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clocksource/timer-lpc32xx.c", i32 168, i32 3}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @lpc32xx_clocksource_init._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @lpc32xx_clocksource_init._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clocksource/timer-lpc32xx.c", i32 174, i32 3}
!16 = !{ptr @lpc32xx_clocksource_init._entry.4, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @lpc32xx_clocksource_init._entry_ptr.6, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clocksource/timer-lpc32xx.c", i32 180, i32 3}
!20 = !{ptr @lpc32xx_clocksource_init._entry.7, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @lpc32xx_clocksource_init._entry_ptr.9, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clocksource/timer-lpc32xx.c", i32 197, i32 55}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clocksource/timer-lpc32xx.c", i32 200, i32 3}
!26 = !{ptr @lpc32xx_clocksource_init._entry.11, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @lpc32xx_clocksource_init._entry_ptr.13, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @clocksource_timer_counter, !29, !"clocksource_timer_counter", i1 false, i1 false}
!29 = !{!"../drivers/clocksource/timer-lpc32xx.c", i32 51, i32 22}
!30 = !{ptr @lpc32xx_delay_timer, !31, !"lpc32xx_delay_timer", i1 false, i1 false}
!31 = !{!"../drivers/clocksource/timer-lpc32xx.c", i32 63, i32 27}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clocksource/timer-lpc32xx.c", i32 229, i32 3}
!34 = !{ptr @lpc32xx_clockevent_init._entry, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @lpc32xx_clockevent_init._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @lpc32xx_clockevent_init._entry.15, !37, !"_entry", i1 false, i1 false}
!37 = !{!"../drivers/clocksource/timer-lpc32xx.c", i32 235, i32 3}
!38 = !{ptr @lpc32xx_clockevent_init._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @lpc32xx_clockevent_init._entry.17, !40, !"_entry", i1 false, i1 false}
!40 = !{!"../drivers/clocksource/timer-lpc32xx.c", i32 241, i32 3}
!41 = !{ptr @lpc32xx_clockevent_init._entry_ptr.18, !40, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clocksource/timer-lpc32xx.c", i32 248, i32 3}
!44 = !{ptr @lpc32xx_clockevent_init._entry.19, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @lpc32xx_clockevent_init._entry_ptr.21, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clocksource/timer-lpc32xx.c", i32 269, i32 33}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clocksource/timer-lpc32xx.c", i32 272, i32 3}
!50 = !{ptr @lpc32xx_clockevent_init._entry.23, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @lpc32xx_clockevent_init._entry_ptr.25, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @lpc32xx_clk_event_ddata, !53, !"lpc32xx_clk_event_ddata", i1 false, i1 false}
!53 = !{!"../drivers/clocksource/timer-lpc32xx.c", i32 146, i32 41}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{i64 4016164}
!64 = !{i64 4016582}
!65 = !{i64 2152802442}
!66 = !{i64 2152802960}
