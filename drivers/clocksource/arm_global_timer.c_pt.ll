; ModuleID = '/llk/IR_all_yes/drivers/clocksource/arm_global_timer.c_pt.bc'
source_filename = "../drivers/clocksource/arm_global_timer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.clocksource = type { ptr, i64, i32, i32, i64, i32, i32, i64, ptr, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.delay_timer = type { ptr, i32 }
%struct.clk_notifier_data = type { ptr, i32, i32 }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [124 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__of_table_arm_gt = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,cortex-a9-global-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @global_timer_of_register }, section "__timer_of_table", align 4
@global_timer_of_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014global-timer: non support for this cpu version.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"global_timer_of_register\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/clocksource/arm_global_timer.c\00", [57 x i8] zeroinitializer }, align 32
@global_timer_of_register._entry_ptr = internal global ptr @global_timer_of_register._entry, section ".printk_index", align 4
@gt_ppi = internal global { i32, [28 x i8] } zeroinitializer, align 32
@global_timer_of_register._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014global-timer: unable to parse irq\0A\00", [59 x i8] zeroinitializer }, align 32
@global_timer_of_register._entry_ptr.5 = internal global ptr @global_timer_of_register._entry.3, section ".printk_index", align 4
@gt_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@global_timer_of_register._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014global-timer: invalid base address\0A\00", [58 x i8] zeroinitializer }, align 32
@global_timer_of_register._entry_ptr.8 = internal global ptr @global_timer_of_register._entry.6, section ".printk_index", align 4
@global_timer_of_register._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014global-timer: clk not found\0A\00", [33 x i8] zeroinitializer }, align 32
@global_timer_of_register._entry_ptr.11 = internal global ptr @global_timer_of_register._entry.9, section ".printk_index", align 4
@gt_target_rate = internal global { i32, [28 x i8] } zeroinitializer, align 32
@gt_clk_rate_change_nb = internal global { %struct.notifier_block, [20 x i8] } zeroinitializer, align 32
@global_timer_of_register._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014Unable to register clock notifier\0A\00", [59 x i8] zeroinitializer }, align 32
@global_timer_of_register._entry_ptr.14 = internal global ptr @global_timer_of_register._entry.12, section ".printk_index", align 4
@gt_evt = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@global_timer_of_register._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 397, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014global-timer: can't allocate memory\0A\00", [57 x i8] zeroinitializer }, align 32
@global_timer_of_register._entry_ptr.17 = internal global ptr @global_timer_of_register._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"gt\00", [29 x i8] zeroinitializer }, align 32
@global_timer_of_register._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.1, ptr @.str.2, i32 406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014global-timer: can't register interrupt %d (%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@global_timer_of_register._entry_ptr.21 = internal global ptr @global_timer_of_register._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"clockevents/arm/global_timer:starting\00", [58 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ARM Global timer register failed (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@gt_psv_bck = internal global { i32, [28 x i8] } zeroinitializer, align 32
@gt_psv_new = internal global { i32, [28 x i8] } zeroinitializer, align 32
@gt_clocksource = internal global { %struct.clocksource, [56 x i8] } { %struct.clocksource { ptr @gt_clocksource_read, i64 -1, i32 0, i32 0, i64 0, i32 0, i32 0, i64 0, ptr @.str.24, %struct.list_head zeroinitializer, i32 300, i32 0, i32 0, i32 1, ptr null, ptr null, ptr null, ptr @gt_resume, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"arm_global_timer\00", [47 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@gt_delay_timer = internal global { %struct.delay_timer, [24 x i8] } { %struct.delay_timer { ptr @gt_read_long, i32 0 }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 358, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant [7 x i8] c"gt_ppi\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 56, i32 12 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 364, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [8 x i8] c"gt_base\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 53, i32 22 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 370, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 380, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [15 x i8] c"gt_target_rate\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 55, i32 36 }
@___asan_gen_.64 = private unnamed_addr constant [22 x i8] c"gt_clk_rate_change_nb\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 54, i32 30 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 391, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [7 x i8] c"gt_evt\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 57, i32 44 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 397, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 403, i32 6 }
@___asan_gen_.85 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 405, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 416, i32 5 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 435, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [11 x i8] c"gt_psv_bck\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 55, i32 24 }
@___asan_gen_.100 = private unnamed_addr constant [11 x i8] c"gt_psv_new\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 55, i32 12 }
@___asan_gen_.103 = private unnamed_addr constant [15 x i8] c"gt_clocksource\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 219, i32 27 }
@___asan_gen_.106 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 220, i32 10 }
@___asan_gen_.109 = private unnamed_addr constant [15 x i8] c"gt_delay_timer\00", align 1
@___asan_gen_.110 = private constant [42 x i8] c"../drivers/clocksource/arm_global_timer.c\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 240, i32 27 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__of_table_arm_gt, ptr @global_timer_of_register._entry, ptr @global_timer_of_register._entry.12, ptr @global_timer_of_register._entry.15, ptr @global_timer_of_register._entry.19, ptr @global_timer_of_register._entry.3, ptr @global_timer_of_register._entry.6, ptr @global_timer_of_register._entry.9, ptr @global_timer_of_register._entry_ptr, ptr @global_timer_of_register._entry_ptr.11, ptr @global_timer_of_register._entry_ptr.14, ptr @global_timer_of_register._entry_ptr.17, ptr @global_timer_of_register._entry_ptr.21, ptr @global_timer_of_register._entry_ptr.5, ptr @global_timer_of_register._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @gt_ppi, ptr @.str.4, ptr @gt_base, ptr @.str.7, ptr @.str.10, ptr @gt_target_rate, ptr @gt_clk_rate_change_nb, ptr @.str.13, ptr @gt_evt, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @gt_psv_bck, ptr @gt_psv_new, ptr @gt_clocksource, ptr @.str.24, ptr @gt_delay_timer], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @global_timer_of_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt_ppi to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @global_timer_of_register._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @global_timer_of_register._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @global_timer_of_register._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt_target_rate to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt_clk_rate_change_nb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @global_timer_of_register._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt_evt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @global_timer_of_register._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @global_timer_of_register._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt_psv_bck to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt_psv_new to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt_clocksource to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt_delay_timer to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @global_timer_of_register(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #10, !srcloc !70
  %1 = and i32 %0, -2031632
  call void @__sanitizer_cov_trace_const_cmp4(i32 1090568336, i32 %1)
  %2 = icmp eq i32 %1, 1090568336
  br i1 %2, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @irq_of_parse_and_map(ptr noundef %np, i32 noundef 0) #7
  store i32 %call4, ptr @gt_ppi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %do.end8, label %if.end11

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #11
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call12 = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #7
  store ptr %call12, ptr @gt_base, align 4
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %do.end17, label %if.end20

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #11
  br label %cleanup

if.end20:                                         ; preds = %if.end11
  %call21 = tail call ptr @of_clk_get(ptr noundef %np, i32 noundef 0) #7
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end30, label %if.then23

if.then23:                                        ; preds = %if.end20
  %call.i = tail call i32 @clk_prepare(ptr noundef %call21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then23.out_unmap_crit_edge

if.then23.out_unmap_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unmap

if.end.i:                                         ; preds = %if.then23
  %call1.i = tail call i32 @clk_enable(ptr noundef %call21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end33, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call21) #7
  br label %out_unmap

do.end30:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #11
  br label %out_unmap

if.end33:                                         ; preds = %if.end.i
  %call34 = tail call i32 @clk_get_rate(ptr noundef %call21) #7
  %div114 = lshr i32 %call34, 1
  store i32 %div114, ptr @gt_target_rate, align 4
  store ptr @gt_clk_rate_change_cb, ptr @gt_clk_rate_change_nb, align 4
  %call35 = tail call i32 @clk_notifier_register(ptr noundef %call21, ptr noundef nonnull @gt_clk_rate_change_nb) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end43, label %do.end40

do.end40:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #11
  br label %out_clk

if.end43:                                         ; preds = %if.end33
  %call44 = tail call noalias ptr @__alloc_percpu(i32 noundef 256, i32 noundef 128) #12
  store ptr %call44, ptr @gt_evt, align 4
  %tobool45.not = icmp eq ptr %call44, null
  br i1 %tobool45.not, label %do.end49, label %if.end52

do.end49:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #11
  br label %out_clk_nb

if.end52:                                         ; preds = %if.end43
  %3 = load i32, ptr @gt_ppi, align 4
  %call.i115 = tail call i32 @__request_percpu_irq(i32 noundef %3, ptr noundef nonnull @gt_clockevent_interrupt, i32 noundef 0, ptr noundef nonnull @.str.18, ptr noundef nonnull %call44) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i115)
  %tobool54.not = icmp eq i32 %call.i115, 0
  br i1 %tobool54.not, label %if.end61, label %do.end58

do.end58:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  %4 = load i32, ptr @gt_ppi, align 4
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %4, i32 noundef %call.i115) #11
  br label %out_free

if.end61:                                         ; preds = %if.end52
  %call62 = tail call fastcc i32 @gt_clocksource_init() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %if.end61.out_irq_crit_edge

if.end61.out_irq_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_irq

if.end65:                                         ; preds = %if.end61
  %call.i116 = tail call i32 @__cpuhp_setup_state(i32 noundef 123, ptr noundef nonnull @.str.22, i1 noundef zeroext true, ptr noundef nonnull @gt_starting_cpu, ptr noundef nonnull @gt_dying_cpu, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i116)
  %tobool67.not = icmp eq i32 %call.i116, 0
  br i1 %tobool67.not, label %if.end69, label %if.end65.out_irq_crit_edge

if.end65.out_irq_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_irq

if.end69:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  %5 = load i32, ptr @gt_target_rate, align 4
  store i32 %5, ptr getelementptr inbounds (%struct.delay_timer, ptr @gt_delay_timer, i32 0, i32 1), align 4
  tail call void @register_current_timer_delay(ptr noundef nonnull @gt_delay_timer) #7
  br label %cleanup

out_irq:                                          ; preds = %if.end65.out_irq_crit_edge, %if.end61.out_irq_crit_edge
  %err.0 = phi i32 [ %call62, %if.end61.out_irq_crit_edge ], [ %call.i116, %if.end65.out_irq_crit_edge ]
  %6 = load i32, ptr @gt_ppi, align 4
  %7 = load ptr, ptr @gt_evt, align 4
  tail call void @free_percpu_irq(i32 noundef %6, ptr noundef %7) #7
  br label %out_free

out_free:                                         ; preds = %out_irq, %do.end58
  %err.1 = phi i32 [ %call.i115, %do.end58 ], [ %err.0, %out_irq ]
  %8 = load ptr, ptr @gt_evt, align 4
  tail call void @free_percpu(ptr noundef %8) #7
  br label %out_clk_nb

out_clk_nb:                                       ; preds = %out_free, %do.end49
  %err.2 = phi i32 [ %err.1, %out_free ], [ -12, %do.end49 ]
  %call70 = tail call i32 @clk_notifier_unregister(ptr noundef %call21, ptr noundef nonnull @gt_clk_rate_change_nb) #7
  br label %out_clk

out_clk:                                          ; preds = %out_clk_nb, %do.end40
  %err.3 = phi i32 [ %call35, %do.end40 ], [ %err.2, %out_clk_nb ]
  tail call void @clk_disable(ptr noundef %call21) #7
  tail call void @clk_unprepare(ptr noundef %call21) #7
  br label %out_unmap

out_unmap:                                        ; preds = %out_clk, %do.end30, %if.then3.i, %if.then23.out_unmap_crit_edge
  %err.4 = phi i32 [ -22, %do.end30 ], [ %err.3, %out_clk ], [ %call1.i, %if.then3.i ], [ %call.i, %if.then23.out_unmap_crit_edge ]
  %9 = load ptr, ptr @gt_base, align 4
  tail call void @iounmap(ptr noundef %9) #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 435, i32 noundef 9, ptr noundef nonnull @.str.23, i32 noundef %err.4) #7
  br label %cleanup

cleanup:                                          ; preds = %out_unmap, %if.end69, %do.end17, %do.end8, %do.end
  %retval.0 = phi i32 [ -38, %do.end ], [ %err.4, %out_unmap ], [ 0, %if.end69 ], [ -6, %do.end17 ], [ -22, %do.end8 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gt_clk_rate_change_cb(ptr nocapture noundef readnone %nb, i32 noundef %event, ptr nocapture noundef readonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %entry.cleanup28_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb16
    i32 4, label %sw.bb22
  ]

entry.cleanup28_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup28

sw.bb:                                            ; preds = %entry
  %new_rate = getelementptr inbounds %struct.clk_notifier_data, ptr %data, i32 0, i32 2
  %1 = ptrtoint ptr %new_rate to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %new_rate, align 4
  %3 = load i32, ptr @gt_target_rate, align 4
  %div45 = lshr i32 %3, 1
  %add = add i32 %div45, %2
  %div1 = udiv i32 %add, %3
  %div4 = udiv i32 %2, %div1
  %sub = sub i32 %3, %div4
  %4 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %4)
  %cmp7 = icmp sgt i32 %4, 50
  br i1 %cmp7, label %sw.bb.cleanup28_crit_edge, label %if.end

sw.bb.cleanup28_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup28

if.end:                                           ; preds = %sw.bb
  %dec = add i32 %div1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %dec)
  %5 = icmp ugt i32 %dec, 15
  br i1 %5, label %if.end.cleanup28_crit_edge, label %if.end11

