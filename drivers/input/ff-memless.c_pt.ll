; ModuleID = '/llk/IR_all_yes/drivers/input/ff-memless.c_pt.bc'
source_filename = "../drivers/input/ff-memless.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+input_ff_create_memless\22, \22a\22\09"
module asm "\09.weak\09__crc_input_ff_create_memless\09\09\09\09"
module asm "\09.long\09__crc_input_ff_create_memless\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_ff_create_memless:\09\09\09\09\09"
module asm "\09.asciz \09\22input_ff_create_memless\22\09\09\09\09\09"
module asm "__kstrtabns_input_ff_create_memless:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ff_envelope = type { i16, i16, i16, i16 }
%struct.ml_device = type { ptr, [16 x %struct.ml_effect_state], i32, %struct.timer_list, ptr, ptr }
%struct.ml_effect_state = type { ptr, i32, i32, i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.ff_device = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i32], %struct.mutex, i32, ptr, [0 x ptr] }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, ptr }

@__UNIQUE_ID_file223 = internal constant [41 x i8] c"ff_memless.file=drivers/input/ff-memless\00", section ".modinfo", align 1
@__UNIQUE_ID_license224 = internal constant [23 x i8] c"ff_memless.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author225 = internal constant [58 x i8] c"ff_memless.author=Anssi Hannula <anssi.hannula@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description226 = internal constant [69 x i8] c"ff_memless.description=Force feedback support for memoryless devices\00", section ".modinfo", align 1
@input_ff_create_memless.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"(&ml->timer)\00", [19 x i8] zeroinitializer }, align 32
@__kstrtab_input_ff_create_memless = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_ff_create_memless = external dso_local constant [0 x i8], align 1
@__ksymtab_input_ff_create_memless = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_ff_create_memless to i32), ptr @__kstrtab_input_ff_create_memless, ptr @__kstrtabns_input_ff_create_memless }, section "___ksymtab_gpl+input_ff_create_memless", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ml_effect_timer.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 102, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ff_memless\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ml_effect_timer\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/input/ff-memless.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"timer: updating effects\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ff_memless: timer: updating effects\0A\00", [59 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@get_compatible_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013ff_memless: invalid type in get_compatible_type()\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"get_compatible_type\00", [44 x i8] zeroinitializer }, align 32
@get_compatible_type._entry_ptr = internal global ptr @get_compatible_type._entry, section ".printk_index", align 4
@ml_combine_effects._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013ff_memless: invalid type in ml_combine_effects()\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ml_combine_effects\00", [45 x i8] zeroinitializer }, align 32
@ml_combine_effects._entry_ptr = internal global ptr @ml_combine_effects._entry, section ".printk_index", align 4
@apply_envelope.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.3, ptr @.str.11, i8 0, i8 41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"apply_envelope\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"value = 0x%x, attack_level = 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"ff_memless: value = 0x%x, attack_level = 0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@apply_envelope.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.3, ptr @.str.13, i8 0, i8 45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"difference = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ff_memless: difference = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@apply_envelope.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.3, ptr @.str.15, i8 0, i8 46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"time_from_level = 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ff_memless: time_from_level = 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@apply_envelope.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.3, ptr @.str.17, i8 0, i8 46, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"time_of_envelope = 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ff_memless: time_of_envelope = 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@apply_envelope.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.3, ptr @.str.13, i8 0, i8 47, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@sin_table = internal constant { [91 x i32], [84 x i8] } { [91 x i32] [i32 0, i32 37478757, i32 74946098, i32 112390610, i32 149800886, i32 187165532, i32 224473165, i32 261712422, i32 298871958, i32 335940455, i32 372906621, i32 409759197, i32 446486956, i32 483078710, i32 519523314, i32 555809666, i32 591926714, i32 627863454, i32 663608942, i32 699152287, i32 734482664, i32 769589311, i32 804461533, i32 839088708, i32 873460289, i32 907565806, i32 941394869, i32 974937174, i32 1008182503, i32 1041120731, i32 1073741823, i32 1106035843, i32 1137992954, i32 1169603421, i32 1200857615, i32 1231746017, i32 1262259217, i32 1292387920, i32 1322122950, i32 1351455248, i32 1380375880, i32 1408876036, i32 1436947034, i32 1464580325, i32 1491767490, i32 1518500249, i32 1544770457, i32 1570570114, i32 1595891360, i32 1620726481, i32 1645067914, i32 1668908243, i32 1692240207, i32 1715056697, i32 1737350765, i32 1759115619, i32 1780344629, i32 1801031329, i32 1821169418, i32 1840752761, i32 1859775392, i32 1878231518, i32 1896115516, i32 1913421940, i32 1930145516, i32 1946281151, i32 1961823931, i32 1976769119, i32 1991112165, i32 2004848699, i32 2017974536, i32 2030485679, i32 2042378316, i32 2053648824, i32 2064293772, i32 2074309916, i32 2083694204, i32 2092443780, i32 2100555976, i32 2108028323, i32 2114858545, i32 2121044559, i32 2126584483, i32 2131476629, i32 2135719506, i32 2139311823, i32 2142252484, i32 2144540595, i32 2146175457, i32 2147156574, i32 2147483647], [84 x i8] zeroinitializer }, align 32
@ml_schedule_timer.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.19, ptr @.str.3, ptr @.str.20, i8 0, i8 30, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ml_schedule_timer\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"calculating next timer\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ff_memless: calculating next timer\0A\00", [60 x i8] zeroinitializer }, align 32
@ml_schedule_timer.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.19, ptr @.str.3, ptr @.str.22, i8 0, i8 35, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"no actions\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ff_memless: no actions\0A\00", [40 x i8] zeroinitializer }, align 32
@ml_schedule_timer.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.19, ptr @.str.3, ptr @.str.24, i8 0, i8 36, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timer set\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ff_memless: timer set\0A\00", [41 x i8] zeroinitializer }, align 32
@get_envelope.empty_envelope = internal constant { %struct.ff_envelope, [24 x i8] } zeroinitializer, align 32
@ml_ff_playback.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.26, ptr @.str.3, ptr @.str.27, i8 0, i8 110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ml_ff_playback\00", [17 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"initiated play\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ff_memless: initiated play\0A\00", [36 x i8] zeroinitializer }, align 32
@ml_ff_playback.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.26, ptr @.str.3, ptr @.str.29, i8 0, i8 113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"initiated stop\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ff_memless: initiated stop\0A\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 80, i64 81, i64 82]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 16, i64 81, i64 82]
@___asan_gen_.32 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 526, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 409, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 207, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 315, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 165, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 183, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 184, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 185, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [10 x i8] c"sin_table\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [30 x i8] c"../include/linux/fixp-arith.h\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 22, i32 18 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 121, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 141, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 144, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant [15 x i8] c"empty_envelope\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 60, i32 34 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 441, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.138 = private constant [30 x i8] c"../drivers/input/ff-memless.c\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 452, i32 3 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_author225, ptr @__UNIQUE_ID_description226, ptr @__UNIQUE_ID_file223, ptr @__UNIQUE_ID_license224, ptr @__ksymtab_input_ff_create_memless, ptr @get_compatible_type._entry, ptr @get_compatible_type._entry_ptr, ptr @ml_combine_effects._entry, ptr @ml_combine_effects._entry_ptr, ptr @input_ff_create_memless.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @sin_table, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @get_envelope.empty_envelope, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @input_ff_create_memless.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_compatible_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ml_combine_effects._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sin_table to i32), i32 364, i32 448, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_envelope.empty_envelope to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @input_ff_create_memless(ptr noundef %dev, ptr noundef %data, ptr noundef %play_effect) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 448) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.ml_device, ptr %call7.i.i, i32 0, i32 4
  %1 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %dev1, align 8
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %data, ptr %call7.i.i, align 8
  %play_effect2 = getelementptr inbounds %struct.ml_device, ptr %call7.i.i, i32 0, i32 5
  %3 = ptrtoint ptr %play_effect2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %play_effect, ptr %play_effect2, align 4
  %gain = getelementptr inbounds %struct.ml_device, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %gain to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 65535, ptr %gain, align 4
  %timer = getelementptr inbounds %struct.ml_device, ptr %call7.i.i, i32 0, i32 3
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @ml_effect_timer, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @input_ff_create_memless.__key) #6
  %ffbit = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 96, ptr noundef %ffbit) #6
  %call3 = tail call i32 @input_ff_create(ptr noundef %dev, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %ff7 = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 20
  %5 = ptrtoint ptr %ff7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ff7, align 8
  %private8 = getelementptr inbounds %struct.ff_device, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %private8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %private8, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @ml_ff_upload, ptr %6, align 4
  %playback = getelementptr inbounds %struct.ff_device, ptr %6, i32 0, i32 2
  %9 = ptrtoint ptr %playback to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @ml_ff_playback, ptr %playback, align 4
  %set_gain = getelementptr inbounds %struct.ff_device, ptr %6, i32 0, i32 3
  %10 = ptrtoint ptr %set_gain to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @ml_ff_set_gain, ptr %set_gain, align 4
  %destroy = getelementptr inbounds %struct.ff_device, ptr %6, i32 0, i32 5
  %11 = ptrtoint ptr %destroy to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @ml_ff_destroy, ptr %destroy, align 4
  %arrayidx.i = getelementptr %struct.ff_device, ptr %6, i32 0, i32 7, i32 2
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %arrayidx.i, align 4
  %14 = and i32 %13, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool12.not = icmp eq i32 %14, 0
  br i1 %tobool12.not, label %if.end6.if.end22_crit_edge, label %if.then13

if.end6.if.end22_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then13:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_set_bit(i32 noundef 81, ptr noundef %ffbit) #6
  tail call void @_set_bit(i32 noundef 90, ptr noundef %ffbit) #6
  tail call void @_set_bit(i32 noundef 89, ptr noundef %ffbit) #6
  tail call void @_set_bit(i32 noundef 88, ptr noundef %ffbit) #6
  br label %if.end22

if.end22:                                         ; preds = %if.then13, %if.end6.if.end22_crit_edge
  %effects = getelementptr inbounds %struct.ff_device, ptr %6, i32 0, i32 10
  %15 = ptrtoint ptr %effects to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %effects, align 4
  %arrayidx23 = getelementptr %struct.ml_device, ptr %call7.i.i, i32 0, i32 1, i32 0
  %17 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %arrayidx23, align 4
  %18 = load ptr, ptr %effects, align 4
  %arrayidx.1 = getelementptr %struct.ff_effect, ptr %18, i32 1
  %arrayidx23.1 = getelementptr %struct.ml_device, ptr %call7.i.i, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %arrayidx23.1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx.1, ptr %arrayidx23.1, align 4
  %20 = load ptr, ptr %effects, align 4
  %arrayidx.2 = getelementptr %struct.ff_effect, ptr %20, i32 2
  %arrayidx23.2 = getelementptr %struct.ml_device, ptr %call7.i.i, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %arrayidx23.2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arrayidx.2, ptr %arrayidx23.2, align 4
  %22 = load ptr, ptr %effects, align 4
  %arrayidx.3 = getelementptr %struct.ff_effect, ptr %22, i32 3
  %arrayidx23.3 = getelementptr %struct.ml_device, ptr %call7.i.i, i32 0, i32 1, i32 3
  %23 = ptrtoint ptr %arrayidx23.3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %arrayidx.3, ptr %arrayidx23.3, align 4
  %24 = load ptr, ptr %effects, align 4
  %arrayidx.4 = getelementptr %struct.ff_effect, ptr %24, i32 4
  %arrayidx23.4 = getelementptr %struct.ml_device, ptr %call7.i.i, i32 0, i32 1, i32 4
  %25 = ptrtoint ptr %arrayidx23.4 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %arrayidx.4, ptr %arrayidx23.4, align 4
  %26 = load ptr, ptr %effects, align 4
  %arrayidx.5 = getelementptr %struct.ff_effect, ptr %26, i32 5
  %arrayidx23.5 = getelementptr %struct.ml_device, ptr %call7.i.i, i32 0, i32 1, i32 5
  %27 = ptrtoint ptr %arrayidx23.5 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %arrayidx.5, ptr %arrayidx23.5, align 4
  %28 = load ptr, ptr %effects, align 4
  %arrayidx.6 = getelementptr %struct.ff_effect, ptr %28, i32 6
  %arrayidx23.6 = getelementptr %struct.ml_device, ptr %call7.i.i, i32 0, i32 1, i32 6
  %29 = ptrtoint ptr %arrayidx23.6 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %arrayidx.6, ptr %arrayidx23.6, align 4
  %30 = load ptr, ptr %effects, align 4
  %arrayidx.7 = getelementptr %struct.ff_effect, ptr %30, i32 7
  %arrayidx23.7 = getelementptr %struct.ml_device, ptr %call7.i.i, i32 0, i32 1, i32 7
  %31 = ptrtoint ptr %arrayidx23.7 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %arrayidx.7, ptr %arrayidx23.7, align 4
  %32 = load ptr, ptr %effects, align 4
  %arrayidx.8 = getelementptr %struct.ff_effect, ptr %32, i32 8
  %arrayidx23.8 = getelementptr %struct.ml_device, ptr %call7.i.i, i32 0, i32 1, i32 8
  %33 = ptrtoint ptr %arrayidx23.8 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %arrayidx.8, ptr %arrayidx23.8, align 4
  %34 = load ptr, ptr %effects, align 4
  %arrayidx.9 = getelementptr %struct.ff_effect, ptr %34, i32 9
  %arrayidx23.9 = getelementptr %struct.ml_device, ptr %call7.i.i, i32 0, i32 1, i32 9
  %35 = ptrtoint ptr %arrayidx23.9 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %arrayidx.9, ptr %arrayidx23.9, align 4
  %36 = load ptr, ptr %effects, align 4
  %arrayidx.10 = getelementptr %struct.ff_effect, ptr %36, i32 10
  %arrayidx23.10 = getelementptr %struct.ml_device, ptr %call7.i.i, i32 0, i32 1, i32 10
  %37 = ptrtoint ptr %arrayidx23.10 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %arrayidx.10, ptr %arrayidx23.10, align 4
  %38 = load ptr, ptr %effects, align 4
  %arrayidx.11 = getelementptr %struct.ff_effect, ptr %38, i32 11
  %arrayidx23.11 = getelementptr %struct.ml_device, ptr %call7.i.i, i32 0, i32 1, i32 11
  %39 = ptrtoint ptr %arrayidx23.11 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %arrayidx.11, ptr %arrayidx23.11, align 4
  %40 = load ptr, ptr %effects, align 4
  %arrayidx.12 = getelementptr %struct.ff_effect, ptr %40, i32 12
  %arrayidx23.12 = getelementptr %struct.ml_device, ptr %call7.i.i, i32 0, i32 1, i32 12
  %41 = ptrtoint ptr %arrayidx23.12 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %arrayidx.12, ptr %arrayidx23.12, align 4
  %42 = load ptr, ptr %effects, align 4
  %arrayidx.13 = getelementptr %struct.ff_effect, ptr %42, i32 13
  %arrayidx23.13 = getelementptr %struct.ml_device, ptr %call7.i.i, i32 0, i32 1, i32 13
  %43 = ptrtoint ptr %arrayidx23.13 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %arrayidx.13, ptr %arrayidx23.13, align 4
  %44 = load ptr, ptr %effects, align 4
  %arrayidx.14 = getelementptr %struct.ff_effect, ptr %44, i32 14
  %arrayidx23.14 = getelementptr %struct.ml_device, ptr %call7.i.i, i32 0, i32 1, i32 14
  %45 = ptrtoint ptr %arrayidx23.14 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %arrayidx.14, ptr %arrayidx23.14, align 4
  %46 = load ptr, ptr %effects, align 4
  %arrayidx.15 = getelementptr %struct.ff_effect, ptr %46, i32 15
  %arrayidx23.15 = getelementptr %struct.ml_device, ptr %call7.i.i, i32 0, i32 1, i32 15
  %47 = ptrtoint ptr %arrayidx23.15 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %arrayidx.15, ptr %arrayidx23.15, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then5 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end22 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ml_effect_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %t, i32 48
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ml_effect_timer.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ml_effect_timer, %if.then)) #6
          to label %do.body6 [label %if.then], !srcloc !83

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ml_effect_timer.__UNIQUE_ID_ddebug255, ptr noundef nonnull @.str.5) #6
  br label %do.body6

