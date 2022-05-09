; ModuleID = '/llk/IR_all_yes/drivers/clocksource/samsung_pwm_timer.c_pt.bc'
source_filename = "../drivers/clocksource/samsung_pwm_timer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+samsung_pwm_lock\22, \22a\22\09"
module asm "\09.weak\09__crc_samsung_pwm_lock\09\09\09\09"
module asm "\09.long\09__crc_samsung_pwm_lock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_samsung_pwm_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22samsung_pwm_lock\22\09\09\09\09\09"
module asm "__kstrtabns_samsung_pwm_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.samsung_pwm_clocksource = type { ptr, ptr, [5 x i32], %struct.samsung_pwm_variant, ptr, i32, i32, i32, i32, i32, i32 }
%struct.samsung_pwm_variant = type { i8, i8, i8, i8, i8 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [124 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.clocksource = type { ptr, i64, i32, i32, i64, i32, i32, i64, ptr, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"samsung_pwm_lock\00", [47 x i8] zeroinitializer }, align 32
@samsung_pwm_lock = dso_local global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_samsung_pwm_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_samsung_pwm_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_samsung_pwm_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @samsung_pwm_lock to i32), ptr @__kstrtab_samsung_pwm_lock, ptr @__kstrtabns_samsung_pwm_lock }, section "___ksymtab+samsung_pwm_lock", align 4
@pwm = internal global { %struct.samsung_pwm_clocksource, [32 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"timers\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to get timers clock for timer\00", [59 x i8] zeroinitializer }, align 32
@__of_table_s3c2410_pwm = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c2410-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s3c2410_pwm_clocksource_init }, section "__timer_of_table", align 4
@__of_table_s3c6400_pwm = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c6400-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s3c64xx_pwm_clocksource_init }, section "__timer_of_table", align 4
@__of_table_s5p6440_pwm = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s5p6440-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s5p64x0_pwm_clocksource_init }, section "__timer_of_table", align 4
@__of_table_s5pc100_pwm = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s5pc100-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s5p_pwm_clocksource_init }, section "__timer_of_table", align 4
@_samsung_pwm_clocksource_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\012failed to find PWM channel for clocksource\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"_samsung_pwm_clocksource_init\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/clocksource/samsung_pwm_timer.c\00", [56 x i8] zeroinitializer }, align 32
@_samsung_pwm_clocksource_init._entry_ptr = internal global ptr @_samsung_pwm_clocksource_init._entry, section ".printk_index", align 4
@_samsung_pwm_clocksource_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\012failed to find PWM channel for clock event\0A\00", [50 x i8] zeroinitializer }, align 32
@_samsung_pwm_clocksource_init._entry_ptr.8 = internal global ptr @_samsung_pwm_clocksource_init._entry.6, section ".printk_index", align 4
@time_event_device = internal global %struct.clock_event_device { ptr null, ptr @samsung_set_next_event, ptr null, i64 0, i64 0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 0, ptr @samsung_set_periodic, ptr @samsung_shutdown, ptr null, ptr @samsung_shutdown, ptr @samsung_shutdown, ptr null, ptr null, ptr @samsung_clockevent_resume, i32 0, i32 0, ptr @.str.12, i32 200, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, [124 x i8] undef }, align 128
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"samsung_time_irq\00", [47 x i8] zeroinitializer }, align 32
@samsung_clockevent_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.5, i32 282, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s: request_irq() failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"samsung_clockevent_init\00", [40 x i8] zeroinitializer }, align 32
@samsung_clockevent_init._entry_ptr = internal global ptr @samsung_clockevent_init._entry, section ".printk_index", align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"samsung_event_timer\00", [44 x i8] zeroinitializer }, align 32
@samsung_clocksource = internal global { %struct.clocksource, [56 x i8] } { %struct.clocksource { ptr @samsung_clocksource_read, i64 0, i32 0, i32 0, i64 0, i32 0, i32 0, i64 0, ptr @.str.13, %struct.list_head zeroinitializer, i32 250, i32 0, i32 0, i32 1, ptr null, ptr null, ptr @samsung_clocksource_suspend, ptr @samsung_clocksource_resume, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"samsung_clocksource_timer\00", [38 x i8] zeroinitializer }, align 32
@s3c24xx_variant = internal constant { %struct.samsung_pwm_variant, [27 x i8] } { %struct.samsung_pwm_variant { i8 16, i8 1, i8 16, i8 0, i8 0 }, [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"samsung,pwm-outputs\00", [44 x i8] zeroinitializer }, align 32
@samsung_pwm_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.5, i32 432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\014%s: invalid channel index in samsung,pwm-outputs property\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"samsung_pwm_alloc\00", [46 x i8] zeroinitializer }, align 32
@samsung_pwm_alloc._entry_ptr = internal global ptr @samsung_pwm_alloc._entry, section ".printk_index", align 4
@samsung_pwm_alloc._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.5, i32 440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: failed to map PWM registers\0A\00", [61 x i8] zeroinitializer }, align 32
@samsung_pwm_alloc._entry_ptr.19 = internal global ptr @samsung_pwm_alloc._entry.17, section ".printk_index", align 4
@samsung_pwm_alloc._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.5, i32 446, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\012failed to get timers clock for timer\0A\00", [56 x i8] zeroinitializer }, align 32
@samsung_pwm_alloc._entry_ptr.22 = internal global ptr @samsung_pwm_alloc._entry.20, section ".printk_index", align 4
@s3c64xx_variant = internal constant { %struct.samsung_pwm_variant, [27 x i8] } { %struct.samsung_pwm_variant { i8 32, i8 0, i8 -32, i8 0, i8 1 }, [27 x i8] zeroinitializer }, align 32
@s5p64x0_variant = internal constant { %struct.samsung_pwm_variant, [27 x i8] } { %struct.samsung_pwm_variant { i8 32, i8 0, i8 0, i8 0, i8 1 }, [27 x i8] zeroinitializer }, align 32
@s5p_variant = internal constant { %struct.samsung_pwm_variant, [27 x i8] } { %struct.samsung_pwm_variant { i8 32, i8 0, i8 32, i8 0, i8 1 }, [27 x i8] zeroinitializer }, align 32
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"samsung_pwm_lock\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 59, i32 1 }
@___asan_gen_.29 = private unnamed_addr constant [4 x i8] c"pwm\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 79, i32 39 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 410, i32 31 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 412, i32 9 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 383, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 391, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 280, i32 31 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 282, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 233, i32 12 }
@___asan_gen_.71 = private unnamed_addr constant [20 x i8] c"samsung_clocksource\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 310, i32 27 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 311, i32 11 }
@___asan_gen_.77 = private unnamed_addr constant [16 x i8] c"s3c24xx_variant\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 467, i32 41 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 430, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 432, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 440, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 446, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant [16 x i8] c"s3c64xx_variant\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 480, i32 41 }
@___asan_gen_.107 = private unnamed_addr constant [16 x i8] c"s5p64x0_variant\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 493, i32 41 }
@___asan_gen_.110 = private unnamed_addr constant [12 x i8] c"s5p_variant\00", align 1
@___asan_gen_.111 = private constant [43 x i8] c"../drivers/clocksource/samsung_pwm_timer.c\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 506, i32 41 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__ksymtab_samsung_pwm_lock, ptr @__of_table_s3c2410_pwm, ptr @__of_table_s3c6400_pwm, ptr @__of_table_s5p6440_pwm, ptr @__of_table_s5pc100_pwm, ptr @_samsung_pwm_clocksource_init._entry, ptr @_samsung_pwm_clocksource_init._entry.6, ptr @_samsung_pwm_clocksource_init._entry_ptr, ptr @_samsung_pwm_clocksource_init._entry_ptr.8, ptr @samsung_clockevent_init._entry, ptr @samsung_clockevent_init._entry_ptr, ptr @samsung_pwm_alloc._entry, ptr @samsung_pwm_alloc._entry.17, ptr @samsung_pwm_alloc._entry.20, ptr @samsung_pwm_alloc._entry_ptr, ptr @samsung_pwm_alloc._entry_ptr.19, ptr @samsung_pwm_alloc._entry_ptr.22, ptr @.str, ptr @samsung_pwm_lock, ptr @pwm, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @samsung_clocksource, ptr @.str.13, ptr @s3c24xx_variant, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @s3c64xx_variant, ptr @s5p64x0_variant, ptr @s5p_variant], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_pwm_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_samsung_pwm_clocksource_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_samsung_pwm_clocksource_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_clockevent_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_clocksource to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_variant to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_pwm_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_pwm_alloc._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_pwm_alloc._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_variant to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p64x0_variant to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_variant to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @samsung_pwm_clocksource_init(ptr noundef %base, ptr nocapture noundef readonly %irqs, ptr nocapture noundef readonly %variant) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %base, ptr @pwm, align 4
  %0 = call ptr @memcpy(ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 3), ptr %variant, i32 5)
  %1 = call ptr @memcpy(ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 2), ptr %irqs, i32 20)
  %call = tail call ptr @clk_get(ptr noundef null, ptr noundef nonnull @.str.1) #7
  store ptr %call, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 4), align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.2) #10
  unreachable

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call fastcc i32 @_samsung_pwm_clocksource_init() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_samsung_pwm_clocksource_init() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 3, i32 3), align 1
  %1 = and i8 %0, 31
  %2 = xor i8 %1, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv2 = zext i8 %2 to i32
  %3 = tail call i32 @llvm.ctlz.i32(i32 %conv2, i1 true) #7, !range !76
  %sub.i.op = xor i32 %3, 31
  store i32 %sub.i.op, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 6), align 4
  %shl = shl nuw i32 1, %sub.i.op
  %4 = trunc i32 %shl to i8
  %5 = xor i8 %4, -1
  %conv8 = and i8 %2, %5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv8)
  %tobool.not.i29 = icmp eq i8 %conv8, 0
  br i1 %tobool.not.i29, label %do.end17, label %if.end20