if.end.cleanup28_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup28

if.end11:                                         ; preds = %if.end
  %6 = load ptr, ptr @gt_base, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !71
  %8 = lshr i32 %7, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  %and.i = and i32 %8, 15
  store i32 %and.i, ptr @gt_psv_bck, align 4
  store i32 %dec, ptr @gt_psv_new, align 4
  %9 = ptrtoint ptr %new_rate to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %new_rate, align 4
  %old_rate = getelementptr inbounds %struct.clk_notifier_data, ptr %data, i32 0, i32 1
  %11 = ptrtoint ptr %old_rate to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %old_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp13 = icmp ult i32 %10, %12
  br i1 %cmp13, label %if.end11.cleanup28_crit_edge, label %cleanup

if.end11.cleanup28_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup28

cleanup:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %13 = load ptr, ptr @gt_base, align 4
  %add.ptr.i46 = getelementptr i8, ptr %13, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i46) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !73
  %15 = and i32 %14, -983041
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #7
  %shl.i = shl nuw nsw i32 %dec, 8
  %or.i = or i32 %16, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  %17 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %18 = load ptr, ptr @gt_base, align 4
  %add.ptr2.i = getelementptr i8, ptr %18, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %17) #7, !srcloc !75
  br label %cleanup28

sw.bb16:                                          ; preds = %entry
  %new_rate17 = getelementptr inbounds %struct.clk_notifier_data, ptr %data, i32 0, i32 2
  %19 = ptrtoint ptr %new_rate17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %new_rate17, align 4
  %old_rate18 = getelementptr inbounds %struct.clk_notifier_data, ptr %data, i32 0, i32 1
  %21 = ptrtoint ptr %old_rate18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %old_rate18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp19 = icmp ugt i32 %20, %22
  br i1 %cmp19, label %sw.bb16.cleanup28_crit_edge, label %if.end21

