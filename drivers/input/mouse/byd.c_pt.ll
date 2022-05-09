; ModuleID = '/llk/IR_all_yes/drivers/input/mouse/byd.c_pt.bc'
source_filename = "../drivers/input/mouse/byd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.70 = type { i16, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.psmouse = type { ptr, ptr, %struct.ps2dev, %struct.delayed_work, ptr, ptr, ptr, [8 x i8], i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, [64 x i8], [32 x i8], i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ps2dev = type { ptr, %struct.mutex, %struct.wait_queue_head, i32, [8 x i8], i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.byd_data = type { %struct.timer_list, ptr, i32, i32, i32, i8, i8, i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }

@byd_detect.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 113, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"psmouse\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"byd_detect\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/input/mouse/byd.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"byd: BYD touchpad detected\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"BYD\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TouchPad\00", [23 x i8] zeroinitializer }, align 32
@byd_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"(&priv->timer)\00", [17 x i8] zeroinitializer }, align 32
@byd_reset_touchpad.seq = internal constant { [25 x %struct.anon.70], [60 x i8] } { [25 x %struct.anon.70] [%struct.anon.70 { i16 4339, i8 -56 }, %struct.anon.70 { i16 4339, i8 100 }, %struct.anon.70 { i16 4339, i8 80 }, %struct.anon.70 { i16 754, i8 0 }, %struct.anon.70 { i16 244, i8 0 }, %struct.anon.70 { i16 4322, i8 0 }, %struct.anon.70 { i16 4320, i8 2 }, %struct.anon.70 { i16 5344, i8 1 }, %struct.anon.70 { i16 4307, i8 1 }, %struct.anon.70 { i16 4304, i8 4 }, %struct.anon.70 { i16 4308, i8 2 }, %struct.anon.70 { i16 4311, i8 4 }, %struct.anon.70 { i16 4312, i8 4 }, %struct.anon.70 { i16 4315, i8 1 }, %struct.anon.70 { i16 4318, i8 0 }, %struct.anon.70 { i16 4323, i8 2 }, %struct.anon.70 { i16 4306, i8 4 }, %struct.anon.70 { i16 4325, i8 4 }, %struct.anon.70 { i16 4316, i8 0 }, %struct.anon.70 { i16 4317, i8 0 }, %struct.anon.70 { i16 4319, i8 0 }, %struct.anon.70 { i16 4321, i8 0 }, %struct.anon.70 { i16 4305, i8 2 }, %struct.anon.70 { i16 4320, i8 0 }, %struct.anon.70 { i16 4322, i8 1 }], [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@byd_reconnect.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"byd_reconnect\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"byd: Reconnect\0A\00", [16 x i8] zeroinitializer }, align 32
@byd_reconnect.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.9, i8 0, i8 103, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"byd: Reconnected after %d attempts\0A\00", [60 x i8] zeroinitializer }, align 32
@byd_reconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.2, i32 417, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"byd: Unable to initialize device\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@byd_reconnect._entry_ptr = internal global ptr @byd_reconnect._entry, section ".printk_index", align 4
@byd_process_byte._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 280, ptr @.str.15, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"byd: Always_1 bit not 1. pkt[0] = %02x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"byd_process_byte\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@byd_process_byte._entry_ptr = internal global ptr @byd_process_byte._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@byd_process_byte._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.14, ptr @.str.2, i32 321, ptr @.str.15, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"byd: Unrecognized Z: pkt = %02x %02x %02x %02x\0A\00", [48 x i8] zeroinitializer }, align 32
@byd_process_byte._entry_ptr.18 = internal global ptr @byd_process_byte._entry.16, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 248]
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 454, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 457, i32 21 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 458, i32 19 }
@___asan_gen_.37 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 480, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant [4 x i8] c"seq\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 348, i32 4 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 402, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 413, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 417, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 279, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.83 = private constant [29 x i8] c"../drivers/input/mouse/byd.c\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 318, i32 3 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @byd_process_byte._entry, ptr @byd_process_byte._entry.16, ptr @byd_process_byte._entry_ptr, ptr @byd_process_byte._entry_ptr.18, ptr @byd_reconnect._entry, ptr @byd_reconnect._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @byd_init.__key, ptr @.str.6, ptr @byd_reset_touchpad.seq, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @byd_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @byd_reset_touchpad.seq to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @byd_reconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @byd_process_byte._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @byd_process_byte._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @byd_detect(ptr noundef %psmouse, i1 noundef zeroext %set_properties) local_unnamed_addr #0 align 64 {
entry:
  %param = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ps2dev1 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param) #5
  %0 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 50331648, ptr %param, align 4
  %call = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 4328) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 4328) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call8 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 4328) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %call13 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 4328) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %call18 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 1001) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  %arrayidx = getelementptr inbounds [4 x i8], ptr %param, i32 0, i32 1
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %2)
  %cmp.not = icmp eq i8 %2, 3
  br i1 %cmp.not, label %lor.lhs.false, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end21
  %arrayidx23 = getelementptr inbounds [4 x i8], ptr %param, i32 0, i32 2
  %3 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx23, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %4)
  %cmp25.not = icmp eq i8 %4, 100
  br i1 %cmp25.not, label %do.body, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @byd_detect.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@byd_detect, %if.then34)) #5
          to label %do.end [label %if.then34], !srcloc !47