do.body6:                                         ; preds = %if.then, %entry
  %add.ptr = getelementptr i8, ptr %t, i32 -392
  %event_lock = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 36
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #6
  tail call fastcc void @ml_play_effects(ptr noundef %add.ptr)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock, i32 noundef %call9) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_ff_create(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ml_ff_upload(ptr noundef %dev, ptr nocapture noundef readonly %effect, ptr nocapture noundef readnone %old) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ff = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %ff to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ff, align 8
  %private = getelementptr inbounds %struct.ff_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %id = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %id, align 2
  %idxprom = sext i16 %5 to i32
  %event_lock = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 36
  tail call void @_raw_spin_lock_irq(ptr noundef %event_lock) #6
  %flags = getelementptr %struct.ml_device, ptr %3, i32 0, i32 1, i32 %idxprom, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.ml_device, ptr %3, i32 0, i32 1, i32 %idxprom
  %and.i = and i32 %7, -3
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and.i, ptr %flags, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %delay = getelementptr inbounds %struct.ff_effect, ptr %11, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %delay to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %delay, align 2
  %conv = zext i16 %13 to i32
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv) #6
  %add = add i32 %call2.i, %9
  %play_at = getelementptr %struct.ml_device, ptr %3, i32 0, i32 1, i32 %idxprom, i32 3
  %14 = ptrtoint ptr %play_at to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add, ptr %play_at, align 4
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %replay6 = getelementptr inbounds %struct.ff_effect, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %replay6 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %replay6, align 2
  %conv7 = zext i16 %18 to i32
  %call2.i26 = tail call i32 @__msecs_to_jiffies(i32 noundef %conv7) #6
  %add9 = add i32 %call2.i26, %add
  %stop_at = getelementptr %struct.ml_device, ptr %3, i32 0, i32 1, i32 %idxprom, i32 4
  %19 = ptrtoint ptr %stop_at to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add9, ptr %stop_at, align 4
  %20 = ptrtoint ptr %play_at to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %play_at, align 4
  %adj_at = getelementptr %struct.ml_device, ptr %3, i32 0, i32 1, i32 %idxprom, i32 5
  %22 = ptrtoint ptr %adj_at to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %adj_at, align 4
  tail call fastcc void @ml_schedule_timer(ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %event_lock) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ml_ff_playback(ptr nocapture noundef readonly %dev, i32 noundef %effect_id, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ff = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %ff to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ff, align 8
  %private = getelementptr inbounds %struct.ff_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %arrayidx = getelementptr %struct.ml_device, ptr %3, i32 0, i32 1, i32 %effect_id
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp = icmp sgt i32 %value, 0
  br i1 %cmp, label %do.body, label %do.body12

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ml_ff_playback.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ml_ff_playback, %if.then3)) #6
          to label %do.end [label %if.then3], !srcloc !83

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ml_ff_playback.__UNIQUE_ID_ddebug256, ptr noundef nonnull @.str.28) #6
  br label %do.end