sw.bb16.cleanup28_crit_edge:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup28

if.end21:                                         ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #9
  %23 = load i32, ptr @gt_psv_new, align 4
  %24 = load ptr, ptr @gt_base, align 4
  %add.ptr.i47 = getelementptr i8, ptr %24, i32 8
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !73
  %26 = and i32 %25, -983041
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #7
  %shl.i48 = shl i32 %23, 8
  %or.i49 = or i32 %27, %shl.i48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  %28 = tail call i32 @llvm.bswap.i32(i32 %or.i49) #7
  %29 = load ptr, ptr @gt_base, align 4
  %add.ptr2.i50 = getelementptr i8, ptr %29, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i50, i32 %28) #7, !srcloc !75
  br label %cleanup28

sw.bb22:                                          ; preds = %entry
  %new_rate23 = getelementptr inbounds %struct.clk_notifier_data, ptr %data, i32 0, i32 2
  %30 = ptrtoint ptr %new_rate23 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %new_rate23, align 4
  %old_rate24 = getelementptr inbounds %struct.clk_notifier_data, ptr %data, i32 0, i32 1
  %32 = ptrtoint ptr %old_rate24 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %old_rate24, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp25 = icmp ult i32 %31, %33
  br i1 %cmp25, label %sw.bb22.cleanup28_crit_edge, label %if.end27

