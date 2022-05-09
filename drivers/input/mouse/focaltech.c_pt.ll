; ModuleID = '/llk/IR_all_yes/drivers/input/mouse/focaltech.c_pt.bc'
source_filename = "../drivers/input/mouse/focaltech.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.psmouse = type { ptr, ptr, %struct.ps2dev, %struct.delayed_work, ptr, ptr, ptr, [8 x i8], i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, [64 x i8], [32 x i8], i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ps2dev = type { ptr, %struct.mutex, %struct.wait_queue_head, i32, [8 x i8], i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
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
%struct.hlist_node = type { ptr, ptr }
%struct.focaltech_data = type { i32, i32, %struct.focaltech_hw_state }
%struct.focaltech_hw_state = type { [5 x %struct.focaltech_finger_state], i32, i8 }
%struct.focaltech_finger_state = type { i8, i8, i32, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
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
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }

@focaltech_pnp_ids = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr null], [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FocalTech\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Touchpad\00", [23 x i8] zeroinitializer }, align 32
@focaltech_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 421, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"focaltech: Unable to read the size of the touchpad\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"focaltech_init\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/input/mouse/focaltech.c\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@focaltech_init._entry_ptr = internal global ptr @focaltech_init._entry, section ".printk_index", align 4
@focaltech_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 427, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"focaltech: Unable to initialize the device\0A\00", [52 x i8] zeroinitializer }, align 32
@focaltech_init._entry_ptr.9 = internal global ptr @focaltech_init._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"FLT0101\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"FLT0102\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"FLT0103\00", [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@focaltech_process_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 244, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"focaltech: Unknown packet type: %02x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"focaltech_process_packet\00", [39 x i8] zeroinitializer }, align 32
@focaltech_process_packet._entry_ptr = internal global ptr @focaltech_process_packet._entry, section ".printk_index", align 4
@focaltech_process_abs_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.4, i32 183, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"focaltech: Invalid finger in abs packet: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"focaltech_process_abs_packet\00", [35 x i8] zeroinitializer }, align 32
@focaltech_process_abs_packet._entry_ptr = internal global ptr @focaltech_process_abs_packet._entry, section ".printk_index", align 4
@focaltech_process_rel_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 209, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"focaltech: First finger in rel packet invalid: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"focaltech_process_rel_packet\00", [35 x i8] zeroinitializer }, align 32
@focaltech_process_rel_packet._entry_ptr = internal global ptr @focaltech_process_rel_packet._entry, section ".printk_index", align 4
@focaltech_reconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.19, ptr @.str.4, i32 314, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"focaltech_reconnect\00", [44 x i8] zeroinitializer }, align 32
@focaltech_reconnect._entry_ptr = internal global ptr @focaltech_reconnect._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 6, i64 9]
@___asan_gen_.20 = private unnamed_addr constant [18 x i8] c"focaltech_pnp_ids\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 22, i32 27 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 41, i32 21 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 42, i32 19 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 420, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 427, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 23, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 24, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 25, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 244, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 182, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 208, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.93 = private constant [35 x i8] c"../drivers/input/mouse/focaltech.c\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 314, i32 3 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @focaltech_init._entry, ptr @focaltech_init._entry.7, ptr @focaltech_init._entry_ptr, ptr @focaltech_init._entry_ptr.9, ptr @focaltech_process_abs_packet._entry, ptr @focaltech_process_abs_packet._entry_ptr, ptr @focaltech_process_packet._entry, ptr @focaltech_process_packet._entry_ptr, ptr @focaltech_process_rel_packet._entry, ptr @focaltech_process_rel_packet._entry_ptr, ptr @focaltech_reconnect._entry, ptr @focaltech_reconnect._entry_ptr, ptr @focaltech_pnp_ids, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @focaltech_pnp_ids to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @focaltech_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @focaltech_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @focaltech_process_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @focaltech_process_abs_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @focaltech_process_rel_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @focaltech_reconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @focaltech_detect(ptr noundef %psmouse, i1 noundef zeroext %set_properties) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @psmouse_matches_pnp_id(ptr noundef %psmouse, ptr noundef nonnull @focaltech_pnp_ids) #7
  %0 = and i1 %call, %set_properties
  %.mux = select i1 %call, i32 0, i32 -19
  br i1 %0, label %if.then1, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %vendor = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 4
  %1 = ptrtoint ptr %vendor to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str, ptr %vendor, align 4
  %name = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 5
  %2 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.1, ptr %name, align 4
  br label %return