if.then34:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %ps2dev1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ps2dev1, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %6, i32 0, i32 18
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @byd_detect.__UNIQUE_ID_ddebug229, ptr noundef %dev, ptr noundef nonnull @.str.3) #5
  br label %do.end

do.end:                                           ; preds = %if.then34, %do.body
  br i1 %set_properties, label %if.then38, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then38:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %vendor = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 4
  %7 = ptrtoint ptr %vendor to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.4, ptr %vendor, align 4
  %name = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 5
  %8 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.5, ptr %name, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %do.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %if.end6.cleanup_crit_edge ], [ -1, %if.end11.cleanup_crit_edge ], [ -1, %if.end16.cleanup_crit_edge ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %if.end21.cleanup_crit_edge ], [ 0, %if.then38 ], [ 0, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ps2_command(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @byd_init(ptr noundef %psmouse) local_unnamed_addr #0 align 64 {
entry:
  %param.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %call = tail call i32 @psmouse_reset(ptr noundef %psmouse) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %ps2dev1.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param.i) #5
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 25
  br i1 %exitcond.not.i, label %if.end5, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end
  %i.011.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %param.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %param.i, align 4
  %arrayidx.i = getelementptr [25 x %struct.anon.70], ptr @byd_reset_touchpad.seq, i32 0, i32 %i.011.i
  %arg.i = getelementptr [25 x %struct.anon.70], ptr @byd_reset_touchpad.seq, i32 0, i32 %i.011.i, i32 1
  %3 = ptrtoint ptr %arg.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arg.i, align 2
  store i8 %4, ptr %param.i, align 4
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %6 to i32
  %call.i = call i32 @ps2_command(ptr noundef %ps2dev1.i, ptr noundef nonnull %param.i, i32 noundef %conv.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %byd_reset_touchpad.exit

byd_reset_touchpad.exit:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i) #5
  br label %cleanup

if.end5:                                          ; preds = %for.cond.i
  call void @psmouse_set_state(ptr noundef %psmouse, i32 noundef 4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 68) #8
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %psmouse10 = getelementptr inbounds %struct.byd_data, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %psmouse10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %psmouse, ptr %psmouse10, align 8
  call void @init_timer_key(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @byd_clear_touch, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull @byd_init.__key) #5
  %9 = ptrtoint ptr %psmouse to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %psmouse, align 4
  %disconnect = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 32
  %10 = ptrtoint ptr %disconnect to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @byd_disconnect, ptr %disconnect, align 4
  %reconnect = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 30
  %11 = ptrtoint ptr %reconnect to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @byd_reconnect, ptr %reconnect, align 4
  %protocol_handler = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 26
  %12 = ptrtoint ptr %protocol_handler to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @byd_process_byte, ptr %protocol_handler, align 4
  %pktsize = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 10
  %13 = ptrtoint ptr %pktsize to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 4, ptr %pktsize, align 2
  %resync_time = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 24
  %14 = ptrtoint ptr %resync_time to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %resync_time, align 4
  %propbit = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %propbit to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %propbit, align 4
  %or.i = or i32 %16, 1
  store i32 %or.i, ptr %propbit, align 4
  %add.ptr.i = getelementptr %struct.input_dev, ptr %1, i32 0, i32 6, i32 10
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i, align 4
  %or.i54 = or i32 %18, 1056
  store i32 %or.i54, ptr %add.ptr.i, align 4
  %add.ptr.i55 = getelementptr %struct.input_dev, ptr %1, i32 0, i32 6, i32 8
  %19 = ptrtoint ptr %add.ptr.i55 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i55, align 4
  %or.i58 = and i32 %20, -458753
  %and.i = or i32 %or.i58, 196608
  store i32 %and.i, ptr %add.ptr.i55, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 5
  %21 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %evbit, align 4
  %or.i60 = or i32 %22, 8
  store i32 %or.i60, ptr %evbit, align 4
  call void @input_set_abs_params(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 11264, i32 noundef 0, i32 noundef 0) #5
  call void @input_set_abs_params(ptr noundef %1, i32 noundef 1, i32 noundef 0, i32 noundef 6656, i32 noundef 0, i32 noundef 0) #5
  call void @input_alloc_absinfo(ptr noundef %1) #5
  %absinfo.i = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 26
  %23 = ptrtoint ptr %absinfo.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %absinfo.i, align 8
  %tobool.not.i64 = icmp eq ptr %24, null
  br i1 %tobool.not.i64, label %if.end9.input_abs_set_res.exit_crit_edge, label %if.then.i

if.end9.input_abs_set_res.exit_crit_edge:         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %input_abs_set_res.exit

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %resolution.i = getelementptr %struct.input_absinfo, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %resolution.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 111, ptr %resolution.i, align 4
  br label %input_abs_set_res.exit

input_abs_set_res.exit:                           ; preds = %if.then.i, %if.end9.input_abs_set_res.exit_crit_edge
  call void @input_alloc_absinfo(ptr noundef %1) #5
  %26 = ptrtoint ptr %absinfo.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %absinfo.i, align 8
  %tobool.not.i66 = icmp eq ptr %27, null
  br i1 %tobool.not.i66, label %input_abs_set_res.exit.input_abs_set_res.exit69_crit_edge, label %if.then.i68

input_abs_set_res.exit.input_abs_set_res.exit69_crit_edge: ; preds = %input_abs_set_res.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %input_abs_set_res.exit69

if.then.i68:                                      ; preds = %input_abs_set_res.exit
  call void @__sanitizer_cov_trace_pc() #7
  %resolution.i67 = getelementptr %struct.input_absinfo, ptr %27, i32 1, i32 5
  %28 = ptrtoint ptr %resolution.i67 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 111, ptr %resolution.i67, align 4
  br label %input_abs_set_res.exit69

input_abs_set_res.exit69:                         ; preds = %if.then.i68, %input_abs_set_res.exit.input_abs_set_res.exit69_crit_edge
  %29 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %evbit, align 4
  %and.i61 = and i32 %30, -5
  store i32 %and.i61, ptr %evbit, align 4
  %relbit = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 7
  %31 = ptrtoint ptr %relbit to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %relbit, align 4
  %and.i63 = and i32 %32, -4
  store i32 %and.i63, ptr %relbit, align 4
  br label %cleanup

cleanup:                                          ; preds = %input_abs_set_res.exit69, %if.end5.cleanup_crit_edge, %byd_reset_touchpad.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %input_abs_set_res.exit69 ], [ -5, %entry.cleanup_crit_edge ], [ -5, %byd_reset_touchpad.exit ], [ -12, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psmouse_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @byd_clear_touch(ptr nocapture noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %psmouse1 = getelementptr inbounds %struct.byd_data, ptr %t, i32 0, i32 1
  %0 = ptrtoint ptr %psmouse1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse1, align 4
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps2dev, align 4
  %lock.i = getelementptr inbounds %struct.serio, ptr %3, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #5
  %touch = getelementptr inbounds %struct.byd_data, ptr %t, i32 0, i32 7
  %4 = ptrtoint ptr %touch to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %touch, align 2
  tail call fastcc void @byd_report_input(ptr noundef %1)
  %5 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ps2dev, align 4
  %lock.i9 = getelementptr inbounds %struct.serio, ptr %6, i32 0, i32 6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i9) #5
  %abs_x = getelementptr inbounds %struct.byd_data, ptr %t, i32 0, i32 2
  %7 = ptrtoint ptr %abs_x to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 5632, ptr %abs_x, align 4
  %abs_y = getelementptr inbounds %struct.byd_data, ptr %t, i32 0, i32 3
  %8 = ptrtoint ptr %abs_y to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3328, ptr %abs_y, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @byd_disconnect(ptr nocapture noundef %psmouse) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @del_timer(ptr noundef nonnull %1) #5
  %2 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %psmouse, align 4
  tail call void @kfree(ptr noundef %3) #5
  %4 = ptrtoint ptr %psmouse to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %psmouse, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @byd_reconnect(ptr noundef %psmouse) #0 align 64 {
entry:
  %param.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @byd_reconnect.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@byd_reconnect, %if.then)) #5
          to label %if.end7 [label %if.then], !srcloc !47

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %0 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps2dev, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @byd_reconnect.__UNIQUE_ID_ddebug227, ptr noundef %dev, ptr noundef nonnull @.str.8) #5
  br label %if.end7