do.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #12
  br label %cleanup

if.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv9 = zext i8 %conv8 to i32
  %6 = tail call i32 @llvm.ctlz.i32(i32 %conv9, i1 true) #7, !range !76
  %sub.i30.op = xor i32 %6, 31
  store i32 %sub.i30.op, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 5), align 4
  tail call fastcc void @samsung_timer_resources() #11
  tail call fastcc void @samsung_clockevent_init() #11
  %call21 = tail call fastcc i32 @samsung_clocksource_init() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %do.end17, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end17 ], [ %call21, %if.end20 ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c2410_pwm_clocksource_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @samsung_pwm_alloc(ptr noundef %np, ptr noundef nonnull @s3c24xx_variant) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c64xx_pwm_clocksource_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @samsung_pwm_alloc(ptr noundef %np, ptr noundef nonnull @s3c64xx_variant) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p64x0_pwm_clocksource_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @samsung_pwm_alloc(ptr noundef %np, ptr noundef nonnull @s5p64x0_variant) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_pwm_clocksource_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @samsung_pwm_alloc(ptr noundef %np, ptr noundef nonnull @s5p_variant) #11
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @samsung_timer_resources() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 4), align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %0) #7
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %1 = load i8, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 3), align 4
  %conv = zext i8 %1 to i32
  %notmask = shl nsw i32 -1, %conv
  %sub = xor i32 %notmask, -1
  store i32 %sub, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %1)
  %cmp = icmp eq i8 %1, 16
  %. = select i1 %cmp, i32 25, i32 2
  %.4 = select i1 %cmp, i32 2, i32 1
  store i32 %., ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 8), align 4
  store i32 %.4, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 9), align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @samsung_clockevent_init() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 4), align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %0) #7
  %1 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 5), align 4
  %2 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 8), align 4
  %conv = trunc i32 %2 to i16
  tail call fastcc void @samsung_timer_set_prescale(i32 noundef %1, i16 noundef zeroext %conv)
  %3 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 5), align 4
  %4 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 9), align 4
  %conv1 = trunc i32 %4 to i8
  tail call fastcc void @samsung_timer_set_divisor(i32 noundef %3, i8 noundef zeroext %conv1)
  %5 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 8), align 4
  %6 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 9), align 4
  %mul = mul i32 %6, %5
  %div = udiv i32 %call, %mul
  %div2 = udiv i32 %div, 100
  store i32 %div2, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 10), align 4
  store ptr getelementptr inbounds ([33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 1), ptr getelementptr inbounds (%struct.clock_event_device, ptr @time_event_device, i32 0, i32 25), align 4
  %7 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 7), align 4
  tail call void @clockevents_config_and_register(ptr noundef nonnull @time_event_device, i32 noundef %div, i32 noundef 1, i32 noundef %7) #7
  %8 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 5), align 4
  %arrayidx = getelementptr %struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 2, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %10, ptr noundef nonnull @samsung_clock_event_isr, ptr noundef null, i32 noundef 86528, ptr noundef nonnull @.str.9, ptr noundef nonnull @time_event_device) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %11 = load i8, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 3, i32 4), align 4, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not = icmp eq i8 %11, 0
  br i1 %tobool6.not, label %if.end.if.end12_crit_edge, label %if.then7

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %12 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 5), align 4
  %shl = shl nuw i32 1, %12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  tail call void @arm_heavy_mb() #7
  %shl11 = shl i32 %shl, 5
  %or = or i32 %shl11, %shl
  %13 = tail call i32 @llvm.bswap.i32(i32 %or)
  %14 = load ptr, ptr @pwm, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %13) #7, !srcloc !79
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %if.end.if.end12_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @samsung_clocksource_init() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 4), align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %0) #7
  %1 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 6), align 4
  %2 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 8), align 4
  %conv = trunc i32 %2 to i16
  tail call fastcc void @samsung_timer_set_prescale(i32 noundef %1, i16 noundef zeroext %conv)
  %3 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 6), align 4
  %4 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 9), align 4
  %conv1 = trunc i32 %4 to i8
  tail call fastcc void @samsung_timer_set_divisor(i32 noundef %3, i8 noundef zeroext %conv1)
  %5 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 8), align 4
  %6 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 9), align 4
  %7 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 6), align 4
  %8 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 0
  %inc.i = add i32 %7, 1
  %spec.select.i = select i1 %cmp.not.i, i32 0, i32 %inc.i
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @samsung_pwm_lock) #7
  %9 = load ptr, ptr @pwm, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !80
  %mul.i = shl i32 %spec.select.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %spec.select.i)
  %cmp8.i = icmp ult i32 %spec.select.i, 5
  %add11.pn.v.i = select i1 %cmp8.i, i32 3, i32 2
  %add11.pn.i = or i32 %add11.pn.v.i, %mul.i
  %cond.i = shl nuw i32 1, %add11.pn.i
  %shl.i = shl nuw i32 1, %mul.i
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #7
  %or.i = or i32 %cond.i, %shl.i
  %neg.i = xor i32 %or.i, -1
  %and.i = and i32 %11, %neg.i
  %add17.i = or i32 %mul.i, 1
  %shl18.i = shl nuw i32 1, %add17.i
  %or19.i = or i32 %and.i, %shl18.i
  %12 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  %13 = load ptr, ptr @pwm, align 4
  %mul20.i = mul i32 %7, 12
  %add21.i = add i32 %mul20.i, 12
  %add.ptr22.i = getelementptr i8, ptr %13, i32 %add21.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 %12) #7, !srcloc !79
  %14 = load ptr, ptr @pwm, align 4
  %add24.i = add i32 %mul20.i, 16
  %add.ptr25.i = getelementptr i8, ptr %14, i32 %add24.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 %12) #7, !srcloc !79
  %15 = tail call i32 @llvm.bswap.i32(i32 %or19.i) #7
  %16 = load ptr, ptr @pwm, align 4
  %add.ptr26.i = getelementptr i8, ptr %16, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i, i32 %15) #7, !srcloc !79
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @samsung_pwm_lock, i32 noundef %call3.i) #7
  %17 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.not.i11 = icmp eq i32 %17, 0
  %inc.i12 = add i32 %17, 1
  %spec.select.i13 = select i1 %cmp.not.i11, i32 0, i32 %inc.i12
  %call3.i14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @samsung_pwm_lock) #7
  %18 = load ptr, ptr @pwm, align 4
  %add.ptr.i15 = getelementptr i8, ptr %18, i32 8
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15) #7, !srcloc !80
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #7
  %mul.i16 = shl i32 %spec.select.i13, 2
  %add.i = or i32 %mul.i16, 1
  %shl.i17 = shl nuw i32 1, %add.i
  %neg.i18 = xor i32 %shl.i17, -1
  %and.i19 = and i32 %20, %neg.i18
  %shl10.i = shl nuw i32 1, %mul.i16
  %or.i20 = or i32 %and.i19, %shl10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %spec.select.i13)
  %cmp12.i = icmp ult i32 %spec.select.i13, 5
  %add15.pn.v.i = select i1 %cmp12.i, i32 3, i32 2
  %add15.pn.i = or i32 %add15.pn.v.i, %mul.i16
  %cond.i21 = shl nuw i32 1, %add15.pn.i
  %or20.i = or i32 %or.i20, %cond.i21
  %21 = tail call i32 @llvm.bswap.i32(i32 %or20.i) #7
  %22 = load ptr, ptr @pwm, align 4
  %add.ptr36.i = getelementptr i8, ptr %22, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i, i32 %21) #7, !srcloc !79
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @samsung_pwm_lock, i32 noundef %call3.i14) #7
  %23 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %23)
  %cmp = icmp eq i32 %23, 4
  %24 = load ptr, ptr @pwm, align 4
  %mul3 = mul i32 %23, 12
  %add.ptr4 = getelementptr i8, ptr %24, i32 %mul3
  %add.ptr5 = getelementptr i8, ptr %add.ptr4, i32 20
  %add.ptr = getelementptr i8, ptr %24, i32 64
  %storemerge = select i1 %cmp, ptr %add.ptr, ptr %add.ptr5
  store ptr %storemerge, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 1), align 4
  %mul = mul i32 %6, %5
  %div = udiv i32 %call, %mul
  %25 = load i8, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 3), align 4
  %conv6 = zext i8 %25 to i32
  tail call void @sched_clock_register(ptr noundef nonnull @samsung_read_sched_clock, i32 noundef %conv6, i32 noundef %div) #7
  %26 = load i8, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 3), align 4
  %conv7 = zext i8 %26 to i32
  %sub8 = sub nsw i32 64, %conv7
  %sh_prom = zext i32 %sub8 to i64
  %shr = lshr i64 -1, %sh_prom
  store i64 %shr, ptr getelementptr inbounds (%struct.clocksource, ptr @samsung_clocksource, i32 0, i32 1), align 8
  %call.i = tail call i32 @__clocksource_register_scale(ptr noundef nonnull @samsung_clocksource, i32 noundef 1, i32 noundef %div) #7
  ret i32 %call.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @samsung_timer_set_prescale(i32 noundef %channel, i16 noundef zeroext %prescale) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %channel)
  %cmp = icmp ugt i32 %channel, 1
  %spec.select = select i1 %cmp, i32 8, i32 0
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @samsung_pwm_lock) #7
  %0 = load ptr, ptr @pwm, align 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #7, !srcloc !80
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  %shl = shl nuw nsw i32 255, %spec.select
  %neg = xor i32 %shl, -1
  %and = and i32 %2, %neg
  %conv10 = zext i16 %prescale to i32
  %sub = add nsw i32 %conv10, -1
  %shl12 = shl nsw i32 %sub, %spec.select
  %or = or i32 %and, %shl12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void @arm_heavy_mb() #7
  %3 = tail call i32 @llvm.bswap.i32(i32 %or)
  %4 = load ptr, ptr @pwm, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %3) #7, !srcloc !79
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @samsung_pwm_lock, i32 noundef %call3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @samsung_timer_set_divisor(i32 noundef %channel, i8 noundef zeroext %divisor) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = shl i32 %channel, 2
  %conv1 = zext i8 %divisor to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %divisor)
  %tobool.not.i = icmp eq i8 %divisor, 0
  %0 = tail call i32 @llvm.ctlz.i32(i32 %conv1, i1 true) #7, !range !76
  %sub.i = sub nuw nsw i32 32, %0
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %sub.i
  %1 = load i8, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 3, i32 1), align 1
  %conv2 = zext i8 %1 to i32
  %2 = xor i32 %conv2, -1
  %sub3 = add nsw i32 %cond.i, %2
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @samsung_pwm_lock) #7
  %3 = load ptr, ptr @pwm, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !80
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  %conv14 = and i32 %conv, 252
  %shl = shl i32 15, %conv14
  %neg = xor i32 %shl, -1
  %and = and i32 %5, %neg
  %conv15 = and i32 %sub3, 255
  %shl17 = shl i32 %conv15, %conv14
  %or = or i32 %and, %shl17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %or)
  %7 = load ptr, ptr @pwm, align 4
  %add.ptr21 = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %6) #7, !srcloc !79
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @samsung_pwm_lock, i32 noundef %call8) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_clock_event_isr(i32 noundef %irq, ptr noundef %dev_id) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 3, i32 4), align 4, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 5), align 4
  %shl = shl nuw i32 1, %1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  tail call void @arm_heavy_mb() #7
  %shl1 = shl i32 %shl, 5
  %or = or i32 %shl1, %shl
  %2 = tail call i32 @llvm.bswap.i32(i32 %or)
  %3 = load ptr, ptr @pwm, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #7, !srcloc !79
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_id, align 128
  tail call void %5(ptr noundef %dev_id) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_set_next_event(i32 noundef %cycles, ptr nocapture noundef readnone %evt) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cycles)
  %tobool.not = icmp eq i32 %cycles, 0
  %spec.store.select = select i1 %tobool.not, i32 1, i32 %cycles
  %0 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.not.i = icmp eq i32 %0, 0
  %inc.i = add i32 %0, 1
  %spec.select.i = select i1 %cmp.not.i, i32 0, i32 %inc.i
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @samsung_pwm_lock) #7
  %1 = load ptr, ptr @pwm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !80
  %mul.i = shl i32 %spec.select.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %spec.select.i)
  %cmp8.i = icmp ult i32 %spec.select.i, 5
  %add11.pn.v.i = select i1 %cmp8.i, i32 3, i32 2
  %add11.pn.i = or i32 %add11.pn.v.i, %mul.i
  %cond.i = shl nuw i32 1, %add11.pn.i
  %shl.i = shl nuw i32 1, %mul.i
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  %or.i = or i32 %cond.i, %shl.i
  %neg.i = xor i32 %or.i, -1
  %and.i = and i32 %3, %neg.i
  %add17.i = or i32 %mul.i, 1
  %shl18.i = shl nuw i32 1, %add17.i
  %or19.i = or i32 %and.i, %shl18.i
  %4 = tail call i32 @llvm.bswap.i32(i32 %spec.store.select) #7
  %5 = load ptr, ptr @pwm, align 4
  %mul20.i = mul i32 %0, 12
  %add21.i = add i32 %mul20.i, 12
  %add.ptr22.i = getelementptr i8, ptr %5, i32 %add21.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 %4) #7, !srcloc !79
  %6 = load ptr, ptr @pwm, align 4
  %add24.i = add i32 %mul20.i, 16
  %add.ptr25.i = getelementptr i8, ptr %6, i32 %add24.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 %4) #7, !srcloc !79
  %7 = tail call i32 @llvm.bswap.i32(i32 %or19.i) #7
  %8 = load ptr, ptr @pwm, align 4
  %add.ptr26.i = getelementptr i8, ptr %8, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i, i32 %7) #7, !srcloc !79
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @samsung_pwm_lock, i32 noundef %call3.i) #7
  %9 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i2 = icmp eq i32 %9, 0
  %inc.i3 = add i32 %9, 1
  %spec.select.i4 = select i1 %cmp.not.i2, i32 0, i32 %inc.i3
  %call3.i5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @samsung_pwm_lock) #7
  %10 = load ptr, ptr @pwm, align 4
  %add.ptr.i6 = getelementptr i8, ptr %10, i32 8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6) #7, !srcloc !80
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #7
  %mul.i7 = shl i32 %spec.select.i4, 2
  %add.i = or i32 %mul.i7, 1
  %shl.i8 = shl nuw i32 1, %add.i
  %neg.i9 = xor i32 %shl.i8, -1
  %and.i10 = and i32 %12, %neg.i9
  %shl10.i = shl nuw i32 1, %mul.i7
  %or.i11 = or i32 %and.i10, %shl10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %spec.select.i4)
  %cmp12.i = icmp ult i32 %spec.select.i4, 5
  %add15.pn.v.i = select i1 %cmp12.i, i32 3, i32 2
  %add15.pn.i = or i32 %add15.pn.v.i, %mul.i7
  %cond.i12 = shl nuw i32 1, %add15.pn.i
  %neg33.i = xor i32 %cond.i12, -1
  %and34.i = and i32 %or.i11, %neg33.i
  %13 = tail call i32 @llvm.bswap.i32(i32 %and34.i) #7
  %14 = load ptr, ptr @pwm, align 4
  %add.ptr36.i = getelementptr i8, ptr %14, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i, i32 %13) #7, !srcloc !79
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @samsung_pwm_lock, i32 noundef %call3.i5) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_set_periodic(ptr nocapture noundef readnone %evt) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.not.i = icmp eq i32 %0, 0
  %inc.i = shl i32 %0, 2
  %phi.bo.i = add i32 %inc.i, 4
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @samsung_pwm_lock) #7
  %1 = load ptr, ptr @pwm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !80
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  %phi.bo.op.i = shl nuw i32 1, %phi.bo.i
  %phi.bo.op.op.i = xor i32 %phi.bo.op.i, -1
  %neg.i = select i1 %cmp.not.i, i32 -2, i32 %phi.bo.op.op.i
  %and.i = and i32 %3, %neg.i
  %4 = tail call i32 @llvm.bswap.i32(i32 %and.i) #7
  %5 = load ptr, ptr @pwm, align 4
  %add.ptr8.i = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %4) #7, !srcloc !79
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @samsung_pwm_lock, i32 noundef %call3.i) #7
  %6 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 5), align 4
  %7 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 10), align 4
  %sub = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not.i1 = icmp eq i32 %6, 0
  %inc.i2 = add i32 %6, 1
  %spec.select.i = select i1 %cmp.not.i1, i32 0, i32 %inc.i2
  %call3.i3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @samsung_pwm_lock) #7
  %8 = load ptr, ptr @pwm, align 4
  %add.ptr.i4 = getelementptr i8, ptr %8, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4) #7, !srcloc !80
  %mul.i = shl i32 %spec.select.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %spec.select.i)
  %cmp8.i = icmp ult i32 %spec.select.i, 5
  %add11.pn.v.i = select i1 %cmp8.i, i32 3, i32 2
  %add11.pn.i = or i32 %add11.pn.v.i, %mul.i
  %cond.i = shl nuw i32 1, %add11.pn.i
  %shl.i = shl nuw i32 1, %mul.i
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #7
  %or.i = or i32 %cond.i, %shl.i
  %neg.i5 = xor i32 %or.i, -1
  %and.i6 = and i32 %10, %neg.i5
  %add17.i = or i32 %mul.i, 1
  %shl18.i = shl nuw i32 1, %add17.i
  %or19.i = or i32 %and.i6, %shl18.i
  %11 = tail call i32 @llvm.bswap.i32(i32 %sub) #7
  %12 = load ptr, ptr @pwm, align 4
  %mul20.i = mul i32 %6, 12
  %add21.i = add i32 %mul20.i, 12
  %add.ptr22.i = getelementptr i8, ptr %12, i32 %add21.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 %11) #7, !srcloc !79
  %13 = load ptr, ptr @pwm, align 4
  %add24.i = add i32 %mul20.i, 16
  %add.ptr25.i = getelementptr i8, ptr %13, i32 %add24.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 %11) #7, !srcloc !79
  %14 = tail call i32 @llvm.bswap.i32(i32 %or19.i) #7
  %15 = load ptr, ptr @pwm, align 4
  %add.ptr26.i = getelementptr i8, ptr %15, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i, i32 %14) #7, !srcloc !79
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @samsung_pwm_lock, i32 noundef %call3.i3) #7
  %16 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.not.i7 = icmp eq i32 %16, 0
  %inc.i8 = add i32 %16, 1
  %spec.select.i9 = select i1 %cmp.not.i7, i32 0, i32 %inc.i8
  %call3.i10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @samsung_pwm_lock) #7
  %17 = load ptr, ptr @pwm, align 4
  %add.ptr.i11 = getelementptr i8, ptr %17, i32 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11) #7, !srcloc !80
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #7
  %mul.i12 = shl i32 %spec.select.i9, 2
  %add.i = or i32 %mul.i12, 1
  %shl.i13 = shl nuw i32 1, %add.i
  %neg.i14 = xor i32 %shl.i13, -1
  %and.i15 = and i32 %19, %neg.i14
  %shl10.i = shl nuw i32 1, %mul.i12
  %or.i16 = or i32 %and.i15, %shl10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %spec.select.i9)
  %cmp12.i = icmp ult i32 %spec.select.i9, 5
  %add15.pn.v.i = select i1 %cmp12.i, i32 3, i32 2
  %add15.pn.i = or i32 %add15.pn.v.i, %mul.i12
  %cond.i17 = shl nuw i32 1, %add15.pn.i
  %or20.i = or i32 %or.i16, %cond.i17
  %20 = tail call i32 @llvm.bswap.i32(i32 %or20.i) #7
  %21 = load ptr, ptr @pwm, align 4
  %add.ptr36.i = getelementptr i8, ptr %21, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i, i32 %20) #7, !srcloc !79
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @samsung_pwm_lock, i32 noundef %call3.i10) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_shutdown(ptr nocapture noundef readnone %evt) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.not.i = icmp eq i32 %0, 0
  %inc.i = shl i32 %0, 2
  %phi.bo.i = add i32 %inc.i, 4
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @samsung_pwm_lock) #7
  %1 = load ptr, ptr @pwm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !80
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  %phi.bo.op.i = shl nuw i32 1, %phi.bo.i
  %phi.bo.op.op.i = xor i32 %phi.bo.op.i, -1
  %neg.i = select i1 %cmp.not.i, i32 -2, i32 %phi.bo.op.op.i
  %and.i = and i32 %3, %neg.i
  %4 = tail call i32 @llvm.bswap.i32(i32 %and.i) #7
  %5 = load ptr, ptr @pwm, align 4
  %add.ptr8.i = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %4) #7, !srcloc !79
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @samsung_pwm_lock, i32 noundef %call3.i) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @samsung_clockevent_resume(ptr nocapture noundef readnone %cev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 5), align 4
  %1 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 8), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp.i = icmp ugt i32 %0, 1
  %spec.select.i = select i1 %cmp.i, i32 8, i32 0
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @samsung_pwm_lock) #7
  %2 = load ptr, ptr @pwm, align 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #7, !srcloc !80
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  %shl.i = shl nuw nsw i32 255, %spec.select.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %4, %neg.i
  %conv10.i = and i32 %1, 65535
  %sub.i = add nsw i32 %conv10.i, -1
  %shl12.i = shl nsw i32 %sub.i, %spec.select.i
  %or.i = or i32 %and.i, %shl12.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void @arm_heavy_mb() #7
  %5 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %6 = load ptr, ptr @pwm, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %5) #7, !srcloc !79
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @samsung_pwm_lock, i32 noundef %call3.i) #7
  %7 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 5), align 4
  %8 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 9), align 4
  %conv1 = trunc i32 %8 to i8
  %conv.i = shl i32 %7, 2
  %conv1.i = and i32 %8, 255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv1)
  %tobool.not.i.i = icmp eq i8 %conv1, 0
  %9 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i, i1 true) #7, !range !76
  %sub.i.i = sub nuw nsw i32 32, %9
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  %10 = load i8, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 3, i32 1), align 1
  %conv2.i = zext i8 %10 to i32
  %11 = xor i32 %conv2.i, -1
  %sub3.i = add nsw i32 %cond.i.i, %11
  %call8.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @samsung_pwm_lock) #7
  %12 = load ptr, ptr @pwm, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !80
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  %conv14.i = and i32 %conv.i, 252
  %shl.i4 = shl i32 15, %conv14.i
  %neg.i5 = xor i32 %shl.i4, -1
  %and.i6 = and i32 %14, %neg.i5
  %conv15.i = and i32 %sub3.i, 255
  %shl17.i = shl i32 %conv15.i, %conv14.i
  %or.i7 = or i32 %shl17.i, %and.i6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  tail call void @arm_heavy_mb() #7
  %15 = tail call i32 @llvm.bswap.i32(i32 %or.i7) #7
  %16 = load ptr, ptr @pwm, align 4
  %add.ptr21.i = getelementptr i8, ptr %16, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 %15) #7, !srcloc !79
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @samsung_pwm_lock, i32 noundef %call8.i) #7
  %17 = load i8, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 3, i32 4), align 4, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %18 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 5), align 4
  %shl = shl nuw i32 1, %18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %shl2 = shl i32 %shl, 5
  %or = or i32 %shl2, %shl
  %19 = tail call i32 @llvm.bswap.i32(i32 %or)
  %20 = load ptr, ptr @pwm, align 4
  %add.ptr = getelementptr i8, ptr %20, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %19) #7, !srcloc !79
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @samsung_read_sched_clock() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load ptr, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 1), align 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #7, !srcloc !80
  %2 = xor i32 %1, -1
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  %conv.i = zext i32 %3 to i64
  ret i64 %conv.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @samsung_clocksource_read(ptr nocapture noundef readnone %c) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load ptr, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 1), align 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #7, !srcloc !80
  %2 = xor i32 %1, -1
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %conv = zext i32 %3 to i64
  ret i64 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @samsung_clocksource_suspend(ptr nocapture noundef readnone %cs) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.not.i = icmp eq i32 %0, 0
  %inc.i = shl i32 %0, 2
  %phi.bo.i = add i32 %inc.i, 4
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @samsung_pwm_lock) #7
  %1 = load ptr, ptr @pwm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !80
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  %phi.bo.op.i = shl nuw i32 1, %phi.bo.i
  %phi.bo.op.op.i = xor i32 %phi.bo.op.i, -1
  %neg.i = select i1 %cmp.not.i, i32 -2, i32 %phi.bo.op.op.i
  %and.i = and i32 %3, %neg.i
  %4 = tail call i32 @llvm.bswap.i32(i32 %and.i) #7
  %5 = load ptr, ptr @pwm, align 4
  %add.ptr8.i = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %4) #7, !srcloc !79
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @samsung_pwm_lock, i32 noundef %call3.i) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @samsung_clocksource_resume(ptr nocapture noundef readnone %cs) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 6), align 4
  %1 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 8), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp.i = icmp ugt i32 %0, 1
  %spec.select.i = select i1 %cmp.i, i32 8, i32 0
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @samsung_pwm_lock) #7
  %2 = load ptr, ptr @pwm, align 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #7, !srcloc !80
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  %shl.i = shl nuw nsw i32 255, %spec.select.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %4, %neg.i
  %conv10.i = and i32 %1, 65535
  %sub.i = add nsw i32 %conv10.i, -1
  %shl12.i = shl nsw i32 %sub.i, %spec.select.i
  %or.i = or i32 %and.i, %shl12.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void @arm_heavy_mb() #7
  %5 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %6 = load ptr, ptr @pwm, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %5) #7, !srcloc !79
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @samsung_pwm_lock, i32 noundef %call3.i) #7
  %7 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 6), align 4
  %8 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 9), align 4
  %conv1 = trunc i32 %8 to i8
  %conv.i = shl i32 %7, 2
  %conv1.i = and i32 %8, 255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv1)
  %tobool.not.i.i = icmp eq i8 %conv1, 0
  %9 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i, i1 true) #7, !range !76
  %sub.i.i = sub nuw nsw i32 32, %9
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  %10 = load i8, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 3, i32 1), align 1
  %conv2.i = zext i8 %10 to i32
  %11 = xor i32 %conv2.i, -1
  %sub3.i = add nsw i32 %cond.i.i, %11
  %call8.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @samsung_pwm_lock) #7
  %12 = load ptr, ptr @pwm, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !80
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  %conv14.i = and i32 %conv.i, 252
  %shl.i2 = shl i32 15, %conv14.i
  %neg.i3 = xor i32 %shl.i2, -1
  %and.i4 = and i32 %14, %neg.i3
  %conv15.i = and i32 %sub3.i, 255
  %shl17.i = shl i32 %conv15.i, %conv14.i
  %or.i5 = or i32 %shl17.i, %and.i4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  tail call void @arm_heavy_mb() #7
  %15 = tail call i32 @llvm.bswap.i32(i32 %or.i5) #7
  %16 = load ptr, ptr @pwm, align 4
  %add.ptr21.i = getelementptr i8, ptr %16, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 %15) #7, !srcloc !79
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @samsung_pwm_lock, i32 noundef %call8.i) #7
  %17 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 6), align 4
  %18 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.not.i = icmp eq i32 %17, 0
  %inc.i = add i32 %17, 1
  %spec.select.i6 = select i1 %cmp.not.i, i32 0, i32 %inc.i
  %call3.i7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @samsung_pwm_lock) #7
  %19 = load ptr, ptr @pwm, align 4
  %add.ptr.i8 = getelementptr i8, ptr %19, i32 8
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8) #7, !srcloc !80
  %mul.i = shl i32 %spec.select.i6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %spec.select.i6)
  %cmp8.i = icmp ult i32 %spec.select.i6, 5
  %add11.pn.v.i = select i1 %cmp8.i, i32 3, i32 2
  %add11.pn.i = or i32 %add11.pn.v.i, %mul.i
  %cond.i = shl nuw i32 1, %add11.pn.i
  %shl.i9 = shl nuw i32 1, %mul.i
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #7
  %or.i10 = or i32 %cond.i, %shl.i9
  %neg.i11 = xor i32 %or.i10, -1
  %and.i12 = and i32 %21, %neg.i11
  %add17.i = or i32 %mul.i, 1
  %shl18.i = shl nuw i32 1, %add17.i
  %or19.i = or i32 %and.i12, %shl18.i
  %22 = tail call i32 @llvm.bswap.i32(i32 %18) #7
  %23 = load ptr, ptr @pwm, align 4
  %mul20.i = mul i32 %17, 12
  %add21.i = add i32 %mul20.i, 12
  %add.ptr22.i = getelementptr i8, ptr %23, i32 %add21.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 %22) #7, !srcloc !79
  %24 = load ptr, ptr @pwm, align 4
  %add24.i = add i32 %mul20.i, 16
  %add.ptr25.i = getelementptr i8, ptr %24, i32 %add24.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 %22) #7, !srcloc !79
  %25 = tail call i32 @llvm.bswap.i32(i32 %or19.i) #7
  %26 = load ptr, ptr @pwm, align 4
  %add.ptr26.i = getelementptr i8, ptr %26, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i, i32 %25) #7, !srcloc !79
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @samsung_pwm_lock, i32 noundef %call3.i7) #7
  %27 = load i32, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.not.i13 = icmp eq i32 %27, 0
  %inc.i14 = add i32 %27, 1
  %spec.select.i15 = select i1 %cmp.not.i13, i32 0, i32 %inc.i14
  %call3.i16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @samsung_pwm_lock) #7
  %28 = load ptr, ptr @pwm, align 4
  %add.ptr.i17 = getelementptr i8, ptr %28, i32 8
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17) #7, !srcloc !80
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #7
  %mul.i18 = shl i32 %spec.select.i15, 2
  %add.i = or i32 %mul.i18, 1
  %shl.i19 = shl nuw i32 1, %add.i
  %neg.i20 = xor i32 %shl.i19, -1
  %and.i21 = and i32 %30, %neg.i20
  %shl10.i = shl nuw i32 1, %mul.i18
  %or.i22 = or i32 %and.i21, %shl10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %spec.select.i15)
  %cmp12.i = icmp ult i32 %spec.select.i15, 5
  %add15.pn.v.i = select i1 %cmp12.i, i32 3, i32 2
  %add15.pn.i = or i32 %add15.pn.v.i, %mul.i18
  %cond.i23 = shl nuw i32 1, %add15.pn.i
  %or20.i = or i32 %or.i22, %cond.i23
  %31 = tail call i32 @llvm.bswap.i32(i32 %or20.i) #7
  %32 = load ptr, ptr @pwm, align 4
  %add.ptr36.i = getelementptr i8, ptr %32, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i, i32 %31) #7, !srcloc !79
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @samsung_pwm_lock, i32 noundef %call3.i16) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clocksource_register_scale(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @samsung_pwm_alloc(ptr noundef %np, ptr nocapture noundef readonly %variant) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !87
  %1 = call ptr @memcpy(ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 3), ptr %variant, i32 5)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.047 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %call = tail call i32 @irq_of_parse_and_map(ptr noundef %np, i32 noundef %i.047) #7
  %arrayidx = getelementptr %struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 2, i32 %i.047
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.047, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  %call1 = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.14, ptr noundef null) #7
  %call2 = call ptr @of_prop_next_u32(ptr noundef %call1, ptr noundef null, ptr noundef nonnull %val) #7
  %tobool.not48 = icmp eq ptr %call2, null
  br i1 %tobool.not48, label %for.end.for.end10_crit_edge, label %for.end.for.body4_crit_edge