return:                                           ; preds = %if.then1, %entry.return_crit_edge
  %retval.0 = phi i32 [ %.mux, %entry.return_crit_edge ], [ 0, %if.then1 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @psmouse_matches_pnp_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @focaltech_init(ptr noundef %psmouse) local_unnamed_addr #0 align 64 {
entry:
  %param.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 76) #10
  %1 = ptrtoint ptr %psmouse to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %psmouse, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup15_crit_edge, label %if.end

entry.cleanup15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup15

if.end:                                           ; preds = %entry
  %ps2dev.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %call.i = tail call i32 @ps2_command(ptr noundef %ps2dev.i, ptr noundef null, i32 noundef 246) #7
  %call1.i = tail call i32 @psmouse_reset(ptr noundef %psmouse) #7
  %2 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %psmouse, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %param.i) #7
  %4 = ptrtoint ptr %param.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %param.i, align 1, !annotation !52
  %5 = getelementptr inbounds [3 x i8], ptr %param.i, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !52
  %7 = getelementptr inbounds [3 x i8], ptr %param.i, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %7, align 1, !annotation !52
  %call.i.i = call i32 @ps2_command(ptr noundef %ps2dev.i, ptr noundef nonnull %param.i, i32 noundef 230) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i.i:                                       ; preds = %if.end
  %9 = ptrtoint ptr %param.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %param.i, align 1
  %call1.i.i = call i32 @ps2_command(ptr noundef %ps2dev.i, ptr noundef nonnull %param.i, i32 noundef 4328) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %if.end.i.i.do.end_crit_edge

if.end.i.i.do.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end4.i.i:                                      ; preds = %if.end.i.i
  %call5.i.i = call i32 @ps2_command(ptr noundef %ps2dev.i, ptr noundef nonnull %param.i, i32 noundef 4328) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end8.i.i, label %if.end4.i.i.do.end_crit_edge

if.end4.i.i.do.end_crit_edge:                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end8.i.i:                                      ; preds = %if.end4.i.i
  %call9.i.i = call i32 @ps2_command(ptr noundef %ps2dev.i, ptr noundef nonnull %param.i, i32 noundef 4328) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %if.end12.i.i, label %if.end8.i.i.do.end_crit_edge

if.end8.i.i.do.end_crit_edge:                     ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end12.i.i:                                     ; preds = %if.end8.i.i
  %10 = ptrtoint ptr %param.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %param.i, align 1
  %call14.i.i = call i32 @ps2_command(ptr noundef %ps2dev.i, ptr noundef nonnull %param.i, i32 noundef 4328) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %tobool15.not.i.i = icmp eq i32 %call14.i.i, 0
  br i1 %tobool15.not.i.i, label %if.end17.i.i, label %if.end12.i.i.do.end_crit_edge

if.end12.i.i.do.end_crit_edge:                    ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end17.i.i:                                     ; preds = %if.end12.i.i
  %call18.i.i = call i32 @ps2_command(ptr noundef %ps2dev.i, ptr noundef nonnull %param.i, i32 noundef 1001) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i)
  %tobool19.not.i.i = icmp eq i32 %call18.i.i, 0
  br i1 %tobool19.not.i.i, label %if.end4, label %if.end17.i.i.do.end_crit_edge

if.end17.i.i.do.end_crit_edge:                    ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %if.end17.i.i.do.end_crit_edge, %if.end12.i.i.do.end_crit_edge, %if.end8.i.i.do.end_crit_edge, %if.end4.i.i.do.end_crit_edge, %if.end.i.i.do.end_crit_edge, %if.end.do.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %param.i) #7
  br label %fail

if.end4:                                          ; preds = %if.end17.i.i
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %5, align 1
  %conv.i = zext i8 %12 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 7
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mul.i, ptr %3, align 4
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %7, align 1
  %conv3.i = zext i8 %15 to i32
  %mul4.i = shl nuw nsw i32 %conv3.i, 7
  %y_max.i = getelementptr inbounds %struct.focaltech_data, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %y_max.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mul4.i, ptr %y_max.i, align 4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %param.i) #7
  %call5 = call fastcc i32 @focaltech_switch_protocol(ptr noundef %psmouse)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end14, label %if.end4.fail_crit_edge