sw.bb22.cleanup28_crit_edge:                      ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup28

if.end27:                                         ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #9
  %34 = load i32, ptr @gt_psv_bck, align 4
  %35 = load ptr, ptr @gt_base, align 4
  %add.ptr.i51 = getelementptr i8, ptr %35, i32 8
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !73
  %37 = and i32 %36, -983041
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #7
  %shl.i52 = shl i32 %34, 8
  %or.i53 = or i32 %38, %shl.i52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  %39 = tail call i32 @llvm.bswap.i32(i32 %or.i53) #7
  %40 = load ptr, ptr @gt_base, align 4
  %add.ptr2.i54 = getelementptr i8, ptr %40, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i54, i32 %39) #7, !srcloc !75
  br label %cleanup28

cleanup28:                                        ; preds = %if.end27, %sw.bb22.cleanup28_crit_edge, %if.end21, %sw.bb16.cleanup28_crit_edge, %cleanup, %if.end11.cleanup28_crit_edge, %if.end.cleanup28_crit_edge, %sw.bb.cleanup28_crit_edge, %entry.cleanup28_crit_edge
  %retval.1 = phi i32 [ 1, %sw.bb16.cleanup28_crit_edge ], [ 1, %sw.bb22.cleanup28_crit_edge ], [ 0, %entry.cleanup28_crit_edge ], [ 0, %cleanup ], [ 0, %if.end27 ], [ 0, %if.end21 ], [ 0, %if.end11.cleanup28_crit_edge ], [ 32770, %if.end.cleanup28_crit_edge ], [ 32770, %sw.bb.cleanup28_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gt_clockevent_interrupt(i32 noundef %irq, ptr noundef %dev_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @gt_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 12
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !71
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %state_use_accessors.i = getelementptr inbounds %struct.clock_event_device, ptr %dev_id, i32 0, i32 8
  %3 = ptrtoint ptr %state_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state_use_accessors.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp.i = icmp eq i32 %4, 3
  br i1 %cmp.i, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr @gt_base, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !71
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %if.then2
  %upper.0.i.i.i = phi i32 [ %7, %if.then2 ], [ %12, %do.body.i.i.i.do.body.i.i.i_crit_edge ]
  %8 = load ptr, ptr @gt_base, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #7, !srcloc !71
  %10 = load ptr, ptr @gt_base, align 4
  %add.ptr6.i.i.i = getelementptr i8, ptr %10, i32 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i.i) #7, !srcloc !71
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #7
  %cmp.not.i.i.i = icmp eq i32 %12, %upper.0.i.i.i
  br i1 %cmp.not.i.i.i, label %gt_compare_set.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i

gt_compare_set.exit:                              ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %13 = zext i32 %11 to i64
  %14 = zext i32 %9 to i64
  %15 = shl nuw i64 %14, 32
  %16 = or i64 %15, %13
  %17 = tail call i64 @llvm.bswap.i64(i64 %16) #7
  %add.i = add i64 %17, 4294967295
  %18 = load ptr, ptr @gt_base, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 8
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  %20 = and i32 %19, -251658241
  %21 = or i32 %20, 16777216
  %22 = load ptr, ptr @gt_base, align 4
  %add.ptr3.i = getelementptr i8, ptr %22, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %21) #7, !srcloc !75
  %conv5.i = trunc i64 %add.i to i32
  %23 = tail call i32 @llvm.bswap.i32(i32 %conv5.i) #7
  %24 = load ptr, ptr @gt_base, align 4
  %add.ptr6.i = getelementptr i8, ptr %24, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %23) #7, !srcloc !75
  %shr.i = lshr i64 %add.i, 32
  %conv8.i = trunc i64 %shr.i to i32
  %25 = tail call i32 @llvm.bswap.i32(i32 %conv8.i) #7
  %26 = load ptr, ptr @gt_base, align 4
  %add.ptr9.i = getelementptr i8, ptr %26, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %25) #7, !srcloc !75
  %27 = or i32 %20, 117440512
  %28 = load ptr, ptr @gt_base, align 4
  %add.ptr13.i = getelementptr i8, ptr %28, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %27) #7, !srcloc !75
  br label %if.end3