if.end7:                                          ; preds = %if.then, %entry
  %call4 = tail call i32 @psmouse_reset(ptr noundef %psmouse) #5
  %call8 = tail call i32 @byd_detect(ptr noundef %psmouse, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool10.not = icmp eq i32 %call8, 0
  br i1 %tobool10.not, label %if.end7.do.body15_crit_edge, label %if.end7.1

if.end7.do.body15_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body15

if.end7.1:                                        ; preds = %if.end7
  %call4.1 = tail call i32 @psmouse_reset(ptr noundef %psmouse) #5
  tail call void @msleep(i32 noundef 1000) #5
  %call8.1 = tail call i32 @byd_detect(ptr noundef %psmouse, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.1)
  %tobool10.not.1 = icmp eq i32 %call8.1, 0
  br i1 %tobool10.not.1, label %if.end7.1.do.body15_crit_edge, label %if.end7.2

if.end7.1.do.body15_crit_edge:                    ; preds = %if.end7.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body15

if.end7.2:                                        ; preds = %if.end7.1
  %call4.2 = tail call i32 @psmouse_reset(ptr noundef %psmouse) #5
  tail call void @msleep(i32 noundef 1000) #5
  %call8.2 = tail call i32 @byd_detect(ptr noundef %psmouse, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.2)
  %tobool10.not.2 = icmp eq i32 %call8.2, 0
  br i1 %tobool10.not.2, label %if.end7.2.do.body15_crit_edge, label %if.end7.2.cleanup_crit_edge

if.end7.2.cleanup_crit_edge:                      ; preds = %if.end7.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7.2.do.body15_crit_edge:                    ; preds = %if.end7.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body15

do.body15:                                        ; preds = %if.end7.2.do.body15_crit_edge, %if.end7.1.do.body15_crit_edge, %if.end7.do.body15_crit_edge
  %retry.0.lcssa = phi i32 [ 0, %if.end7.do.body15_crit_edge ], [ 1, %if.end7.1.do.body15_crit_edge ], [ 2, %if.end7.2.do.body15_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @byd_reconnect.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@byd_reconnect, %if.then27)) #5
          to label %do.end33 [label %if.then27], !srcloc !47

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #7
  %ps2dev28 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %2 = ptrtoint ptr %ps2dev28 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps2dev28, align 4
  %dev30 = getelementptr inbounds %struct.serio, ptr %3, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @byd_reconnect.__UNIQUE_ID_ddebug228, ptr noundef %dev30, ptr noundef nonnull @.str.9, i32 noundef %retry.0.lcssa) #5
  br label %do.end33