do.end:                                           ; preds = %if.then3, %do.body
  %flags = getelementptr %struct.ml_device, ptr %3, i32 0, i32 1, i32 %effect_id, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %or.i = or i32 %5, 1
  store i32 %or.i, ptr %flags, align 4
  %count = getelementptr %struct.ml_device, ptr %3, i32 0, i32 1, i32 %effect_id, i32 2
  %6 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %value, ptr %count, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %delay = getelementptr inbounds %struct.ff_effect, ptr %9, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %delay to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %delay, align 2
  %conv = zext i16 %11 to i32
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv) #6
  %add = add i32 %call2.i, %7
  %play_at = getelementptr %struct.ml_device, ptr %3, i32 0, i32 1, i32 %effect_id, i32 3
  %12 = ptrtoint ptr %play_at to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add, ptr %play_at, align 4
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %replay7 = getelementptr inbounds %struct.ff_effect, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %replay7 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %replay7, align 2
  %conv8 = zext i16 %16 to i32
  %call2.i54 = tail call i32 @__msecs_to_jiffies(i32 noundef %conv8) #6
  %add10 = add i32 %call2.i54, %add
  %stop_at = getelementptr %struct.ml_device, ptr %3, i32 0, i32 1, i32 %effect_id, i32 4
  %17 = ptrtoint ptr %stop_at to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add10, ptr %stop_at, align 4
  %18 = ptrtoint ptr %play_at to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %play_at, align 4
  %adj_at = getelementptr %struct.ml_device, ptr %3, i32 0, i32 1, i32 %effect_id, i32 5
  %20 = ptrtoint ptr %adj_at to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %adj_at, align 4
  br label %if.end36

do.body12:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ml_ff_playback.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ml_ff_playback, %if.then24)) #6
          to label %do.end27 [label %if.then24], !srcloc !83

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ml_ff_playback.__UNIQUE_ID_ddebug257, ptr noundef nonnull @.str.30) #6
  br label %do.end27

do.end27:                                         ; preds = %if.then24, %do.body12
  %flags28 = getelementptr %struct.ml_device, ptr %3, i32 0, i32 1, i32 %effect_id, i32 1
  %21 = ptrtoint ptr %flags28 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flags28, align 4
  %23 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool30.not = icmp eq i32 %23, 0
  br i1 %tobool30.not, label %if.else33, label %if.then31

if.then31:                                        ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #8
  %or.i61 = or i32 %22, 4
  %24 = ptrtoint ptr %flags28 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or.i61, ptr %flags28, align 4
  br label %if.end36

if.else33:                                        ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #8
  %and.i = and i32 %22, -2
  %25 = ptrtoint ptr %flags28 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and.i, ptr %flags28, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.else33, %if.then31, %do.end
  tail call fastcc void @ml_play_effects(ptr noundef %3)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ml_ff_set_gain(ptr nocapture noundef readonly %dev, i16 noundef zeroext %gain) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ff = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %ff to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ff, align 8
  %private = getelementptr inbounds %struct.ff_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %conv = zext i16 %gain to i32
  %gain1 = getelementptr inbounds %struct.ml_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %gain1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %gain1, align 4
  %flags = getelementptr %struct.ml_device, ptr %3, i32 0, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and.i = and i32 %6, -3
  store i32 %and.i, ptr %flags, align 4
  %flags.1 = getelementptr %struct.ml_device, ptr %3, i32 0, i32 1, i32 1, i32 1
  %7 = ptrtoint ptr %flags.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.1, align 4
  %and.i.1 = and i32 %8, -3
  store i32 %and.i.1, ptr %flags.1, align 4
  %flags.2 = getelementptr %struct.ml_device, ptr %3, i32 0, i32 1, i32 2, i32 1
  %9 = ptrtoint ptr %flags.2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.2, align 4
  %and.i.2 = and i32 %10, -3
  store i32 %and.i.2, ptr %flags.2, align 4
  %flags.3 = getelementptr %struct.ml_device, ptr %3, i32 0, i32 1, i32 3, i32 1
  %11 = ptrtoint ptr %flags.3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.3, align 4
  %and.i.3 = and i32 %12, -3
  store i32 %and.i.3, ptr %flags.3, align 4
  %flags.4 = getelementptr %struct.ml_device, ptr %3, i32 0, i32 1, i32 4, i32 1
  %13 = ptrtoint ptr %flags.4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.4, align 4
  %and.i.4 = and i32 %14, -3
  store i32 %and.i.4, ptr %flags.4, align 4
  %flags.5 = getelementptr %struct.ml_device, ptr %3, i32 0, i32 1, i32 5, i32 1
  %15 = ptrtoint ptr %flags.5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.5, align 4
  %and.i.5 = and i32 %16, -3
  store i32 %and.i.5, ptr %flags.5, align 4
  %flags.6 = getelementptr %struct.ml_device, ptr %3, i32 0, i32 1, i32 6, i32 1
  %17 = ptrtoint ptr %flags.6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.6, align 4
  %and.i.6 = and i32 %18, -3
  store i32 %and.i.6, ptr %flags.6, align 4
  %flags.7 = getelementptr %struct.ml_device, ptr %3, i32 0, i32 1, i32 7, i32 1
  %19 = ptrtoint ptr %flags.7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.7, align 4
  %and.i.7 = and i32 %20, -3
  store i32 %and.i.7, ptr %flags.7, align 4
  %flags.8 = getelementptr %struct.ml_device, ptr %3, i32 0, i32 1, i32 8, i32 1
  %21 = ptrtoint ptr %flags.8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.8, align 4
  %and.i.8 = and i32 %22, -3
  store i32 %and.i.8, ptr %flags.8, align 4
  %flags.9 = getelementptr %struct.ml_device, ptr %3, i32 0, i32 1, i32 9, i32 1
  %23 = ptrtoint ptr %flags.9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags.9, align 4
  %and.i.9 = and i32 %24, -3
  store i32 %and.i.9, ptr %flags.9, align 4
  %flags.10 = getelementptr %struct.ml_device, ptr %3, i32 0, i32 1, i32 10, i32 1
  %25 = ptrtoint ptr %flags.10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags.10, align 4
  %and.i.10 = and i32 %26, -3
  store i32 %and.i.10, ptr %flags.10, align 4
  %flags.11 = getelementptr %struct.ml_device, ptr %3, i32 0, i32 1, i32 11, i32 1
  %27 = ptrtoint ptr %flags.11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags.11, align 4
  %and.i.11 = and i32 %28, -3
  store i32 %and.i.11, ptr %flags.11, align 4
  %flags.12 = getelementptr %struct.ml_device, ptr %3, i32 0, i32 1, i32 12, i32 1
  %29 = ptrtoint ptr %flags.12 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags.12, align 4
  %and.i.12 = and i32 %30, -3
  store i32 %and.i.12, ptr %flags.12, align 4
  %flags.13 = getelementptr %struct.ml_device, ptr %3, i32 0, i32 1, i32 13, i32 1
  %31 = ptrtoint ptr %flags.13 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags.13, align 4
  %and.i.13 = and i32 %32, -3
  store i32 %and.i.13, ptr %flags.13, align 4
  %flags.14 = getelementptr %struct.ml_device, ptr %3, i32 0, i32 1, i32 14, i32 1
  %33 = ptrtoint ptr %flags.14 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags.14, align 4
  %and.i.14 = and i32 %34, -3
  store i32 %and.i.14, ptr %flags.14, align 4
  %flags.15 = getelementptr %struct.ml_device, ptr %3, i32 0, i32 1, i32 15, i32 1
  %35 = ptrtoint ptr %flags.15 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags.15, align 4
  %and.i.15 = and i32 %36, -3
  store i32 %and.i.15, ptr %flags.15, align 4
  tail call fastcc void @ml_play_effects(ptr noundef %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ml_ff_destroy(ptr nocapture noundef readonly %ff) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.ff_device, ptr %ff, i32 0, i32 6
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %timer = getelementptr inbounds %struct.ml_device, ptr %1, i32 0, i32 3
  %call = tail call i32 @del_timer_sync(ptr noundef %timer) #6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @kfree(ptr noundef %3) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ml_play_effects(ptr noundef %ml) unnamed_addr #0 align 64 {
entry:
  %effect = alloca %struct.ff_effect, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %effect) #6
  %dev.i = getelementptr inbounds %struct.ml_device, ptr %ml, i32 0, i32 4
  %gain.i = getelementptr inbounds %struct.ml_device, ptr %ml, i32 0, i32 2
  %u137.i.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5
  %direction151.i.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 2
  %weak_magnitude168.i.i = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 1
  %play_effect = getelementptr inbounds %struct.ml_device, ptr %ml, i32 0, i32 5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %and.i.i7.lcssa10 = phi i32 [ %and.i.i7, %while.body ], [ 0, %entry ]
  %0 = call ptr @memset(ptr %effect, i32 0, i32 44)
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %while.cond
  %and.i.i8 = phi i32 [ %and.i.i7.lcssa10, %while.cond ], [ %and.i.i7, %for.inc.i.for.body.i_crit_edge ]
  %i.0116.i = phi i32 [ 0, %while.cond ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %shl.i.i = shl nuw i32 1, %i.0116.i
  %or.i.i = or i32 %and.i.i8, %shl.i.i
  %1 = and i32 %and.i.i8, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.ml_device, ptr %ml, i32 0, i32 1, i32 %i.0116.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %flags.i = getelementptr %struct.ml_device, ptr %ml, i32 0, i32 1, i32 %i.0116.i, i32 1
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool3.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool3.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.end5.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end5.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %play_at.i = getelementptr %struct.ml_device, ptr %ml, i32 0, i32 1, i32 %i.0116.i, i32 3
  %7 = ptrtoint ptr %play_at.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %play_at.i, align 4
  %sub.i = sub i32 %6, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp6.i = icmp slt i32 %sub.i, 0
  br i1 %cmp6.i, label %if.end5.i.for.inc.i_crit_edge, label %if.end8.i

if.end5.i.for.inc.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end8.i:                                        ; preds = %if.end5.i
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %ff.i = getelementptr inbounds %struct.input_dev, ptr %10, i32 0, i32 20
  %11 = ptrtoint ptr %ff.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ff.i, align 8
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %3, align 4
  %conv.i = zext i16 %14 to i32
  %ffbit.i.i = getelementptr inbounds %struct.ff_device, ptr %12, i32 0, i32 7
  %div3.i.i.i = lshr i32 %conv.i, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %ffbit.i.i, i32 %div3.i.i.i
  %15 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %conv.i, 31
  %17 = shl nuw i32 1, %and.i.i.i
  %18 = and i32 %17, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i, label %if.end.i110.i, label %if.end8.i.get_compatible_type.exit.i_crit_edge

if.end8.i.get_compatible_type.exit.i_crit_edge:   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_compatible_type.exit.i

if.end.i110.i:                                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 81, i16 %14)
  %cmp.i.i = icmp eq i16 %14, 81
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end.i110.i.do.end.i.i_crit_edge

