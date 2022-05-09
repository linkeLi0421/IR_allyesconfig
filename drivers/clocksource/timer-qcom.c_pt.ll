; ModuleID = '/llk/IR_all_yes/drivers/clocksource/timer-qcom.c_pt.bc'
source_filename = "../drivers/clocksource/timer-qcom.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clocksource = type { ptr, i64, i32, i32, i64, i32, i32, i64, ptr, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.delay_timer = type { ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [124 x i8] }

@__of_table_kpss_timer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,kpss-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm_dt_timer_init }, section "__timer_of_table", align 4
@__of_table_scss_timer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,scss-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm_dt_timer_init }, section "__timer_of_table", align 4
@msm_dt_timer_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013Failed to map event base\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"msm_dt_timer_init\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/clocksource/timer-qcom.c\00", [63 x i8] zeroinitializer }, align 32
@msm_dt_timer_init._entry_ptr = internal global ptr @msm_dt_timer_init._entry, section ".printk_index", align 4
@msm_dt_timer_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\013Can't get irq\0A\00", [47 x i8] zeroinitializer }, align 32
@msm_dt_timer_init._entry_ptr.5 = internal global ptr @msm_dt_timer_init._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cpu-offset\00", [21 x i8] zeroinitializer }, align 32
@msm_dt_timer_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013Failed to parse DGT resource\0A\00", [32 x i8] zeroinitializer }, align 32
@msm_dt_timer_init._entry_ptr.9 = internal global ptr @msm_dt_timer_init._entry.7, section ".printk_index", align 4
@msm_dt_timer_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013Failed to map source base\0A\00", [35 x i8] zeroinitializer }, align 32
@msm_dt_timer_init._entry_ptr.12 = internal global ptr @msm_dt_timer_init._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@msm_dt_timer_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013Unknown frequency\0A\00", [43 x i8] zeroinitializer }, align 32
@msm_dt_timer_init._entry_ptr.16 = internal global ptr @msm_dt_timer_init._entry.14, section ".printk_index", align 4
@event_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@sts_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@source_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@msm_clocksource = internal global { %struct.clocksource, [56 x i8] } { %struct.clocksource { ptr @msm_read_timer_count, i64 4294967295, i32 0, i32 0, i64 0, i32 0, i32 0, i64 0, ptr @.str.27, %struct.list_head zeroinitializer, i32 300, i32 0, i32 0, i32 1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@msm_timer_irq = internal global { i32, [28 x i8] } zeroinitializer, align 32
@msm_timer_has_ppi = internal global { i32, [28 x i8] } zeroinitializer, align 32
@msm_evt = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@msm_timer_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013memory allocation failed for clockevents\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"msm_timer_init\00", [17 x i8] zeroinitializer }, align 32
@msm_timer_init._entry_ptr = internal global ptr @msm_timer_init._entry, section ".printk_index", align 4
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gp_timer\00", [23 x i8] zeroinitializer }, align 32
@msm_timer_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.18, ptr @.str.2, i32 172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013request_percpu_irq failed\0A\00", [35 x i8] zeroinitializer }, align 32
@msm_timer_init._entry_ptr.22 = internal global ptr @msm_timer_init._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"clockevents/qcom/timer:starting\00", [32 x i8] zeroinitializer }, align 32
@msm_timer_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.18, ptr @.str.2, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013clocksource_register failed\0A\00", [33 x i8] zeroinitializer }, align 32
@msm_timer_init._entry_ptr.26 = internal global ptr @msm_timer_init._entry.24, section ".printk_index", align 4
@msm_delay_timer = internal global { %struct.delay_timer, [24 x i8] } { %struct.delay_timer { ptr @msm_read_current_timer, i32 0 }, [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dg_timer\00", [23 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"msm_timer\00", [22 x i8] zeroinitializer }, align 32
@msm_local_timer_starting_cpu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013request_irq failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"msm_local_timer_starting_cpu\00", [35 x i8] zeroinitializer }, align 32
@msm_local_timer_starting_cpu._entry_ptr = internal global ptr @msm_local_timer_starting_cpu._entry, section ".printk_index", align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 208, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 215, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 220, i32 31 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 225, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 231, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 235, i32 31 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 236, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [11 x i8] c"event_base\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 34, i32 22 }
@___asan_gen_.76 = private unnamed_addr constant [9 x i8] c"sts_base\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 35, i32 22 }
@___asan_gen_.79 = private unnamed_addr constant [12 x i8] c"source_base\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 81, i32 22 }
@___asan_gen_.82 = private unnamed_addr constant [16 x i8] c"msm_clocksource\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 88, i32 27 }
@___asan_gen_.85 = private unnamed_addr constant [14 x i8] c"msm_timer_irq\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 96, i32 12 }
@___asan_gen_.88 = private unnamed_addr constant [18 x i8] c"msm_timer_has_ppi\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 97, i32 12 }
@___asan_gen_.91 = private unnamed_addr constant [8 x i8] c"msm_evt\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 79, i32 44 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 163, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 169, i32 7 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 172, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 176, i32 6 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 189, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant [16 x i8] c"msm_delay_timer\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 148, i32 27 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 89, i32 10 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 105, i32 14 }
@___asan_gen_.130 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.137 = private constant [36 x i8] c"../drivers/clocksource/timer-qcom.c\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 123, i32 4 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__of_table_kpss_timer, ptr @__of_table_scss_timer, ptr @msm_dt_timer_init._entry, ptr @msm_dt_timer_init._entry.10, ptr @msm_dt_timer_init._entry.14, ptr @msm_dt_timer_init._entry.3, ptr @msm_dt_timer_init._entry.7, ptr @msm_dt_timer_init._entry_ptr, ptr @msm_dt_timer_init._entry_ptr.12, ptr @msm_dt_timer_init._entry_ptr.16, ptr @msm_dt_timer_init._entry_ptr.5, ptr @msm_dt_timer_init._entry_ptr.9, ptr @msm_local_timer_starting_cpu._entry, ptr @msm_local_timer_starting_cpu._entry_ptr, ptr @msm_timer_init._entry, ptr @msm_timer_init._entry.20, ptr @msm_timer_init._entry.24, ptr @msm_timer_init._entry_ptr, ptr @msm_timer_init._entry_ptr.22, ptr @msm_timer_init._entry_ptr.26, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @event_base, ptr @sts_base, ptr @source_base, ptr @msm_clocksource, ptr @msm_timer_irq, ptr @msm_timer_has_ppi, ptr @msm_evt, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @msm_delay_timer, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_dt_timer_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_dt_timer_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_dt_timer_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_dt_timer_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_dt_timer_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sts_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @source_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_clocksource to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_timer_irq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_timer_has_ppi to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_evt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_timer_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_timer_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_timer_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_delay_timer to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_local_timer_starting_cpu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_dt_timer_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  %freq = alloca i32, align 4
  %res = alloca %struct.resource, align 4
  %percpu_offset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %freq) #7
  %0 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %freq, align 4, !annotation !81
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #7
  %1 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %2 = call ptr @memset(ptr %res, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %percpu_offset) #7
  %3 = ptrtoint ptr %percpu_offset to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %percpu_offset, align 4, !annotation !81
  %call = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @irq_of_parse_and_map(ptr noundef %np, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2)
  %cmp = icmp slt i32 %call2, 1
  br i1 %cmp, label %do.end6, label %if.end9

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.6, ptr noundef nonnull %percpu_offset, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool11.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool11.not, label %if.end9.if.end13_crit_edge, label %if.then12

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %percpu_offset to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %percpu_offset, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end9.if.end13_crit_edge
  %call14 = call i32 @of_address_to_resource(ptr noundef %np, i32 noundef 0, ptr noundef nonnull %res) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end22, label %do.end19

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #10
  br label %cleanup