if.end4.fail_crit_edge:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end14:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %dev1.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 1
  %17 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev1.i, align 4
  %19 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %psmouse, align 4
  %evbit.i = getelementptr inbounds %struct.input_dev, ptr %18, i32 0, i32 5
  %21 = ptrtoint ptr %evbit.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %evbit.i, align 4
  %and.i.i = and i32 %22, -13
  %relbit.i = getelementptr inbounds %struct.input_dev, ptr %18, i32 0, i32 7
  %23 = ptrtoint ptr %relbit.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %relbit.i, align 4
  %and.i24.i = and i32 %24, -4
  store i32 %and.i24.i, ptr %relbit.i, align 4
  %add.ptr.i.i = getelementptr %struct.input_dev, ptr %18, i32 0, i32 6, i32 8
  %25 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr.i.i, align 4
  %and.i27.i = and i32 %26, -393217
  store i32 %and.i27.i, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %and.i.i, 8
  store i32 %or.i.i, ptr %evbit.i, align 4
  %27 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %20, align 4
  call void @input_set_abs_params(ptr noundef %18, i32 noundef 53, i32 noundef 0, i32 noundef %28, i32 noundef 0, i32 noundef 0) #7
  %y_max.i36 = getelementptr inbounds %struct.focaltech_data, ptr %20, i32 0, i32 1
  %29 = ptrtoint ptr %y_max.i36 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %y_max.i36, align 4
  call void @input_set_abs_params(ptr noundef %18, i32 noundef 54, i32 noundef 0, i32 noundef %30, i32 noundef 0, i32 noundef 0) #7
  call void @input_set_abs_params(ptr noundef %18, i32 noundef 28, i32 noundef 0, i32 noundef 15, i32 noundef 0, i32 noundef 0) #7
  %call.i37 = call i32 @input_mt_init_slots(ptr noundef %18, i32 noundef 5, i32 noundef 1) #7
  %propbit.i = getelementptr inbounds %struct.input_dev, ptr %18, i32 0, i32 4
  %31 = ptrtoint ptr %propbit.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %propbit.i, align 4
  %or.i28.i = or i32 %32, 4
  store i32 %or.i28.i, ptr %propbit.i, align 4
  %protocol_handler = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 26
  %33 = ptrtoint ptr %protocol_handler to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @focaltech_process_byte, ptr %protocol_handler, align 4
  %pktsize = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 10
  %34 = ptrtoint ptr %pktsize to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 6, ptr %pktsize, align 2
  %disconnect = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 32
  %35 = ptrtoint ptr %disconnect to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @focaltech_disconnect, ptr %disconnect, align 4
  %reconnect = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 30
  %36 = ptrtoint ptr %reconnect to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @focaltech_reconnect, ptr %reconnect, align 4
  %cleanup = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 33
  %37 = ptrtoint ptr %cleanup to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @focaltech_reset, ptr %cleanup, align 4
  %resync_time = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 24
  %38 = ptrtoint ptr %resync_time to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %resync_time, align 4
  %set_resolution = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 28
  %39 = ptrtoint ptr %set_resolution to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @focaltech_set_resolution, ptr %set_resolution, align 4
  %set_rate = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 27
  %40 = ptrtoint ptr %set_rate to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @focaltech_set_rate, ptr %set_rate, align 4
  %set_scale = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 29
  %41 = ptrtoint ptr %set_scale to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @focaltech_set_scale, ptr %set_scale, align 4
  br label %cleanup15

fail:                                             ; preds = %if.end4.fail_crit_edge, %do.end
  %.str.8.sink = phi ptr [ @.str.2, %do.end ], [ @.str.8, %if.end4.fail_crit_edge ]
  %error.0 = phi i32 [ -5, %do.end ], [ %call5, %if.end4.fail_crit_edge ]
  %42 = ptrtoint ptr %ps2dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ps2dev.i, align 4
  %dev13 = getelementptr inbounds %struct.serio, ptr %43, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull %.str.8.sink) #11
  %call.i39 = call i32 @ps2_command(ptr noundef %ps2dev.i, ptr noundef null, i32 noundef 246) #7
  %call1.i40 = call i32 @psmouse_reset(ptr noundef %psmouse) #7
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup15