if.end.i110.i.do.end.i.i_crit_edge:               ; preds = %if.end.i110.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i110.i
  %arrayidx.i11.i.i = getelementptr %struct.ff_device, ptr %12, i32 0, i32 7, i32 2
  %19 = ptrtoint ptr %arrayidx.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %arrayidx.i11.i.i, align 4
  %21 = and i32 %20, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool4.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.do.end.i.i_crit_edge, label %land.lhs.true.i.i.get_compatible_type.exit.i_crit_edge

land.lhs.true.i.i.get_compatible_type.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_compatible_type.exit.i

land.lhs.true.i.i.do.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %land.lhs.true.i.i.do.end.i.i_crit_edge, %if.end.i110.i.do.end.i.i_crit_edge
  %call7.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #10
  br label %get_compatible_type.exit.i

get_compatible_type.exit.i:                       ; preds = %do.end.i.i, %land.lhs.true.i.i.get_compatible_type.exit.i_crit_edge, %if.end8.i.get_compatible_type.exit.i_crit_edge
  %retval.0.i111.i = phi i32 [ 0, %do.end.i.i ], [ %conv.i, %if.end8.i.get_compatible_type.exit.i_crit_edge ], [ 80, %land.lhs.true.i.i.get_compatible_type.exit.i_crit_edge ]
  %22 = ptrtoint ptr %effect to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %effect, align 4
  %conv11.i = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i111.i, i32 %conv11.i)
  %cmp12.not.i = icmp eq i32 %retval.0.i111.i, %conv11.i
  br i1 %cmp12.not.i, label %get_compatible_type.exit.i.if.end23.i_crit_edge, label %if.then14.i

get_compatible_type.exit.i.if.end23.i_crit_edge:  ; preds = %get_compatible_type.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i

if.then14.i:                                      ; preds = %get_compatible_type.exit.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp17.not.i = icmp eq i16 %23, 0
  br i1 %cmp17.not.i, label %if.end20.i, label %if.then19.i

if.then19.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #8
  %neg.i.i = xor i32 %shl.i.i, -1
  %and.i.i = and i32 %and.i.i8, %neg.i.i
  br label %for.inc.i

if.end20.i:                                       ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv21.i = trunc i32 %retval.0.i111.i to i16
  %24 = ptrtoint ptr %effect to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv21.i, ptr %effect, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.end20.i, %get_compatible_type.exit.i.if.end23.i_crit_edge
  %25 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags.i, align 4
  %and.i96.i = and i32 %26, -5
  store i32 %and.i96.i, ptr %flags.i, align 4
  %27 = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool26.not.i = icmp eq i32 %27, 0
  br i1 %tobool26.not.i, label %if.else.i, label %if.then27.i

if.then27.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  %and.i99.i = and i32 %26, -8
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and.i99.i, ptr %flags.i, align 4
  br label %for.inc.i

if.else.i:                                        ; preds = %if.end23.i
  %replay.i = getelementptr inbounds %struct.ff_effect, ptr %3, i32 0, i32 4
  %29 = ptrtoint ptr %replay.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %replay.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool31.not.i = icmp eq i16 %30, 0
  br i1 %tobool31.not.i, label %if.else.i.if.else54.i_crit_edge, label %land.lhs.true.i

if.else.i.if.else54.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else54.i

land.lhs.true.i:                                  ; preds = %if.else.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %stop_at.i = getelementptr %struct.ml_device, ptr %ml, i32 0, i32 1, i32 %i.0116.i, i32 4
  %32 = ptrtoint ptr %stop_at.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %stop_at.i, align 4
  %sub32.i = sub i32 %31, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub32.i)
  %cmp33.i = icmp sgt i32 %sub32.i, -1
  br i1 %cmp33.i, label %if.then35.i, label %land.lhs.true.i.if.else54.i_crit_edge

land.lhs.true.i.if.else54.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else54.i

if.then35.i:                                      ; preds = %land.lhs.true.i
  %and.i100.i = and i32 %26, -7
  %34 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and.i100.i, ptr %flags.i, align 4
  %count.i = getelementptr %struct.ml_device, ptr %ml, i32 0, i32 1, i32 %i.0116.i, i32 2
  %35 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %count.i, align 4
  %dec.i = add i32 %36, -1
  store i32 %dec.i, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp37.i = icmp slt i32 %dec.i, 1
  br i1 %cmp37.i, label %if.then39.i, label %if.else41.i

if.then39.i:                                      ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #8
  %and.i101.i = and i32 %26, -8
  %37 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and.i101.i, ptr %flags.i, align 4
  br label %for.inc.i

if.else41.i:                                      ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %38 = load volatile i32, ptr @jiffies, align 128
  %delay.i = getelementptr inbounds %struct.ff_effect, ptr %3, i32 0, i32 4, i32 1
  %39 = ptrtoint ptr %delay.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %delay.i, align 2
  %conv43.i = zext i16 %40 to i32
  %call2.i.i = call i32 @__msecs_to_jiffies(i32 noundef %conv43.i) #6
  %add.i = add i32 %call2.i.i, %38
  %41 = ptrtoint ptr %play_at.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add.i, ptr %play_at.i, align 4
  %42 = ptrtoint ptr %replay.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %replay.i, align 2
  %conv49.i = zext i16 %43 to i32
  %call2.i105.i = call i32 @__msecs_to_jiffies(i32 noundef %conv49.i) #6
  %add51.i = add i32 %call2.i105.i, %add.i
  %44 = ptrtoint ptr %stop_at.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %add51.i, ptr %stop_at.i, align 4
  br label %for.inc.i

