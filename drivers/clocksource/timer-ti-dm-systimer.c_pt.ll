; ModuleID = '/llk/IR_all_yes/drivers/clocksource/timer-ti-dm-systimer.c_pt.bc'
source_filename = "../drivers/clocksource/timer-ti-dm-systimer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dmtimer_clockevent = type { %struct.clock_event_device, %struct.dmtimer_systimer, i32, [96 x i8] }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [124 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.dmtimer_systimer = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.dmtimer_clocksource = type { %struct.clocksource, %struct.dmtimer_systimer, i32 }
%struct.clocksource = type { ptr, i64, i32, i32, i64, i32, i32, i64, ptr, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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

@__initcall__kmod_timer_ti_dm_systimer__189_685_dmtimer_percpu_timer_startup4 = internal global ptr @dmtimer_percpu_timer_startup, section ".initcall4.init", align 4
@__of_table_systimer_omap2 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap2420-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dmtimer_systimer_init }, section "__timer_of_table", align 4
@__of_table_systimer_omap3 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3430-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dmtimer_systimer_init }, section "__timer_of_table", align 4
@__of_table_systimer_omap4 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4430-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dmtimer_systimer_init }, section "__timer_of_table", align 4
@__of_table_systimer_omap5 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap5430-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dmtimer_systimer_init }, section "__timer_of_table", align 4
@__of_table_systimer_am33x = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am335x-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dmtimer_systimer_init }, section "__timer_of_table", align 4
@__of_table_systimer_am3ms = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am335x-timer-1ms\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dmtimer_systimer_init }, section "__timer_of_table", align 4
@__of_table_systimer_dm814 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dm814-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dmtimer_systimer_init }, section "__timer_of_table", align 4
@__of_table_systimer_dm816 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dm816-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dmtimer_systimer_init }, section "__timer_of_table", align 4
@__pcpu_unique_dmtimer_percpu_timer = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@dmtimer_percpu_timer = weak dso_local global %struct.dmtimer_clockevent zeroinitializer, section ".data..percpu", align 128
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"clockevents/omap/gptimer:starting\00", [62 x i8] zeroinitializer }, align 32
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@clocksource = internal global { i32, [28 x i8] } zeroinitializer, align 32
@clockevent = internal global { i32, [28 x i8] } zeroinitializer, align 32
@dmtimer_systimer_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 822, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s: unable to detect system timers, update dtb?\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dmtimer_systimer_init\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/clocksource/timer-ti-dm-systimer.c\00", [53 x i8] zeroinitializer }, align 32
@dmtimer_systimer_init._entry_ptr = internal global ptr @dmtimer_systimer_init._entry, section ".printk_index", align 4
@counter_32k = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ti,dra7\00", [24 x i8] zeroinitializer }, align 32
@dmtimer_systimer_select_best.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.3, ptr @.str.7, i8 0, i8 80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"timer_ti_dm_systimer\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dmtimer_systimer_select_best\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s: counter_32k: %i clocksource: %08x clockevent: %08x\0A\00", [40 x i8] zeroinitializer }, align 32
@counter_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap-counter32k\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ti,omap3-beagle-ab4\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ti,am43\00", [24 x i8] zeroinitializer }, align 32
@dmtimer_match_table = internal constant { [9 x %struct.of_device_id], [444 x i8] } { [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap2420-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3430-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4430-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap5430-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am335x-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am335x-timer-1ms\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dm814-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dm816-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [444 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ti,timer-alwon\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ti,no-reset-on-init\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ti,no-idle\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ti,timer-secure\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"assigned-clocks\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"assigned-clock-parents\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ti,timer-dsp\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ti,timer-pwm\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dmtimer\00", [24 x i8] zeroinitializer }, align 32
@dmtimer_clocksource_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 789, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016TI gptimer clocksource: %s%pOF\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dmtimer_clocksource_init\00", [39 x i8] zeroinitializer }, align 32
@dmtimer_clocksource_init._entry_ptr = internal global ptr @dmtimer_clocksource_init._entry, section ".printk_index", align 4
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"always-on \00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@dmtimer_sched_clock_counter = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@dmtimer_clocksource_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.20, ptr @.str.3, i32 797, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013Could not register clocksource %pOF\0A\00", [57 x i8] zeroinitializer }, align 32
@dmtimer_clocksource_init._entry_ptr.25 = internal global ptr @dmtimer_clocksource_init._entry.23, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ti,sysc\00", [24 x i8] zeroinitializer }, align 32
@dmtimer_systimer_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 382, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: clock source init failed: %i\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dmtimer_systimer_setup\00", [41 x i8] zeroinitializer }, align 32
@dmtimer_systimer_setup._entry_ptr = internal global ptr @dmtimer_systimer_setup._entry, section ".printk_index", align 4
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fck\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ick\00", [28 x i8] zeroinitializer }, align 32
@dmtimer_systimer_setup.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.28, ptr @.str.3, ptr @.str.31, i8 0, i8 104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dmtimer rev %08x sysc %08x\0A\00", [36 x i8] zeroinitializer }, align 32
@dmtimer_systimer_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013%s failed with %i\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dmtimer_systimer_reset\00", [41 x i8] zeroinitializer }, align 32
@dmtimer_systimer_reset._entry_ptr = internal global ptr @dmtimer_systimer_reset._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@dmtimer_clocksource_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 745, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013could not enable timer fck on resume: %i\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dmtimer_clocksource_resume\00", [37 x i8] zeroinitializer }, align 32
@dmtimer_clocksource_resume._entry_ptr = internal global ptr @dmtimer_clocksource_resume._entry, section ".printk_index", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clockevent\00", [21 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ti,am33xx\00", [22 x i8] zeroinitializer }, align 32
@dmtimer_clkevt_init_common._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 588, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016TI gptimer %s: %s%lu Hz at %pOF\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dmtimer_clkevt_init_common\00", [37 x i8] zeroinitializer }, align 32
@dmtimer_clkevt_init_common._entry_ptr = internal global ptr @dmtimer_clkevt_init_common._entry, section ".printk_index", align 4
@omap_clockevent_unidle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.40, ptr @.str.3, i32 526, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"omap_clockevent_unidle\00", [41 x i8] zeroinitializer }, align 32
@omap_clockevent_unidle._entry_ptr = internal global ptr @omap_clockevent_unidle._entry, section ".printk_index", align 4
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"arm,armv7-timer\00", [16 x i8] zeroinitializer }, align 32
@dmtimer_percpu_quirk_init.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@dmtimer_percpu_quirk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.3, i32 693, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014ARM architected timer wrap issue i940 detected\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dmtimer_percpu_quirk_init\00", [38 x i8] zeroinitializer }, align 32
@dmtimer_percpu_quirk_init._entry_ptr = internal global ptr @dmtimer_percpu_quirk_init._entry, section ".printk_index", align 4
@dmtimer_percpu_timer_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 646, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014Incomplete dtb for percpu dmtimer %pOF\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dmtimer_percpu_timer_init\00", [38 x i8] zeroinitializer }, align 32
@dmtimer_percpu_timer_init._entry_ptr = internal global ptr @dmtimer_percpu_timer_init._entry, section ".printk_index", align 4
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"percpu-dmtimer\00", [17 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1208172544, i64 1208180736]
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 679, i32 7 }
@___asan_gen_.51 = private unnamed_addr constant [12 x i8] c"clocksource\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 30, i32 12 }
@___asan_gen_.54 = private unnamed_addr constant [11 x i8] c"clockevent\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 31, i32 12 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 821, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [12 x i8] c"counter_32k\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 29, i32 12 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 838, i32 31 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 320, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [20 x i8] c"counter_match_table\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 139, i32 34 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 244, i32 31 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 250, i32 31 }
@___asan_gen_.93 = private unnamed_addr constant [20 x i8] c"dmtimer_match_table\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 173, i32 34 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 257, i32 33 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 197, i32 8 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 200, i32 41 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 204, i32 33 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 205, i32 34 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 208, i32 34 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 212, i32 32 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 215, i32 32 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 771, i32 14 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 787, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant [28 x i8] c"dmtimer_sched_clock_counter\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 720, i32 22 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 797, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 368, i32 43 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 382, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 385, i32 53 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 391, i32 53 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 416, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 131, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 745, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 610, i32 28 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 619, i32 31 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 586, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 526, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 691, i32 50 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 693, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 646, i32 3 }
@___asan_gen_.229 = private constant [46 x i8] c"../drivers/clocksource/timer-ti-dm-systimer.c\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 651, i32 26 }
@___asan_gen_.231 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.232 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 108, i32 2 }
@llvm.compiler.used = appending global [81 x ptr] [ptr @__initcall__kmod_timer_ti_dm_systimer__189_685_dmtimer_percpu_timer_startup4, ptr @__of_table_systimer_am33x, ptr @__of_table_systimer_am3ms, ptr @__of_table_systimer_dm814, ptr @__of_table_systimer_dm816, ptr @__of_table_systimer_omap2, ptr @__of_table_systimer_omap3, ptr @__of_table_systimer_omap4, ptr @__of_table_systimer_omap5, ptr @dmtimer_clkevt_init_common._entry, ptr @dmtimer_clkevt_init_common._entry_ptr, ptr @dmtimer_clocksource_init._entry, ptr @dmtimer_clocksource_init._entry.23, ptr @dmtimer_clocksource_init._entry_ptr, ptr @dmtimer_clocksource_init._entry_ptr.25, ptr @dmtimer_clocksource_resume._entry, ptr @dmtimer_clocksource_resume._entry_ptr, ptr @dmtimer_percpu_quirk_init._entry, ptr @dmtimer_percpu_quirk_init._entry_ptr, ptr @dmtimer_percpu_timer_init._entry, ptr @dmtimer_percpu_timer_init._entry_ptr, ptr @dmtimer_systimer_init._entry, ptr @dmtimer_systimer_init._entry_ptr, ptr @dmtimer_systimer_reset._entry, ptr @dmtimer_systimer_reset._entry_ptr, ptr @dmtimer_systimer_setup._entry, ptr @dmtimer_systimer_setup._entry_ptr, ptr @omap_clockevent_unidle._entry, ptr @omap_clockevent_unidle._entry_ptr, ptr @.str, ptr @clocksource, ptr @clockevent, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @counter_32k, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @counter_match_table, ptr @.str.8, ptr @.str.9, ptr @dmtimer_match_table, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @dmtimer_sched_clock_counter, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clocksource to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clockevent to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmtimer_systimer_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @counter_32k to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @counter_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmtimer_match_table to i32), i32 1764, i32 2208, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmtimer_clocksource_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmtimer_sched_clock_counter to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmtimer_clocksource_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmtimer_systimer_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmtimer_systimer_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmtimer_clocksource_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmtimer_clkevt_init_common._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_clockevent_unidle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmtimer_percpu_quirk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmtimer_percpu_timer_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dmtimer_percpu_timer_startup() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__per_cpu_offset to i32))
  %0 = load i32, ptr @__per_cpu_offset, align 4
  %add = add i32 %0, ptrtoint (ptr @dmtimer_percpu_timer to i32)
  %1 = inttoptr i32 %add to ptr
  %sysc = getelementptr inbounds %struct.dmtimer_clockevent, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %sysc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sysc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @__cpuhp_setup_state(i32 noundef 135, ptr noundef nonnull @.str, i1 noundef zeroext true, ptr noundef nonnull @omap_dmtimer_starting_cpu, ptr noundef null, i1 noundef zeroext false) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dmtimer_systimer_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @clocksource, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr @clockevent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.end, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.end:                                           ; preds = %land.lhs.true
  tail call fastcc void @dmtimer_systimer_select_best() #11
  %.pr = load i32, ptr @clocksource, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool2.not = icmp eq i32 %.pr, 0
  br i1 %tobool2.not, label %land.lhs.true3, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