if.end3:                                          ; preds = %gt_compare_set.exit, %if.end.if.end3_crit_edge
  %29 = load ptr, ptr @gt_base, align 4
  %add.ptr4 = getelementptr i8, ptr %29, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 16777216) #7, !srcloc !75
  %30 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_id, align 128
  tail call void %31(ptr noundef %dev_id) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end3 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gt_clocksource_init() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %0 = load ptr, ptr @gt_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  tail call void @arm_heavy_mb() #7
  %1 = load ptr, ptr @gt_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 0) #7, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %2 = load ptr, ptr @gt_base, align 4
  %add.ptr6 = getelementptr i8, ptr %2, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 0) #7, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %3 = load ptr, ptr @gt_base, align 4
  %add.ptr9 = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 16842752) #7, !srcloc !75
  %4 = load i32, ptr @gt_target_rate, align 4
  tail call void @sched_clock_register(ptr noundef nonnull @gt_sched_clock_read, i32 noundef 64, i32 noundef %4) #7
  %5 = load i32, ptr @gt_target_rate, align 4
  %call.i = tail call i32 @__clocksource_register_scale(ptr noundef nonnull @gt_clocksource, i32 noundef 1, i32 noundef %5) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gt_starting_cpu(i32 noundef %cpu) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @gt_evt, align 4
  %1 = ptrtoint ptr %0 to i32
  %2 = tail call i32 @llvm.read_register.i32(metadata !60) #7
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %cpu2 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu2, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add = add i32 %7, %1
  %8 = inttoptr i32 %add to ptr
  %name = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 21
  %9 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.24, ptr %name, align 4
  %features = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 9
  %10 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 67, ptr %features, align 4
  %set_state_shutdown = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 14
  %11 = ptrtoint ptr %set_state_shutdown to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @gt_clockevent_shutdown, ptr %set_state_shutdown, align 8
  %set_state_periodic = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 11
  %12 = ptrtoint ptr %set_state_periodic to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @gt_clockevent_set_periodic, ptr %set_state_periodic, align 4
  %set_state_oneshot = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 12
  %13 = ptrtoint ptr %set_state_oneshot to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @gt_clockevent_shutdown, ptr %set_state_oneshot, align 64
  %set_state_oneshot_stopped = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 13
  %14 = ptrtoint ptr %set_state_oneshot_stopped to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @gt_clockevent_shutdown, ptr %set_state_oneshot_stopped, align 4
  %set_next_event = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 1
  %15 = ptrtoint ptr %set_next_event to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @gt_clockevent_set_next_event, ptr %set_next_event, align 4
  %rem.i = and i32 %cpu, 31
  %add.i = add nuw nsw i32 %rem.i, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %div3.i = lshr i32 %cpu, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  %cpumask = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 25
  %16 = ptrtoint ptr %cpumask to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr.i, ptr %cpumask, align 4
  %rating = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 22
  %17 = ptrtoint ptr %rating to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 300, ptr %rating, align 8
  %18 = load i32, ptr @gt_ppi, align 4
  %irq = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 23
  %19 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %irq, align 4
  %20 = load i32, ptr @gt_target_rate, align 4
  tail call void @clockevents_config_and_register(ptr noundef %8, i32 noundef %20, i32 noundef 1, i32 noundef -1) #7
  %21 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq, align 4
  tail call void @enable_percpu_irq(i32 noundef %22, i32 noundef 0) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gt_dying_cpu(i32 noundef %cpu) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @gt_evt, align 4
  %1 = ptrtoint ptr %0 to i32
  %2 = tail call i32 @llvm.read_register.i32(metadata !60) #7
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %cpu2 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu2, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add = add i32 %7, %1
  %8 = inttoptr i32 %add to ptr
  %9 = load ptr, ptr @gt_base, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  %11 = and i32 %10, -234881025
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void @arm_heavy_mb() #7
  %12 = load ptr, ptr @gt_base, align 4
  %add.ptr2.i = getelementptr i8, ptr %12, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %11) #7, !srcloc !75
  %irq = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 23
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq, align 4
  tail call void @disable_percpu_irq(i32 noundef %14) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_percpu_irq(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @gt_sched_clock_read() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load ptr, ptr @gt_base, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !71
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #7
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %upper.0.i = phi i32 [ %2, %entry ], [ %7, %do.body.i.do.body.i_crit_edge ]
  %3 = load ptr, ptr @gt_base, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !71
  %5 = load ptr, ptr @gt_base, align 4
  %add.ptr6.i = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #7, !srcloc !71
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  %cmp.not.i = icmp eq i32 %7, %upper.0.i
  br i1 %cmp.not.i, label %_gt_counter_read.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

_gt_counter_read.exit:                            ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = zext i32 %6 to i64
  %9 = zext i32 %4 to i64
  %10 = shl nuw i64 %9, 32
  %11 = or i64 %10, %8
  %12 = tail call i64 @llvm.bswap.i64(i64 %11) #7
  ret i64 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clocksource_register_scale(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @gt_clocksource_read(ptr nocapture noundef readnone %cs) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @gt_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %0, i32 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !71
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #7
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %entry
  %upper.0.i.i = phi i32 [ %2, %entry ], [ %7, %do.body.i.i.do.body.i.i_crit_edge ]
  %3 = load ptr, ptr @gt_base, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !71
  %5 = load ptr, ptr @gt_base, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i) #7, !srcloc !71
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  %cmp.not.i.i = icmp eq i32 %7, %upper.0.i.i
  br i1 %cmp.not.i.i, label %gt_counter_read.exit, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

gt_counter_read.exit:                             ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = zext i32 %6 to i64
  %9 = zext i32 %4 to i64
  %10 = shl nuw i64 %9, 32
  %11 = or i64 %10, %8
  %12 = tail call i64 @llvm.bswap.i64(i64 %11) #7
  ret i64 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gt_resume(ptr nocapture noundef readnone %cs) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @gt_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 8
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.body, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  tail call void @arm_heavy_mb() #7
  %3 = load ptr, ptr @gt_base, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 16777216) #7, !srcloc !75
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gt_clockevent_shutdown(ptr nocapture noundef readnone %evt) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @gt_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 8
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  %2 = and i32 %1, -234881025
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void @arm_heavy_mb() #7
  %3 = load ptr, ptr @gt_base, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %2) #7, !srcloc !75
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gt_clockevent_set_periodic(ptr nocapture noundef readnone %evt) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @gt_target_rate, align 4
  %1 = load ptr, ptr @gt_base, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !71
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %entry
  %upper.0.i.i.i = phi i32 [ %3, %entry ], [ %8, %do.body.i.i.i.do.body.i.i.i_crit_edge ]
  %4 = load ptr, ptr @gt_base, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #7, !srcloc !71
  %6 = load ptr, ptr @gt_base, align 4
  %add.ptr6.i.i.i = getelementptr i8, ptr %6, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i.i) #7, !srcloc !71
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #7
  %cmp.not.i.i.i = icmp eq i32 %8, %upper.0.i.i.i
  br i1 %cmp.not.i.i.i, label %gt_compare_set.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i