if.end22:                                         ; preds = %if.end13
  %5 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %res, align 4
  %7 = ptrtoint ptr %percpu_offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %percpu_offset, align 4
  %add = add i32 %8, %6
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 4
  %sub.i = sub i32 1, %6
  %add.i = add i32 %sub.i, %10
  %call24 = call ptr @ioremap(i32 noundef %add, i32 noundef %add.i) #7
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %do.end29, label %if.end32

do.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #10
  br label %cleanup

if.end32:                                         ; preds = %if.end22
  %call.i.i64 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.13, ptr noundef nonnull %freq, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i64)
  %tobool34.not = icmp sgt i32 %call.i.i64, -1
  br i1 %tobool34.not, label %if.end41, label %do.end38

do.end38:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #10
  br label %cleanup

if.end41:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %call, i32 4
  store ptr %add.ptr, ptr @event_base, align 4
  %add.ptr42 = getelementptr i8, ptr %call, i32 136
  store ptr %add.ptr42, ptr @sts_base, align 4
  %add.ptr43 = getelementptr i8, ptr %call24, i32 36
  store ptr %add.ptr43, ptr @source_base, align 4
  %11 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %freq, align 4
  %div63 = lshr i32 %12, 2
  store i32 %div63, ptr %freq, align 4
  %add.ptr44 = getelementptr i8, ptr %call24, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 50331648) #7, !srcloc !82
  %13 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %freq, align 4
  %15 = ptrtoint ptr %percpu_offset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %percpu_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool45 = icmp ne i32 %16, 0
  %call47 = call fastcc i32 @msm_timer_init(i32 noundef %14, i32 noundef %call2, i1 noundef zeroext %tobool45) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %do.end38, %do.end29, %do.end19, %do.end6, %do.end
  %retval.0 = phi i32 [ -22, %do.end6 ], [ %call14, %do.end19 ], [ -22, %do.end38 ], [ %call47, %if.end41 ], [ -22, %do.end29 ], [ -6, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %percpu_offset) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @msm_timer_init(i32 noundef %dgt_hz, i32 noundef %irq, i1 noundef zeroext %percpu) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 %irq, ptr @msm_timer_irq, align 4
  %conv = zext i1 %percpu to i32
  store i32 %conv, ptr @msm_timer_has_ppi, align 4
  %call = tail call noalias ptr @__alloc_percpu(i32 noundef 256, i32 noundef 128) #12
  store ptr %call, ptr @msm_evt, align 4
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #10
  br label %err