land.lhs.true3:                                   ; preds = %if.end
  %.pr40 = load i32, ptr @clockevent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr40)
  %tobool4.not = icmp eq i32 %.pr40, 0
  br i1 %tobool4.not, label %do.end, label %land.lhs.true3.if.end6_crit_edge

land.lhs.true3.if.end6_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

do.end:                                           ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #12
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true3.if.end6_crit_edge, %if.end.if.end6_crit_edge, %land.lhs.true.if.end6_crit_edge, %entry.if.end6_crit_edge
  %call.i = tail call ptr @__of_get_address(ptr noundef %np, i32 noundef 0, i32 noundef -1, ptr noundef null, ptr noundef null) #8
  %call8 = tail call i64 @of_translate_address(ptr noundef %np, ptr noundef %call.i) #8
  %conv = trunc i64 %call8 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %tobool9.not = icmp eq i32 %conv, 0
  br i1 %tobool9.not, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %2 = load i32, ptr @counter_32k, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp slt i32 %2, 1
  br i1 %cmp, label %land.lhs.true13, label %if.end11.if.end18_crit_edge

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

land.lhs.true13:                                  ; preds = %if.end11
  %3 = load i32, ptr @clocksource, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp14 = icmp eq i32 %3, %conv
  br i1 %cmp14, label %if.then16, label %land.lhs.true13.if.end18_crit_edge

land.lhs.true13.if.end18_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then16:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = tail call fastcc i32 @dmtimer_clocksource_init(ptr noundef %np) #11
  br label %cleanup

if.end18:                                         ; preds = %land.lhs.true13.if.end18_crit_edge, %if.end11.if.end18_crit_edge
  %4 = load i32, ptr @clockevent, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv)
  %cmp19 = icmp eq i32 %4, %conv
  br i1 %cmp19, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %call22 = tail call fastcc i32 @dmtimer_clockevent_init(ptr noundef %np) #11
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %call24 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end23.cleanup_crit_edge, label %if.then26

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %call27 = tail call fastcc i32 @dmtimer_percpu_quirk_init(ptr noundef %np, i32 noundef %conv) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %if.end23.cleanup_crit_edge, %if.then21, %if.then16, %if.end6.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call17, %if.then16 ], [ %call22, %if.then21 ], [ %call27, %if.then26 ], [ -22, %do.end ], [ -22, %if.end6.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_dmtimer_starting_cpu(i32 noundef %cpu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @dmtimer_percpu_timer to i32)
  %2 = inttoptr i32 %add to ptr
  %rate = getelementptr inbounds %struct.dmtimer_clockevent, ptr %2, i32 0, i32 1, i32 12
  %3 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rate, align 4
  tail call void @clockevents_config_and_register(ptr noundef %2, i32 noundef %4, i32 noundef 3, i32 noundef -1) #8
  %irq = getelementptr inbounds %struct.clock_event_device, ptr %2, i32 0, i32 23
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %rem.i = and i32 %cpu, 31
  %add.i = add nuw nsw i32 %rem.i, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %div3.i = lshr i32 %cpu, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  %call4 = tail call i32 @irq_force_affinity(i32 noundef %6, ptr noundef %add.ptr.i) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_force_affinity(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dmtimer_systimer_select_best() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @dmtimer_systimer_check_counter32k() #11
  tail call fastcc void @dmtimer_systimer_assign_alwon() #11
  %0 = load i32, ptr @clockevent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %0)
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call fastcc i32 @dmtimer_systimer_find_first_available() #11
  store i32 %call, ptr @clockevent, align 4
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dmtimer_systimer_select_best.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dmtimer_systimer_select_best, %if.then4)) #8
          to label %do.end [label %if.then4], !srcloc !145

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %1 = load i32, ptr @counter_32k, align 4
  %2 = load i32, ptr @clocksource, align 4
  %3 = load i32, ptr @clockevent, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dmtimer_systimer_select_best.__UNIQUE_ID_ddebug187, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i32 noundef %1, i32 noundef %2, i32 noundef %3) #8
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @of_translate_address(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dmtimer_clocksource_init(ptr noundef %np) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 136) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %t2 = getelementptr inbounds %struct.dmtimer_clocksource, ptr %call7.i.i, i32 0, i32 1
  %call3 = tail call fastcc i32 @dmtimer_systimer_setup(ptr noundef %np, ptr noundef %t2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %err_out_free

if.end6:                                          ; preds = %if.end
  %name = getelementptr inbounds %struct.clocksource, ptr %call7.i.i, i32 0, i32 8
  %1 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str.18, ptr %name, align 8
  %rating = getelementptr inbounds %struct.clocksource, ptr %call7.i.i, i32 0, i32 10
  %2 = ptrtoint ptr %rating to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 300, ptr %rating, align 4
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @dmtimer_clocksource_read_cycles, ptr %call7.i.i, align 8
  %mask = getelementptr inbounds %struct.clocksource, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 4294967295, ptr %mask, align 8
  %flags = getelementptr inbounds %struct.clocksource, ptr %call7.i.i, i32 0, i32 13
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %flags, align 8
  %call7 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end6.if.end10_crit_edge, label %if.then9

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %suspend = getelementptr inbounds %struct.clocksource, ptr %call7.i.i, i32 0, i32 16
  %6 = ptrtoint ptr %suspend to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @dmtimer_clocksource_suspend, ptr %suspend, align 4
  %resume = getelementptr inbounds %struct.clocksource, ptr %call7.i.i, i32 0, i32 17
  %7 = ptrtoint ptr %resume to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @dmtimer_clocksource_resume, ptr %resume, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end6.if.end10_crit_edge
  %8 = ptrtoint ptr %t2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %t2, align 8
  %counter = getelementptr inbounds %struct.dmtimer_clocksource, ptr %call7.i.i, i32 0, i32 1, i32 6
  %10 = ptrtoint ptr %counter to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %counter, align 1
  %conv = zext i8 %11 to i32
  %add.ptr = getelementptr i8, ptr %9, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #8, !srcloc !146
  %12 = ptrtoint ptr %t2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %t2, align 8
  %ctrl = getelementptr inbounds %struct.dmtimer_clocksource, ptr %call7.i.i, i32 0, i32 1, i32 7
  %14 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ctrl, align 2
  %conv12 = zext i8 %15 to i32
  %add.ptr13 = getelementptr i8, ptr %13, i32 %conv12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 50331648) #8, !srcloc !146
  %call14 = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.10, ptr noundef null) #8
  %tobool15.not = icmp eq ptr %call14, null
  %cond = select i1 %tobool15.not, ptr @.str.22, ptr @.str.21
  %parent = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 6
  %16 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent, align 4
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull %cond, ptr noundef %17) #12
  %18 = load ptr, ptr @dmtimer_sched_clock_counter, align 4
  %tobool17.not = icmp eq ptr %18, null
  br i1 %tobool17.not, label %if.then18, label %if.end10.if.end23_crit_edge

if.end10.if.end23_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then18:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %t2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %t2, align 8
  %21 = ptrtoint ptr %counter to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %counter, align 1
  %conv21 = zext i8 %22 to i32
  %add.ptr22 = getelementptr i8, ptr %20, i32 %conv21
  store ptr %add.ptr22, ptr @dmtimer_sched_clock_counter, align 4
  %rate = getelementptr inbounds %struct.dmtimer_clocksource, ptr %call7.i.i, i32 0, i32 1, i32 12
  %23 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rate, align 8
  tail call void @sched_clock_register(ptr noundef nonnull @dmtimer_read_sched_clock, i32 noundef 32, i32 noundef %24) #8
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %if.end10.if.end23_crit_edge
  %rate24 = getelementptr inbounds %struct.dmtimer_clocksource, ptr %call7.i.i, i32 0, i32 1, i32 12
  %25 = ptrtoint ptr %rate24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rate24, align 8
  %call.i = tail call i32 @__clocksource_register_scale(ptr noundef nonnull %call7.i.i, i32 noundef 1, i32 noundef %26) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool26.not = icmp eq i32 %call.i, 0
  br i1 %tobool26.not, label %if.end23.cleanup_crit_edge, label %do.end30

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end30:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %np) #12
  br label %cleanup

err_out_free:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_out_free, %do.end30, %if.end23.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %err_out_free ], [ -12, %entry.cleanup_crit_edge ], [ 0, %do.end30 ], [ 0, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dmtimer_clockevent_init(ptr noundef %np) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 384) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @dmtimer_clkevt_init_common(ptr noundef nonnull %call7.i.i, ptr noundef %np, i32 noundef 3, ptr noundef nonnull @__cpu_possible_mask, ptr noundef nonnull @.str.36, i32 noundef 300) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %err_out_free