if.else54.i:                                      ; preds = %land.lhs.true.i.if.else54.i_crit_edge, %if.else.i.if.else54.i_crit_edge
  %or.i109.i = or i32 %and.i96.i, 2
  %45 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or.i109.i, ptr %flags.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %46 = load volatile i32, ptr @jiffies, align 128
  %adj_at.i = getelementptr %struct.ml_device, ptr %ml, i32 0, i32 1, i32 %i.0116.i, i32 5
  %47 = ptrtoint ptr %adj_at.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %adj_at.i, align 4
  %48 = ptrtoint ptr %gain.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %gain.i, align 4
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %51, align 4
  %54 = zext i16 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values)
  switch i16 %53, label %do.end.i115.i [
    i16 82, label %sw.bb.i.i
    i16 80, label %sw.bb55.i.i
    i16 81, label %sw.bb119.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.else54.i
  call void @__sanitizer_cov_trace_pc() #8
  %direction.i.i = getelementptr inbounds %struct.ff_effect, ptr %51, i32 0, i32 2
  %55 = ptrtoint ptr %direction.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %direction.i.i, align 4
  %conv2.i.i = zext i16 %56 to i32
  %mul.i.i = mul nuw nsw i32 %conv2.i.i, 360
  %div.i.i = udiv i32 %mul.i.i, 65535
  %u.i.i = getelementptr inbounds %struct.ff_effect, ptr %51, i32 0, i32 5
  %57 = ptrtoint ptr %u.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %u.i.i, align 4
  %conv4.i.i = sext i16 %58 to i32
  %envelope.i.i = getelementptr inbounds %struct.ff_effect, ptr %51, i32 0, i32 5, i32 0, i32 1
  %call.i.i = call fastcc i32 @apply_envelope(ptr noundef %arrayidx.i, i32 noundef %conv4.i.i, ptr noundef %envelope.i.i) #6
  %conv6.i.i = trunc i32 %call.i.i to i16
  %59 = ashr i16 %conv6.i.i, 8
  %rem.i307.lhs.trunc.i.i = trunc i32 %div.i.i to i16
  %rem.i307308.i.i = urem i16 %rem.i307.lhs.trunc.i.i, 360
  %rem13.lhs.trunc.i.i.i = add nuw nsw i16 %rem.i307308.i.i, 360
  %rem134.i.i.i = urem i16 %rem13.lhs.trunc.i.i.i, 360
  %rem13.zext.i.i.i = zext i16 %rem134.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 180, i16 %rem134.i.i.i)
  %cmp.i.i.i.i = icmp ugt i16 %rem134.i.i.i, 180
  %sub.i.i.i.i = add nsw i32 %rem13.zext.i.i.i, -180
  %spec.select.i.i.i.i = select i1 %cmp.i.i.i.i, i32 %sub.i.i.i.i, i32 %rem13.zext.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 90, i32 %spec.select.i.i.i.i)
  %cmp1.i.i.i.i = icmp ugt i32 %spec.select.i.i.i.i, 90
  %sub3.i.i.i.i = sub nuw nsw i32 180, %spec.select.i.i.i.i
  %degrees.addr.1.i.i.i.i = select i1 %cmp1.i.i.i.i, i32 %sub3.i.i.i.i, i32 %spec.select.i.i.i.i
  %arrayidx.i.i.i.i = getelementptr [91 x i32], ptr @sin_table, i32 0, i32 %degrees.addr.1.i.i.i.i
  %60 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %sub5.i.i.i.i = sub i32 0, %61
  %cond.i.i.i.i = select i1 %cmp.i.i.i.i, i32 %sub5.i.i.i.i, i32 %61
  %62 = ashr i32 %cond.i.i.i.i, 8
  %mul.i.i.i = and i32 %62, -256
  %div.i.i112.i = sdiv i32 %mul.i.i.i, 32767
  %conv3.i.i.i = sext i16 %59 to i32
  %mul4.i.i.i = mul nsw i32 %div.i.i112.i, %conv3.i.i.i
  %conv11.i.i = ashr i32 %mul4.i.i.i, 8
  %mul12.i.i = mul i32 %conv11.i.i, %49
  %div13.i.i = sdiv i32 %mul12.i.i, 65535
  %rem.i256309.lhs.trunc.i.i = add nuw nsw i16 %rem.i307.lhs.trunc.i.i, 90
  %rem.i256309310.i.i = urem i16 %rem.i256309.lhs.trunc.i.i, 360
  %rem13.lhs.trunc.i257.i.i = add nuw nsw i16 %rem.i256309310.i.i, 360
  %rem134.i258.i.i = urem i16 %rem13.lhs.trunc.i257.i.i, 360
  %rem13.zext.i259.i.i = zext i16 %rem134.i258.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 180, i16 %rem134.i258.i.i)
  %cmp.i.i260.i.i = icmp ugt i16 %rem134.i258.i.i, 180
  %sub.i.i261.i.i = add nsw i32 %rem13.zext.i259.i.i, -180
  %spec.select.i.i262.i.i = select i1 %cmp.i.i260.i.i, i32 %sub.i.i261.i.i, i32 %rem13.zext.i259.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 90, i32 %spec.select.i.i262.i.i)
  %cmp1.i.i263.i.i = icmp ugt i32 %spec.select.i.i262.i.i, 90
  %sub3.i.i264.i.i = sub nuw nsw i32 180, %spec.select.i.i262.i.i
  %degrees.addr.1.i.i265.i.i = select i1 %cmp1.i.i263.i.i, i32 %sub3.i.i264.i.i, i32 %spec.select.i.i262.i.i
  %arrayidx.i.i266.i.i = getelementptr [91 x i32], ptr @sin_table, i32 0, i32 %degrees.addr.1.i.i265.i.i
  %63 = ptrtoint ptr %arrayidx.i.i266.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.i.i266.i.i, align 4
  %sub5.i.i267.i.i = sub i32 0, %64
  %cond.i.i268.i.i = select i1 %cmp.i.i260.i.i, i32 %sub5.i.i267.i.i, i32 %64
  %65 = and i32 %cond.i.i268.i.i, -65536
  %sext.i.i = sub i32 0, %65
  %mul.i270.i.i = ashr exact i32 %sext.i.i, 8
  %div.i271.i.i = sdiv i32 %mul.i270.i.i, 32767
  %mul4.i273.i.i = mul nsw i32 %div.i271.i.i, %conv3.i.i.i
  %conv18.i.i = ashr i32 %mul4.i273.i.i, 8
  %mul19.i.i = mul i32 %conv18.i.i, %49
  %div20.i.i = sdiv i32 %mul19.i.i, 65535
  %66 = ptrtoint ptr %u137.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %u137.i.i, align 4
  %conv22.i.i = sext i16 %67 to i32
  %add23.i.i = add nsw i32 %div13.i.i, %conv22.i.i
  %68 = call i32 @llvm.smax.i32(i32 %add23.i.i, i32 -128) #6
  %69 = call i32 @llvm.smin.i32(i32 %68, i32 127) #6
  %conv32.i.i = trunc i32 %69 to i16
  %70 = ptrtoint ptr %u137.i.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv32.i.i, ptr %u137.i.i, align 4
  %71 = ptrtoint ptr %weak_magnitude168.i.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %weak_magnitude168.i.i, align 2
  %conv36.i.i = sext i16 %72 to i32
  %add37.i.i = add nsw i32 %div20.i.i, %conv36.i.i
  %73 = call i32 @llvm.smax.i32(i32 %add37.i.i, i32 -128) #6
  %74 = call i32 @llvm.smin.i32(i32 %73, i32 127) #6
  %conv52.i.i = trunc i32 %74 to i16
  %75 = ptrtoint ptr %weak_magnitude168.i.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv52.i.i, ptr %weak_magnitude168.i.i, align 2
  br label %for.inc.i

sw.bb55.i.i:                                      ; preds = %if.else54.i
  %u56.i.i = getelementptr inbounds %struct.ff_effect, ptr %51, i32 0, i32 5
  %76 = ptrtoint ptr %u56.i.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %u56.i.i, align 4
  %conv57.i.i = zext i16 %77 to i32
  %mul58.i.i = mul i32 %49, %conv57.i.i
  %div59.i.i = udiv i32 %mul58.i.i, 65535
  %weak_magnitude.i.i = getelementptr inbounds %struct.ff_effect, ptr %51, i32 0, i32 5, i32 0, i32 1
  %78 = ptrtoint ptr %weak_magnitude.i.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %weak_magnitude.i.i, align 2
  %conv61.i.i = zext i16 %79 to i32
  %mul62.i.i = mul i32 %49, %conv61.i.i
  %div63.i.i = udiv i32 %mul62.i.i, 65535
  %80 = ptrtoint ptr %u137.i.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %u137.i.i, align 4
  %conv66.i.i = zext i16 %81 to i32
  %add67.i.i = sub nsw i32 0, %conv66.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div59.i.i, i32 %add67.i.i)
  %tobool.not.i113.i = icmp eq i32 %div59.i.i, %add67.i.i
  br i1 %tobool.not.i113.i, label %if.else.i114.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %sw.bb55.i.i
  %82 = ptrtoint ptr %direction151.i.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %direction151.i.i, align 4
  %direction71.i.i = getelementptr inbounds %struct.ff_effect, ptr %51, i32 0, i32 2
  %84 = ptrtoint ptr %direction71.i.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %direction71.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %81)
  %tobool.not.i.i.i = icmp eq i16 %81, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.if.end90.i.i_crit_edge, label %if.end.i.i.i

if.then.i.i.if.end90.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  %conv72.i.i = trunc i32 %div59.i.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv72.i.i)
  %tobool1.not.i.i.i = icmp eq i16 %conv72.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end.i.i.i.if.end90.i.i_crit_edge, label %if.end3.i.i.i

if.end.i.i.i.if.end90.i.i_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90.i.i

if.end3.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %86 = lshr i16 %83, 1
  %87 = zext i16 %86 to i32
  %mul.i275.i.i = mul nuw nsw i32 %87, %conv66.i.i
  %88 = lshr i16 %85, 1
  %89 = zext i16 %88 to i32
  %conv7.i.i.i = and i32 %div59.i.i, 65535
  %mul8.i.i.i = mul nuw nsw i32 %conv7.i.i.i, %89
  %add.i.i.i = add nuw i32 %mul8.i.i.i, %mul.i275.i.i
  %add11.i.i.i = add nuw nsw i32 %conv7.i.i.i, %conv66.i.i
  %div.i276.i.i = udiv i32 %add.i.i.i, %add11.i.i.i
  %div.tr.i.i.i = trunc i32 %div.i276.i.i to i16
  %conv12.i.i.i = shl i16 %div.tr.i.i.i, 1
  br label %if.end90.i.i

if.else.i114.i:                                   ; preds = %sw.bb55.i.i
  %90 = ptrtoint ptr %weak_magnitude168.i.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %weak_magnitude168.i.i, align 2
  %conv77.i.i = zext i16 %91 to i32
  %add78.i.i = sub nsw i32 0, %conv77.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div63.i.i, i32 %add78.i.i)
  %tobool79.not.i.i = icmp eq i32 %div63.i.i, %add78.i.i
  br i1 %tobool79.not.i.i, label %if.else.i114.i.if.end90.i.i_crit_edge, label %if.then80.i.i

if.else.i114.i.if.end90.i.i_crit_edge:            ; preds = %if.else.i114.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90.i.i

if.then80.i.i:                                    ; preds = %if.else.i114.i
  %92 = ptrtoint ptr %direction151.i.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %direction151.i.i, align 4
  %direction84.i.i = getelementptr inbounds %struct.ff_effect, ptr %51, i32 0, i32 2
  %94 = ptrtoint ptr %direction84.i.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %direction84.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %91)
  %tobool.not.i277.i.i = icmp eq i16 %91, 0
  br i1 %tobool.not.i277.i.i, label %if.then80.i.i.if.end90.i.i_crit_edge, label %if.end.i279.i.i

if.then80.i.i.if.end90.i.i_crit_edge:             ; preds = %if.then80.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90.i.i

if.end.i279.i.i:                                  ; preds = %if.then80.i.i
  %conv85.i.i = trunc i32 %div63.i.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv85.i.i)
  %tobool1.not.i278.i.i = icmp eq i16 %conv85.i.i, 0
  br i1 %tobool1.not.i278.i.i, label %if.end.i279.i.i.if.end90.i.i_crit_edge, label %if.end3.i289.i.i

if.end.i279.i.i.if.end90.i.i_crit_edge:           ; preds = %if.end.i279.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90.i.i