cleanup15:                                        ; preds = %fail, %if.end14, %entry.cleanup15_crit_edge
  %retval.0 = phi i32 [ %error.0, %fail ], [ 0, %if.end14 ], [ -12, %entry.cleanup15_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @focaltech_reset(ptr noundef %psmouse) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ps2dev = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %call = tail call i32 @ps2_command(ptr noundef %ps2dev, ptr noundef null, i32 noundef 246) #7
  %call1 = tail call i32 @psmouse_reset(ptr noundef %psmouse) #7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @focaltech_switch_protocol(ptr noundef %psmouse) unnamed_addr #0 align 64 {
entry:
  %param = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ps2dev1 = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %param) #7
  %0 = getelementptr inbounds [3 x i8], ptr %param, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %0, align 1, !annotation !52
  %2 = getelementptr inbounds [3 x i8], ptr %param, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %2, align 1, !annotation !52
  %4 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %param, align 1
  %call = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 4344) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 4344) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call8 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 4344) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %5 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %param, align 1
  %call14 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 4344) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  %call19 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 230) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %call24 = call i32 @ps2_command(ptr noundef %ps2dev1, ptr noundef nonnull %param, i32 noundef 244) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  %. = select i1 %tobool25.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end17.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ -5, %if.end6.cleanup_crit_edge ], [ -5, %if.end11.cleanup_crit_edge ], [ -5, %if.end17.cleanup_crit_edge ], [ %., %if.end22 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %param) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @focaltech_process_byte(ptr noundef readonly %psmouse) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pktcnt = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 9
  %0 = ptrtoint ptr %pktcnt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pktcnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %1)
  %cmp = icmp ugt i8 %1, 5
  br i1 %cmp, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then:                                          ; preds = %entry
  %packet1.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 7
  %2 = ptrtoint ptr %packet1.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %packet1.i, align 1
  %conv.i = zext i8 %3 to i32
  %and.i = and i32 %conv.i, 15
  %4 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %do.end.i [
    i32 3, label %sw.bb.i
    i32 6, label %sw.bb2.i
    i32 9, label %sw.bb3.i
  ]

sw.bb.i:                                          ; preds = %if.then
  %5 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %psmouse, align 4
  %state1.i.i = getelementptr inbounds %struct.focaltech_data, ptr %6, i32 0, i32 2
  %arrayidx.i.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i.i, align 1
  %pressed.i.i = getelementptr inbounds %struct.focaltech_data, ptr %6, i32 0, i32 2, i32 2
  %9 = lshr i8 %3, 4
  %.lobit.i.i = and i8 %9, 1
  %10 = ptrtoint ptr %pressed.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %.lobit.i.i, ptr %pressed.i.i, align 4
  %11 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not.i.i = icmp eq i8 %11, 0
  %12 = ptrtoint ptr %state1.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %state1.i.i, align 4
  br i1 %tobool6.not.i.i, label %if.then.i.i, label %sw.bb.i.if.end.i.i_crit_edge

sw.bb.i.if.end.i.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %valid.i.i = getelementptr %struct.focaltech_data, ptr %6, i32 0, i32 2, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %valid.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %valid.i.i, align 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %sw.bb.i.if.end.i.i_crit_edge
  %14 = lshr i8 %8, 1
  %15 = and i8 %14, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool6.not.1.i.i = icmp eq i8 %15, 0
  %arrayidx8.1.i.i = getelementptr %struct.focaltech_data, ptr %6, i32 0, i32 2, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx8.1.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %arrayidx8.1.i.i, align 4
  br i1 %tobool6.not.1.i.i, label %if.then.1.i.i, label %if.end.i.i.if.end.1.i.i_crit_edge

if.end.i.i.if.end.1.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.1.i.i

if.then.1.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %valid.1.i.i = getelementptr %struct.focaltech_data, ptr %6, i32 0, i32 2, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %valid.1.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %valid.1.i.i, align 1
  br label %if.end.1.i.i

if.end.1.i.i:                                     ; preds = %if.then.1.i.i, %if.end.i.i.if.end.1.i.i_crit_edge
  %18 = lshr i8 %8, 2
  %19 = and i8 %18, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool6.not.2.i.i = icmp eq i8 %19, 0
  %arrayidx8.2.i.i = getelementptr %struct.focaltech_data, ptr %6, i32 0, i32 2, i32 0, i32 2
  %20 = ptrtoint ptr %arrayidx8.2.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %arrayidx8.2.i.i, align 4
  br i1 %tobool6.not.2.i.i, label %if.then.2.i.i, label %if.end.1.i.i.if.end.2.i.i_crit_edge

if.end.1.i.i.if.end.2.i.i_crit_edge:              ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.2.i.i

if.then.2.i.i:                                    ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %valid.2.i.i = getelementptr %struct.focaltech_data, ptr %6, i32 0, i32 2, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %valid.2.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %valid.2.i.i, align 1
  br label %if.end.2.i.i

