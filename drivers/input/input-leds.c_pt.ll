; ModuleID = '/llk/IR_all_yes/drivers/input/input-leds.c_pt.bc'
source_filename = "../drivers/input/input-leds.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.input_handler = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, %struct.list_head, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.input_device_id = type { i32, i16, i16, i16, i16, [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }
%struct.anon.69 = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
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
%struct.input_leds = type { %struct.input_handle, i32, [0 x %struct.input_led] }
%struct.input_handle = type { ptr, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head }
%struct.input_led = type { %struct.led_classdev, ptr, i32 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }

@__initcall__kmod_input_leds__223_209_input_leds_init6 = internal global ptr @input_leds_init, section ".initcall6.init", align 4
@input_leds_handler = internal global { %struct.input_handler, [32 x i8] } { %struct.input_handler { ptr null, ptr @input_leds_event, ptr null, ptr null, ptr null, ptr @input_leds_connect, ptr @input_leds_disconnect, ptr null, i8 0, i32 0, ptr @.str, ptr @input_leds_ids, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@__exitcall_input_leds_exit = internal global ptr @input_leds_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author224 = internal constant [65 x i8] c"input_leds.author=Samuel Thibault <samuel.thibault@ens-lyon.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author225 = internal constant [62 x i8] c"input_leds.author=Dmitry Torokhov <dmitry.torokhov@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description226 = internal constant [44 x i8] c"input_leds.description=Input -> LEDs Bridge\00", section ".modinfo", align 1
@__UNIQUE_ID_file227 = internal constant [41 x i8] c"input_leds.file=drivers/input/input-leds\00", section ".modinfo", align 1
@__UNIQUE_ID_license228 = internal constant [26 x i8] c"input_leds.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"leds\00", [27 x i8] zeroinitializer }, align 32
@input_leds_ids = internal constant { [2 x %struct.input_device_id], [88 x i8] } { [2 x %struct.input_device_id] [%struct.input_device_id { i32 16, i16 0, i16 0, i16 0, i16 0, [1 x i32] [i32 131072], [24 x i32] zeroinitializer, [1 x i32] zeroinitializer, [2 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, i32 0 }, %struct.input_device_id zeroinitializer], [88 x i8] zeroinitializer }, align 32
@input_led_info = internal constant { [16 x %struct.anon.69], [32 x i8] } { [16 x %struct.anon.69] [%struct.anon.69 { ptr @.str.7, ptr @.str.8 }, %struct.anon.69 { ptr @.str.9, ptr @.str.10 }, %struct.anon.69 { ptr @.str.11, ptr @.str.12 }, %struct.anon.69 { ptr @.str.13, ptr null }, %struct.anon.69 { ptr @.str.14, ptr @.str.15 }, %struct.anon.69 { ptr @.str.16, ptr null }, %struct.anon.69 { ptr @.str.17, ptr null }, %struct.anon.69 { ptr @.str.18, ptr null }, %struct.anon.69 { ptr @.str.19, ptr null }, %struct.anon.69 { ptr @.str.20, ptr null }, %struct.anon.69 { ptr @.str.21, ptr null }, %struct.anon.69 zeroinitializer, %struct.anon.69 zeroinitializer, %struct.anon.69 zeroinitializer, %struct.anon.69 zeroinitializer, %struct.anon.69 zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s::%s\00", [25 x i8] zeroinitializer }, align 32
@input_leds_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 142, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to register LED %s: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"input_leds_connect\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/input/input-leds.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@input_leds_connect._entry_ptr = internal global ptr @input_leds_connect._entry, section ".printk_index", align 4
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"numlock\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"kbd-numlock\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"capslock\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"kbd-capslock\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"scrolllock\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"kbd-scrolllock\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"compose\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"kana\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"kbd-kanalock\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sleep\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"suspend\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mute\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"misc\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mail\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"charging\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.22 = private unnamed_addr constant [19 x i8] c"input_leds_handler\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 197, i32 29 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 201, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant [15 x i8] c"input_leds_ids\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 188, i32 37 }
@___asan_gen_.31 = private unnamed_addr constant [15 x i8] c"input_led_info\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 24, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 126, i32 42 }
@___asan_gen_.37 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 141, i32 4 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 25, i32 17 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 25, i32 28 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 26, i32 18 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 26, i32 30 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 27, i32 20 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 27, i32 34 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 28, i32 20 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 29, i32 17 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 29, i32 25 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 30, i32 18 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 31, i32 20 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 32, i32 17 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 33, i32 17 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 34, i32 17 }
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.98 = private constant [30 x i8] c"../drivers/input/input-leds.c\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 35, i32 21 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_author224, ptr @__UNIQUE_ID_author225, ptr @__UNIQUE_ID_description226, ptr @__UNIQUE_ID_file227, ptr @__UNIQUE_ID_license228, ptr @__exitcall_input_leds_exit, ptr @__initcall__kmod_input_leds__223_209_input_leds_init6, ptr @input_leds_connect._entry, ptr @input_leds_connect._entry_ptr, ptr @input_leds_exit, ptr @input_leds_handler, ptr @.str, ptr @input_leds_ids, ptr @input_led_info, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @input_leds_handler to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @input_leds_ids to i32), i32 328, i32 416, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @input_led_info to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @input_leds_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @input_leds_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @input_register_handler(ptr noundef nonnull @input_leds_handler) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @input_leds_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @input_unregister_handler(ptr noundef nonnull @input_leds_handler) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @input_leds_event(ptr nocapture noundef %handle, i32 noundef %type, i32 noundef %code, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @input_leds_connect(ptr noundef %handler, ptr noundef %dev, ptr nocapture noundef readnone %id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ledbit.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 10
  %call.i = tail call i32 @_find_next_bit_be(ptr noundef %ledbit.i, i32 noundef 16, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call.i)
  %cmp8.i = icmp ult i32 %call.i, 16
  br i1 %cmp8.i, label %entry.for.body.i_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %count.010.i = phi i32 [ %spec.select.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %led_code.09.i = phi i32 [ %call3.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [16 x %struct.anon.69], ptr @input_led_info, i32 0, i32 %led_code.09.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp ne ptr %1, null
  %inc.i = zext i1 %tobool.not.i to i32
  %spec.select.i = add i32 %count.010.i, %inc.i
  %add.i = add nuw nsw i32 %led_code.09.i, 1
  %call3.i = tail call i32 @_find_next_bit_be(ptr noundef %ledbit.i, i32 noundef 16, i32 noundef %add.i) #8
  %cmp.i = icmp ult i32 %call3.i, 16
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %input_leds_get_count.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

input_leds_get_count.exit:                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool.not = icmp eq i32 %spec.select.i, 0
  br i1 %tobool.not, label %input_leds_get_count.exit.cleanup_crit_edge, label %if.end8.i.i

input_leds_get_count.exit.cleanup_crit_edge:      ; preds = %input_leds_get_count.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.i.i:                                      ; preds = %input_leds_get_count.exit
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %spec.select.i, i32 408) #8
  %3 = extractvalue { i32, i1 } %2, 1
  %4 = extractvalue { i32, i1 } %2, 0
  %5 = add nuw i32 %4, 40
  %retval.0.i = select i1 %3, i32 -1, i32 %5
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3520) #11
  %tobool3.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool3.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end5

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end8.i.i
  %num_leds6 = getelementptr inbounds %struct.input_leds, ptr %call9.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %num_leds6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %spec.select.i, ptr %num_leds6, align 4
  %dev7 = getelementptr inbounds %struct.input_handle, ptr %call9.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %dev7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %dev7, align 4
  %handler9 = getelementptr inbounds %struct.input_handle, ptr %call9.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %handler9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %handler, ptr %handler9, align 16
  %name = getelementptr inbounds %struct.input_handle, ptr %call9.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str, ptr %name, align 8
  %10 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call9.i.i, ptr %call9.i.i, align 128
  %call13 = tail call i32 @input_register_handle(ptr noundef nonnull %call9.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end5.err_free_mem_crit_edge

if.end5.err_free_mem_crit_edge:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_mem

if.end16:                                         ; preds = %if.end5
  %call18 = tail call i32 @input_open_device(ptr noundef nonnull %call9.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end16.err_unregister_handle_crit_edge

if.end16.err_unregister_handle_crit_edge:         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_unregister_handle

if.end21:                                         ; preds = %if.end16
  %call22 = tail call i32 @_find_next_bit_be(ptr noundef %ledbit.i, i32 noundef 16, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call22)
  %cmp130 = icmp ult i32 %call22, 16
  br i1 %cmp130, label %for.body.lr.ph, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end21
  %dev31 = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40
  %init_name.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %led_no.0133 = phi i32 [ 0, %for.body.lr.ph ], [ %led_no.1, %for.inc.for.body_crit_edge ]
  %led_code.0131 = phi i32 [ %call22, %for.body.lr.ph ], [ %call60, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x %struct.anon.69], ptr @input_led_info, i32 0, i32 %led_code.0131
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %tobool24.not = icmp eq ptr %12, null
  br i1 %tobool24.not, label %for.body.for.inc_crit_edge, label %if.end26

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end26:                                         ; preds = %for.body
  %arrayidx28 = getelementptr %struct.input_leds, ptr %call9.i.i, i32 0, i32 2, i32 %led_no.0133
  %handle30 = getelementptr %struct.input_leds, ptr %call9.i.i, i32 0, i32 2, i32 %led_no.0133, i32 1
  %13 = ptrtoint ptr %handle30 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call9.i.i, ptr %handle30, align 8
  %code = getelementptr %struct.input_leds, ptr %call9.i.i, i32 0, i32 2, i32 %led_no.0133, i32 2
  %14 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %led_code.0131, ptr %code, align 4
  %15 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i120 = icmp eq ptr %16, null
  br i1 %tobool.not.i120, label %if.end.i, label %if.end26.dev_name.exit_crit_edge

if.end26.dev_name.exit_crit_edge:                 ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev31, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end26.dev_name.exit_crit_edge
  %retval.0.i121 = phi ptr [ %18, %if.end.i ], [ %16, %if.end26.dev_name.exit_crit_edge ]
  %call35 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.1, ptr noundef %retval.0.i121, ptr noundef nonnull %12) #8
  %19 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call35, ptr %arrayidx28, align 8
  %tobool39.not = icmp eq ptr %call35, null
  br i1 %tobool39.not, label %dev_name.exit.err_unregister_leds_crit_edge, label %if.end41

dev_name.exit.err_unregister_leds_crit_edge:      ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_unregister_leds

if.end41:                                         ; preds = %dev_name.exit
  %max_brightness = getelementptr inbounds %struct.led_classdev, ptr %arrayidx28, i32 0, i32 2
  %20 = ptrtoint ptr %max_brightness to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %max_brightness, align 8
  %brightness_get = getelementptr inbounds %struct.led_classdev, ptr %arrayidx28, i32 0, i32 7
  %21 = ptrtoint ptr %brightness_get to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @input_leds_brightness_get, ptr %brightness_get, align 4
  %brightness_set = getelementptr inbounds %struct.led_classdev, ptr %arrayidx28, i32 0, i32 5
  %22 = ptrtoint ptr %brightness_set to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @input_leds_brightness_set, ptr %brightness_set, align 4
  %trigger = getelementptr [16 x %struct.anon.69], ptr @input_led_info, i32 0, i32 %led_code.0131, i32 1
  %23 = ptrtoint ptr %trigger to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %trigger, align 4
  %default_trigger = getelementptr inbounds %struct.led_classdev, ptr %arrayidx28, i32 0, i32 14
  %25 = ptrtoint ptr %default_trigger to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %default_trigger, align 4
  %call.i122 = tail call i32 @led_classdev_register_ext(ptr noundef %dev31, ptr noundef %arrayidx28, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122)
  %tobool50.not = icmp eq i32 %call.i122, 0
  br i1 %tobool50.not, label %if.end57, label %do.end

do.end:                                           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx28, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev31, ptr noundef nonnull @.str.2, ptr noundef %27, i32 noundef %call.i122) #12
  %28 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx28, align 8
  tail call void @kfree(ptr noundef %29) #8
  br label %err_unregister_leds

if.end57:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %inc = add i32 %led_no.0133, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end57, %for.body.for.inc_crit_edge
  %led_no.1 = phi i32 [ %inc, %if.end57 ], [ %led_no.0133, %for.body.for.inc_crit_edge ]
  %add = add nuw nsw i32 %led_code.0131, 1
  %call60 = tail call i32 @_find_next_bit_be(ptr noundef %ledbit.i, i32 noundef 16, i32 noundef %add) #8
  %cmp = icmp ult i32 %call60, 16
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

err_unregister_leds:                              ; preds = %do.end, %dev_name.exit.err_unregister_leds_crit_edge
  %error.0 = phi i32 [ %call.i122, %do.end ], [ -12, %dev_name.exit.err_unregister_leds_crit_edge ]
  %dec134 = add i32 %led_no.0133, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec134)
  %cmp61135 = icmp sgt i32 %dec134, -1
  br i1 %cmp61135, label %err_unregister_leds.while.body_crit_edge, label %err_unregister_leds.while.end_crit_edge

err_unregister_leds.while.end_crit_edge:          ; preds = %err_unregister_leds
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

err_unregister_leds.while.body_crit_edge:         ; preds = %err_unregister_leds
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %err_unregister_leds.while.body_crit_edge
  %dec136 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %dec134, %err_unregister_leds.while.body_crit_edge ]
  %arrayidx64 = getelementptr %struct.input_leds, ptr %call9.i.i, i32 0, i32 2, i32 %dec136
  tail call void @led_classdev_unregister(ptr noundef %arrayidx64) #8
  %30 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx64, align 8
  tail call void @kfree(ptr noundef %31) #8
  %dec = add nsw i32 %dec136, -1
  %cmp61 = icmp sgt i32 %dec136, 0
  br i1 %cmp61, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %err_unregister_leds.while.end_crit_edge
  tail call void @input_close_device(ptr noundef nonnull %call9.i.i) #8
  br label %err_unregister_handle

err_unregister_handle:                            ; preds = %while.end, %if.end16.err_unregister_handle_crit_edge
  %error.1 = phi i32 [ %call18, %if.end16.err_unregister_handle_crit_edge ], [ %error.0, %while.end ]
  tail call void @input_unregister_handle(ptr noundef nonnull %call9.i.i) #8
  br label %err_free_mem

err_free_mem:                                     ; preds = %err_unregister_handle, %if.end5.err_free_mem_crit_edge
  %error.2 = phi i32 [ %call13, %if.end5.err_free_mem_crit_edge ], [ %error.1, %err_unregister_handle ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_free_mem, %for.inc.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end8.i.i.cleanup_crit_edge, %input_leds_get_count.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.2, %err_free_mem ], [ -6, %input_leds_get_count.exit.cleanup_crit_edge ], [ -12, %if.end8.i.i.cleanup_crit_edge ], [ -6, %entry.cleanup_crit_edge ], [ 0, %if.end21.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @input_leds_disconnect(ptr noundef %handle) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 4
  %num_leds = getelementptr inbounds %struct.input_leds, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %num_leds to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_leds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp10.not = icmp eq i32 %3, 0
  br i1 %cmp10.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.011 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.input_leds, ptr %1, i32 0, i32 2, i32 %i.011
  tail call void @led_classdev_unregister(ptr noundef %arrayidx) #8
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %5) #8
  %inc = add nuw i32 %i.011, 1
  %6 = ptrtoint ptr %num_leds to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_leds, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @input_close_device(ptr noundef %handle) #8
  tail call void @input_unregister_handle(ptr noundef %handle) #8
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_handle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_open_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @input_leds_brightness_get(ptr nocapture noundef readonly %cdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %handle = getelementptr inbounds %struct.input_led, ptr %cdev, i32 0, i32 1
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 4
  %dev = getelementptr inbounds %struct.input_handle, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %code = getelementptr inbounds %struct.input_led, ptr %cdev, i32 0, i32 2
  %4 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %code, align 4
  %led1 = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 28
  %div3.i = lshr i32 %5, 5
  %arrayidx.i = getelementptr i32, ptr %led1, i32 %div3.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %5, 31
  %8 = shl nuw i32 1, %and.i
  %9 = and i32 %8, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %max_brightness = getelementptr inbounds %struct.led_classdev, ptr %cdev, i32 0, i32 2
  %10 = ptrtoint ptr %max_brightness to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_brightness, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %11, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @input_leds_brightness_set(ptr nocapture noundef readonly %cdev, i32 noundef %brightness) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %handle = getelementptr inbounds %struct.input_led, ptr %cdev, i32 0, i32 1
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 4
  %code = getelementptr inbounds %struct.input_led, ptr %cdev, i32 0, i32 2
  %2 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brightness)
  %tobool = icmp ne i32 %brightness, 0
  %lnot.ext = zext i1 %tobool to i32
  tail call void @input_inject_event(ptr noundef %1, i32 noundef 17, i32 noundef %3, i32 noundef %lnot.ext) #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_close_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_handle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_inject_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @__initcall__kmod_input_leds__223_209_input_leds_init6, !1, !"__initcall__kmod_input_leds__223_209_input_leds_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/input-leds.c", i32 209, i32 1}
!2 = !{ptr @__exitcall_input_leds_exit, !3, !"__exitcall_input_leds_exit", i1 false, i1 false}
!3 = !{!"../drivers/input/input-leds.c", i32 215, i32 1}
!4 = !{ptr @__UNIQUE_ID_author224, !5, !"__UNIQUE_ID_author224", i1 false, i1 false}
!5 = !{!"../drivers/input/input-leds.c", i32 217, i32 1}
!6 = !{ptr @__UNIQUE_ID_author225, !7, !"__UNIQUE_ID_author225", i1 false, i1 false}
!7 = !{!"../drivers/input/input-leds.c", i32 218, i32 1}
!8 = !{ptr @__UNIQUE_ID_description226, !9, !"__UNIQUE_ID_description226", i1 false, i1 false}
!9 = !{!"../drivers/input/input-leds.c", i32 219, i32 1}
!10 = !{ptr @__UNIQUE_ID_file227, !11, !"__UNIQUE_ID_file227", i1 false, i1 false}
!11 = !{!"../drivers/input/input-leds.c", i32 220, i32 1}
!12 = !{ptr @__UNIQUE_ID_license228, !11, !"__UNIQUE_ID_license228", i1 false, i1 false}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/input/input-leds.c", i32 201, i32 11}
!15 = !{ptr @input_leds_handler, !16, !"input_leds_handler", i1 false, i1 false}
!16 = !{!"../drivers/input/input-leds.c", i32 197, i32 29}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/input/input-leds.c", i32 126, i32 42}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/input/input-leds.c", i32 141, i32 4}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @input_leds_connect._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @input_leds_connect._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/input/input-leds.c", i32 25, i32 17}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/input/input-leds.c", i32 25, i32 28}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/input-leds.c", i32 26, i32 18}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/input/input-leds.c", i32 26, i32 30}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/input/input-leds.c", i32 27, i32 20}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/input/input-leds.c", i32 27, i32 34}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/input/input-leds.c", i32 28, i32 20}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/input/input-leds.c", i32 29, i32 17}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/input/input-leds.c", i32 29, i32 25}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/input/input-leds.c", i32 30, i32 18}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/input/input-leds.c", i32 31, i32 20}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/input/input-leds.c", i32 32, i32 17}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/input/input-leds.c", i32 33, i32 17}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/input/input-leds.c", i32 34, i32 17}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/input/input-leds.c", i32 35, i32 21}
!57 = !{ptr @input_led_info, !58, !"input_led_info", i1 false, i1 false}
!58 = !{!"../drivers/input/input-leds.c", i32 24, i32 3}
!59 = !{ptr @input_leds_ids, !60, !"input_leds_ids", i1 false, i1 false}
!60 = !{!"../drivers/input/input-leds.c", i32 188, i32 37}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