if.end4:                                          ; preds = %if.end
  %rate = getelementptr inbounds %struct.dmtimer_clockevent, ptr %call7.i.i, i32 0, i32 1, i32 12
  %1 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rate, align 8
  tail call void @clockevents_config_and_register(ptr noundef nonnull %call7.i.i, i32 noundef %2, i32 noundef 3, i32 noundef -1) #8
  %call5 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.37) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %if.end4.if.then9_crit_edge

if.end4.if.then9_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

lor.lhs.false:                                    ; preds = %if.end4
  %call7 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then9_crit_edge

lor.lhs.false.if.then9_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then9:                                         ; preds = %lor.lhs.false.if.then9_crit_edge, %if.end4.if.then9_crit_edge
  %suspend = getelementptr inbounds %struct.clock_event_device, ptr %call7.i.i, i32 0, i32 17
  %3 = ptrtoint ptr %suspend to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @omap_clockevent_idle, ptr %suspend, align 4
  %resume = getelementptr inbounds %struct.clock_event_device, ptr %call7.i.i, i32 0, i32 18
  %4 = ptrtoint ptr %resume to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @omap_clockevent_unidle, ptr %resume, align 8
  br label %cleanup

err_out_free:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_out_free, %if.then9, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %err_out_free ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then9 ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dmtimer_percpu_quirk_init(ptr noundef %np, i32 noundef %pa) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.41) #8
  %call1 = tail call zeroext i1 @of_device_is_available(ptr noundef %call) #8
  br i1 %call1, label %land.end, label %if.end15

land.end:                                         ; preds = %entry
  %.b26 = load i1, ptr @dmtimer_percpu_quirk_init.__already_done, align 1
  br i1 %.b26, label %land.end.cleanup_crit_edge, label %if.then6, !prof !147

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then6:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dmtimer_percpu_quirk_init.__already_done, align 1
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #12
  br label %cleanup

if.end15:                                         ; preds = %entry
  %0 = zext i32 %pa to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %pa, label %if.end15.cleanup_crit_edge [
    i32 1208172544, label %if.then16
    i32 1208180736, label %if.then19
  ]

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then16:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = tail call fastcc i32 @dmtimer_percpu_timer_init(ptr noundef %np, i32 noundef 0) #11
  br label %cleanup

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %call20 = tail call fastcc i32 @dmtimer_percpu_timer_init(ptr noundef %np, i32 noundef 1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.then16, %if.end15.cleanup_crit_edge, %if.then6, %land.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.then16 ], [ %call20, %if.then19 ], [ 0, %if.then6 ], [ 0, %land.end.cleanup_crit_edge ], [ 0, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dmtimer_systimer_check_counter32k() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @counter_32k, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @counter_match_table, ptr noundef null) #8
  %tobool1.not = icmp eq ptr %call.i, null
  br i1 %tobool1.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  store i32 -19, ptr @counter_32k, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %call.i) #8
  %. = select i1 %call4, i32 1, i32 -19
  store i32 %., ptr @counter_32k, align 4
  tail call void @of_node_put(ptr noundef nonnull %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dmtimer_systimer_assign_alwon() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  store i32 -19, ptr @counter_32k, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call1 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  store i32 -19, ptr @counter_32k, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %call.i = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @dmtimer_match_table, ptr noundef null) #8
  %tobool6.not45 = icmp eq ptr %call.i, null
  br i1 %tobool6.not45, label %if.end4.for.end_crit_edge, label %for.body.lr.ph

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end4
  %tobool.not.not = xor i1 %tobool.not, true
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %np.047 = phi ptr [ %call.i, %for.body.lr.ph ], [ %call.i39, %for.inc.for.body_crit_edge ]
  %pa.046 = phi i32 [ 0, %for.body.lr.ph ], [ %pa.1, %for.inc.for.body_crit_edge ]
  %call7 = tail call fastcc zeroext i1 @dmtimer_is_preferred(ptr noundef nonnull %np.047) #11
  br i1 %call7, label %if.end9, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end9:                                          ; preds = %for.body
  %call.i37 = tail call ptr @of_find_property(ptr noundef nonnull %np.047, ptr noundef nonnull @.str.10, ptr noundef null) #8
  %tobool.i.not = icmp eq ptr %call.i37, null
  br i1 %tobool.i.not, label %if.end9.for.inc_crit_edge, label %if.then11

if.end9.for.inc_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then11:                                        ; preds = %if.end9
  %call.i38 = tail call ptr @__of_get_address(ptr noundef nonnull %np.047, i32 noundef 0, i32 noundef -1, ptr noundef null, ptr noundef null) #8
  %call13 = tail call i64 @of_translate_address(ptr noundef nonnull %np.047, ptr noundef %call.i38) #8
  %conv = trunc i64 %call13 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %tobool14.not = icmp eq i32 %conv, 0
  br i1 %tobool14.not, label %if.then11.for.inc_crit_edge, label %if.then15

if.then11.for.inc_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then15:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1211203584, i32 %conv)
  %cmp = icmp eq i32 %conv, 1211203584
  %or.cond = select i1 %tobool.not.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then15.for.inc_crit_edge, label %cleanup

if.then15.for.inc_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

cleanup:                                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  %conv.le = trunc i64 %call13 to i32
  tail call void @of_node_put(ptr noundef nonnull %np.047) #8
  br label %for.end

for.inc:                                          ; preds = %if.then15.for.inc_crit_edge, %if.then11.for.inc_crit_edge, %if.end9.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %pa.1 = phi i32 [ %pa.046, %if.end9.for.inc_crit_edge ], [ %pa.046, %for.body.for.inc_crit_edge ], [ 1211203584, %if.then15.for.inc_crit_edge ], [ 0, %if.then11.for.inc_crit_edge ]
  %call.i39 = tail call ptr @of_find_matching_node_and_match(ptr noundef nonnull %np.047, ptr noundef nonnull @dmtimer_match_table, ptr noundef null) #8
  %tobool6.not = icmp eq ptr %call.i39, null
  br i1 %tobool6.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup, %if.end4.for.end_crit_edge
  %pa.2 = phi i32 [ %conv.le, %cleanup ], [ 0, %if.end4.for.end_crit_edge ], [ %pa.1, %for.inc.for.end_crit_edge ]
  %0 = load i32, ptr @counter_32k, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %0)
  %cmp24 = icmp sgt i32 %0, -1
  br i1 %cmp24, label %if.then26, label %if.else

if.then26:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  store i32 %pa.2, ptr @clockevent, align 4
  store i32 0, ptr @clocksource, align 4
  br label %if.end27

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  store i32 %pa.2, ptr @clocksource, align 4
  store i32 -1, ptr @clockevent, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then26
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dmtimer_systimer_find_first_available() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @dmtimer_match_table, ptr noundef null) #8
  %tobool.not24 = icmp eq ptr %call.i, null
  br i1 %tobool.not24, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %np.025 = phi ptr [ %call.i22, %for.inc.for.body_crit_edge ], [ %call.i, %entry.for.body_crit_edge ]
  %call1 = tail call fastcc zeroext i1 @dmtimer_is_preferred(ptr noundef nonnull %np.025) #11
  br i1 %call1, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call.i21 = tail call ptr @__of_get_address(ptr noundef nonnull %np.025, i32 noundef 0, i32 noundef -1, ptr noundef null, ptr noundef null) #8
  %call3 = tail call i64 @of_translate_address(ptr noundef nonnull %np.025, ptr noundef %call.i21) #8
  %conv = trunc i64 %call3 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %tobool4.not = icmp eq i32 %conv, 0
  br i1 %tobool4.not, label %if.end.for.inc_crit_edge, label %if.then5

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then5:                                         ; preds = %if.end
  %0 = load i32, ptr @clocksource, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %conv)
  %cmp = icmp eq i32 %0, %conv
  br i1 %cmp, label %if.then5.for.inc_crit_edge, label %lor.lhs.false

if.then5.for.inc_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false:                                    ; preds = %if.then5
  %1 = load i32, ptr @clockevent, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp7 = icmp eq i32 %1, %conv
  br i1 %cmp7, label %lor.lhs.false.for.inc_crit_edge, label %if.end10

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end10:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %conv.le = trunc i64 %call3 to i32
  tail call void @of_node_put(ptr noundef nonnull %np.025) #8
  br label %for.end

for.inc:                                          ; preds = %lor.lhs.false.for.inc_crit_edge, %if.then5.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %call.i22 = tail call ptr @of_find_matching_node_and_match(ptr noundef nonnull %np.025, ptr noundef nonnull @dmtimer_match_table, ptr noundef null) #8
  %tobool.not = icmp eq ptr %call.i22, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end10, %entry.for.end_crit_edge
  %pa.2 = phi i32 [ %conv.le, %if.end10 ], [ 0, %entry.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  ret i32 %pa.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @dmtimer_is_preferred(ptr noundef %np) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @of_device_is_available(ptr noundef %np) #8
  br i1 %call, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 6
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %call.i = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef null) #8
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end3:                                          ; preds = %if.end
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %call.i30 = tail call ptr @of_find_property(ptr noundef %3, ptr noundef nonnull @.str.12, ptr noundef null) #8
  %tobool.i31.not = icmp eq ptr %call.i30, null
  br i1 %tobool.i31.not, label %if.end3.return_crit_edge, label %if.end7

if.end3.return_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end7:                                          ; preds = %if.end3
  %call.i32 = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.13, ptr noundef null) #8
  %tobool.i33.not = icmp eq ptr %call.i32, null
  br i1 %tobool.i33.not, label %if.then9, label %if.end7.if.end16_crit_edge

if.end7.if.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then9:                                         ; preds = %if.end7
  %call.i34 = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.14, ptr noundef null) #8
  %tobool.i35.not = icmp eq ptr %call.i34, null
  br i1 %tobool.i35.not, label %if.then9.return_crit_edge, label %if.end12