do.end33:                                         ; preds = %if.then27, %do.body15
  %ps2dev1.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param.i) #5
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 25
  br i1 %exitcond.not.i, label %byd_reset_touchpad.exit.thread, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %do.end33
  %i.011.i = phi i32 [ 0, %do.end33 ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %param.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %param.i, align 4
  %arrayidx.i = getelementptr [25 x %struct.anon.70], ptr @byd_reset_touchpad.seq, i32 0, i32 %i.011.i
  %arg.i = getelementptr [25 x %struct.anon.70], ptr @byd_reset_touchpad.seq, i32 0, i32 %i.011.i, i32 1
  %5 = ptrtoint ptr %arg.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arg.i, align 2
  store i8 %6, ptr %param.i, align 4
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %8 to i32
  %call.i = call i32 @ps2_command(ptr noundef %ps2dev1.i, ptr noundef nonnull %param.i, i32 noundef %conv.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %do.end39

byd_reset_touchpad.exit.thread:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @psmouse_set_state(ptr noundef %psmouse, i32 noundef 4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i) #5
  br label %cleanup

do.end39:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i) #5
  %9 = ptrtoint ptr %ps2dev1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ps2dev1.i, align 4
  %dev42 = getelementptr inbounds %struct.serio, ptr %10, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev42, ptr noundef nonnull @.str.10) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end39, %byd_reset_touchpad.exit.thread, %if.end7.2.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end39 ], [ 0, %byd_reset_touchpad.exit.thread ], [ %call8.2, %if.end7.2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @byd_process_byte(ptr nocapture noundef readonly %psmouse) #0 align 64 {
entry:
  %tap_time = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  %packet = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 7
  %pktcnt = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 9
  %2 = ptrtoint ptr %pktcnt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pktcnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.not = icmp eq i8 %3, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %packet to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %packet, align 1
  %conv2 = zext i8 %5 to i32
  %and = and i32 %conv2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %6 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ps2dev, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %7, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %conv2) #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %pktsize = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 10
  %8 = ptrtoint ptr %pktsize to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pktsize, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %9)
  %cmp8 = icmp ult i8 %3, %9
  br i1 %cmp8, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %arrayidx12 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 3
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx12, align 1
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i8 %11, label %do.end50 [
    i8 -8, label %sw.bb
    i8 0, label %sw.bb26
  ]