gt_compare_set.exit:                              ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add = add i32 %0, 50
  %div1 = udiv i32 %add, 100
  %9 = zext i32 %7 to i64
  %10 = zext i32 %5 to i64
  %11 = shl nuw i64 %10, 32
  %12 = or i64 %11, %9
  %13 = tail call i64 @llvm.bswap.i64(i64 %12) #7
  %conv.i = zext i32 %div1 to i64
  %add.i = add i64 %13, %conv.i
  %14 = load ptr, ptr @gt_base, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 8
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  %16 = and i32 %15, -251658241
  %17 = or i32 %16, 16777216
  %18 = load ptr, ptr @gt_base, align 4
  %add.ptr3.i = getelementptr i8, ptr %18, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %17) #7, !srcloc !75
  %conv5.i = trunc i64 %add.i to i32
  %19 = tail call i32 @llvm.bswap.i32(i32 %conv5.i) #7
  %20 = load ptr, ptr @gt_base, align 4
  %add.ptr6.i = getelementptr i8, ptr %20, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %19) #7, !srcloc !75
  %shr.i = lshr i64 %add.i, 32
  %conv8.i = trunc i64 %shr.i to i32
  %21 = tail call i32 @llvm.bswap.i32(i32 %conv8.i) #7
  %22 = load ptr, ptr @gt_base, align 4
  %add.ptr9.i = getelementptr i8, ptr %22, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %21) #7, !srcloc !75
  %23 = tail call i32 @llvm.bswap.i32(i32 %div1) #7
  %24 = load ptr, ptr @gt_base, align 4
  %add.ptr10.i = getelementptr i8, ptr %24, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %23) #7, !srcloc !75
  %25 = or i32 %15, 251658240
  %26 = load ptr, ptr @gt_base, align 4
  %add.ptr13.i = getelementptr i8, ptr %26, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %25) #7, !srcloc !75
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gt_clockevent_set_next_event(i32 noundef %evt, ptr nocapture noundef readnone %unused) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @gt_base, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %0, i32 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !71
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #7
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %entry
  %upper.0.i.i.i = phi i32 [ %2, %entry ], [ %7, %do.body.i.i.i.do.body.i.i.i_crit_edge ]
  %3 = load ptr, ptr @gt_base, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !71
  %5 = load ptr, ptr @gt_base, align 4
  %add.ptr6.i.i.i = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i.i) #7, !srcloc !71
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  %cmp.not.i.i.i = icmp eq i32 %7, %upper.0.i.i.i
  br i1 %cmp.not.i.i.i, label %gt_compare_set.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i