if.then9.return_crit_edge:                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end12:                                         ; preds = %if.then9
  %call.i36 = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.15, ptr noundef null) #8
  %tobool.i37.not = icmp eq ptr %call.i36, null
  br i1 %tobool.i37.not, label %if.end12.return_crit_edge, label %if.end12.if.end16_crit_edge

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.end12.return_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end16:                                         ; preds = %if.end12.if.end16_crit_edge, %if.end7.if.end16_crit_edge
  %call.i38 = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.16, ptr noundef null) #8
  %tobool.i39.not = icmp eq ptr %call.i38, null
  br i1 %tobool.i39.not, label %if.end19, label %if.end16.return_crit_edge

if.end16.return_crit_edge:                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end19:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %call.i40 = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.17, ptr noundef null) #8
  %tobool.i41.not = icmp eq ptr %call.i40, null
  br label %return

return:                                           ; preds = %if.end19, %if.end16.return_crit_edge, %if.end12.return_crit_edge, %if.then9.return_crit_edge, %if.end3.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ false, %if.end.return_crit_edge ], [ false, %if.end3.return_crit_edge ], [ false, %if.then9.return_crit_edge ], [ false, %if.end12.return_crit_edge ], [ false, %if.end16.return_crit_edge ], [ %tobool.i41.not, %if.end19 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_get_address(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dmtimer_systimer_setup(ptr noundef %np, ptr noundef %t) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %rate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rate) #8
  %0 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rate, align 4, !annotation !148
  %parent = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 6
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 4
  %call = tail call i32 @of_device_is_compatible(ptr noundef %2, ptr noundef nonnull @.str.26) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #8
  %3 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1, ptr %t, align 4
  %tobool3.not = icmp eq ptr %call1, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @of_clk_set_defaults(ptr noundef %np, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %do.end, label %if.end5.if.end9_crit_edge

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %call6) #12
  br label %if.end9

if.end9:                                          ; preds = %do.end, %if.end5.if.end9_crit_edge
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 4
  %call11 = call fastcc i32 @dmtimer_systimer_init_clock(ptr noundef %t, ptr noundef %5, ptr noundef nonnull @.str.29, ptr noundef nonnull %rate) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end9.err_unmap_crit_edge

if.end9.err_unmap_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_unmap

if.end14:                                         ; preds = %if.end9
  %6 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rate, align 4
  %rate15 = getelementptr inbounds %struct.dmtimer_systimer, ptr %t, i32 0, i32 12
  %8 = ptrtoint ptr %rate15 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %rate15, align 4
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent, align 4
  %call17 = call fastcc i32 @dmtimer_systimer_init_clock(ptr noundef %t, ptr noundef %10, ptr noundef nonnull @.str.30, ptr noundef nonnull %rate) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end14.err_unmap_crit_edge

if.end14.err_unmap_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_unmap

if.end20:                                         ; preds = %if.end14
  %11 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %t, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #8, !srcloc !149
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %14)
  %tobool.not.i = icmp ult i32 %14, 65536
  br i1 %tobool.not.i, label %if.end20.if.end27_crit_edge, label %if.else

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.else:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.end20.if.end27_crit_edge
  %.sink104 = phi i8 [ 40, %if.else ], [ 24, %if.end20.if.end27_crit_edge ]
  %.sink103 = phi i8 [ 44, %if.else ], [ 28, %if.end20.if.end27_crit_edge ]
  %.sink = phi i8 [ 72, %if.else ], [ 52, %if.end20.if.end27_crit_edge ]
  %regbase.0 = phi i8 [ 20, %if.else ], [ 0, %if.end20.if.end27_crit_edge ]
  %15 = getelementptr inbounds %struct.dmtimer_systimer, ptr %t, i32 0, i32 2
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %.sink104, ptr %15, align 1
  %17 = getelementptr inbounds %struct.dmtimer_systimer, ptr %t, i32 0, i32 3
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %.sink103, ptr %17, align 2
  %19 = getelementptr inbounds %struct.dmtimer_systimer, ptr %t, i32 0, i32 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %.sink, ptr %19, align 1
  %sysc = getelementptr inbounds %struct.dmtimer_systimer, ptr %t, i32 0, i32 1
  %21 = ptrtoint ptr %sysc to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 16, ptr %sysc, align 4
  %conv30 = add nuw nsw i8 %regbase.0, 44
  %load = getelementptr inbounds %struct.dmtimer_systimer, ptr %t, i32 0, i32 5
  %22 = ptrtoint ptr %load to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv30, ptr %load, align 4
  %conv33 = or i8 %regbase.0, 40
  %counter = getelementptr inbounds %struct.dmtimer_systimer, ptr %t, i32 0, i32 6
  %23 = ptrtoint ptr %counter to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv33, ptr %counter, align 1
  %conv36 = add nuw nsw i8 %regbase.0, 36
  %ctrl = getelementptr inbounds %struct.dmtimer_systimer, ptr %t, i32 0, i32 7
  %24 = ptrtoint ptr %ctrl to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv36, ptr %ctrl, align 2
  %conv39 = or i8 %regbase.0, 32
  %wakeup = getelementptr inbounds %struct.dmtimer_systimer, ptr %t, i32 0, i32 8
  %25 = ptrtoint ptr %wakeup to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv39, ptr %wakeup, align 1
  %conv42 = or i8 %regbase.0, 64
  %ifctrl = getelementptr inbounds %struct.dmtimer_systimer, ptr %t, i32 0, i32 9
  %26 = ptrtoint ptr %ifctrl to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv42, ptr %ifctrl, align 4
  tail call fastcc void @dmtimer_systimer_reset(ptr noundef %t) #11
  %27 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %t, align 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #8, !srcloc !149
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %30)
  %tobool.not.i.i = icmp ult i32 %30, 65536
  %..i = select i1 %tobool.not.i.i, i32 533, i32 12
  %31 = tail call i32 @llvm.bswap.i32(i32 %..i) #8
  %32 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %t, align 4
  %34 = ptrtoint ptr %sysc to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %sysc, align 4
  %conv.i = zext i8 %35 to i32
  %add.ptr.i = getelementptr i8, ptr %33, i32 %conv.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %31) #8, !srcloc !146
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dmtimer_systimer_setup.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dmtimer_systimer_setup, %if.then50)) #8
          to label %cleanup [label %if.then50], !srcloc !145

if.then50:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %t, align 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #8, !srcloc !149
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %40 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %t, align 4
  %42 = ptrtoint ptr %sysc to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %sysc, align 4
  %conv57 = zext i8 %43 to i32
  %add.ptr = getelementptr i8, ptr %41, i32 %conv57
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !149
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dmtimer_systimer_setup.__UNIQUE_ID_ddebug188, ptr noundef nonnull @.str.31, i32 noundef %39, i32 noundef %45) #8
  br label %cleanup

err_unmap:                                        ; preds = %if.end14.err_unmap_crit_edge, %if.end9.err_unmap_crit_edge
  %error.0 = phi i32 [ %call11, %if.end9.err_unmap_crit_edge ], [ %call17, %if.end14.err_unmap_crit_edge ]
  %46 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %t, align 4
  tail call void @iounmap(ptr noundef %47) #8
  br label %cleanup