sw.bb:                                            ; preds = %if.end11
  %touch = getelementptr inbounds %struct.byd_data, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %touch to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %touch, align 2, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool14.not = icmp eq i8 %14, 0
  br i1 %tobool14.not, label %if.then15, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then15:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tap_time)
  %15 = ptrtoint ptr %tap_time to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 -1, ptr %tap_time, align 4
  %last_touch_time = getelementptr inbounds %struct.byd_data, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %last_touch_time to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %last_touch_time, align 4
  %add = add i32 %17, 7
  store volatile i32 %add, ptr %tap_time, align 4
  %tap_time.0.tap_time.0.tap_time.0. = load volatile i32, ptr %tap_time, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %tap_time.0.tap_time.0.tap_time.0., %18
  %sub.lobit = lshr i32 %sub, 31
  %19 = trunc i32 %sub.lobit to i8
  %20 = ptrtoint ptr %touch to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %touch, align 2
  %arrayidx19 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 1
  %21 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %22 to i32
  %mul = mul nuw nsw i32 %conv20, 44
  %abs_x = getelementptr inbounds %struct.byd_data, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %abs_x to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %mul, ptr %abs_x, align 4
  %arrayidx21 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 2
  %24 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx21, align 1
  %26 = xor i8 %25, -1
  %sub23 = zext i8 %26 to i32
  %mul24 = mul nuw nsw i32 %sub23, 26
  %abs_y = getelementptr inbounds %struct.byd_data, ptr %1, i32 0, i32 3
  %27 = ptrtoint ptr %abs_y to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mul24, ptr %abs_y, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tap_time)
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %packet to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %packet, align 1
  %conv28 = zext i8 %29 to i32
  %and29 = and i32 %conv28, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  %cond = select i1 %tobool30.not, i32 0, i32 -256
  %and33 = and i32 %conv28, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  %cond35 = select i1 %tobool34.not, i32 0, i32 -256
  %arrayidx36 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 1
  %30 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx36, align 1
  %conv37 = zext i8 %31 to i32
  %or = or i32 %cond, %conv37
  %arrayidx38 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 2
  %32 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %33 to i32
  %or40 = or i32 %cond35, %conv39
  %mul41 = mul nsw i32 %or, 11
  %abs_x42 = getelementptr inbounds %struct.byd_data, ptr %1, i32 0, i32 2
  %34 = ptrtoint ptr %abs_x42 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %abs_x42, align 4
  %add43 = add i32 %mul41, %35
  store i32 %add43, ptr %abs_x42, align 4
  %mul44.neg = mul nsw i32 %or40, -11
  %abs_y45 = getelementptr inbounds %struct.byd_data, ptr %1, i32 0, i32 3
  %36 = ptrtoint ptr %abs_y45 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %abs_y45, align 4
  %sub46 = add i32 %mul44.neg, %37
  store i32 %sub46, ptr %abs_y45, align 4
  %touch47 = getelementptr inbounds %struct.byd_data, ptr %1, i32 0, i32 7
  %38 = ptrtoint ptr %touch47 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %touch47, align 2
  br label %sw.epilog