for.end.for.body4_crit_edge:                      ; preds = %for.end
  br label %for.body4

for.end.for.end10_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end10

for.body4:                                        ; preds = %for.inc8.for.body4_crit_edge, %for.end.for.body4_crit_edge
  %cur.049 = phi ptr [ %call9, %for.inc8.for.body4_crit_edge ], [ %call2, %for.end.for.body4_crit_edge ]
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp5 = icmp ugt i32 %4, 4
  br i1 %cmp5, label %do.end, label %if.end

do.end:                                           ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16) #12
  br label %for.inc8

if.end:                                           ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #9
  %shl = shl nuw nsw i32 1, %4
  %5 = load i8, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 3, i32 3), align 1
  %6 = trunc i32 %shl to i8
  %conv7 = or i8 %5, %6
  store i8 %conv7, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 3, i32 3), align 1
  br label %for.inc8

for.inc8:                                         ; preds = %if.end, %do.end
  %call9 = call ptr @of_prop_next_u32(ptr noundef %call1, ptr noundef nonnull %cur.049, ptr noundef nonnull %val) #7
  %tobool.not = icmp eq ptr %call9, null
  br i1 %tobool.not, label %for.inc8.for.end10_crit_edge, label %for.inc8.for.body4_crit_edge

for.inc8.for.body4_crit_edge:                     ; preds = %for.inc8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body4