cleanup:                                          ; preds = %err_unmap, %if.then50, %if.end27, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %err_unmap ], [ -22, %entry.cleanup_crit_edge ], [ -6, %if.end.cleanup_crit_edge ], [ 0, %if.then50 ], [ 0, %if.end27 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @dmtimer_clocksource_read_cycles(ptr nocapture noundef readonly %cs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %t1 = getelementptr inbounds %struct.dmtimer_clocksource, ptr %cs, i32 0, i32 1
  %0 = ptrtoint ptr %t1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t1, align 4
  %counter = getelementptr inbounds %struct.dmtimer_clocksource, ptr %cs, i32 0, i32 1, i32 6
  %2 = ptrtoint ptr %counter to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %counter, align 1
  %conv = zext i8 %3 to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !149
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %conv3 = zext i32 %5 to i64
  ret i64 %conv3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dmtimer_clocksource_suspend(ptr nocapture noundef %cs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %t1 = getelementptr inbounds %struct.dmtimer_clocksource, ptr %cs, i32 0, i32 1
  %0 = ptrtoint ptr %t1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t1, align 4
  %counter = getelementptr inbounds %struct.dmtimer_clocksource, ptr %cs, i32 0, i32 1, i32 6
  %2 = ptrtoint ptr %counter to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %counter, align 1
  %conv = zext i8 %3 to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !149
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %loadval = getelementptr inbounds %struct.dmtimer_clocksource, ptr %cs, i32 0, i32 2
  %6 = ptrtoint ptr %loadval to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %loadval, align 4
  %7 = ptrtoint ptr %t1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %t1, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !149
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %10)
  %tobool.not.i.i = icmp ult i32 %10, 65536
  br i1 %tobool.not.i.i, label %if.end.i, label %entry.dmtimer_systimer_disable.exit_crit_edge

entry.dmtimer_systimer_disable.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmtimer_systimer_disable.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %t1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %t1, align 4
  %sysc.i = getelementptr inbounds %struct.dmtimer_clocksource, ptr %cs, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %sysc.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sysc.i, align 4
  %conv.i = zext i8 %14 to i32
  %add.ptr.i = getelementptr i8, ptr %12, i32 %conv.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 50331648) #8, !srcloc !146
  br label %dmtimer_systimer_disable.exit

dmtimer_systimer_disable.exit:                    ; preds = %if.end.i, %entry.dmtimer_systimer_disable.exit_crit_edge
  %fck = getelementptr inbounds %struct.dmtimer_clocksource, ptr %cs, i32 0, i32 1, i32 10
  %15 = ptrtoint ptr %fck to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fck, align 4
  tail call void @clk_disable(ptr noundef %16) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dmtimer_clocksource_resume(ptr nocapture noundef readonly %cs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fck = getelementptr inbounds %struct.dmtimer_clocksource, ptr %cs, i32 0, i32 1, i32 10
  %0 = ptrtoint ptr %fck to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fck, align 4
  %call2 = tail call i32 @clk_enable(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %call2) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %t1 = getelementptr inbounds %struct.dmtimer_clocksource, ptr %cs, i32 0, i32 1
  %2 = ptrtoint ptr %t1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %t1, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !149
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %5)
  %tobool.not.i.i = icmp ult i32 %5, 65536
  %..i = select i1 %tobool.not.i.i, i32 533, i32 12
  %6 = tail call i32 @llvm.bswap.i32(i32 %..i) #8
  %7 = ptrtoint ptr %t1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %t1, align 4
  %sysc.i = getelementptr inbounds %struct.dmtimer_clocksource, ptr %cs, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %sysc.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sysc.i, align 4
  %conv.i = zext i8 %10 to i32
  %add.ptr.i = getelementptr i8, ptr %8, i32 %conv.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #8, !srcloc !146
  %loadval = getelementptr inbounds %struct.dmtimer_clocksource, ptr %cs, i32 0, i32 2
  %11 = ptrtoint ptr %loadval to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %loadval, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %14 = ptrtoint ptr %t1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %t1, align 4
  %counter = getelementptr inbounds %struct.dmtimer_clocksource, ptr %cs, i32 0, i32 1, i32 6
  %16 = ptrtoint ptr %counter to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %counter, align 1
  %conv = zext i8 %17 to i32
  %add.ptr = getelementptr i8, ptr %15, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %13) #8, !srcloc !146
  %18 = ptrtoint ptr %t1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %t1, align 4
  %ctrl = getelementptr inbounds %struct.dmtimer_clocksource, ptr %cs, i32 0, i32 1, i32 7
  %20 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ctrl, align 2
  %conv5 = zext i8 %21 to i32
  %add.ptr6 = getelementptr i8, ptr %19, i32 %conv5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 50331648) #8, !srcloc !146
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @dmtimer_read_sched_clock() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load ptr, ptr @dmtimer_sched_clock_counter, align 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #8, !srcloc !149
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %conv = zext i32 %2 to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_set_defaults(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dmtimer_systimer_init_clock(ptr nocapture noundef writeonly %t, ptr noundef %np, ptr noundef %name, ptr nocapture noundef writeonly %rate) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(4) @.str.30, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %call1 = tail call ptr @of_clk_get_by_name(ptr noundef %np, ptr noundef %name) #8
  %cmp = icmp ne ptr %call1, inttoptr (i32 -22 to ptr)
  %tobool.not.not = xor i1 %tobool.not, true
  %brmerge = select i1 %cmp, i1 true, i1 %tobool.not.not
  br i1 %brmerge, label %if.else, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %entry
  %0 = ptrtoint ptr %call1 to i32
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.else.cleanup_crit_edge, label %if.end7

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.else
  %call.i = tail call i32 @clk_prepare(ptr noundef %call1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end7
  %call1.i = tail call i32 @clk_enable(ptr noundef %call1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end11, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %call1) #8
  br label %cleanup

if.end11:                                         ; preds = %if.end.i
  %call12 = tail call i32 @clk_get_rate(ptr noundef %call1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %if.end15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %fck = getelementptr inbounds %struct.dmtimer_systimer, ptr %t, i32 0, i32 10
  %ick = getelementptr inbounds %struct.dmtimer_systimer, ptr %t, i32 0, i32 11
  %fck.sink = select i1 %tobool.not, ptr %ick, ptr %fck
  %1 = ptrtoint ptr %fck.sink to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %fck.sink, align 4
  %2 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call12, ptr %rate, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end11.cleanup_crit_edge, %if.then3.i, %if.end7.cleanup_crit_edge, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ 0, %entry.cleanup_crit_edge ], [ -19, %if.end11.cleanup_crit_edge ], [ %0, %if.else.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dmtimer_systimer_reset(ptr nocapture noundef readonly %t) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !149
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %3)
  %tobool.not.i = icmp ult i32 %3, 65536
  br i1 %tobool.not.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call fastcc i32 @dmtimer_systimer_type1_reset(ptr noundef %t) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call fastcc i32 @dmtimer_systimer_type2_reset(ptr noundef %t) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call1, %if.then ], [ %call2, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp = icmp slt i32 %ret.0, 0
  br i1 %cmp, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef %ret.0) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dmtimer_systimer_type1_reset(ptr nocapture noundef readonly %t) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !149
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %3)
  %tobool.not.i.i = icmp ult i32 %3, 65536
  %..i = select i1 %tobool.not.i.i, i32 533, i32 12
  %4 = tail call i32 @llvm.bswap.i32(i32 %..i) #8
  %5 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %t, align 4
  %sysc.i = getelementptr inbounds %struct.dmtimer_systimer, ptr %t, i32 0, i32 1
  %7 = ptrtoint ptr %sysc.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %sysc.i, align 4
  %conv.i = zext i8 %8 to i32
  %add.ptr.i = getelementptr i8, ptr %6, i32 %conv.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #8, !srcloc !146
  %9 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %t, align 4
  %ifctrl = getelementptr inbounds %struct.dmtimer_systimer, ptr %t, i32 0, i32 9
  %11 = ptrtoint ptr %ifctrl to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ifctrl, align 4
  %conv = zext i8 %12 to i32
  %add.ptr2 = getelementptr i8, ptr %10, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 100663296) #8, !srcloc !146
  %call = tail call i64 @ktime_get() #8
  %add.i = add i64 %call, 100000000
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  %14 = and i32 %13, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not41 = icmp eq i32 %14, 0
  br i1 %tobool.not41, label %entry.land.lhs.true_crit_edge, label %entry.for.end.thread_crit_edge

entry.for.end.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call7 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call7, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call7, %add.i
  br i1 %cmp3.i, label %for.end, label %cond.false

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 21474800) #8
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  %17 = and i32 %16, 16777216
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %cond.false.land.lhs.true_crit_edge, label %cond.false.for.end.thread_crit_edge

cond.false.for.end.thread_crit_edge:              ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

for.end:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !151
  %19 = and i32 %18, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool27.not = icmp eq i32 %19, 0
  %spec.select = select i1 %tobool27.not, i32 -110, i32 0
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end, %cond.false.for.end.thread_crit_edge, %entry.for.end.thread_crit_edge
  %20 = phi i32 [ 0, %entry.for.end.thread_crit_edge ], [ %spec.select, %for.end ], [ 0, %cond.false.for.end.thread_crit_edge ]
  ret i32 %20
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dmtimer_systimer_type2_reset(ptr nocapture noundef readonly %t) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t, align 4
  %sysc1 = getelementptr inbounds %struct.dmtimer_systimer, ptr %t, i32 0, i32 1
  %2 = ptrtoint ptr %sysc1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sysc1, align 4
  %conv = zext i8 %3 to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !149
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %5)
  %tobool.not.i.i = icmp ult i32 %5, 65536
  %..i = select i1 %tobool.not.i.i, i32 533, i32 12
  %6 = tail call i32 @llvm.bswap.i32(i32 %..i) #8
  %7 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %t, align 4
  %9 = ptrtoint ptr %sysc1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sysc1, align 4
  %conv.i = zext i8 %10 to i32
  %add.ptr.i = getelementptr i8, ptr %8, i32 %conv.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #8, !srcloc !146
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !149
  %12 = or i32 %11, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %12) #8, !srcloc !146
  %call2 = tail call i64 @ktime_get() #8
  %add.i = add i64 %call2, 100000000
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  %14 = and i32 %13, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not46 = icmp eq i32 %14, 0
  br i1 %tobool.not46, label %entry.for.end.thread_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.for.end.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call9 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call9, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call9, %add.i
  br i1 %cmp3.i, label %for.end, label %cond.false

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 21474800) #8
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  %17 = and i32 %16, 16777216
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %cond.false.for.end.thread_crit_edge, label %cond.false.land.lhs.true_crit_edge

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

cond.false.for.end.thread_crit_edge:              ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread

for.end:                                          ; preds = %land.lhs.true
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  %19 = and i32 %18, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool29.not = icmp eq i32 %19, 0
  br i1 %tobool29.not, label %for.end.for.end.thread_crit_edge, label %for.end._crit_edge

for.end._crit_edge:                               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %20

for.end.for.end.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.for.end.thread_crit_edge, %cond.false.for.end.thread_crit_edge, %entry.for.end.thread_crit_edge
  br label %20