if.end:                                           ; preds = %entry
  br i1 %percpu, label %if.then4, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then4:                                         ; preds = %if.end
  %call.i = tail call i32 @__request_percpu_irq(i32 noundef %irq, ptr noundef nonnull @msm_timer_interrupt, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %phi.cmp = icmp eq i32 %call.i, 0
  br i1 %phi.cmp, label %if.then4.if.else_crit_edge, label %do.end11

if.then4.if.else_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

do.end11:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #10
  br label %err

if.else:                                          ; preds = %if.then4.if.else_crit_edge, %if.end.if.else_crit_edge
  %call.i1 = tail call i32 @__cpuhp_setup_state(i32 noundef 126, ptr noundef nonnull @.str.23, i1 noundef zeroext true, ptr noundef nonnull @msm_local_timer_starting_cpu, ptr noundef nonnull @msm_local_timer_dying_cpu, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1)
  %tobool15.not = icmp eq i32 %call.i1, 0
  br i1 %tobool15.not, label %if.else.err_crit_edge, label %if.then16

if.else.err_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load ptr, ptr @msm_evt, align 4
  tail call void @free_percpu_irq(i32 noundef %irq, ptr noundef %0) #7
  br label %err

err:                                              ; preds = %if.then16, %if.else.err_crit_edge, %do.end11, %do.end
  %1 = load ptr, ptr @source_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #7, !srcloc !82
  %call.i2 = tail call i32 @__clocksource_register_scale(ptr noundef nonnull @msm_clocksource, i32 noundef 1, i32 noundef %dgt_hz) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2)
  %tobool20.not = icmp eq i32 %call.i2, 0
  br i1 %tobool20.not, label %err.if.end27_crit_edge, label %do.end24