if.end3.i289.i.i:                                 ; preds = %if.end.i279.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %96 = lshr i16 %93, 1
  %97 = zext i16 %96 to i32
  %mul.i281.i.i = mul nuw nsw i32 %97, %conv77.i.i
  %98 = lshr i16 %95, 1
  %99 = zext i16 %98 to i32
  %conv7.i282.i.i = and i32 %div63.i.i, 65535
  %mul8.i283.i.i = mul nuw nsw i32 %conv7.i282.i.i, %99
  %add.i284.i.i = add nuw i32 %mul8.i283.i.i, %mul.i281.i.i
  %add11.i285.i.i = add nuw nsw i32 %conv7.i282.i.i, %conv77.i.i
  %div.i286.i.i = udiv i32 %add.i284.i.i, %add11.i285.i.i
  %div.tr.i287.i.i = trunc i32 %div.i286.i.i to i16
  %conv12.i288.i.i = shl i16 %div.tr.i287.i.i, 1
  br label %if.end90.i.i

if.end90.i.i:                                     ; preds = %if.end3.i289.i.i, %if.end.i279.i.i.if.end90.i.i_crit_edge, %if.then80.i.i.if.end90.i.i_crit_edge, %if.else.i114.i.if.end90.i.i_crit_edge, %if.end3.i.i.i, %if.end.i.i.i.if.end90.i.i_crit_edge, %if.then.i.i.if.end90.i.i_crit_edge
  %.sink.i = phi i16 [ %conv12.i.i.i, %if.end3.i.i.i ], [ %85, %if.then.i.i.if.end90.i.i_crit_edge ], [ %83, %if.end.i.i.i.if.end90.i.i_crit_edge ], [ %conv12.i288.i.i, %if.end3.i289.i.i ], [ %95, %if.then80.i.i.if.end90.i.i_crit_edge ], [ %93, %if.end.i279.i.i.if.end90.i.i_crit_edge ], [ 0, %if.else.i114.i.if.end90.i.i_crit_edge ]
  %100 = ptrtoint ptr %direction151.i.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %.sink.i, ptr %direction151.i.i, align 4
  %add94.i.i = add nuw nsw i32 %div59.i.i, %conv66.i.i
  %101 = call i32 @llvm.umin.i32(i32 %add94.i.i, i32 65535) #6
  %102 = trunc i32 %101 to i16
  %103 = ptrtoint ptr %u137.i.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %102, ptr %u137.i.i, align 4
  %104 = ptrtoint ptr %weak_magnitude168.i.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %weak_magnitude168.i.i, align 2
  %conv107.i.i = zext i16 %105 to i32
  %add108.i.i = add nuw nsw i32 %div63.i.i, %conv107.i.i
  %106 = call i32 @llvm.umin.i32(i32 %add108.i.i, i32 65535) #6
  %107 = trunc i32 %106 to i16
  %108 = ptrtoint ptr %weak_magnitude168.i.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %107, ptr %weak_magnitude168.i.i, align 2
  br label %for.inc.i

sw.bb119.i.i:                                     ; preds = %if.else54.i
  %magnitude.i.i = getelementptr inbounds %struct.ff_effect, ptr %51, i32 0, i32 5, i32 0, i32 2
  %109 = ptrtoint ptr %magnitude.i.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %magnitude.i.i, align 4
  %111 = call i16 @llvm.abs.i16(i16 %110, i1 false) #6
  %112 = zext i16 %111 to i32
  %envelope133.i.i = getelementptr inbounds %struct.ff_effect, ptr %51, i32 0, i32 5, i32 0, i32 5
  %call134.i.i = call fastcc i32 @apply_envelope(ptr noundef %arrayidx.i, i32 noundef %112, ptr noundef %envelope133.i.i) #6
  %mul135.i.i = mul i32 %call134.i.i, %49
  %div136.i.i = udiv i32 %mul135.i.i, 32767
  %113 = ptrtoint ptr %u137.i.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %u137.i.i, align 4
  %conv139.i.i = zext i16 %114 to i32
  %add140.i.i = sub nsw i32 0, %conv139.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div136.i.i, i32 %add140.i.i)
  %tobool141.not.i.i = icmp eq i32 %div136.i.i, %add140.i.i
  br i1 %tobool141.not.i.i, label %sw.bb119.i.i.if.end152.i.i_crit_edge, label %if.then142.i.i

sw.bb119.i.i.if.end152.i.i_crit_edge:             ; preds = %sw.bb119.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end152.i.i

if.then142.i.i:                                   ; preds = %sw.bb119.i.i
  %115 = ptrtoint ptr %direction151.i.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %direction151.i.i, align 4
  %direction146.i.i = getelementptr inbounds %struct.ff_effect, ptr %51, i32 0, i32 2
  %117 = ptrtoint ptr %direction146.i.i to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %direction146.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %114)
  %tobool.not.i292.i.i = icmp eq i16 %114, 0
  br i1 %tobool.not.i292.i.i, label %if.then142.i.i.if.end152.i.i_crit_edge, label %if.end.i294.i.i

if.then142.i.i.if.end152.i.i_crit_edge:           ; preds = %if.then142.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end152.i.i

if.end.i294.i.i:                                  ; preds = %if.then142.i.i
  %conv147.i.i = trunc i32 %div136.i.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv147.i.i)
  %tobool1.not.i293.i.i = icmp eq i16 %conv147.i.i, 0
  br i1 %tobool1.not.i293.i.i, label %if.end.i294.i.i.if.end152.i.i_crit_edge, label %if.end3.i304.i.i

if.end.i294.i.i.if.end152.i.i_crit_edge:          ; preds = %if.end.i294.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end152.i.i

if.end3.i304.i.i:                                 ; preds = %if.end.i294.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %119 = lshr i16 %116, 1
  %120 = zext i16 %119 to i32
  %mul.i296.i.i = mul nuw nsw i32 %120, %conv139.i.i
  %121 = lshr i16 %118, 1
  %122 = zext i16 %121 to i32
  %conv7.i297.i.i = and i32 %div136.i.i, 65535
  %mul8.i298.i.i = mul nuw nsw i32 %conv7.i297.i.i, %122
  %add.i299.i.i = add nuw i32 %mul8.i298.i.i, %mul.i296.i.i
  %add11.i300.i.i = add nuw nsw i32 %conv7.i297.i.i, %conv139.i.i
  %div.i301.i.i = udiv i32 %add.i299.i.i, %add11.i300.i.i
  %div.tr.i302.i.i = trunc i32 %div.i301.i.i to i16
  %conv12.i303.i.i = shl i16 %div.tr.i302.i.i, 1
  br label %if.end152.i.i

if.end152.i.i:                                    ; preds = %if.end3.i304.i.i, %if.end.i294.i.i.if.end152.i.i_crit_edge, %if.then142.i.i.if.end152.i.i_crit_edge, %sw.bb119.i.i.if.end152.i.i_crit_edge
  %.sink.i.i = phi i16 [ %conv12.i303.i.i, %if.end3.i304.i.i ], [ %118, %if.then142.i.i.if.end152.i.i_crit_edge ], [ %116, %if.end.i294.i.i.if.end152.i.i_crit_edge ], [ 0, %sw.bb119.i.i.if.end152.i.i_crit_edge ]
  %123 = ptrtoint ptr %direction151.i.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %.sink.i.i, ptr %direction151.i.i, align 4
  %add156.i.i = add nuw nsw i32 %div136.i.i, %conv139.i.i
  %124 = call i32 @llvm.umin.i32(i32 %add156.i.i, i32 65535) #6
  %125 = trunc i32 %124 to i16
  %126 = ptrtoint ptr %u137.i.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %125, ptr %u137.i.i, align 4
  %127 = ptrtoint ptr %weak_magnitude168.i.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %weak_magnitude168.i.i, align 2
  %conv169.i.i = zext i16 %128 to i32
  %add170.i.i = add nuw nsw i32 %div136.i.i, %conv169.i.i
  %129 = call i32 @llvm.umin.i32(i32 %add170.i.i, i32 65535) #6
  %130 = trunc i32 %129 to i16
  %131 = ptrtoint ptr %weak_magnitude168.i.i to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %130, ptr %weak_magnitude168.i.i, align 2
  br label %for.inc.i

do.end.i115.i:                                    ; preds = %if.else54.i
  call void @__sanitizer_cov_trace_pc() #8
  %call182.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end.i115.i, %if.end152.i.i, %if.end90.i.i, %sw.bb.i.i, %if.else41.i, %if.then39.i, %if.then27.i, %if.then19.i, %if.end5.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %and.i.i7 = phi i32 [ %or.i.i, %do.end.i115.i ], [ %or.i.i, %if.end152.i.i ], [ %or.i.i, %if.end90.i.i ], [ %or.i.i, %sw.bb.i.i ], [ %or.i.i, %if.else41.i ], [ %or.i.i, %if.then39.i ], [ %or.i.i, %if.then27.i ], [ %and.i.i, %if.then19.i ], [ %or.i.i, %if.end5.i.for.inc.i_crit_edge ], [ %or.i.i, %if.end.i.for.inc.i_crit_edge ], [ %or.i.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.0116.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %ml_get_combo_effect.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

ml_get_combo_effect.exit:                         ; preds = %for.inc.i
  %132 = ptrtoint ptr %effect to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %effect, align 4
  %cmp60.i.not = icmp eq i16 %133, 0
  br i1 %cmp60.i.not, label %while.end, label %while.body

while.body:                                       ; preds = %ml_get_combo_effect.exit
  call void @__sanitizer_cov_trace_pc() #8
  %134 = ptrtoint ptr %play_effect to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %play_effect, align 4
  %136 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dev.i, align 4
  %138 = ptrtoint ptr %ml to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ml, align 4
  %call2 = call i32 %135(ptr noundef %137, ptr noundef %139, ptr noundef nonnull %effect) #6
  br label %while.cond

while.end:                                        ; preds = %ml_get_combo_effect.exit
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @ml_schedule_timer(ptr noundef %ml)
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %effect) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ml_schedule_timer(ptr noundef %ml) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ml_schedule_timer.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ml_schedule_timer, %if.then)) #6
          to label %for.body [label %if.then], !srcloc !83

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ml_schedule_timer.__UNIQUE_ID_ddebug227, ptr noundef nonnull @.str.21) #6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then, %entry
  %earliest.086 = phi i32 [ %earliest.1, %for.inc.for.body_crit_edge ], [ 0, %entry ], [ 0, %if.then ]
  %events.085 = phi i32 [ %events.1, %for.inc.for.body_crit_edge ], [ 0, %entry ], [ 0, %if.then ]
  %i.082 = phi i32 [ %inc19, %for.inc.for.body_crit_edge ], [ 0, %entry ], [ 0, %if.then ]
  %arrayidx = getelementptr %struct.ml_device, ptr %ml, i32 0, i32 1, i32 %i.082
  %flags = getelementptr %struct.ml_device, ptr %ml, i32 0, i32 1, i32 %i.082, i32 1
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool4.not = icmp eq i32 %and1.i, 0
  br i1 %tobool4.not, label %for.body.for.inc_crit_edge, label %if.end6

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end6:                                          ; preds = %for.body
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %5 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool9.not = icmp eq i32 %5, 0
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end6
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %7, align 4
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.31)
  switch i16 %9, label %if.then10.get_envelope.exit.i_crit_edge [
    i16 81, label %sw.bb.i.i
    i16 82, label %sw.bb1.i.i
  ]