20:                                               ; preds = %for.end.thread, %for.end._crit_edge
  %21 = phi i32 [ 0, %for.end.thread ], [ -110, %for.end._crit_edge ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clocksource_register_scale(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dmtimer_clkevt_init_common(ptr noundef %clkevt, ptr noundef %np, i32 noundef %features, ptr noundef %cpumask, ptr noundef %name, i32 noundef %rating) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %t1 = getelementptr inbounds %struct.dmtimer_clockevent, ptr %clkevt, i32 0, i32 1
  %features3 = getelementptr inbounds %struct.clock_event_device, ptr %clkevt, i32 0, i32 9
  %0 = ptrtoint ptr %features3 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %features, ptr %features3, align 4
  %rating4 = getelementptr inbounds %struct.clock_event_device, ptr %clkevt, i32 0, i32 22
  %1 = ptrtoint ptr %rating4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %rating, ptr %rating4, align 8
  %set_next_event = getelementptr inbounds %struct.clock_event_device, ptr %clkevt, i32 0, i32 1
  %2 = ptrtoint ptr %set_next_event to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @dmtimer_set_next_event, ptr %set_next_event, align 4
  %set_state_shutdown = getelementptr inbounds %struct.clock_event_device, ptr %clkevt, i32 0, i32 14
  %3 = ptrtoint ptr %set_state_shutdown to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @dmtimer_clockevent_shutdown, ptr %set_state_shutdown, align 8
  %set_state_periodic = getelementptr inbounds %struct.clock_event_device, ptr %clkevt, i32 0, i32 11
  %4 = ptrtoint ptr %set_state_periodic to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @dmtimer_set_periodic, ptr %set_state_periodic, align 4
  %set_state_oneshot = getelementptr inbounds %struct.clock_event_device, ptr %clkevt, i32 0, i32 12
  %5 = ptrtoint ptr %set_state_oneshot to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @dmtimer_clockevent_shutdown, ptr %set_state_oneshot, align 64
  %set_state_oneshot_stopped = getelementptr inbounds %struct.clock_event_device, ptr %clkevt, i32 0, i32 13
  %6 = ptrtoint ptr %set_state_oneshot_stopped to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @dmtimer_clockevent_shutdown, ptr %set_state_oneshot_stopped, align 4
  %tick_resume = getelementptr inbounds %struct.clock_event_device, ptr %clkevt, i32 0, i32 15
  %7 = ptrtoint ptr %tick_resume to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @dmtimer_clockevent_shutdown, ptr %tick_resume, align 4
  %cpumask5 = getelementptr inbounds %struct.clock_event_device, ptr %clkevt, i32 0, i32 25
  %8 = ptrtoint ptr %cpumask5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %cpumask, ptr %cpumask5, align 4
  %call = tail call i32 @irq_of_parse_and_map(ptr noundef %np, i32 noundef 0) #8
  %irq = getelementptr inbounds %struct.clock_event_device, ptr %clkevt, i32 0, i32 23
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call8 = tail call fastcc i32 @dmtimer_systimer_setup(ptr noundef %np, ptr noundef %t1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %rate = getelementptr inbounds %struct.dmtimer_clockevent, ptr %clkevt, i32 0, i32 1, i32 12
  %10 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rate, align 4
  %add = add i32 %11, 50
  %div12 = udiv i32 %add, 100
  %sub = xor i32 %div12, -1
  %period = getelementptr inbounds %struct.dmtimer_clockevent, ptr %clkevt, i32 0, i32 2
  %12 = ptrtoint ptr %period to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub, ptr %period, align 4
  %13 = ptrtoint ptr %t1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %t1, align 4
  %ifctrl = getelementptr inbounds %struct.dmtimer_clockevent, ptr %clkevt, i32 0, i32 1, i32 9
  %15 = ptrtoint ptr %ifctrl to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ifctrl, align 4
  %conv = zext i8 %16 to i32
  %add.ptr = getelementptr i8, ptr %14, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 67108864) #8, !srcloc !146
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %18, ptr noundef nonnull @dmtimer_clockevent_interrupt, ptr noundef null, i32 noundef 82432, ptr noundef %name, ptr noundef %clkevt) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool15.not = icmp eq i32 %call.i, 0
  %19 = ptrtoint ptr %t1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %t1, align 4
  br i1 %tobool15.not, label %if.end17, label %err_out_unmap

if.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %irq_ena = getelementptr inbounds %struct.dmtimer_clockevent, ptr %clkevt, i32 0, i32 1, i32 3
  %21 = ptrtoint ptr %irq_ena to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %irq_ena, align 2
  %conv19 = zext i8 %22 to i32
  %add.ptr20 = getelementptr i8, ptr %20, i32 %conv19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 33554432) #8, !srcloc !146
  %23 = ptrtoint ptr %t1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %t1, align 4
  %wakeup = getelementptr inbounds %struct.dmtimer_clockevent, ptr %clkevt, i32 0, i32 1, i32 8
  %25 = ptrtoint ptr %wakeup to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %wakeup, align 1
  %conv22 = zext i8 %26 to i32
  %add.ptr23 = getelementptr i8, ptr %24, i32 %conv22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 33554432) #8, !srcloc !146
  %call25 = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.10, ptr noundef null) #8
  %tobool26.not = icmp eq ptr %call25, null
  %cond = select i1 %tobool26.not, ptr @.str.22, ptr @.str.21
  %27 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rate, align 4
  %parent = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 6
  %29 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %parent, align 4
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %name, ptr noundef nonnull %cond, i32 noundef %28, ptr noundef %30) #12
  br label %cleanup

err_out_unmap:                                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @iounmap(ptr noundef %20) #8
  br label %cleanup

cleanup:                                          ; preds = %err_out_unmap, %if.end17, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %err_out_unmap ], [ 0, %if.end17 ], [ -6, %entry.cleanup_crit_edge ], [ %call8, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_clockevent_idle(ptr nocapture noundef readonly %evt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %t1 = getelementptr inbounds %struct.dmtimer_clockevent, ptr %evt, i32 0, i32 1
  %0 = ptrtoint ptr %t1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t1, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !149
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %3)
  %tobool.not.i.i = icmp ult i32 %3, 65536
  br i1 %tobool.not.i.i, label %if.end.i, label %entry.dmtimer_systimer_disable.exit_crit_edge

entry.dmtimer_systimer_disable.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmtimer_systimer_disable.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %t1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %t1, align 4
  %sysc.i = getelementptr inbounds %struct.dmtimer_clockevent, ptr %evt, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %sysc.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sysc.i, align 4
  %conv.i = zext i8 %7 to i32
  %add.ptr.i = getelementptr i8, ptr %5, i32 %conv.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 50331648) #8, !srcloc !146
  br label %dmtimer_systimer_disable.exit

dmtimer_systimer_disable.exit:                    ; preds = %if.end.i, %entry.dmtimer_systimer_disable.exit_crit_edge
  %fck = getelementptr inbounds %struct.dmtimer_clockevent, ptr %evt, i32 0, i32 1, i32 10
  %8 = ptrtoint ptr %fck to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fck, align 4
  tail call void @clk_disable(ptr noundef %9) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_clockevent_unidle(ptr nocapture noundef readonly %evt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fck = getelementptr inbounds %struct.dmtimer_clockevent, ptr %evt, i32 0, i32 1, i32 10
  %0 = ptrtoint ptr %fck to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fck, align 4
  %call2 = tail call i32 @clk_enable(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %call2) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %t1 = getelementptr inbounds %struct.dmtimer_clockevent, ptr %evt, i32 0, i32 1
  %2 = ptrtoint ptr %t1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %t1, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !149
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %5)
  %tobool.not.i.i = icmp ult i32 %5, 65536
  %..i = select i1 %tobool.not.i.i, i32 533, i32 12
  %6 = tail call i32 @llvm.bswap.i32(i32 %..i) #8
  %7 = ptrtoint ptr %t1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %t1, align 4
  %sysc.i = getelementptr inbounds %struct.dmtimer_clockevent, ptr %evt, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %sysc.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sysc.i, align 4
  %conv.i = zext i8 %10 to i32
  %add.ptr.i = getelementptr i8, ptr %8, i32 %conv.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #8, !srcloc !146
  %11 = ptrtoint ptr %t1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %t1, align 4
  %irq_ena = getelementptr inbounds %struct.dmtimer_clockevent, ptr %evt, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %irq_ena to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %irq_ena, align 2
  %conv = zext i8 %14 to i32
  %add.ptr = getelementptr i8, ptr %12, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 33554432) #8, !srcloc !146
  %15 = ptrtoint ptr %t1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %t1, align 4
  %wakeup = getelementptr inbounds %struct.dmtimer_clockevent, ptr %evt, i32 0, i32 1, i32 8
  %17 = ptrtoint ptr %wakeup to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %wakeup, align 1
  %conv5 = zext i8 %18 to i32
  %add.ptr6 = getelementptr i8, ptr %16, i32 %conv5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 33554432) #8, !srcloc !146
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmtimer_set_next_event(i32 noundef %cycles, ptr nocapture noundef readonly %evt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %t1 = getelementptr inbounds %struct.dmtimer_clockevent, ptr %evt, i32 0, i32 1
  %0 = ptrtoint ptr %t1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t1, align 4
  %pend2 = getelementptr inbounds %struct.dmtimer_clockevent, ptr %evt, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %pend2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pend2, align 1
  %conv = zext i8 %3 to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !149
  %5 = and i32 %4, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not39 = icmp eq i32 %5, 0
  br i1 %tobool.not39, label %entry.while.end_crit_edge, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  br label %do.end

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !155
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !149
  %7 = and i32 %6, 33554432
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %entry.while.end_crit_edge
  %sub = xor i32 %cycles, -1
  %8 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %9 = ptrtoint ptr %t1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %t1, align 4
  %counter = getelementptr inbounds %struct.dmtimer_clockevent, ptr %evt, i32 0, i32 1, i32 6
  %11 = ptrtoint ptr %counter to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %counter, align 1
  %conv11 = zext i8 %12 to i32
  %add.ptr12 = getelementptr i8, ptr %10, i32 %conv11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %8) #8, !srcloc !146
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !149
  %14 = and i32 %13, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool18.not40 = icmp eq i32 %14, 0
  br i1 %tobool18.not40, label %while.end.while.end29_crit_edge, label %while.end.do.end24_crit_edge

while.end.do.end24_crit_edge:                     ; preds = %while.end
  br label %do.end24

while.end.while.end29_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end29

do.end24:                                         ; preds = %do.end24.do.end24_crit_edge, %while.end.do.end24_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !156
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !157
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !149
  %16 = and i32 %15, 16777216
  %tobool18.not = icmp eq i32 %16, 0
  br i1 %tobool18.not, label %do.end24.while.end29_crit_edge, label %do.end24.do.end24_crit_edge

do.end24.do.end24_crit_edge:                      ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end24

do.end24.while.end29_crit_edge:                   ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end29