err.if.end27_crit_edge:                           ; preds = %err
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

do.end24:                                         ; preds = %err
  call void @__sanitizer_cov_trace_pc() #9
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #10
  br label %if.end27

if.end27:                                         ; preds = %do.end24, %err.if.end27_crit_edge
  tail call void @sched_clock_register(ptr noundef nonnull @msm_sched_clock_read, i32 noundef 32, i32 noundef %dgt_hz) #7
  store i32 %dgt_hz, ptr getelementptr inbounds (%struct.delay_timer, ptr @msm_delay_timer, i32 0, i32 1), align 4
  tail call void @register_current_timer_delay(ptr noundef nonnull @msm_delay_timer) #7
  ret i32 %call.i2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_timer_interrupt(i32 noundef %irq, ptr noundef %dev_id) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state_use_accessors.i = getelementptr inbounds %struct.clock_event_device, ptr %dev_id, i32 0, i32 8
  %0 = ptrtoint ptr %state_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state_use_accessors.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.i = icmp eq i32 %1, 3
  br i1 %cmp.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = load ptr, ptr @event_base, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 8
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !83
  %4 = and i32 %3, -16777217
  %5 = load ptr, ptr @event_base, align 4
  %add.ptr2 = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %4) #7, !srcloc !82
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_id, align 128
  tail call void %7(ptr noundef %dev_id) #7
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_local_timer_starting_cpu(i32 noundef %cpu) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @msm_evt, align 4
  %1 = ptrtoint ptr %0 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add = add i32 %3, %1
  %4 = inttoptr i32 %add to ptr
  %5 = load i32, ptr @msm_timer_irq, align 4
  %irq = getelementptr inbounds %struct.clock_event_device, ptr %4, i32 0, i32 23
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %irq, align 4
  %name = getelementptr inbounds %struct.clock_event_device, ptr %4, i32 0, i32 21
  %7 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.28, ptr %name, align 4
  %features = getelementptr inbounds %struct.clock_event_device, ptr %4, i32 0, i32 9
  %8 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %features, align 4
  %rating = getelementptr inbounds %struct.clock_event_device, ptr %4, i32 0, i32 22
  %9 = ptrtoint ptr %rating to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 200, ptr %rating, align 8
  %set_state_shutdown = getelementptr inbounds %struct.clock_event_device, ptr %4, i32 0, i32 14
  %10 = ptrtoint ptr %set_state_shutdown to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @msm_timer_shutdown, ptr %set_state_shutdown, align 8
  %set_state_oneshot = getelementptr inbounds %struct.clock_event_device, ptr %4, i32 0, i32 12
  %11 = ptrtoint ptr %set_state_oneshot to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @msm_timer_shutdown, ptr %set_state_oneshot, align 64
  %tick_resume = getelementptr inbounds %struct.clock_event_device, ptr %4, i32 0, i32 15
  %12 = ptrtoint ptr %tick_resume to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @msm_timer_shutdown, ptr %tick_resume, align 4
  %set_next_event = getelementptr inbounds %struct.clock_event_device, ptr %4, i32 0, i32 1
  %13 = ptrtoint ptr %set_next_event to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @msm_timer_set_next_event, ptr %set_next_event, align 4
  %rem.i = and i32 %cpu, 31
  %add.i = add nuw nsw i32 %rem.i, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %div3.i = lshr i32 %cpu, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  %cpumask = getelementptr inbounds %struct.clock_event_device, ptr %4, i32 0, i32 25
  %14 = ptrtoint ptr %cpumask to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr.i, ptr %cpumask, align 4
  tail call void @clockevents_config_and_register(ptr noundef %4, i32 noundef 32768, i32 noundef 4, i32 noundef -1) #7
  %15 = load i32, ptr @msm_timer_has_ppi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @enable_percpu_irq(i32 noundef %17, i32 noundef 1) #7
  br label %if.end12