if.end.2.i.i:                                     ; preds = %if.then.2.i.i, %if.end.1.i.i.if.end.2.i.i_crit_edge
  %22 = lshr i8 %8, 3
  %23 = and i8 %22, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool6.not.3.i.i = icmp eq i8 %23, 0
  %arrayidx8.3.i.i = getelementptr %struct.focaltech_data, ptr %6, i32 0, i32 2, i32 0, i32 3
  %24 = ptrtoint ptr %arrayidx8.3.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx8.3.i.i, align 4
  br i1 %tobool6.not.3.i.i, label %if.then.3.i.i, label %if.end.2.i.i.if.end.3.i.i_crit_edge

if.end.2.i.i.if.end.3.i.i_crit_edge:              ; preds = %if.end.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.3.i.i

if.then.3.i.i:                                    ; preds = %if.end.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %valid.3.i.i = getelementptr %struct.focaltech_data, ptr %6, i32 0, i32 2, i32 0, i32 3, i32 1
  %25 = ptrtoint ptr %valid.3.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %valid.3.i.i, align 1
  br label %if.end.3.i.i

if.end.3.i.i:                                     ; preds = %if.then.3.i.i, %if.end.2.i.i.if.end.3.i.i_crit_edge
  %26 = lshr i8 %8, 4
  %27 = and i8 %26, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool6.not.4.i.i = icmp eq i8 %27, 0
  %arrayidx8.4.i.i = getelementptr %struct.focaltech_data, ptr %6, i32 0, i32 2, i32 0, i32 4
  %28 = ptrtoint ptr %arrayidx8.4.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %arrayidx8.4.i.i, align 4
  br i1 %tobool6.not.4.i.i, label %if.then.4.i.i, label %if.end.3.i.i.sw.epilog.i_crit_edge

if.end.3.i.i.sw.epilog.i_crit_edge:               ; preds = %if.end.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.then.4.i.i:                                    ; preds = %if.end.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %valid.4.i.i = getelementptr %struct.focaltech_data, ptr %6, i32 0, i32 2, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %valid.4.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %valid.4.i.i, align 1
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.then
  %arrayidx.i15.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 1
  %30 = ptrtoint ptr %arrayidx.i15.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i15.i, align 1
  %32 = lshr i8 %31, 4
  %33 = zext i8 %32 to i32
  %sub.i.i = add nsw i32 %33, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i.i)
  %cmp.i.i = icmp ugt i32 %sub.i.i, 4
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i20.i

do.end.i.i:                                       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #9
  %ps2dev.i.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %34 = ptrtoint ptr %ps2dev.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ps2dev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.serio, ptr %35, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.15, i32 noundef %sub.i.i) #11
  br label %sw.epilog.i