while.end29:                                      ; preds = %do.end24.while.end29_crit_edge, %while.end.while.end29_crit_edge
  %17 = ptrtoint ptr %t1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %t1, align 4
  %ctrl = getelementptr inbounds %struct.dmtimer_clockevent, ptr %evt, i32 0, i32 1, i32 7
  %19 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ctrl, align 2
  %conv31 = zext i8 %20 to i32
  %add.ptr32 = getelementptr i8, ptr %18, i32 %conv31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 16777216) #8, !srcloc !146
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmtimer_clockevent_shutdown(ptr nocapture noundef readonly %evt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %t1 = getelementptr inbounds %struct.dmtimer_clockevent, ptr %evt, i32 0, i32 1
  %0 = ptrtoint ptr %t1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t1, align 4
  %ctrl2 = getelementptr inbounds %struct.dmtimer_clockevent, ptr %evt, i32 0, i32 1, i32 7
  %2 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ctrl2, align 2
  %conv = zext i8 %3 to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !149
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and4 = and i32 %5, -2
  %6 = tail call i32 @llvm.bswap.i32(i32 %and4)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #8, !srcloc !146
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !149
  %rate = getelementptr inbounds %struct.dmtimer_clockevent, ptr %evt, i32 0, i32 1, i32 12
  %8 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rate, align 4
  %div = udiv i32 3500000, %9
  %add = add nuw nsw i32 %div, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %10(i32 noundef %add) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %t1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %t1, align 4
  %irq_stat = getelementptr inbounds %struct.dmtimer_clockevent, ptr %evt, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %irq_stat to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %irq_stat, align 1
  %conv22 = zext i8 %14 to i32
  %add.ptr23 = getelementptr i8, ptr %12, i32 %conv22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 33554432) #8, !srcloc !146
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmtimer_set_periodic(ptr nocapture noundef readonly %evt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %t1 = getelementptr inbounds %struct.dmtimer_clockevent, ptr %evt, i32 0, i32 1
  %0 = ptrtoint ptr %t1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t1, align 4
  %pend2 = getelementptr inbounds %struct.dmtimer_clockevent, ptr %evt, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %pend2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pend2, align 1
  %conv = zext i8 %3 to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv
  %ctrl2.i = getelementptr inbounds %struct.dmtimer_clockevent, ptr %evt, i32 0, i32 1, i32 7
  %4 = ptrtoint ptr %ctrl2.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ctrl2.i, align 2
  %conv.i = zext i8 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !149
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  %and.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.dmtimer_clockevent_shutdown.exit_crit_edge, label %if.then.i

entry.dmtimer_clockevent_shutdown.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmtimer_clockevent_shutdown.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and4.i = and i32 %7, -2
  %8 = tail call i32 @llvm.bswap.i32(i32 %and4.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #8, !srcloc !146
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !149
  %rate.i = getelementptr inbounds %struct.dmtimer_clockevent, ptr %evt, i32 0, i32 1, i32 12
  %10 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rate.i, align 4
  %div.i = udiv i32 3500000, %11
  %add.i = add nuw nsw i32 %div.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %12(i32 noundef %add.i) #8
  br label %dmtimer_clockevent_shutdown.exit

dmtimer_clockevent_shutdown.exit:                 ; preds = %if.then.i, %entry.dmtimer_clockevent_shutdown.exit_crit_edge
  %13 = ptrtoint ptr %t1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %t1, align 4
  %irq_stat.i = getelementptr inbounds %struct.dmtimer_clockevent, ptr %evt, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %irq_stat.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %irq_stat.i, align 1
  %conv22.i = zext i8 %16 to i32
  %add.ptr23.i = getelementptr i8, ptr %14, i32 %conv22.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 33554432) #8, !srcloc !146
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !149
  %18 = and i32 %17, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not67 = icmp eq i32 %18, 0
  br i1 %tobool.not67, label %dmtimer_clockevent_shutdown.exit.while.end_crit_edge, label %dmtimer_clockevent_shutdown.exit.do.end_crit_edge

dmtimer_clockevent_shutdown.exit.do.end_crit_edge: ; preds = %dmtimer_clockevent_shutdown.exit
  br label %do.end

dmtimer_clockevent_shutdown.exit.while.end_crit_edge: ; preds = %dmtimer_clockevent_shutdown.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %dmtimer_clockevent_shutdown.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !158
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !159
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !149
  %20 = and i32 %19, 67108864
  %tobool.not = icmp eq i32 %20, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %dmtimer_clockevent_shutdown.exit.while.end_crit_edge
  %period = getelementptr inbounds %struct.dmtimer_clockevent, ptr %evt, i32 0, i32 2
  %21 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %period, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %24 = ptrtoint ptr %t1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %t1, align 4
  %load = getelementptr inbounds %struct.dmtimer_clockevent, ptr %evt, i32 0, i32 1, i32 5
  %26 = ptrtoint ptr %load to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %load, align 4
  %conv12 = zext i8 %27 to i32
  %add.ptr13 = getelementptr i8, ptr %25, i32 %conv12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %23) #8, !srcloc !146
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !149
  %29 = and i32 %28, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool19.not68 = icmp eq i32 %29, 0
  br i1 %tobool19.not68, label %while.end.while.end30_crit_edge, label %while.end.do.end25_crit_edge

while.end.do.end25_crit_edge:                     ; preds = %while.end
  br label %do.end25

while.end.while.end30_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end30

do.end25:                                         ; preds = %do.end25.do.end25_crit_edge, %while.end.do.end25_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !160
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !161
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !149
  %31 = and i32 %30, 33554432
  %tobool19.not = icmp eq i32 %31, 0
  br i1 %tobool19.not, label %do.end25.while.end30_crit_edge, label %do.end25.do.end25_crit_edge

do.end25.do.end25_crit_edge:                      ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end25

do.end25.while.end30_crit_edge:                   ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end30

while.end30:                                      ; preds = %do.end25.while.end30_crit_edge, %while.end.while.end30_crit_edge
  %32 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %period, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %35 = ptrtoint ptr %t1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %t1, align 4
  %counter = getelementptr inbounds %struct.dmtimer_clockevent, ptr %evt, i32 0, i32 1, i32 6
  %37 = ptrtoint ptr %counter to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %counter, align 1
  %conv33 = zext i8 %38 to i32
  %add.ptr34 = getelementptr i8, ptr %36, i32 %conv33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %34) #8, !srcloc !146
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !149
  %40 = and i32 %39, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool40.not69 = icmp eq i32 %40, 0
  br i1 %tobool40.not69, label %while.end30.while.end51_crit_edge, label %while.end30.do.end46_crit_edge

while.end30.do.end46_crit_edge:                   ; preds = %while.end30
  br label %do.end46

while.end30.while.end51_crit_edge:                ; preds = %while.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end51

do.end46:                                         ; preds = %do.end46.do.end46_crit_edge, %while.end30.do.end46_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !162
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !163
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !149
  %42 = and i32 %41, 16777216
  %tobool40.not = icmp eq i32 %42, 0
  br i1 %tobool40.not, label %do.end46.while.end51_crit_edge, label %do.end46.do.end46_crit_edge

do.end46.do.end46_crit_edge:                      ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end46

do.end46.while.end51_crit_edge:                   ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end51

while.end51:                                      ; preds = %do.end46.while.end51_crit_edge, %while.end30.while.end51_crit_edge
  %43 = ptrtoint ptr %t1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %t1, align 4
  %45 = ptrtoint ptr %ctrl2.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %ctrl2.i, align 2
  %conv53 = zext i8 %46 to i32
  %add.ptr54 = getelementptr i8, ptr %44, i32 %conv53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 50331648) #8, !srcloc !146
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmtimer_clockevent_interrupt(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %t1 = getelementptr inbounds %struct.dmtimer_clockevent, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %t1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t1, align 4
  %irq_stat = getelementptr inbounds %struct.dmtimer_clockevent, ptr %data, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %irq_stat to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %irq_stat, align 1
  %conv = zext i8 %3 to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 33554432) #8, !srcloc !146
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 128
  tail call void %5(ptr noundef %data) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dmtimer_percpu_timer_init(ptr noundef %np, i32 noundef %cpu) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %cpu)
  %cmp.not.i.i.i.i = icmp ugt i32 %0, %cpu
  br i1 %cmp.not.i.i.i.i, label %entry.cpu_possible.exit_crit_edge, label %land.rhs.i.i.i.i

entry.cpu_possible.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_possible.exit

land.rhs.i.i.i.i:                                 ; preds = %entry
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_possible.exit_crit_edge, label %if.then.i.i.i.i, !prof !147

land.rhs.i.i.i.i.cpu_possible.exit_crit_edge:     ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_possible.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_possible.exit

cpu_possible.exit:                                ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_possible.exit_crit_edge, %entry.cpu_possible.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__cpu_possible_mask to i32))
  %1 = load volatile i32, ptr @__cpu_possible_mask, align 4
  %and.i.i.i = and i32 %cpu, 31
  %2 = shl nuw i32 1, %and.i.i.i
  %3 = and i32 %1, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not = icmp eq i32 %3, 0
  br i1 %tobool.i.not, label %cpu_possible.exit.cleanup_crit_edge, label %if.end

cpu_possible.exit.cleanup_crit_edge:              ; preds = %cpu_possible.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %cpu_possible.exit
  %parent = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 6
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 4
  %call.i = tail call ptr @of_find_property(ptr noundef %5, ptr noundef nonnull @.str.11, ptr noundef null) #8
  %tobool.i24.not = icmp eq ptr %call.i, null
  br i1 %tobool.i24.not, label %if.end.do.end_crit_edge, label %lor.lhs.false

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 4
  %call.i25 = tail call ptr @of_find_property(ptr noundef %7, ptr noundef nonnull @.str.12, ptr noundef null) #8
  %tobool.i26.not = icmp eq ptr %call.i25, null
  br i1 %tobool.i26.not, label %lor.lhs.false.do.end_crit_edge, label %lor.lhs.false.do.body8_crit_edge

lor.lhs.false.do.body8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body8

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %9) #12
  br label %do.body8

do.body8:                                         ; preds = %do.end, %lor.lhs.false.do.body8_crit_edge
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %add = add i32 %11, ptrtoint (ptr @dmtimer_percpu_timer to i32)
  %12 = inttoptr i32 %add to ptr
  %add.i = add nuw nsw i32 %and.i.i.i, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %div3.i = lshr i32 %cpu, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  %call14 = tail call fastcc i32 @dmtimer_clkevt_init_common(ptr noundef %12, ptr noundef %np, i32 noundef 2, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.46, i32 noundef 500) #11
  br label %cleanup

cleanup:                                          ; preds = %do.body8, %cpu_possible.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %cpu_possible.exit.cleanup_crit_edge ], [ %call14, %do.body8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !23, !25, !26, !27, !28, !29, !31, !33, !35, !37, !38, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !71, !72, !73, !74, !75, !77, !78, !79, !81, !83, !84, !85, !86, !88, !90, !92, !93, !95, !96, !97, !98, !100, !101, !102, !103, !105, !107, !109, !111, !112, !113, !114, !116, !117, !118, !120, !122, !123, !124, !125, !126, !128, !129, !130, !131, !133, !135}
!llvm.module.flags = !{!136, !137, !138, !139, !140, !141, !142, !143}
!llvm.ident = !{!144}