if.else:                                          ; preds = %entry
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %17, ptr noundef nonnull @msm_timer_interrupt, ptr noundef null, i32 noundef 84481, ptr noundef nonnull @.str.19, ptr noundef %4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.else.if.end12_crit_edge, label %do.end9

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

do.end9:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #10
  br label %if.end12

if.end12:                                         ; preds = %do.end9, %if.else.if.end12_crit_edge, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_local_timer_dying_cpu(i32 noundef %cpu) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @msm_evt, align 4
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
  %call = tail call i32 %6(ptr noundef %4) #7
  %irq = getelementptr inbounds %struct.clock_event_device, ptr %4, i32 0, i32 23
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  tail call void @disable_percpu_irq(i32 noundef %8) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @msm_sched_clock_read() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load ptr, ptr @msm_clocksource, align 8
  %call = tail call i64 %0(ptr noundef nonnull @msm_clocksource) #7
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_current_timer_delay(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @msm_read_timer_count(ptr nocapture noundef readnone %cs) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load ptr, ptr @source_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !83
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %conv = zext i32 %2 to i64
  ret i64 %conv
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_percpu_irq(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_timer_shutdown(ptr nocapture noundef readnone %evt) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @event_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 8
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !83
  %2 = and i32 %1, -50331649
  %3 = load ptr, ptr @event_base, align 4
  %add.ptr1 = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %2) #7, !srcloc !82
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_timer_set_next_event(i32 noundef %cycles, ptr nocapture noundef readnone %evt) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @event_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 8
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !83
  %2 = and i32 %1, -16777217
  %3 = load ptr, ptr @event_base, align 4
  %add.ptr1 = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %2) #7, !srcloc !82
  %4 = load ptr, ptr @event_base, align 4
  %add.ptr2 = getelementptr i8, ptr %4, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %2) #7, !srcloc !82
  %5 = tail call i32 @llvm.bswap.i32(i32 %cycles)
  %6 = load ptr, ptr @event_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %5) #7, !srcloc !82
  %7 = load ptr, ptr @sts_base, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %while.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

while.cond.preheader:                             ; preds = %entry
  %8 = load ptr, ptr @sts_base, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #7, !srcloc !83
  %10 = and i32 %9, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool8.not19 = icmp eq i32 %10, 0
  br i1 %tobool8.not19, label %while.cond.preheader.if.end_crit_edge, label %while.cond.preheader.do.end_crit_edge

while.cond.preheader.do.end_crit_edge:            ; preds = %while.cond.preheader
  br label %do.end