for.inc8.for.end10_crit_edge:                     ; preds = %for.inc8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end10

for.end10:                                        ; preds = %for.inc8.for.end10_crit_edge, %for.end.for.end10_crit_edge
  %call11 = call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #7
  store ptr %call11, ptr @pwm, align 4
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %do.end16, label %if.end19

do.end16:                                         ; preds = %for.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16) #12
  br label %cleanup

if.end19:                                         ; preds = %for.end10
  %call20 = call ptr @of_clk_get_by_name(ptr noundef %np, ptr noundef nonnull @.str.1) #7
  store ptr %call20, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 4), align 4
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end25, label %if.end29

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #12
  %7 = load ptr, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 4), align 4
  %8 = ptrtoint ptr %7 to i32
  br label %err_clk

if.end29:                                         ; preds = %if.end19
  %call30 = call fastcc i32 @_samsung_pwm_clocksource_init() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end29.cleanup_crit_edge, label %err_clocksource

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err_clocksource:                                  ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %9 = load ptr, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 4), align 4
  call void @clk_put(ptr noundef %9) #7
  store ptr null, ptr getelementptr inbounds (%struct.samsung_pwm_clocksource, ptr @pwm, i32 0, i32 4), align 4
  br label %err_clk

err_clk:                                          ; preds = %err_clocksource, %do.end25
  %ret.0 = phi i32 [ %8, %do.end25 ], [ %call30, %err_clocksource ]
  %10 = load ptr, ptr @pwm, align 4
  call void @iounmap(ptr noundef %10) #7
  store ptr null, ptr @pwm, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_clk, %if.end29.cleanup_crit_edge, %do.end16
  %retval.0 = phi i32 [ %ret.0, %err_clk ], [ -6, %do.end16 ], [ 0, %if.end29.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_u32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold noreturn nounwind }