if.end.i20.i:                                     ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %psmouse, align 4
  %state1.i16.i = getelementptr inbounds %struct.focaltech_data, ptr %37, i32 0, i32 2
  %pressed.i17.i = getelementptr inbounds %struct.focaltech_data, ptr %37, i32 0, i32 2, i32 2
  %38 = lshr i8 %3, 4
  %.lobit.i18.i = and i8 %38, 1
  %39 = ptrtoint ptr %pressed.i17.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %.lobit.i18.i, ptr %pressed.i17.i, align 4
  %40 = ptrtoint ptr %arrayidx.i15.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.i15.i, align 1
  %42 = and i8 %41, 15
  %and8.i.i = zext i8 %42 to i32
  %shl.i.i = shl nuw nsw i32 %and8.i.i, 8
  %arrayidx9.i.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 2
  %43 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx9.i.i, align 1
  %conv10.i.i = zext i8 %44 to i32
  %or.i.i = or i32 %shl.i.i, %conv10.i.i
  %x.i.i = getelementptr [5 x %struct.focaltech_finger_state], ptr %state1.i16.i, i32 0, i32 %sub.i.i, i32 2
  %45 = ptrtoint ptr %x.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or.i.i, ptr %x.i.i, align 4
  %arrayidx12.i.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 3
  %46 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx12.i.i, align 1
  %conv13.i.i = zext i8 %47 to i32
  %shl14.i.i = shl nuw nsw i32 %conv13.i.i, 8
  %arrayidx15.i.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 4
  %48 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx15.i.i, align 1
  %conv16.i.i = zext i8 %49 to i32
  %or17.i.i = or i32 %shl14.i.i, %conv16.i.i
  %y.i.i = getelementptr [5 x %struct.focaltech_finger_state], ptr %state1.i16.i, i32 0, i32 %sub.i.i, i32 3
  %50 = ptrtoint ptr %y.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %or17.i.i, ptr %y.i.i, align 4
  %arrayidx20.i.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 5
  %51 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx20.i.i, align 1
  %53 = lshr i8 %52, 4
  %54 = zext i8 %53 to i32
  %width.i.i = getelementptr inbounds %struct.focaltech_data, ptr %37, i32 0, i32 2, i32 1
  %55 = ptrtoint ptr %width.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %width.i.i, align 4
  %valid.i19.i = getelementptr [5 x %struct.focaltech_finger_state], ptr %state1.i16.i, i32 0, i32 %sub.i.i, i32 1
  %56 = ptrtoint ptr %valid.i19.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %valid.i19.i, align 1
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.then
  %57 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %psmouse, align 4
  %state1.i21.i = getelementptr inbounds %struct.focaltech_data, ptr %58, i32 0, i32 2
  %pressed.i22.i = getelementptr inbounds %struct.focaltech_data, ptr %58, i32 0, i32 2, i32 2
  %.lobit.i23.i = lshr i8 %3, 7
  %59 = ptrtoint ptr %pressed.i22.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %.lobit.i23.i, ptr %pressed.i22.i, align 4
  %60 = ptrtoint ptr %packet1.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %packet1.i, align 1
  %62 = lshr i8 %61, 4
  %63 = and i8 %62, 7
  %and.i.i = zext i8 %63 to i32
  %sub.i24.i = add nsw i32 %and.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %63)
  %cmp.i25.i = icmp ult i8 %63, 6
  br i1 %cmp.i25.i, label %if.then.i30.i, label %do.end.i33.i

if.then.i30.i:                                    ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx6.i.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 1
  %64 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx6.i.i, align 1
  %conv7.i.i = zext i8 %65 to i32
  %x.i26.i = getelementptr [5 x %struct.focaltech_finger_state], ptr %state1.i21.i, i32 0, i32 %sub.i24.i, i32 2
  %66 = ptrtoint ptr %x.i26.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %x.i26.i, align 4
  %add.i.i = add i32 %67, %conv7.i.i
  store i32 %add.i.i, ptr %x.i26.i, align 4
  %arrayidx9.i27.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 2
  %68 = ptrtoint ptr %arrayidx9.i27.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx9.i27.i, align 1
  %conv10.i28.i = zext i8 %69 to i32
  %y.i29.i = getelementptr [5 x %struct.focaltech_finger_state], ptr %state1.i21.i, i32 0, i32 %sub.i24.i, i32 3
  %70 = ptrtoint ptr %y.i29.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %y.i29.i, align 4
  %add13.i.i = add i32 %71, %conv10.i28.i
  store i32 %add13.i.i, ptr %y.i29.i, align 4
  br label %if.end.i34.i

do.end.i33.i:                                     ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #9
  %ps2dev.i31.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %72 = ptrtoint ptr %ps2dev.i31.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ps2dev.i31.i, align 4
  %dev.i32.i = getelementptr inbounds %struct.serio, ptr %73, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i32.i, ptr noundef nonnull @.str.17, i32 noundef %sub.i24.i) #11
  br label %if.end.i34.i

if.end.i34.i:                                     ; preds = %do.end.i33.i, %if.then.i30.i
  %arrayidx14.i.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 3
  %74 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx14.i.i, align 1
  %76 = lshr i8 %75, 4
  %77 = and i8 %76, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %77)
  %cmp19.i.i = icmp ult i8 %77, 6
  br i1 %cmp19.i.i, label %if.then21.i.i, label %if.end.i34.i.sw.epilog.i_crit_edge