while.cond.preheader.if.end_crit_edge:            ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %while.cond.preheader.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !84
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !85
  %11 = load ptr, ptr @sts_base, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #7, !srcloc !83
  %13 = and i32 %12, 262144
  %tobool8.not = icmp eq i32 %13, 0
  br i1 %tobool8.not, label %do.end.if.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end.if.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.end.if.end_crit_edge, %while.cond.preheader.if.end_crit_edge, %entry.if.end_crit_edge
  %14 = or i32 %1, 16777216
  %15 = load ptr, ptr @event_base, align 4
  %add.ptr15 = getelementptr i8, ptr %15, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %14) #7, !srcloc !82
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_percpu_irq(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_percpu_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clocksource_register_scale(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_read_current_timer() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @msm_clocksource, align 8
  %call = tail call i64 %0(ptr noundef nonnull @msm_clocksource) #7
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { cold }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !18, !19, !20, !22, !23, !24, !26, !28, !29, !30, !32, !34, !36, !38, !39, !40, !41, !43, !45, !46, !47, !49, !51, !52, !53, !55, !57, !59, !61, !63, !65, !67, !68, !69, !70}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @__of_table_kpss_timer, !1, !"__of_table_kpss_timer", i1 false, i1 false}
!1 = !{!"../drivers/clocksource/timer-qcom.c", i32 248, i32 1}
!2 = !{ptr @__of_table_scss_timer, !3, !"__of_table_scss_timer", i1 false, i1 false}
!3 = !{!"../drivers/clocksource/timer-qcom.c", i32 249, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clocksource/timer-qcom.c", i32 208, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @msm_dt_timer_init._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @msm_dt_timer_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clocksource/timer-qcom.c", i32 215, i32 3}
!12 = !{ptr @msm_dt_timer_init._entry.3, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @msm_dt_timer_init._entry_ptr.5, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clocksource/timer-qcom.c", i32 220, i32 31}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clocksource/timer-qcom.c", i32 225, i32 3}
!18 = !{ptr @msm_dt_timer_init._entry.7, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @msm_dt_timer_init._entry_ptr.9, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clocksource/timer-qcom.c", i32 231, i32 3}
!22 = !{ptr @msm_dt_timer_init._entry.10, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @msm_dt_timer_init._entry_ptr.12, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clocksource/timer-qcom.c", i32 235, i32 31}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clocksource/timer-qcom.c", i32 236, i32 3}
!28 = !{ptr @msm_dt_timer_init._entry.14, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @msm_dt_timer_init._entry_ptr.16, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @event_base, !31, !"event_base", i1 false, i1 false}
!31 = !{!"../drivers/clocksource/timer-qcom.c", i32 34, i32 22}
!32 = !{ptr @sts_base, !33, !"sts_base", i1 false, i1 false}
!33 = !{!"../drivers/clocksource/timer-qcom.c", i32 35, i32 22}
!34 = !{ptr @source_base, !35, !"source_base", i1 false, i1 false}
!35 = !{!"../drivers/clocksource/timer-qcom.c", i32 81, i32 22}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clocksource/timer-qcom.c", i32 163, i32 3}
!38 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @msm_timer_init._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @msm_timer_init._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/clocksource/timer-qcom.c", i32 169, i32 7}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/clocksource/timer-qcom.c", i32 172, i32 3}
!45 = !{ptr @msm_timer_init._entry.20, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @msm_timer_init._entry_ptr.22, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/clocksource/timer-qcom.c", i32 176, i32 6}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/clocksource/timer-qcom.c", i32 189, i32 3}
!51 = !{ptr @msm_timer_init._entry.24, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @msm_timer_init._entry_ptr.26, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/clocksource/timer-qcom.c", i32 89, i32 10}
!55 = !{ptr @msm_clocksource, !56, !"msm_clocksource", i1 false, i1 false}
!56 = !{!"../drivers/clocksource/timer-qcom.c", i32 88, i32 27}
!57 = !{ptr @msm_timer_irq, !58, !"msm_timer_irq", i1 false, i1 false}
!58 = !{!"../drivers/clocksource/timer-qcom.c", i32 96, i32 12}
!59 = !{ptr @msm_timer_has_ppi, !60, !"msm_timer_has_ppi", i1 false, i1 false}
!60 = !{!"../drivers/clocksource/timer-qcom.c", i32 97, i32 12}
!61 = !{ptr @msm_evt, !62, !"msm_evt", i1 false, i1 false}
!62 = !{!"../drivers/clocksource/timer-qcom.c", i32 79, i32 44}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/clocksource/timer-qcom.c", i32 105, i32 14}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/clocksource/timer-qcom.c", i32 123, i32 4}
!67 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @msm_local_timer_starting_cpu._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @msm_local_timer_starting_cpu._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @msm_delay_timer, !71, !"msm_delay_timer", i1 false, i1 false}
!71 = !{!"../drivers/clocksource/timer-qcom.c", i32 148, i32 27}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{!"auto-init"}
!82 = !{i64 3978353}
!83 = !{i64 3978771}
!84 = !{i64 2153178734}
!85 = !{i64 2153178576}