attributes #11 = { cold }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !27, !28, !29, !31, !33, !34, !35, !36, !38, !40, !42, !44, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !63, !65}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clocksource/samsung_pwm_timer.c", i32 59, i32 1}
!2 = !{ptr @samsung_pwm_lock, !1, !"samsung_pwm_lock", i1 false, i1 false}
!3 = !{ptr @__ksymtab_samsung_pwm_lock, !4, !"__ksymtab_samsung_pwm_lock", i1 false, i1 false}
!4 = !{!"../drivers/clocksource/samsung_pwm_timer.c", i32 60, i32 1}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/clocksource/samsung_pwm_timer.c", i32 410, i32 31}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/clocksource/samsung_pwm_timer.c", i32 412, i32 9}
!9 = !{ptr @__of_table_s3c2410_pwm, !10, !"__of_table_s3c2410_pwm", i1 false, i1 false}
!10 = !{!"../drivers/clocksource/samsung_pwm_timer.c", i32 478, i32 1}
!11 = !{ptr @__of_table_s3c6400_pwm, !12, !"__of_table_s3c6400_pwm", i1 false, i1 false}
!12 = !{!"../drivers/clocksource/samsung_pwm_timer.c", i32 491, i32 1}
!13 = !{ptr @__of_table_s5p6440_pwm, !14, !"__of_table_s5p6440_pwm", i1 false, i1 false}
!14 = !{!"../drivers/clocksource/samsung_pwm_timer.c", i32 504, i32 1}
!15 = !{ptr @__of_table_s5pc100_pwm, !16, !"__of_table_s5pc100_pwm", i1 false, i1 false}
!16 = !{!"../drivers/clocksource/samsung_pwm_timer.c", i32 517, i32 1}
!17 = !{ptr @pwm, !18, !"pwm", i1 false, i1 false}
!18 = !{!"../drivers/clocksource/samsung_pwm_timer.c", i32 79, i32 39}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/clocksource/samsung_pwm_timer.c", i32 383, i32 3}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @_samsung_pwm_clocksource_init._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @_samsung_pwm_clocksource_init._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clocksource/samsung_pwm_timer.c", i32 391, i32 3}
!27 = !{ptr @_samsung_pwm_clocksource_init._entry.6, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @_samsung_pwm_clocksource_init._entry_ptr.8, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/clocksource/samsung_pwm_timer.c", i32 280, i32 31}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clocksource/samsung_pwm_timer.c", i32 282, i32 3}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @samsung_clockevent_init._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @samsung_clockevent_init._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clocksource/samsung_pwm_timer.c", i32 233, i32 12}
!38 = !{ptr @time_event_device, !39, !"time_event_device", i1 false, i1 false}
!39 = !{!"../drivers/clocksource/samsung_pwm_timer.c", i32 232, i32 34}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clocksource/samsung_pwm_timer.c", i32 311, i32 11}
!42 = !{ptr @samsung_clocksource, !43, !"samsung_clocksource", i1 false, i1 false}
!43 = !{!"../drivers/clocksource/samsung_pwm_timer.c", i32 310, i32 27}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clocksource/samsung_pwm_timer.c", i32 430, i32 2}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clocksource/samsung_pwm_timer.c", i32 432, i32 4}
!48 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @samsung_pwm_alloc._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @samsung_pwm_alloc._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/clocksource/samsung_pwm_timer.c", i32 440, i32 3}
!53 = !{ptr @samsung_pwm_alloc._entry.17, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @samsung_pwm_alloc._entry_ptr.19, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/clocksource/samsung_pwm_timer.c", i32 446, i32 3}
!57 = !{ptr @samsung_pwm_alloc._entry.20, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @samsung_pwm_alloc._entry_ptr.22, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @s3c24xx_variant, !60, !"s3c24xx_variant", i1 false, i1 false}
!60 = !{!"../drivers/clocksource/samsung_pwm_timer.c", i32 467, i32 41}
!61 = !{ptr @s3c64xx_variant, !62, !"s3c64xx_variant", i1 false, i1 false}
!62 = !{!"../drivers/clocksource/samsung_pwm_timer.c", i32 480, i32 41}
!63 = !{ptr @s5p64x0_variant, !64, !"s5p64x0_variant", i1 false, i1 false}
!64 = !{!"../drivers/clocksource/samsung_pwm_timer.c", i32 493, i32 41}
!65 = !{ptr @s5p_variant, !66, !"s5p_variant", i1 false, i1 false}
!66 = !{!"../drivers/clocksource/samsung_pwm_timer.c", i32 506, i32 41}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{i32 0, i32 33}
!77 = !{i8 0, i8 2}
!78 = !{i64 2153198669}
!79 = !{i64 4209079}
!80 = !{i64 4209497}
!81 = !{i64 2153190259}
!82 = !{i64 2153190481}
!83 = !{i64 2153191521}
!84 = !{i64 2153191742}
!85 = !{i64 2153196298}
!86 = !{i64 2153195830}
!87 = !{!"auto-init"}