gt_compare_set.exit:                              ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = zext i32 %6 to i64
  %9 = zext i32 %4 to i64
  %10 = shl nuw i64 %9, 32
  %11 = or i64 %10, %8
  %12 = tail call i64 @llvm.bswap.i64(i64 %11) #7
  %conv.i = zext i32 %evt to i64
  %add.i = add i64 %12, %conv.i
  %13 = load ptr, ptr @gt_base, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  %15 = and i32 %14, -251658241
  %16 = or i32 %15, 16777216
  %17 = load ptr, ptr @gt_base, align 4
  %add.ptr3.i = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %16) #7, !srcloc !75
  %conv5.i = trunc i64 %add.i to i32
  %18 = tail call i32 @llvm.bswap.i32(i32 %conv5.i) #7
  %19 = load ptr, ptr @gt_base, align 4
  %add.ptr6.i = getelementptr i8, ptr %19, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %18) #7, !srcloc !75
  %shr.i = lshr i64 %add.i, 32
  %conv8.i = trunc i64 %shr.i to i32
  %20 = tail call i32 @llvm.bswap.i32(i32 %conv8.i) #7
  %21 = load ptr, ptr @gt_base, align 4
  %add.ptr9.i = getelementptr i8, ptr %21, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %20) #7, !srcloc !75
  %22 = or i32 %15, 117440512
  %23 = load ptr, ptr @gt_base, align 4
  %add.ptr13.i = getelementptr i8, ptr %23, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %22) #7, !srcloc !75
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_percpu_irq(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_percpu_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_current_timer_delay(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gt_read_long() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @gt_base, align 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #7, !srcloc !71
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !34, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58}
!llvm.named.register.sp = !{!60}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @__of_table_arm_gt, !1, !"__of_table_arm_gt", i1 false, i1 false}
!1 = !{!"../drivers/clocksource/arm_global_timer.c", i32 441, i32 1}
!2 = distinct !{null, !3, !"gt_clk_rate", i1 false, i1 false}
!3 = !{!"../drivers/clocksource/arm_global_timer.c", i32 348, i32 23}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clocksource/arm_global_timer.c", i32 358, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @global_timer_of_register._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @global_timer_of_register._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clocksource/arm_global_timer.c", i32 364, i32 3}
!12 = !{ptr @global_timer_of_register._entry.3, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @global_timer_of_register._entry_ptr.5, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clocksource/arm_global_timer.c", i32 370, i32 3}
!16 = !{ptr @global_timer_of_register._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @global_timer_of_register._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clocksource/arm_global_timer.c", i32 380, i32 3}
!20 = !{ptr @global_timer_of_register._entry.9, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @global_timer_of_register._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clocksource/arm_global_timer.c", i32 391, i32 3}
!24 = !{ptr @global_timer_of_register._entry.12, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @global_timer_of_register._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clocksource/arm_global_timer.c", i32 397, i32 3}
!28 = !{ptr @global_timer_of_register._entry.15, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @global_timer_of_register._entry_ptr.17, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clocksource/arm_global_timer.c", i32 403, i32 6}
!32 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clocksource/arm_global_timer.c", i32 405, i32 3}
!34 = !{ptr @global_timer_of_register._entry.19, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @global_timer_of_register._entry_ptr.21, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clocksource/arm_global_timer.c", i32 416, i32 5}
!38 = !{ptr @.str.23, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clocksource/arm_global_timer.c", i32 435, i32 2}
!40 = !{ptr @gt_ppi, !41, !"gt_ppi", i1 false, i1 false}
!41 = !{!"../drivers/clocksource/arm_global_timer.c", i32 56, i32 12}
!42 = !{ptr @gt_base, !43, !"gt_base", i1 false, i1 false}
!43 = !{!"../drivers/clocksource/arm_global_timer.c", i32 53, i32 22}
!44 = !{ptr @gt_target_rate, !45, !"gt_target_rate", i1 false, i1 false}
!45 = !{!"../drivers/clocksource/arm_global_timer.c", i32 55, i32 36}
!46 = !{ptr @gt_psv_bck, !47, !"gt_psv_bck", i1 false, i1 false}
!47 = !{!"../drivers/clocksource/arm_global_timer.c", i32 55, i32 24}
!48 = !{ptr @gt_psv_new, !49, !"gt_psv_new", i1 false, i1 false}
!49 = !{!"../drivers/clocksource/arm_global_timer.c", i32 55, i32 12}
!50 = !{ptr @gt_clk_rate_change_nb, !51, !"gt_clk_rate_change_nb", i1 false, i1 false}
!51 = !{!"../drivers/clocksource/arm_global_timer.c", i32 54, i32 30}
!52 = !{ptr @gt_evt, !53, !"gt_evt", i1 false, i1 false}
!53 = !{!"../drivers/clocksource/arm_global_timer.c", i32 57, i32 44}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clocksource/arm_global_timer.c", i32 220, i32 10}
!56 = !{ptr @gt_clocksource, !57, !"gt_clocksource", i1 false, i1 false}
!57 = !{!"../drivers/clocksource/arm_global_timer.c", i32 219, i32 27}
!58 = !{ptr @gt_delay_timer, !59, !"gt_delay_timer", i1 false, i1 false}
!59 = !{!"../drivers/clocksource/arm_global_timer.c", i32 240, i32 27}
!60 = !{!"sp"}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{i64 2153223907}
!71 = !{i64 4207959}
!72 = !{i64 2153237765}
!73 = !{i64 2153236825}
!74 = !{i64 2153237114}
!75 = !{i64 4207541}
!76 = !{i64 2153228459}
!77 = !{i64 2153238436}
!78 = !{i64 2153238816}
!79 = !{i64 2153239196}
!80 = !{i64 2153239715}
!81 = !{i64 2153230661}
!82 = !{i64 2153231124}
!83 = !{i64 2153234543}
!84 = !{i64 2153234947}