if.end.i34.i.sw.epilog.i_crit_edge:               ; preds = %if.end.i34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.then21.i.i:                                    ; preds = %if.end.i34.i
  call void @__sanitizer_cov_trace_pc() #9
  %and17.i.i = zext i8 %77 to i32
  %sub18.i.i = add nsw i32 %and17.i.i, -1
  %arrayidx22.i.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 4
  %78 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx22.i.i, align 1
  %conv23.i.i = zext i8 %79 to i32
  %x26.i.i = getelementptr [5 x %struct.focaltech_finger_state], ptr %state1.i21.i, i32 0, i32 %sub18.i.i, i32 2
  %80 = ptrtoint ptr %x26.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %x26.i.i, align 4
  %add27.i.i = add i32 %81, %conv23.i.i
  store i32 %add27.i.i, ptr %x26.i.i, align 4
  %arrayidx28.i.i = getelementptr %struct.psmouse, ptr %psmouse, i32 0, i32 7, i32 5
  %82 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx28.i.i, align 1
  %conv29.i.i = zext i8 %83 to i32
  %y32.i.i = getelementptr [5 x %struct.focaltech_finger_state], ptr %state1.i21.i, i32 0, i32 %sub18.i.i, i32 3
  %84 = ptrtoint ptr %y32.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %y32.i.i, align 4
  %add33.i.i = add i32 %85, %conv29.i.i
  store i32 %add33.i.i, ptr %y32.i.i, align 4
  br label %sw.epilog.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %ps2dev.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %86 = ptrtoint ptr %ps2dev.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ps2dev.i, align 4
  %dev.i = getelementptr inbounds %struct.serio, ptr %87, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.13, i32 noundef %conv.i) #11
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.end.i, %if.then21.i.i, %if.end.i34.i.sw.epilog.i_crit_edge, %if.end.i20.i, %do.end.i.i, %if.then.4.i.i, %if.end.3.i.i.sw.epilog.i_crit_edge
  %88 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %psmouse, align 4
  %state1.i35.i = getelementptr inbounds %struct.focaltech_data, ptr %89, i32 0, i32 2
  %dev2.i.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 1
  %90 = ptrtoint ptr %dev2.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev2.i.i, align 4
  %y_max.i.i = getelementptr inbounds %struct.focaltech_data, ptr %89, i32 0, i32 1
  %width.i36.i = getelementptr inbounds %struct.focaltech_data, ptr %89, i32 0, i32 2, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i43.i.for.body.i.i_crit_edge, %sw.epilog.i
  %i.059.i.i = phi i32 [ 0, %sw.epilog.i ], [ %inc.i.i, %if.end.i43.i.for.body.i.i_crit_edge ]
  %arrayidx.i37.i = getelementptr [5 x %struct.focaltech_finger_state], ptr %state1.i35.i, i32 0, i32 %i.059.i.i
  %92 = ptrtoint ptr %arrayidx.i37.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx.i37.i, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool.not.i.i = icmp eq i8 %93, 0
  br i1 %tobool.not.i.i, label %if.end.critedge.i.i, label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %for.body.i.i
  %valid.i38.i = getelementptr [5 x %struct.focaltech_finger_state], ptr %state1.i35.i, i32 0, i32 %i.059.i.i, i32 1
  %94 = ptrtoint ptr %valid.i38.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %valid.i38.i, align 1, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool4.i.i = icmp ne i8 %95, 0
  tail call void @input_event(ptr noundef %91, i32 noundef 3, i32 noundef 47, i32 noundef %i.059.i.i) #7
  %call.i.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %91, i32 noundef 0, i1 noundef zeroext %tobool4.i.i) #7
  br i1 %tobool4.i.i, label %if.then.i42.i, label %land.rhs.i.i.if.end.i43.i_crit_edge

land.rhs.i.i.if.end.i43.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i43.i

if.then.i42.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %x.i39.i = getelementptr [5 x %struct.focaltech_finger_state], ptr %state1.i35.i, i32 0, i32 %i.059.i.i, i32 2
  %96 = ptrtoint ptr %x.i39.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %x.i39.i, align 4
  %98 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %89, align 4
  %100 = tail call i32 @llvm.umin.i32(i32 %97, i32 %99) #7
  %y.i40.i = getelementptr [5 x %struct.focaltech_finger_state], ptr %state1.i35.i, i32 0, i32 %i.059.i.i, i32 3
  %101 = ptrtoint ptr %y.i40.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %y.i40.i, align 4
  %103 = ptrtoint ptr %y_max.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %y_max.i.i, align 4
  %105 = tail call i32 @llvm.umin.i32(i32 %102, i32 %104) #7
  tail call void @input_event(ptr noundef %91, i32 noundef 3, i32 noundef 53, i32 noundef %100) #7
  %106 = ptrtoint ptr %y_max.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %y_max.i.i, align 4
  %sub.i41.i = sub i32 %107, %105
  tail call void @input_event(ptr noundef %91, i32 noundef 3, i32 noundef 54, i32 noundef %sub.i41.i) #7
  %108 = ptrtoint ptr %width.i36.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %width.i36.i, align 4
  tail call void @input_event(ptr noundef %91, i32 noundef 3, i32 noundef 28, i32 noundef %109) #7
  br label %if.end.i43.i