if.then10.get_envelope.exit.i_crit_edge:          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_envelope.exit.i

sw.bb.i.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  %envelope.i.i = getelementptr inbounds %struct.ff_effect, ptr %7, i32 0, i32 5, i32 0, i32 5
  br label %get_envelope.exit.i

sw.bb1.i.i:                                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  %envelope3.i.i = getelementptr inbounds %struct.ff_effect, ptr %7, i32 0, i32 5, i32 0, i32 1
  br label %get_envelope.exit.i

get_envelope.exit.i:                              ; preds = %sw.bb1.i.i, %sw.bb.i.i, %if.then10.get_envelope.exit.i_crit_edge
  %retval.0.i67.i = phi ptr [ %envelope3.i.i, %sw.bb1.i.i ], [ %envelope.i.i, %sw.bb.i.i ], [ @get_envelope.empty_envelope, %if.then10.get_envelope.exit.i_crit_edge ]
  %11 = ptrtoint ptr %retval.0.i67.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %retval.0.i67.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not.i = icmp eq i16 %12, 0
  br i1 %tobool.not.i, label %get_envelope.exit.i.if.end8.i_crit_edge, label %if.then.i

get_envelope.exit.i.if.end8.i_crit_edge:          ; preds = %get_envelope.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.then.i:                                        ; preds = %get_envelope.exit.i
  %play_at.i = getelementptr %struct.ml_device, ptr %ml, i32 0, i32 1, i32 %i.082, i32 3
  %13 = ptrtoint ptr %play_at.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %play_at.i, align 4
  %conv.i = zext i16 %12 to i32
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv.i) #6
  %adj_at.i = getelementptr %struct.ml_device, ptr %ml, i32 0, i32 1, i32 %i.082, i32 5
  %15 = ptrtoint ptr %adj_at.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %adj_at.i, align 4
  %17 = add i32 %call2.i.i, %14
  %sub.i = sub i32 %16, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then4.i, label %if.then.i.if.end8.i_crit_edge

if.then.i.if.end8.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %add7.i = add i32 %16, 5
  br label %if.end12

if.end8.i:                                        ; preds = %if.then.i.if.end8.i_crit_edge, %get_envelope.exit.i.if.end8.i_crit_edge
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %replay.i = getelementptr inbounds %struct.ff_effect, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %replay.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %replay.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool10.not.i = icmp eq i16 %21, 0
  br i1 %tobool10.not.i, label %if.end35.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.end8.i
  %fade_length.i = getelementptr inbounds %struct.ff_envelope, ptr %retval.0.i67.i, i32 0, i32 2
  %22 = ptrtoint ptr %fade_length.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %fade_length.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool12.not.i = icmp eq i16 %23, 0
  br i1 %tobool12.not.i, label %if.then11.i.if.end33.i_crit_edge, label %if.then13.i

if.then11.i.if.end33.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.i

if.then13.i:                                      ; preds = %if.then11.i
  %stop_at.i = getelementptr %struct.ml_device, ptr %ml, i32 0, i32 1, i32 %i.082, i32 4
  %24 = ptrtoint ptr %stop_at.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %stop_at.i, align 4
  %conv15.i = zext i16 %23 to i32
  %call2.i61.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv15.i) #6
  %sub17.i = sub i32 %25, %call2.i61.i
  %adj_at18.i = getelementptr %struct.ml_device, ptr %ml, i32 0, i32 1, i32 %i.082, i32 5
  %26 = ptrtoint ptr %adj_at18.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %adj_at18.i, align 4
  %sub19.i = sub i32 %27, %sub17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub19.i)
  %cmp20.i = icmp slt i32 %sub19.i, 0
  br i1 %cmp20.i, label %if.then13.i.if.end12_crit_edge, label %if.end23.i

if.then13.i.if.end12_crit_edge:                   ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.end23.i:                                       ; preds = %if.then13.i
  %add26.i = add i32 %27, 5
  %28 = ptrtoint ptr %stop_at.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %stop_at.i, align 4
  %sub28.i = sub i32 %add26.i, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub28.i)
  %cmp29.i = icmp slt i32 %sub28.i, 0
  br i1 %cmp29.i, label %if.end23.i.if.end12_crit_edge, label %if.end23.i.if.end33.i_crit_edge

if.end23.i.if.end33.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.i

if.end23.i.if.end12_crit_edge:                    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.end33.i:                                       ; preds = %if.end23.i.if.end33.i_crit_edge, %if.then11.i.if.end33.i_crit_edge
  %stop_at34.i = getelementptr %struct.ml_device, ptr %ml, i32 0, i32 1, i32 %i.082, i32 4
  %30 = ptrtoint ptr %stop_at34.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %stop_at34.i, align 4
  br label %if.end12

if.end35.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %play_at36.i = getelementptr %struct.ml_device, ptr %ml, i32 0, i32 1, i32 %i.082, i32 3
  %32 = ptrtoint ptr %play_at36.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %play_at36.i, align 4
  br label %if.end12

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %play_at = getelementptr %struct.ml_device, ptr %ml, i32 0, i32 1, i32 %i.082, i32 3
  %34 = ptrtoint ptr %play_at to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %play_at, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.end35.i, %if.end33.i, %if.end23.i.if.end12_crit_edge, %if.then13.i.if.end12_crit_edge, %if.then4.i
  %next_at.0 = phi i32 [ %35, %if.else ], [ %add7.i, %if.then4.i ], [ %31, %if.end33.i ], [ %33, %if.end35.i ], [ %sub17.i, %if.then13.i.if.end12_crit_edge ], [ %add26.i, %if.end23.i.if.end12_crit_edge ]
  %sub = sub i32 %next_at.0, %0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp13 = icmp sgt i32 %sub, -1
  br i1 %cmp13, label %land.lhs.true, label %if.end12.for.inc_crit_edge

if.end12.for.inc_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %inc = add i32 %events.085, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %events.085)
  %cmp14 = icmp eq i32 %events.085, 0
  %sub15 = sub i32 %next_at.0, %earliest.086
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub15)
  %cmp16 = icmp slt i32 %sub15, 0
  %or.cond = select i1 %cmp14, i1 true, i1 %cmp16
  %spec.select = select i1 %or.cond, i32 %next_at.0, i32 %earliest.086
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %if.end12.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %events.1 = phi i32 [ %events.085, %if.end12.for.inc_crit_edge ], [ %events.085, %for.body.for.inc_crit_edge ], [ %inc, %land.lhs.true ]
  %earliest.1 = phi i32 [ %earliest.086, %if.end12.for.inc_crit_edge ], [ %earliest.086, %for.body.for.inc_crit_edge ], [ %spec.select, %land.lhs.true ]
  %inc19 = add nuw nsw i32 %i.082, 1
  %exitcond.not = icmp eq i32 %inc19, 16
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %events.1)
  %tobool20.not = icmp eq i32 %events.1, 0
  br i1 %tobool20.not, label %do.body22, label %do.body40

do.body22:                                        ; preds = %for.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ml_schedule_timer.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ml_schedule_timer, %if.then34)) #6
          to label %do.end37 [label %if.then34], !srcloc !83

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ml_schedule_timer.__UNIQUE_ID_ddebug228, ptr noundef nonnull @.str.23) #6
  br label %do.end37

do.end37:                                         ; preds = %if.then34, %do.body22
  %timer = getelementptr inbounds %struct.ml_device, ptr %ml, i32 0, i32 3
  %call38 = tail call i32 @del_timer(ptr noundef %timer) #6
  br label %if.end58

do.body40:                                        ; preds = %for.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ml_schedule_timer.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ml_schedule_timer, %if.then52)) #6
          to label %do.end55 [label %if.then52], !srcloc !83

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ml_schedule_timer.__UNIQUE_ID_ddebug229, ptr noundef nonnull @.str.25) #6
  br label %do.end55

do.end55:                                         ; preds = %if.then52, %do.body40
  %timer56 = getelementptr inbounds %struct.ml_device, ptr %ml, i32 0, i32 3
  %call57 = tail call i32 @mod_timer(ptr noundef %timer56, i32 noundef %earliest.1) #6
  br label %if.end58

if.end58:                                         ; preds = %do.end55, %do.end37
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @apply_envelope(ptr nocapture noundef readonly %state, i32 noundef %value, ptr nocapture noundef readonly %envelope) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %3 = ptrtoint ptr %envelope to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %envelope, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %play_at = getelementptr inbounds %struct.ml_effect_state, ptr %state, i32 0, i32 3
  %5 = ptrtoint ptr %play_at to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %play_at, align 4
  %conv = zext i16 %4 to i32
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv) #6
  %7 = add i32 %6, %call2.i
  %sub = sub i32 %2, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.body, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