!0 = !{ptr @__initcall__kmod_timer_ti_dm_systimer__189_685_dmtimer_percpu_timer_startup4, !1, !"__initcall__kmod_timer_ti_dm_systimer__189_685_dmtimer_percpu_timer_startup4", i1 false, i1 false}
!1 = !{!"../drivers/clocksource/timer-ti-dm-systimer.c", i32 685, i32 1}
!2 = !{ptr @__of_table_systimer_omap2, !3, !"__of_table_systimer_omap2", i1 false, i1 false}
!3 = !{!"../drivers/clocksource/timer-ti-dm-systimer.c", i32 844, i32 1}
!4 = !{ptr @__of_table_systimer_omap3, !5, !"__of_table_systimer_omap3", i1 false, i1 false}
!5 = !{!"../drivers/clocksource/timer-ti-dm-systimer.c", i32 845, i32 1}
!6 = !{ptr @__of_table_systimer_omap4, !7, !"__of_table_systimer_omap4", i1 false, i1 false}
!7 = !{!"../drivers/clocksource/timer-ti-dm-systimer.c", i32 846, i32 1}
!8 = !{ptr @__of_table_systimer_omap5, !9, !"__of_table_systimer_omap5", i1 false, i1 false}
!9 = !{!"../drivers/clocksource/timer-ti-dm-systimer.c", i32 847, i32 1}
!10 = !{ptr @__of_table_systimer_am33x, !11, !"__of_table_systimer_am33x", i1 false, i1 false}
!11 = !{!"../drivers/clocksource/timer-ti-dm-systimer.c", i32 848, i32 1}
!12 = !{ptr @__of_table_systimer_am3ms, !13, !"__of_table_systimer_am3ms", i1 false, i1 false}
!13 = !{!"../drivers/clocksource/timer-ti-dm-systimer.c", i32 849, i32 1}
!14 = !{ptr @__of_table_systimer_dm814, !15, !"__of_table_systimer_dm814", i1 false, i1 false}
!15 = !{!"../drivers/clocksource/timer-ti-dm-systimer.c", i32 850, i32 1}
!16 = !{ptr @__of_table_systimer_dm816, !17, !"__of_table_systimer_dm816", i1 false, i1 false}
!17 = !{!"../drivers/clocksource/timer-ti-dm-systimer.c", i32 851, i32 1}
!18 = !{ptr @__pcpu_unique_dmtimer_percpu_timer, !19, !"__pcpu_unique_dmtimer_percpu_timer", i1 false, i1 false}
!19 = !{!"../drivers/clocksource/timer-ti-dm-systimer.c", i32 634, i32 8}
!20 = !{ptr @dmtimer_percpu_timer, !19, !"dmtimer_percpu_timer", i1 false, i1 false}
!21 = !{ptr @.str, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clocksource/timer-ti-dm-systimer.c", i32 679, i32 7}
!23 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/clocksource/timer-ti-dm-systimer.c", i32 821, i32 3}
!25 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @dmtimer_systimer_init._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @dmtimer_systimer_init._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/clocksource/timer-ti-dm-systimer.c", i32 838, i32 31}
!31 = !{ptr @clocksource, !32, !"clocksource", i1 false, i1 false}
!32 = !{!"../drivers/clocksource/timer-ti-dm-systimer.c", i32 30, i32 12}
!33 = !{ptr @clockevent, !34, !"clockevent", i1 false, i1 false}
!34 = !{!"../drivers/clocksource/timer-ti-dm-systimer.c", i32 31, i32 12}
!35 = !{ptr @.str.5, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clocksource/timer-ti-dm-systimer.c", i32 320, i32 2}
!37 = !{ptr @.str.6, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @dmtimer_systimer_select_best.__UNIQUE_ID_ddebug187, !36, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!40 = !{ptr @counter_match_table, !41, !"counter_match_table", i1 false, i1 false}
!41 = !{!"../drivers/clocksource/timer-ti-dm-systimer.c", i32 139, i32 34}
!42 = !{ptr @.str.8, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clocksource/timer-ti-dm-systimer.c", i32 244, i32 31}
!44 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clocksource/timer-ti-dm-systimer.c", i32 250, i32 31}
!46 = !{ptr @.str.10, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clocksource/timer-ti-dm-systimer.c", i32 257, i32 33}
!48 = !{ptr @dmtimer_match_table, !49, !"dmtimer_match_table", i1 false, i1 false}
!49 = !{!"../drivers/clocksource/timer-ti-dm-systimer.c", i32 173, i32 34}
!50 = !{ptr @.str.11, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clocksource/timer-ti-dm-systimer.c", i32 197, i32 8}
!52 = !{ptr @.str.12, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clocksource/timer-ti-dm-systimer.c", i32 200, i32 41}
!54 = !{ptr @.str.13, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clocksource/timer-ti-dm-systimer.c", i32 204, i32 33}
!56 = !{ptr @.str.14, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clocksource/timer-ti-dm-systimer.c", i32 205, i32 34}
!58 = !{ptr @.str.15, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clocksource/timer-ti-dm-systimer.c", i32 208, i32 34}
!60 = !{ptr @.str.16, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clocksource/timer-ti-dm-systimer.c", i32 212, i32 32}
!62 = !{ptr @.str.17, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/clocksource/timer-ti-dm-systimer.c", i32 215, i32 32}
!64 = !{ptr @counter_32k, !65, !"counter_32k", i1 false, i1 false}
!65 = !{!"../drivers/clocksource/timer-ti-dm-systimer.c", i32 29, i32 12}
!66 = !{ptr @.str.18, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clocksource/timer-ti-dm-systimer.c", i32 771, i32 14}
!68 = !{ptr @.str.19, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clocksource/timer-ti-dm-systimer.c", i32 787, i32 2}
!70 = !{ptr @.str.20, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @dmtimer_clocksource_init._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @dmtimer_clocksource_init._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.21, !69, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.22, !69, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.24, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/clocksource/timer-ti-dm-systimer.c", i32 797, i32 3}
!77 = !{ptr @dmtimer_clocksource_init._entry.23, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @dmtimer_clocksource_init._entry_ptr.25, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.26, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/clocksource/timer-ti-dm-systimer.c", i32 368, i32 43}
!81 = !{ptr @.str.27, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/clocksource/timer-ti-dm-systimer.c", i32 382, i32 3}
!83 = !{ptr @.str.28, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @dmtimer_systimer_setup._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @dmtimer_systimer_setup._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.29, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clocksource/timer-ti-dm-systimer.c", i32 385, i32 53}
!88 = !{ptr @.str.30, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clocksource/timer-ti-dm-systimer.c", i32 391, i32 53}
!90 = !{ptr @.str.31, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/clocksource/timer-ti-dm-systimer.c", i32 416, i32 2}
!92 = !{ptr @dmtimer_systimer_setup.__UNIQUE_ID_ddebug188, !91, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!93 = !{ptr @.str.32, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/clocksource/timer-ti-dm-systimer.c", i32 131, i32 3}
!95 = !{ptr @.str.33, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @dmtimer_systimer_reset._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @dmtimer_systimer_reset._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.34, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/clocksource/timer-ti-dm-systimer.c", i32 745, i32 3}
!100 = !{ptr @.str.35, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @dmtimer_clocksource_resume._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @dmtimer_clocksource_resume._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @dmtimer_sched_clock_counter, !104, !"dmtimer_sched_clock_counter", i1 false, i1 false}
!104 = !{!"../drivers/clocksource/timer-ti-dm-systimer.c", i32 720, i32 22}
!105 = !{ptr @.str.36, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/clocksource/timer-ti-dm-systimer.c", i32 610, i32 28}
!107 = !{ptr @.str.37, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/clocksource/timer-ti-dm-systimer.c", i32 619, i32 31}
!109 = !{ptr @.str.38, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/clocksource/timer-ti-dm-systimer.c", i32 586, i32 2}
!111 = !{ptr @.str.39, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @dmtimer_clkevt_init_common._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @dmtimer_clkevt_init_common._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.40, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/clocksource/timer-ti-dm-systimer.c", i32 526, i32 3}
!116 = !{ptr @omap_clockevent_unidle._entry, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @omap_clockevent_unidle._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.41, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/clocksource/timer-ti-dm-systimer.c", i32 691, i32 50}
!120 = distinct !{null, !121, !"__already_done", i1 false, i1 false}
!121 = !{!"../drivers/clocksource/timer-ti-dm-systimer.c", i32 693, i32 3}
!122 = !{ptr @.str.42, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.43, !121, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @dmtimer_percpu_quirk_init._entry, !121, !"_entry", i1 false, i1 false}
!125 = !{ptr @dmtimer_percpu_quirk_init._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.44, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/clocksource/timer-ti-dm-systimer.c", i32 646, i32 3}
!128 = !{ptr @.str.45, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @dmtimer_percpu_timer_init._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @dmtimer_percpu_timer_init._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.46, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/clocksource/timer-ti-dm-systimer.c", i32 651, i32 26}
!133 = distinct !{null, !134, !"__already_done", i1 false, i1 false}
!134 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!135 = !{ptr @.str.47, !134, !"<string literal>", i1 false, i1 false}
!136 = !{i32 1, !"wchar_size", i32 2}
!137 = !{i32 1, !"min_enum_size", i32 4}
!138 = !{i32 8, !"branch-target-enforcement", i32 0}
!139 = !{i32 8, !"sign-return-address", i32 0}
!140 = !{i32 8, !"sign-return-address-all", i32 0}
!141 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!142 = !{i32 7, !"uwtable", i32 1}
!143 = !{i32 7, !"frame-pointer", i32 2}
!144 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!145 = !{i64 2148742179, i64 2148742184, i64 2148742197, i64 2148742241, i64 2148742275, i64 2148742296}
!146 = !{i64 4022665}
!147 = !{!"branch_weights", i32 2000, i32 1}
!148 = !{!"auto-init"}
!149 = !{i64 4023083}
!150 = !{i64 2153249831}
!151 = !{i64 2153250265}
!152 = !{i64 2153253520}
!153 = !{i64 2153253954}
!154 = !{i64 2153271745}
!155 = !{i64 2153271587}
!156 = !{i64 2153272537}
!157 = !{i64 2153272379}
!158 = !{i64 2153274965}
!159 = !{i64 2153274807}
!160 = !{i64 2153275739}
!161 = !{i64 2153275581}
!162 = !{i64 2153276516}
!163 = !{i64 2153276358}