if.end.critedge.i.i:                              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @input_event(ptr noundef %91, i32 noundef 3, i32 noundef 47, i32 noundef %i.059.i.i) #7
  %call.c.i.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %91, i32 noundef 0, i1 noundef zeroext false) #7
  br label %if.end.i43.i

if.end.i43.i:                                     ; preds = %if.end.critedge.i.i, %if.then.i42.i, %land.rhs.i.i.if.end.i43.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.059.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 5
  br i1 %exitcond.not.i.i, label %focaltech_process_packet.exit, label %if.end.i43.i.for.body.i.i_crit_edge

if.end.i43.i.for.body.i.i_crit_edge:              ; preds = %if.end.i43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

focaltech_process_packet.exit:                    ; preds = %if.end.i43.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @input_mt_report_pointer_emulation(ptr noundef %91, i1 noundef zeroext true) #7
  %pressed.i44.i = getelementptr inbounds %struct.focaltech_data, ptr %89, i32 0, i32 2, i32 2
  %110 = ptrtoint ptr %pressed.i44.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %pressed.i44.i, align 4, !range !53
  %112 = zext i8 %111 to i32
  tail call void @input_event(ptr noundef %91, i32 noundef 1, i32 noundef 272, i32 noundef %112) #7
  tail call void @input_event(ptr noundef %91, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  br label %return

return:                                           ; preds = %focaltech_process_packet.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ 2, %focaltech_process_packet.exit ], [ 1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @focaltech_disconnect(ptr noundef %psmouse) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ps2dev.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %call.i = tail call i32 @ps2_command(ptr noundef %ps2dev.i, ptr noundef null, i32 noundef 246) #7
  %call1.i = tail call i32 @psmouse_reset(ptr noundef %psmouse) #7
  %0 = ptrtoint ptr %psmouse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psmouse, align 4
  tail call void @kfree(ptr noundef %1) #7
  %2 = ptrtoint ptr %psmouse to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %psmouse, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @focaltech_reconnect(ptr noundef %psmouse) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ps2dev.i = getelementptr inbounds %struct.psmouse, ptr %psmouse, i32 0, i32 2
  %call.i = tail call i32 @ps2_command(ptr noundef %ps2dev.i, ptr noundef null, i32 noundef 246) #7
  %call1.i = tail call i32 @psmouse_reset(ptr noundef %psmouse) #7
  %call = tail call fastcc i32 @focaltech_switch_protocol(ptr noundef %psmouse)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %ps2dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps2dev.i, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @focaltech_set_resolution(ptr nocapture noundef %psmouse, i32 noundef %resolution) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @focaltech_set_rate(ptr nocapture noundef %psmouse, i32 noundef %rate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @focaltech_set_scale(ptr nocapture noundef %psmouse, i32 noundef %scale) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ps2_command(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psmouse_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_report_pointer_emulation(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !18, !20, !22, !24, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/input/mouse/focaltech.c", i32 41, i32 21}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/input/mouse/focaltech.c", i32 42, i32 19}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/input/mouse/focaltech.c", i32 420, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @focaltech_init._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @focaltech_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/mouse/focaltech.c", i32 427, i32 3}
!14 = !{ptr @focaltech_init._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @focaltech_init._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/mouse/focaltech.c", i32 23, i32 2}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/input/mouse/focaltech.c", i32 24, i32 2}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/input/mouse/focaltech.c", i32 25, i32 2}
!22 = !{ptr @focaltech_pnp_ids, !23, !"focaltech_pnp_ids", i1 false, i1 false}
!23 = !{!"../drivers/input/mouse/focaltech.c", i32 22, i32 27}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/mouse/focaltech.c", i32 244, i32 3}
!26 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @focaltech_process_packet._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @focaltech_process_packet._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/input/mouse/focaltech.c", i32 182, i32 3}
!31 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @focaltech_process_abs_packet._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @focaltech_process_abs_packet._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/input/mouse/focaltech.c", i32 208, i32 3}
!36 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @focaltech_process_rel_packet._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @focaltech_process_rel_packet._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/input/mouse/focaltech.c", i32 314, i32 3}
!41 = !{ptr @focaltech_reconnect._entry, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @focaltech_reconnect._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{!"auto-init"}
!53 = !{i8 0, i8 2}