do.body:                                          ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @apply_envelope.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@apply_envelope, %if.then9)) #6
          to label %do.end [label %if.then9], !srcloc !83

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %attack_level = getelementptr inbounds %struct.ff_envelope, ptr %envelope, i32 0, i32 1
  %8 = ptrtoint ptr %attack_level to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %attack_level, align 2
  %conv10 = zext i16 %9 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @apply_envelope.__UNIQUE_ID_ddebug230, ptr noundef nonnull @.str.12, i32 noundef %value, i32 noundef %conv10) #6
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %10 = ptrtoint ptr %play_at to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %play_at, align 4
  %sub12 = sub i32 %2, %11
  %call13 = tail call i32 @jiffies_to_msecs(i32 noundef %sub12) #6
  %attack_level16 = getelementptr inbounds %struct.ff_envelope, ptr %envelope, i32 0, i32 1
  br label %if.end61

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %fade_length = getelementptr inbounds %struct.ff_envelope, ptr %envelope, i32 0, i32 2
  %12 = ptrtoint ptr %fade_length to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %fade_length, align 2
  %conv24 = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool25.not = icmp eq i16 %13, 0
  br i1 %tobool25.not, label %if.else.cleanup_crit_edge, label %land.lhs.true26

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true26:                                  ; preds = %if.else
  %replay = getelementptr inbounds %struct.ff_effect, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %replay to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %replay, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool28.not = icmp eq i16 %15, 0
  br i1 %tobool28.not, label %land.lhs.true26.cleanup_crit_edge, label %land.lhs.true29

land.lhs.true26.cleanup_crit_edge:                ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true29:                                  ; preds = %land.lhs.true26
  %stop_at = getelementptr inbounds %struct.ml_effect_state, ptr %state, i32 0, i32 4
  %16 = ptrtoint ptr %stop_at to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stop_at, align 4
  %call2.i187 = tail call i32 @__msecs_to_jiffies(i32 noundef %conv24) #6
  %18 = add i32 %2, %call2.i187
  %sub34 = sub i32 %17, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub34)
  %cmp35 = icmp slt i32 %sub34, 0
  br i1 %cmp35, label %land.lhs.true37, label %land.lhs.true29.cleanup_crit_edge

land.lhs.true29.cleanup_crit_edge:                ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true37:                                  ; preds = %land.lhs.true29
  %19 = ptrtoint ptr %stop_at to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %stop_at, align 4
  %sub39 = sub i32 %2, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub39)
  %cmp40 = icmp slt i32 %sub39, 0
  br i1 %cmp40, label %if.then42, label %land.lhs.true37.cleanup_crit_edge

land.lhs.true37.cleanup_crit_edge:                ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then42:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #8
  %sub44 = sub i32 %20, %2
  %call45 = tail call i32 @jiffies_to_msecs(i32 noundef %sub44) #6
  %fade_level = getelementptr inbounds %struct.ff_envelope, ptr %envelope, i32 0, i32 3
  br label %if.end61

if.end61:                                         ; preds = %if.then42, %do.end
  %fade_level.sink = phi ptr [ %fade_level, %if.then42 ], [ %attack_level16, %do.end ]
  %time_of_envelope.0.in.in = phi ptr [ %fade_length, %if.then42 ], [ %envelope, %do.end ]
  %time_from_level.0 = phi i32 [ %call45, %if.then42 ], [ %call13, %do.end ]
  %21 = ptrtoint ptr %fade_level.sink to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %fade_level.sink, align 2
  %23 = tail call i16 @llvm.umin.i16(i16 %22, i16 32767)
  %envelope_level.0 = zext i16 %23 to i32
  %24 = ptrtoint ptr %time_of_envelope.0.in.in to i32
  call void @__asan_load2_noabort(i32 %24)
  %time_of_envelope.0.in = load i16, ptr %time_of_envelope.0.in.in, align 2
  %time_of_envelope.0 = zext i16 %time_of_envelope.0.in to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp63 = icmp slt i32 %value, 0
  %25 = tail call i32 @llvm.abs.i32(i32 %value, i1 false)
  %sub70 = sub i32 %25, %envelope_level.0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @apply_envelope.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@apply_envelope, %if.then83)) #6
          to label %do.body87 [label %if.then83], !srcloc !83

if.then83:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @apply_envelope.__UNIQUE_ID_ddebug235, ptr noundef nonnull @.str.14, i32 noundef %sub70) #6
  br label %do.body87

do.body87:                                        ; preds = %if.then83, %if.end61
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @apply_envelope.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@apply_envelope, %if.then99)) #6
          to label %do.body103 [label %if.then99], !srcloc !83

if.then99:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @apply_envelope.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.16, i32 noundef %time_from_level.0) #6
  br label %do.body103

do.body103:                                       ; preds = %if.then99, %do.body87
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @apply_envelope.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@apply_envelope, %if.then115)) #6
          to label %do.end118 [label %if.then115], !srcloc !83

if.then115:                                       ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @apply_envelope.__UNIQUE_ID_ddebug237, ptr noundef nonnull @.str.18, i32 noundef %time_of_envelope.0) #6
  br label %do.end118

do.end118:                                        ; preds = %if.then115, %do.body103
  %mul = mul i32 %sub70, %time_from_level.0
  %div = sdiv i32 %mul, %time_of_envelope.0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @apply_envelope.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@apply_envelope, %if.then131)) #6
          to label %do.end134 [label %if.then131], !srcloc !83

if.then131:                                       ; preds = %do.end118
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @apply_envelope.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.14, i32 noundef %div) #6
  br label %do.end134

do.end134:                                        ; preds = %if.then131, %do.end118
  %add138 = add i32 %div, %envelope_level.0
  %sub139 = sub i32 0, %add138
  %cond143 = select i1 %cmp63, i32 %sub139, i32 %add138
  br label %cleanup

cleanup:                                          ; preds = %do.end134, %land.lhs.true37.cleanup_crit_edge, %land.lhs.true29.cleanup_crit_edge, %land.lhs.true26.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond143, %do.end134 ], [ %value, %land.lhs.true37.cleanup_crit_edge ], [ %value, %land.lhs.true29.cleanup_crit_edge ], [ %value, %land.lhs.true26.cleanup_crit_edge ], [ %value, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.abs.i16(i16, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !15, !16, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !67, !68, !69, !70, !72, !73}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @__UNIQUE_ID_file223, !1, !"__UNIQUE_ID_file223", i1 false, i1 false}
!1 = !{!"../drivers/input/ff-memless.c", i32 24, i32 1}
!2 = !{ptr @__UNIQUE_ID_license224, !1, !"__UNIQUE_ID_license224", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author225, !4, !"__UNIQUE_ID_author225", i1 false, i1 false}
!4 = !{!"../drivers/input/ff-memless.c", i32 25, i32 1}
!5 = !{ptr @__UNIQUE_ID_description226, !6, !"__UNIQUE_ID_description226", i1 false, i1 false}
!6 = !{!"../drivers/input/ff-memless.c", i32 26, i32 1}
!7 = !{ptr @input_ff_create_memless.__key, !8, !"__key", i1 false, i1 false}
!8 = !{!"../drivers/input/ff-memless.c", i32 526, i32 2}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__ksymtab_input_ff_create_memless, !11, !"__ksymtab_input_ff_create_memless", i1 false, i1 false}
!11 = !{!"../drivers/input/ff-memless.c", i32 556, i32 1}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/ff-memless.c", i32 409, i32 2}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @ml_effect_timer.__UNIQUE_ID_ddebug255, !13, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!18 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/input/ff-memless.c", i32 207, i32 2}
!21 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @get_compatible_type._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @get_compatible_type._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/ff-memless.c", i32 315, i32 3}
!26 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @ml_combine_effects._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @ml_combine_effects._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/input/ff-memless.c", i32 165, i32 3}
!31 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @apply_envelope.__UNIQUE_ID_ddebug230, !30, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!33 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/input/ff-memless.c", i32 183, i32 2}
!36 = !{ptr @apply_envelope.__UNIQUE_ID_ddebug235, !35, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!37 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/input/ff-memless.c", i32 184, i32 2}
!40 = !{ptr @apply_envelope.__UNIQUE_ID_ddebug236, !39, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!41 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/ff-memless.c", i32 185, i32 2}
!44 = !{ptr @apply_envelope.__UNIQUE_ID_ddebug237, !43, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!45 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @apply_envelope.__UNIQUE_ID_ddebug238, !47, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!47 = !{!"../drivers/input/ff-memless.c", i32 189, i32 2}
!48 = !{ptr @sin_table, !49, !"sin_table", i1 false, i1 false}
!49 = !{!"../include/linux/fixp-arith.h", i32 22, i32 18}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/input/ff-memless.c", i32 121, i32 2}
!52 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @ml_schedule_timer.__UNIQUE_ID_ddebug227, !51, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!54 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/input/ff-memless.c", i32 141, i32 3}
!57 = !{ptr @ml_schedule_timer.__UNIQUE_ID_ddebug228, !56, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!58 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/input/ff-memless.c", i32 144, i32 3}
!61 = !{ptr @ml_schedule_timer.__UNIQUE_ID_ddebug229, !60, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!62 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @get_envelope.empty_envelope, !64, !"empty_envelope", i1 false, i1 false}
!64 = !{!"../drivers/input/ff-memless.c", i32 60, i32 34}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/input/ff-memless.c", i32 441, i32 3}
!67 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @ml_ff_playback.__UNIQUE_ID_ddebug256, !66, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!69 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/input/ff-memless.c", i32 452, i32 3}
!72 = !{ptr @ml_ff_playback.__UNIQUE_ID_ddebug257, !71, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!73 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{i64 2148213642, i64 2148213647, i64 2148213660, i64 2148213704, i64 2148213738, i64 2148213759}