do.end50:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %ps2dev51 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %39 = ptrtoint ptr %ps2dev51 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ps2dev51, align 4
  %dev53 = getelementptr inbounds %struct.serio, ptr %40, i32 0, i32 18
  %41 = ptrtoint ptr %packet to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %packet, align 4
  %conv56 = zext i8 %42 to i32
  %arrayidx58 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 1
  %43 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx58, align 1
  %conv59 = zext i8 %44 to i32
  %arrayidx61 = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 2
  %45 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx61, align 2
  %conv62 = zext i8 %46 to i32
  %conv65 = zext i8 %11 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev53, ptr noundef nonnull @.str.17, i32 noundef %conv56, i32 noundef %conv59, i32 noundef %conv62, i32 noundef %conv65) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb26, %if.then15, %sw.bb.sw.epilog_crit_edge
  %47 = ptrtoint ptr %packet to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %packet, align 1
  %49 = and i8 %48, 1
  %btn_left = getelementptr inbounds %struct.byd_data, ptr %1, i32 0, i32 5
  %50 = ptrtoint ptr %btn_left to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %btn_left, align 4
  %51 = load i8, ptr %packet, align 1
  %btn_right = getelementptr inbounds %struct.byd_data, ptr %1, i32 0, i32 6
  %52 = lshr i8 %51, 1
  %.lobit = and i8 %52, 1
  %53 = ptrtoint ptr %btn_right to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %.lobit, ptr %btn_right, align 1
  tail call fastcc void @byd_report_input(ptr noundef %psmouse)
  %touch76 = getelementptr inbounds %struct.byd_data, ptr %1, i32 0, i32 7
  %54 = ptrtoint ptr %touch76 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %touch76, align 2, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool77.not = icmp eq i8 %55, 0
  br i1 %tobool77.not, label %sw.epilog.cleanup_crit_edge, label %if.then78

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then78:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %56 = load volatile i32, ptr @jiffies, align 128
  %last_touch_time79 = getelementptr inbounds %struct.byd_data, ptr %1, i32 0, i32 4
  %57 = ptrtoint ptr %last_touch_time79 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile i32 %56, ptr %last_touch_time79, align 4
  %58 = load volatile i32, ptr @jiffies, align 128
  %add81 = add i32 %58, 7
  %call82 = tail call i32 @mod_timer(ptr noundef %1, i32 noundef %add81) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then78, %sw.epilog.cleanup_crit_edge, %do.end50, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end50 ], [ 0, %do.end ], [ 1, %if.end.cleanup_crit_edge ], [ 2, %if.then78 ], [ 2, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @psmouse_set_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @byd_report_input(ptr nocapture noundef readonly %psmouse) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  %dev1 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %touch = getelementptr inbounds %struct.byd_data, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %touch to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %touch, align 2, !range !48
  %6 = zext i8 %5 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 330, i32 noundef %6) #5
  %7 = ptrtoint ptr %touch to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %touch, align 2, !range !48
  %9 = zext i8 %8 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 325, i32 noundef %9) #5
  %abs_x = getelementptr inbounds %struct.byd_data, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %abs_x to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %abs_x, align 4
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 0, i32 noundef %11) #5
  %abs_y = getelementptr inbounds %struct.byd_data, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %abs_y to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %abs_y, align 4
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 1, i32 noundef %13) #5
  %btn_left = getelementptr inbounds %struct.byd_data, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %btn_left to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %btn_left, align 4, !range !48
  %16 = zext i8 %15 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 272, i32 noundef %16) #5
  %btn_right = getelementptr inbounds %struct.byd_data, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %btn_right to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %btn_right, align 1, !range !48
  %19 = zext i8 %18 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 273, i32 noundef %19) #5
  tail call void @input_event(ptr noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_alloc_absinfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !13, !15, !17, !18, !19, !21, !22, !24, !25, !26, !27, !28, !30, !31, !32, !33, !34, !36, !37}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/input/mouse/byd.c", i32 454, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @byd_detect.__UNIQUE_ID_ddebug229, !1, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/input/mouse/byd.c", i32 457, i32 21}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/input/mouse/byd.c", i32 458, i32 19}
!10 = !{ptr @byd_init.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/input/mouse/byd.c", i32 480, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @byd_reset_touchpad.seq, !14, !"seq", i1 false, i1 false}
!14 = !{!"../drivers/input/mouse/byd.c", i32 348, i32 4}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/input/mouse/byd.c", i32 402, i32 2}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @byd_reconnect.__UNIQUE_ID_ddebug227, !16, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/input/mouse/byd.c", i32 413, i32 2}
!21 = !{ptr @byd_reconnect.__UNIQUE_ID_ddebug228, !20, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/mouse/byd.c", i32 417, i32 3}
!24 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @byd_reconnect._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @byd_reconnect._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/mouse/byd.c", i32 279, i32 3}
!30 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @byd_process_byte._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @byd_process_byte._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/input/mouse/byd.c", i32 318, i32 3}
!36 = !{ptr @byd_process_byte._entry.16, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @byd_process_byte._entry_ptr.18, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{i64 2148767755, i64 2148767760, i64 2148767773, i64 2148767817, i64 2148767851, i64 2148767872}
!48 = !{i8 0, i8 2}
