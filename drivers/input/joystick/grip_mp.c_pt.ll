; ModuleID = '/llk/IR_all_yes/drivers/input/joystick/grip_mp.c_pt.bc'
source_filename = "../drivers/input/joystick/grip_mp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gameport_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.gameport = type { ptr, [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, i32, %struct.spinlock, i32, ptr, ptr, ptr, ptr, %struct.mutex, %struct.device, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.grip_mp = type { ptr, [4 x ptr], i32, i32 }
%struct.grip_port = type { ptr, i32, i32, i32, i32, i32, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__UNIQUE_ID_author223 = internal constant [32 x i8] c"grip_mp.author=Brian Bonnlander\00", section ".modinfo", align 1
@__UNIQUE_ID_description224 = internal constant [49 x i8] c"grip_mp.description=Gravis Grip Multiport driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file225 = internal constant [44 x i8] c"grip_mp.file=drivers/input/joystick/grip_mp\00", section ".modinfo", align 1
@__UNIQUE_ID_license226 = internal constant [20 x i8] c"grip_mp.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_grip_mp__227_690_grip_drv_init6 = internal global ptr @grip_drv_init, section ".initcall6.init", align 4
@grip_drv = internal global { %struct.gameport_driver, [32 x i8] } { %struct.gameport_driver { ptr @.str.1, ptr @grip_connect, ptr null, ptr @grip_disconnect, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i8 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_grip_drv_exit = internal global ptr @grip_drv_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"grip_mp\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Gravis Grip Multiport driver\00", [35 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@get_and_decode_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 397, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016grip_mp: removing %s, slot %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"get_and_decode_packet\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/input/joystick/grip_mp.c\00", [63 x i8] zeroinitializer }, align 32
@get_and_decode_packet._entry_ptr = internal global ptr @get_and_decode_packet._entry, section ".printk_index", align 4
@grip_name = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr null, ptr null, ptr @.str.11, ptr @.str.12], [16 x i8] zeroinitializer }, align 32
@axis_map = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 5, i32 9, i32 1, i32 5, i32 6, i32 10, i32 2, i32 6, i32 4, i32 8, i32 0, i32 4, i32 5, i32 9, i32 1, i32 5], [32 x i8] zeroinitializer }, align 32
@get_and_decode_packet.strange_code = internal global { i32, [28 x i8] } zeroinitializer, align 32
@get_and_decode_packet._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016Possible non-grip pad/joystick detected.\0A\00", [52 x i8] zeroinitializer }, align 32
@get_and_decode_packet._entry_ptr.7 = internal global ptr @get_and_decode_packet._entry.5, section ".printk_index", align 4
@get_and_decode_packet._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 438, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016Got joy type 0x%x and packet 0x%x.\0A\00", [58 x i8] zeroinitializer }, align 32
@get_and_decode_packet._entry_ptr.10 = internal global ptr @get_and_decode_packet._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Gravis Grip Pad\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Commodore 64 Joystick\00", [42 x i8] zeroinitializer }, align 32
@grip_abs = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr null, ptr null, ptr @grip_abs_gp, ptr @grip_abs_c64], [16 x i8] zeroinitializer }, align 32
@grip_btn = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr null, ptr null, ptr @grip_btn_gp, ptr @grip_btn_c64], [16 x i8] zeroinitializer }, align 32
@grip_abs_gp = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 1, i32 -1], [20 x i8] zeroinitializer }, align 32
@grip_abs_c64 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 1, i32 -1], [20 x i8] zeroinitializer }, align 32
@grip_btn_gp = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 311, i32 310, i32 304, i32 305, i32 306, i32 307, i32 308, i32 309, i32 -1], [60 x i8] zeroinitializer }, align 32
@grip_btn_c64 = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 288, i32 -1], [24 x i8] zeroinitializer }, align 32
@init_seq = internal constant { [91 x i32], [84 x i8] } { [91 x i32] [i32 1, i32 0, i32 1, i32 1, i32 0, i32 1, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 1, i32 0, i32 1, i32 1, i32 0, i32 1, i32 1, i32 0, i32 1, i32 1, i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 1, i32 1, i32 1, i32 0, i32 1, i32 0, i32 1, i32 1, i32 0, i32 1, i32 0, i32 1, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 1, i32 0, i32 1, i32 1, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 1, i32 1], [84 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 31]
@___asan_gen_.13 = private unnamed_addr constant [9 x i8] c"grip_drv\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 681, i32 31 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 690, i32 1 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 685, i32 17 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 396, i32 4 }
@___asan_gen_.34 = private unnamed_addr constant [10 x i8] c"grip_name\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 101, i32 20 }
@___asan_gen_.37 = private unnamed_addr constant [9 x i8] c"axis_map\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 111, i32 18 }
@___asan_gen_.40 = private unnamed_addr constant [13 x i8] c"strange_code\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 435, i32 14 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 437, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 438, i32 4 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 101, i32 48 }
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 101, i32 67 }
@___asan_gen_.61 = private unnamed_addr constant [9 x i8] c"grip_abs\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 98, i32 19 }
@___asan_gen_.64 = private unnamed_addr constant [9 x i8] c"grip_btn\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 99, i32 19 }
@___asan_gen_.67 = private unnamed_addr constant [12 x i8] c"grip_abs_gp\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 95, i32 18 }
@___asan_gen_.70 = private unnamed_addr constant [13 x i8] c"grip_abs_c64\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 96, i32 18 }
@___asan_gen_.73 = private unnamed_addr constant [12 x i8] c"grip_btn_gp\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 92, i32 18 }
@___asan_gen_.76 = private unnamed_addr constant [13 x i8] c"grip_btn_c64\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 93, i32 18 }
@___asan_gen_.79 = private unnamed_addr constant [9 x i8] c"init_seq\00", align 1
@___asan_gen_.80 = private constant [36 x i8] c"../drivers/input/joystick/grip_mp.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 103, i32 18 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_author223, ptr @__UNIQUE_ID_description224, ptr @__UNIQUE_ID_file225, ptr @__UNIQUE_ID_license226, ptr @__exitcall_grip_drv_exit, ptr @__initcall__kmod_grip_mp__227_690_grip_drv_init6, ptr @get_and_decode_packet._entry, ptr @get_and_decode_packet._entry.5, ptr @get_and_decode_packet._entry.8, ptr @get_and_decode_packet._entry_ptr, ptr @get_and_decode_packet._entry_ptr.10, ptr @get_and_decode_packet._entry_ptr.7, ptr @grip_drv_exit, ptr @grip_drv, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @grip_name, ptr @axis_map, ptr @get_and_decode_packet.strange_code, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @grip_abs, ptr @grip_btn, ptr @grip_abs_gp, ptr @grip_abs_c64, ptr @grip_btn_gp, ptr @grip_btn_c64, ptr @init_seq], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grip_drv to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_and_decode_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grip_name to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axis_map to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_and_decode_packet.strange_code to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_and_decode_packet._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_and_decode_packet._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grip_abs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grip_btn to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grip_abs_gp to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grip_abs_c64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grip_btn_gp to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grip_btn_c64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_seq to i32), i32 364, i32 448, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @grip_drv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__gameport_register_driver(ptr noundef nonnull @grip_drv, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @grip_drv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gameport_unregister_driver(ptr noundef nonnull @grip_drv) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__gameport_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @grip_connect(ptr noundef %gameport, ptr noundef %drv) #2 align 64 {
entry:
  %packet.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 28) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %gameport, ptr %call7.i.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 21, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @gameport_open(ptr noundef %gameport, ptr noundef %drv, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.fail1_crit_edge

if.end.fail1_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail1

if.end5:                                          ; preds = %if.end
  %poll_handler.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 16
  %3 = ptrtoint ptr %poll_handler.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @grip_poll, ptr %poll_handler.i, align 4
  %poll_interval.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 13
  %4 = ptrtoint ptr %poll_interval.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 20, ptr %poll_interval.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %packet.i) #7
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call7.i.i, align 8
  %call.i = call fastcc i32 @dig_mode_start(ptr noundef %6, ptr noundef nonnull %packet.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not27.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not27.i, label %while.body.i, label %if.end5.for.cond.preheader.i_crit_edge

if.end5.for.cond.preheader.i_crit_edge:           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.preheader.i

while.body.i:                                     ; preds = %if.end5
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call7.i.i, align 8
  %call2.i = call fastcc i32 @dig_mode_start(ptr noundef %8, ptr noundef nonnull %packet.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %while.body.i.1, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.body.i.1:                                   ; preds = %while.body.i
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call7.i.i, align 8
  %call2.i.1 = call fastcc i32 @dig_mode_start(ptr noundef %10, ptr noundef nonnull %packet.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.1)
  %tobool.not.i.1 = icmp eq i32 %call2.i.1, 0
  br i1 %tobool.not.i.1, label %while.body.i.2, label %while.body.i.1.while.end.i_crit_edge

while.body.i.1.while.end.i_crit_edge:             ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.body.i.2:                                   ; preds = %while.body.i.1
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call7.i.i, align 8
  %call2.i.2 = call fastcc i32 @dig_mode_start(ptr noundef %12, ptr noundef nonnull %packet.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.2)
  %tobool.not.i.2 = icmp eq i32 %call2.i.2, 0
  br i1 %tobool.not.i.2, label %while.body.i.3, label %while.body.i.2.while.end.i_crit_edge

while.body.i.2.while.end.i_crit_edge:             ; preds = %while.body.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.body.i.3:                                   ; preds = %while.body.i.2
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call7.i.i, align 8
  %call2.i.3 = call fastcc i32 @dig_mode_start(ptr noundef %14, ptr noundef nonnull %packet.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.3)
  %tobool.not.i.3 = icmp eq i32 %call2.i.3, 0
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.3, %while.body.i.2.while.end.i_crit_edge, %while.body.i.1.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge
  %tobool.not.i.lcssa = phi i1 [ %tobool.not.i, %while.body.i.while.end.i_crit_edge ], [ %tobool.not.i.1, %while.body.i.1.while.end.i_crit_edge ], [ %tobool.not.i.2, %while.body.i.2.while.end.i_crit_edge ], [ %tobool.not.i.3, %while.body.i.3 ]
  br i1 %tobool.not.i.lcssa, label %while.end.i.multiport_init.exit.thread_crit_edge, label %while.end.i.for.cond.preheader.i_crit_edge

while.end.i.for.cond.preheader.i_crit_edge:       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.preheader.i

while.end.i.multiport_init.exit.thread_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %multiport_init.exit.thread

for.cond.preheader.i:                             ; preds = %while.end.i.for.cond.preheader.i_crit_edge, %if.end5.for.cond.preheader.i_crit_edge
  %arrayidx.i.i = getelementptr %struct.grip_mp, ptr %call7.i.i, i32 0, i32 1, i32 0
  %arrayidx.1.i.i = getelementptr %struct.grip_mp, ptr %call7.i.i, i32 0, i32 1, i32 1
  %arrayidx.2.i.i = getelementptr %struct.grip_mp, ptr %call7.i.i, i32 0, i32 1, i32 2
  %arrayidx.3.i.i = getelementptr %struct.grip_mp, ptr %call7.i.i, i32 0, i32 1, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i
  %tries.129.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc12.i, %for.inc.i.for.body.i_crit_edge ]
  %call.i.i = tail call fastcc i32 @get_and_decode_packet(ptr noundef nonnull %call7.i.i, i32 noundef 0) #7
  %and.i.i = and i32 %call.i.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.for.inc.i_crit_edge, label %for.body.preheader.i.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.body.preheader.i.i:                           ; preds = %for.body.i
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.i, align 4
  %mode.i.i = getelementptr inbounds %struct.grip_port, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp7.not.i.i = icmp eq i32 %18, 0
  %19 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.1.i.i, align 8
  %mode.1.i.i = getelementptr inbounds %struct.grip_port, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %mode.1.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mode.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp7.not.1.i.i = icmp eq i32 %22, 0
  %23 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.2.i.i, align 4
  %mode.2.i.i = getelementptr inbounds %struct.grip_port, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %mode.2.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mode.2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp7.not.2.i.i = icmp eq i32 %26, 0
  %27 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.3.i.i, align 8
  %mode.3.i.i = getelementptr inbounds %struct.grip_port, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %mode.3.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mode.3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp7.not.3.i.i = icmp eq i32 %30, 0
  %31 = select i1 %cmp7.not.3.i.i, i1 %cmp7.not.2.i.i, i1 false
  %32 = select i1 %31, i1 %cmp7.not.1.i.i, i1 false
  %narrow32.i.i = select i1 %32, i1 %cmp7.not.i.i, i1 false
  br i1 %narrow32.i.i, label %if.then11.i.i, label %if.end14.i.i

if.then11.i.i:                                    ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %and12.i.i = lshr i32 %call.i.i, 12
  %and12.lobit.i.i = and i32 %and12.i.i, 1
  br label %slots_valid.exit.i

if.end14.i.i:                                     ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp1.3.i.i = icmp ne i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp1.i.i = icmp ne i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp1.1.i.i = icmp ne i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp1.2.i.i = icmp ne i32 %26, 1
  %33 = select i1 %cmp1.3.i.i, i1 %cmp1.2.i.i, i1 false
  %34 = select i1 %33, i1 %cmp1.1.i.i, i1 false
  %narrow31.i.i = select i1 %34, i1 %cmp1.i.i, i1 false
  %cond16.i.i = zext i1 %narrow31.i.i to i32
  br label %slots_valid.exit.i

slots_valid.exit.i:                               ; preds = %if.end14.i.i, %if.then11.i.i
  %retval.0.i.i = phi i32 [ %cond16.i.i, %if.end14.i.i ], [ %and12.lobit.i.i, %if.then11.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool9.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool9.not.i, label %slots_valid.exit.i.for.inc.i_crit_edge, label %if.end9

slots_valid.exit.i.for.inc.i_crit_edge:           ; preds = %slots_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %slots_valid.exit.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc12.i = add nuw nsw i32 %tries.129.i, 1
  %exitcond.not.i = icmp eq i32 %inc12.i, 4096
  br i1 %exitcond.not.i, label %for.inc.i.multiport_init.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.multiport_init.exit.thread_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %multiport_init.exit.thread

multiport_init.exit.thread:                       ; preds = %for.inc.i.multiport_init.exit.thread_crit_edge, %while.end.i.multiport_init.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %packet.i) #7
  br label %fail2

if.end9:                                          ; preds = %slots_valid.exit.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %packet.i) #7
  %35 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i.i, align 4
  %mode = getelementptr inbounds %struct.grip_port, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool10.not = icmp eq i32 %38, 0
  br i1 %tobool10.not, label %land.lhs.true, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end9
  %39 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.1.i.i, align 8
  %mode13 = getelementptr inbounds %struct.grip_port, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %mode13 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mode13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool14.not = icmp eq i32 %42, 0
  br i1 %tobool14.not, label %land.lhs.true15, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true15:                                  ; preds = %land.lhs.true
  %43 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.2.i.i, align 4
  %mode18 = getelementptr inbounds %struct.grip_port, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %mode18 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mode18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool19.not = icmp eq i32 %46, 0
  br i1 %tobool19.not, label %land.lhs.true20, label %land.lhs.true15.cleanup_crit_edge

land.lhs.true15.cleanup_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true20:                                  ; preds = %land.lhs.true15
  %47 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.3.i.i, align 8
  %mode23 = getelementptr inbounds %struct.grip_port, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %mode23 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mode23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool24.not = icmp eq i32 %50, 0
  br i1 %tobool24.not, label %land.lhs.true20.fail2_crit_edge, label %land.lhs.true20.cleanup_crit_edge

land.lhs.true20.cleanup_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true20.fail2_crit_edge:                  ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail2

fail2:                                            ; preds = %land.lhs.true20.fail2_crit_edge, %multiport_init.exit.thread
  tail call void @gameport_close(ptr noundef %gameport) #7
  br label %fail1

fail1:                                            ; preds = %fail2, %if.end.fail1_crit_edge
  %err.1 = phi i32 [ %call2, %if.end.fail1_crit_edge ], [ -19, %fail2 ]
  %51 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %fail1, %land.lhs.true20.cleanup_crit_edge, %land.lhs.true15.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %fail1 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true20.cleanup_crit_edge ], [ 0, %land.lhs.true15.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @grip_disconnect(ptr noundef %gameport) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 21, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx = getelementptr %struct.grip_mp, ptr %1, i32 0, i32 1, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %registered = getelementptr inbounds %struct.grip_port, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %registered to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %registered, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  tail call void @input_unregister_device(ptr noundef %7) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.grip_mp, ptr %1, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1, align 4
  %registered.1 = getelementptr inbounds %struct.grip_port, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %registered.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %registered.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.1 = icmp eq i32 %11, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  tail call void @input_unregister_device(ptr noundef %13) #7
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.grip_mp, ptr %1, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.2, align 4
  %registered.2 = getelementptr inbounds %struct.grip_port, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %registered.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %registered.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.2 = icmp eq i32 %17, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 4
  tail call void @input_unregister_device(ptr noundef %19) #7
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.grip_mp, ptr %1, i32 0, i32 1, i32 3
  %20 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.3, align 4
  %registered.3 = getelementptr inbounds %struct.grip_port, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %registered.3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %registered.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.3 = icmp eq i32 %23, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %21, align 4
  tail call void @input_unregister_device(ptr noundef %25) #7
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  tail call void @gameport_close(ptr noundef %gameport) #7
  %26 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gameport_open(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @grip_poll(ptr nocapture noundef readonly %gameport) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 21, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  br label %for.body3

for.body3.1:                                      ; preds = %for.end.for.body3.1_crit_edge, %for.body3.1.for.body3.1_crit_edge
  %flags.035.1 = phi i32 [ %call4.1, %for.body3.1.for.body3.1_crit_edge ], [ 16384, %for.end.for.body3.1_crit_edge ]
  %i.034.1 = phi i32 [ %inc.1, %for.body3.1.for.body3.1_crit_edge ], [ 0, %for.end.for.body3.1_crit_edge ]
  %call4.1 = tail call fastcc i32 @get_and_decode_packet(ptr noundef %1, i32 noundef %flags.035.1)
  %2 = and i32 %call4.1, 16640
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %2)
  %.not.1 = icmp eq i32 %2, 16384
  %inc.1 = add nuw nsw i32 %i.034.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %i.034.1)
  %cmp2.1 = icmp ult i32 %i.034.1, 31
  %or.cond.1 = select i1 %.not.1, i1 %cmp2.1, i1 false
  br i1 %or.cond.1, label %for.body3.1.for.body3.1_crit_edge, label %for.end.1

for.body3.1.for.body3.1_crit_edge:                ; preds = %for.body3.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3.1

for.end.1:                                        ; preds = %for.body3.1
  %and7.1 = and i32 %call4.1, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.1)
  %tobool8.not.1 = icmp eq i32 %and7.1, 0
  br i1 %tobool8.not.1, label %for.end.1.for.body3.2_crit_edge, label %for.end.1.for.end13_crit_edge

for.end.1.for.end13_crit_edge:                    ; preds = %for.end.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end13

for.end.1.for.body3.2_crit_edge:                  ; preds = %for.end.1
  br label %for.body3.2

for.body3.2:                                      ; preds = %for.body3.2.for.body3.2_crit_edge, %for.end.1.for.body3.2_crit_edge
  %flags.035.2 = phi i32 [ %call4.2, %for.body3.2.for.body3.2_crit_edge ], [ 16384, %for.end.1.for.body3.2_crit_edge ]
  %i.034.2 = phi i32 [ %inc.2, %for.body3.2.for.body3.2_crit_edge ], [ 0, %for.end.1.for.body3.2_crit_edge ]
  %call4.2 = tail call fastcc i32 @get_and_decode_packet(ptr noundef %1, i32 noundef %flags.035.2)
  %3 = and i32 %call4.2, 16640
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %3)
  %.not.2 = icmp eq i32 %3, 16384
  %inc.2 = add nuw nsw i32 %i.034.2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %i.034.2)
  %cmp2.2 = icmp ult i32 %i.034.2, 31
  %or.cond.2 = select i1 %.not.2, i1 %cmp2.2, i1 false
  br i1 %or.cond.2, label %for.body3.2.for.body3.2_crit_edge, label %for.end.2

for.body3.2.for.body3.2_crit_edge:                ; preds = %for.body3.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3.2

for.end.2:                                        ; preds = %for.body3.2
  %and7.2 = and i32 %call4.2, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.2)
  %tobool8.not.2 = icmp eq i32 %and7.2, 0
  br i1 %tobool8.not.2, label %for.end.2.for.body3.3_crit_edge, label %for.end.2.for.end13_crit_edge

for.end.2.for.end13_crit_edge:                    ; preds = %for.end.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end13

for.end.2.for.body3.3_crit_edge:                  ; preds = %for.end.2
  br label %for.body3.3

for.body3.3:                                      ; preds = %for.body3.3.for.body3.3_crit_edge, %for.end.2.for.body3.3_crit_edge
  %flags.035.3 = phi i32 [ %call4.3, %for.body3.3.for.body3.3_crit_edge ], [ 16384, %for.end.2.for.body3.3_crit_edge ]
  %i.034.3 = phi i32 [ %inc.3, %for.body3.3.for.body3.3_crit_edge ], [ 0, %for.end.2.for.body3.3_crit_edge ]
  %call4.3 = tail call fastcc i32 @get_and_decode_packet(ptr noundef %1, i32 noundef %flags.035.3)
  %4 = and i32 %call4.3, 16640
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %4)
  %.not.3 = icmp eq i32 %4, 16384
  %inc.3 = add nuw nsw i32 %i.034.3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %i.034.3)
  %cmp2.3 = icmp ult i32 %i.034.3, 31
  %or.cond.3 = select i1 %.not.3, i1 %cmp2.3, i1 false
  br i1 %or.cond.3, label %for.body3.3.for.body3.3_crit_edge, label %for.body3.3.for.end13_crit_edge

for.body3.3.for.end13_crit_edge:                  ; preds = %for.body3.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end13

for.body3.3.for.body3.3_crit_edge:                ; preds = %for.body3.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3.3

for.body3:                                        ; preds = %for.body3.for.body3_crit_edge, %entry
  %flags.035 = phi i32 [ 16384, %entry ], [ %call4, %for.body3.for.body3_crit_edge ]
  %i.034 = phi i32 [ 0, %entry ], [ %inc, %for.body3.for.body3_crit_edge ]
  %call4 = tail call fastcc i32 @get_and_decode_packet(ptr noundef %1, i32 noundef %flags.035)
  %5 = and i32 %call4, 16640
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %5)
  %.not = icmp eq i32 %5, 16384
  %inc = add nuw nsw i32 %i.034, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %i.034)
  %cmp2 = icmp ult i32 %i.034, 31
  %or.cond = select i1 %.not, i1 %cmp2, i1 false
  br i1 %or.cond, label %for.body3.for.body3_crit_edge, label %for.end

for.body3.for.body3_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3

for.end:                                          ; preds = %for.body3
  %and7 = and i32 %call4, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %for.end.for.body3.1_crit_edge, label %for.end.for.end13_crit_edge

for.end.for.end13_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end13

for.end.for.body3.1_crit_edge:                    ; preds = %for.end
  br label %for.body3.1

for.end13:                                        ; preds = %for.end.for.end13_crit_edge, %for.body3.3.for.end13_crit_edge, %for.end.2.for.end13_crit_edge, %for.end.1.for.end13_crit_edge
  %arrayidx = getelementptr %struct.grip_mp, ptr %1, i32 0, i32 1, i32 0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %dirty = getelementptr inbounds %struct.grip_port, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dirty, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool17.not = icmp eq i32 %9, 0
  br i1 %tobool17.not, label %for.end13.for.inc20_crit_edge, label %if.then18

for.end13.for.inc20_crit_edge:                    ; preds = %for.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc20

if.then18:                                        ; preds = %for.end13
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @report_slot(ptr noundef %1, i32 noundef 0)
  br label %for.inc20

for.inc20:                                        ; preds = %if.then18, %for.end13.for.inc20_crit_edge
  %arrayidx.1 = getelementptr %struct.grip_mp, ptr %1, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.1, align 4
  %dirty.1 = getelementptr inbounds %struct.grip_port, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %dirty.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dirty.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool17.not.1 = icmp eq i32 %13, 0
  br i1 %tobool17.not.1, label %for.inc20.for.inc20.1_crit_edge, label %if.then18.1

for.inc20.for.inc20.1_crit_edge:                  ; preds = %for.inc20
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc20.1

if.then18.1:                                      ; preds = %for.inc20
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @report_slot(ptr noundef %1, i32 noundef 1)
  br label %for.inc20.1

for.inc20.1:                                      ; preds = %if.then18.1, %for.inc20.for.inc20.1_crit_edge
  %arrayidx.2 = getelementptr %struct.grip_mp, ptr %1, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.2, align 4
  %dirty.2 = getelementptr inbounds %struct.grip_port, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %dirty.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dirty.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool17.not.2 = icmp eq i32 %17, 0
  br i1 %tobool17.not.2, label %for.inc20.1.for.inc20.2_crit_edge, label %if.then18.2

for.inc20.1.for.inc20.2_crit_edge:                ; preds = %for.inc20.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc20.2

if.then18.2:                                      ; preds = %for.inc20.1
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @report_slot(ptr noundef %1, i32 noundef 2)
  br label %for.inc20.2

for.inc20.2:                                      ; preds = %if.then18.2, %for.inc20.1.for.inc20.2_crit_edge
  %arrayidx.3 = getelementptr %struct.grip_mp, ptr %1, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.3, align 4
  %dirty.3 = getelementptr inbounds %struct.grip_port, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %dirty.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dirty.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool17.not.3 = icmp eq i32 %21, 0
  br i1 %tobool17.not.3, label %for.inc20.2.for.inc20.3_crit_edge, label %if.then18.3

for.inc20.2.for.inc20.3_crit_edge:                ; preds = %for.inc20.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc20.3

if.then18.3:                                      ; preds = %for.inc20.2
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @report_slot(ptr noundef %1, i32 noundef 3)
  br label %for.inc20.3

for.inc20.3:                                      ; preds = %if.then18.3, %for.inc20.2.for.inc20.3_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_and_decode_packet(ptr noundef %grip, i32 noundef %flags) unnamed_addr #2 align 64 {
entry:
  %packet = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %packet) #7
  %0 = ptrtoint ptr %packet to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %packet, align 4, !annotation !62
  %and = and i32 %flags, 49152
  %1 = ptrtoint ptr %grip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %grip, align 4
  %call = call fastcc i32 @multiport_io(ptr noundef %2, i32 noundef %and, i32 noundef 0, ptr noundef nonnull %packet)
  %reads = getelementptr inbounds %struct.grip_mp, ptr %grip, i32 0, i32 2
  %3 = ptrtoint ptr %reads to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reads, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %reads, align 4
  %5 = ptrtoint ptr %packet to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %packet, align 4
  %and1 = lshr i32 %6, 13
  %7 = and i32 %and1, 4096
  %8 = or i32 %7, %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.not = icmp ne i32 %8, 0
  %and3 = and i32 %call, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %or.cond = and i1 %tobool4.not, %tobool2.not
  br i1 %or.cond, label %if.then5, label %if.end7

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %bads = getelementptr inbounds %struct.grip_mp, ptr %grip, i32 0, i32 3
  %9 = ptrtoint ptr %bads to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bads, align 4
  %inc6 = add i32 %10, 1
  store i32 %inc6, ptr %bads, align 4
  br label %cleanup

if.end7:                                          ; preds = %entry
  %shr = lshr i32 %6, 21
  %and8 = and i32 %shr, 15
  %sub = add nsw i32 %and8, -1
  %11 = add nsw i32 %and8, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %11)
  %12 = icmp ult i32 %11, -4
  br i1 %12, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %arrayidx = getelementptr %struct.grip_mp, ptr %grip, i32 0, i32 1, i32 %sub
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %shr13 = lshr i32 %6, 16
  %and14 = and i32 %shr13, 31
  %15 = zext i32 %and14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and14, label %if.end60 [
    i32 0, label %if.then16
    i32 31, label %if.then30
  ]

if.then16:                                        ; preds = %if.end11
  %registered = getelementptr inbounds %struct.grip_port, ptr %14, i32 0, i32 2
  %16 = ptrtoint ptr %registered to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %registered, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool17.not = icmp eq i32 %17, 0
  br i1 %tobool17.not, label %if.then16.do.end25_crit_edge, label %do.end

if.then16.do.end25_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25

do.end:                                           ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  %mode = getelementptr inbounds %struct.grip_port, ptr %14, i32 0, i32 1
  %18 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mode, align 4
  %arrayidx19 = getelementptr [4 x ptr], ptr @grip_name, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx19, align 4
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %21, i32 noundef %sub) #11
  %22 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %14, align 4
  tail call void @input_unregister_device(ptr noundef %23) #7
  %24 = ptrtoint ptr %registered to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %registered, align 4
  br label %do.end25

do.end25:                                         ; preds = %do.end, %if.then16.do.end25_crit_edge
  %mode26 = getelementptr inbounds %struct.grip_port, ptr %14, i32 0, i32 1
  %25 = ptrtoint ptr %mode26 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %mode26, align 4
  %or27 = or i32 %8, 2048
  br label %cleanup

if.then30:                                        ; preds = %if.end11
  %shr31 = lshr i32 %6, 8
  %and32 = and i32 %shr31, 15
  %neg = and i32 %6, 255
  %and33 = xor i32 %neg, 255
  %buttons = getelementptr inbounds %struct.grip_port, ptr %14, i32 0, i32 3
  %26 = ptrtoint ptr %buttons to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and33, ptr %buttons, align 4
  %arrayidx34 = getelementptr [16 x i32], ptr @axis_map, i32 0, i32 %and32
  %27 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx34, align 4
  %29 = lshr i32 %28, 2
  %and36 = and i32 %29, 3
  %sub37 = add nsw i32 %and36, -1
  %yaxes = getelementptr inbounds %struct.grip_port, ptr %14, i32 0, i32 5
  %30 = ptrtoint ptr %yaxes to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub37, ptr %yaxes, align 4
  %and39 = and i32 %28, 3
  %sub40 = add nsw i32 %and39, -1
  %xaxes = getelementptr inbounds %struct.grip_port, ptr %14, i32 0, i32 4
  %31 = ptrtoint ptr %xaxes to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub40, ptr %xaxes, align 4
  %dirty = getelementptr inbounds %struct.grip_port, ptr %14, i32 0, i32 6
  %32 = ptrtoint ptr %dirty to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %dirty, align 4
  %mode41 = getelementptr inbounds %struct.grip_port, ptr %14, i32 0, i32 1
  %33 = ptrtoint ptr %mode41 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mode41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp42 = icmp eq i32 %34, 1
  %or44 = or i32 %8, 2048
  %spec.select115 = select i1 %cmp42, i32 %or44, i32 %8
  %35 = ptrtoint ptr %mode41 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2, ptr %mode41, align 4
  %registered47 = getelementptr inbounds %struct.grip_port, ptr %14, i32 0, i32 2
  %36 = ptrtoint ptr %registered47 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %registered47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool48.not = icmp eq i32 %37, 0
  br i1 %tobool48.not, label %do.end52, label %if.then30.cleanup_crit_edge

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end52:                                         ; preds = %if.then30
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call ptr @input_allocate_device() #7
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i, ptr %39, align 4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end52.if.then55_crit_edge, label %if.end.i

do.end52.if.then55_crit_edge:                     ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then55

if.end.i:                                         ; preds = %do.end52
  %mode.i = getelementptr inbounds %struct.grip_port, ptr %39, i32 0, i32 1
  %41 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mode.i, align 4
  %arrayidx2.i = getelementptr [4 x ptr], ptr @grip_name, i32 0, i32 %42
  %43 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx2.i, align 4
  %45 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %call.i, align 8
  %id.i = getelementptr inbounds %struct.input_dev, ptr %call.i, i32 0, i32 3
  %46 = ptrtoint ptr %id.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 20, ptr %id.i, align 4
  %vendor.i = getelementptr inbounds %struct.input_dev, ptr %call.i, i32 0, i32 3, i32 1
  %47 = ptrtoint ptr %vendor.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 9, ptr %vendor.i, align 2
  %48 = load i32, ptr %mode.i, align 4
  %49 = trunc i32 %48 to i16
  %conv.i = add i16 %49, 256
  %product.i = getelementptr inbounds %struct.input_dev, ptr %call.i, i32 0, i32 3, i32 2
  %50 = ptrtoint ptr %product.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv.i, ptr %product.i, align 4
  %version.i = getelementptr inbounds %struct.input_dev, ptr %call.i, i32 0, i32 3, i32 3
  %51 = ptrtoint ptr %version.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 256, ptr %version.i, align 2
  %52 = ptrtoint ptr %grip to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %grip, align 4
  %dev7.i = getelementptr inbounds %struct.gameport, ptr %53, i32 0, i32 21
  %parent.i = getelementptr inbounds %struct.input_dev, ptr %call.i, i32 0, i32 40, i32 1
  %54 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %dev7.i, ptr %parent.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i, i32 0, i32 40, i32 8
  %55 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %grip, ptr %driver_data.i.i.i, align 4
  %open.i = getelementptr inbounds %struct.input_dev, ptr %call.i, i32 0, i32 31
  %56 = ptrtoint ptr %open.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @grip_open, ptr %open.i, align 8
  %close.i = getelementptr inbounds %struct.input_dev, ptr %call.i, i32 0, i32 32
  %57 = ptrtoint ptr %close.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @grip_close, ptr %close.i, align 4
  %evbit.i = getelementptr inbounds %struct.input_dev, ptr %call.i, i32 0, i32 5
  %58 = ptrtoint ptr %evbit.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 10, ptr %evbit.i, align 8
  %59 = load i32, ptr %mode.i, align 4
  %arrayidx1172.i = getelementptr [4 x ptr], ptr @grip_abs, i32 0, i32 %59
  %60 = ptrtoint ptr %arrayidx1172.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx1172.i, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %63)
  %cmp73.i = icmp sgt i32 %63, -1
  br i1 %cmp73.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.for.cond14.preheader.i_crit_edge

if.end.i.for.cond14.preheader.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond14.preheader.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.cond14.preheader.i:                           ; preds = %for.body.i.for.cond14.preheader.i_crit_edge, %if.end.i.for.cond14.preheader.i_crit_edge
  %64 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %mode.i, align 4
  %arrayidx1675.i = getelementptr [4 x ptr], ptr @grip_btn, i32 0, i32 %65
  %66 = ptrtoint ptr %arrayidx1675.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx1675.i, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %69)
  %cmp1876.i = icmp sgt i32 %69, -1
  br i1 %cmp1876.i, label %for.body20.lr.ph.i, label %for.cond14.preheader.i.for.end27.i_crit_edge

for.cond14.preheader.i.for.end27.i_crit_edge:     ; preds = %for.cond14.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end27.i

for.body20.lr.ph.i:                               ; preds = %for.cond14.preheader.i
  %keybit.i = getelementptr inbounds %struct.input_dev, ptr %call.i, i32 0, i32 6
  br label %for.body20.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %70 = phi i32 [ %76, %for.body.i.for.body.i_crit_edge ], [ %63, %if.end.i.for.body.i_crit_edge ]
  %j.074.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  tail call void @input_set_abs_params(ptr noundef nonnull %call.i, i32 noundef %70, i32 noundef -1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #7
  %inc.i = add i32 %j.074.i, 1
  %71 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %mode.i, align 4
  %arrayidx11.i = getelementptr [4 x ptr], ptr @grip_abs, i32 0, i32 %72
  %73 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx11.i, align 4
  %arrayidx12.i = getelementptr i32, ptr %74, i32 %inc.i
  %75 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx12.i, align 4
  %cmp.i = icmp sgt i32 %76, -1
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.cond14.preheader.i_crit_edge

for.body.i.for.cond14.preheader.i_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond14.preheader.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body20.i:                                     ; preds = %for.inc25.i.for.body20.i_crit_edge, %for.body20.lr.ph.i
  %77 = phi i32 [ %69, %for.body20.lr.ph.i ], [ %83, %for.inc25.i.for.body20.i_crit_edge ]
  %j.177.i = phi i32 [ 0, %for.body20.lr.ph.i ], [ %inc26.i, %for.inc25.i.for.body20.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp21.not.i = icmp eq i32 %77, 0
  br i1 %cmp21.not.i, label %for.body20.i.for.inc25.i_crit_edge, label %if.then23.i

for.body20.i.for.inc25.i_crit_edge:               ; preds = %for.body20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc25.i

if.then23.i:                                      ; preds = %for.body20.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef %77, ptr noundef %keybit.i) #7
  br label %for.inc25.i

for.inc25.i:                                      ; preds = %if.then23.i, %for.body20.i.for.inc25.i_crit_edge
  %inc26.i = add i32 %j.177.i, 1
  %78 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %mode.i, align 4
  %arrayidx16.i = getelementptr [4 x ptr], ptr @grip_btn, i32 0, i32 %79
  %80 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx16.i, align 4
  %arrayidx17.i = getelementptr i32, ptr %81, i32 %inc26.i
  %82 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx17.i, align 4
  %cmp18.i = icmp sgt i32 %83, -1
  br i1 %cmp18.i, label %for.inc25.i.for.body20.i_crit_edge, label %for.inc25.i.for.end27.i_crit_edge

for.inc25.i.for.end27.i_crit_edge:                ; preds = %for.inc25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end27.i

for.inc25.i.for.body20.i_crit_edge:               ; preds = %for.inc25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body20.i

for.end27.i:                                      ; preds = %for.inc25.i.for.end27.i_crit_edge, %for.cond14.preheader.i.for.end27.i_crit_edge
  %84 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %39, align 4
  %call29.i = tail call i32 @input_register_device(ptr noundef %85) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.end33.i, label %if.then31.i

if.then31.i:                                      ; preds = %for.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  %86 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %39, align 4
  tail call void @input_free_device(ptr noundef %87) #7
  br label %if.then55

if.end33.i:                                       ; preds = %for.end27.i
  %registered.i = getelementptr inbounds %struct.grip_port, ptr %39, i32 0, i32 2
  %88 = ptrtoint ptr %registered.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 1, ptr %registered.i, align 4
  %dirty.i = getelementptr inbounds %struct.grip_port, ptr %39, i32 0, i32 6
  %89 = ptrtoint ptr %dirty.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %dirty.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool34.not.i = icmp eq i32 %90, 0
  br i1 %tobool34.not.i, label %if.end33.i.cleanup_crit_edge, label %if.then35.i

if.end33.i.cleanup_crit_edge:                     ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then35.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @report_slot(ptr noundef %grip, i32 noundef %sub) #7
  br label %cleanup

if.then55:                                        ; preds = %if.then31.i, %do.end52.if.then55_crit_edge
  %91 = ptrtoint ptr %mode41 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 1, ptr %mode41, align 4
  %92 = ptrtoint ptr %dirty to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %dirty, align 4
  br label %cleanup

if.end60:                                         ; preds = %if.end11
  %93 = load i32, ptr @get_and_decode_packet.strange_code, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %and14)
  %cmp61.not = icmp eq i32 %93, %and14
  br i1 %cmp61.not, label %if.end60.cleanup_crit_edge, label %do.end65

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end65:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #11
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %and14, i32 noundef %6) #11
  store i32 %and14, ptr @get_and_decode_packet.strange_code, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end65, %if.end60.cleanup_crit_edge, %if.then55, %if.then35.i, %if.end33.i.cleanup_crit_edge, %if.then30.cleanup_crit_edge, %do.end25, %if.end7.cleanup_crit_edge, %if.then5
  %retval.0 = phi i32 [ %or27, %do.end25 ], [ %8, %if.then5 ], [ %8, %if.end7.cleanup_crit_edge ], [ %spec.select115, %if.then55 ], [ %spec.select115, %if.then30.cleanup_crit_edge ], [ %8, %do.end65 ], [ %8, %if.end60.cleanup_crit_edge ], [ %spec.select115, %if.then35.i ], [ %spec.select115, %if.end33.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %packet) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @report_slot(ptr nocapture noundef readonly %grip, i32 noundef %slot) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.grip_mp, ptr %grip, i32 0, i32 1, i32 %slot
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %buttons = getelementptr inbounds %struct.grip_port, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %buttons to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buttons, align 4
  %6 = and i32 %5, 1
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 311, i32 noundef %6) #7
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %9 = ptrtoint ptr %buttons to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %buttons, align 4
  %11 = lshr i32 %10, 1
  %12 = and i32 %11, 1
  tail call void @input_event(ptr noundef %8, i32 noundef 1, i32 noundef 310, i32 noundef %12) #7
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %15 = ptrtoint ptr %buttons to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %buttons, align 4
  %17 = lshr i32 %16, 2
  %18 = and i32 %17, 1
  tail call void @input_event(ptr noundef %14, i32 noundef 1, i32 noundef 304, i32 noundef %18) #7
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %21 = ptrtoint ptr %buttons to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %buttons, align 4
  %23 = lshr i32 %22, 3
  %24 = and i32 %23, 1
  tail call void @input_event(ptr noundef %20, i32 noundef 1, i32 noundef 305, i32 noundef %24) #7
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %27 = ptrtoint ptr %buttons to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %buttons, align 4
  %29 = lshr i32 %28, 4
  %30 = and i32 %29, 1
  tail call void @input_event(ptr noundef %26, i32 noundef 1, i32 noundef 306, i32 noundef %30) #7
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %33 = ptrtoint ptr %buttons to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %buttons, align 4
  %35 = lshr i32 %34, 5
  %36 = and i32 %35, 1
  tail call void @input_event(ptr noundef %32, i32 noundef 1, i32 noundef 307, i32 noundef %36) #7
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %39 = ptrtoint ptr %buttons to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %buttons, align 4
  %41 = lshr i32 %40, 6
  %42 = and i32 %41, 1
  tail call void @input_event(ptr noundef %38, i32 noundef 1, i32 noundef 308, i32 noundef %42) #7
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %45 = ptrtoint ptr %buttons to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %buttons, align 4
  %47 = lshr i32 %46, 7
  %48 = and i32 %47, 1
  tail call void @input_event(ptr noundef %44, i32 noundef 1, i32 noundef 309, i32 noundef %48) #7
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 4
  %xaxes = getelementptr inbounds %struct.grip_port, ptr %1, i32 0, i32 4
  %51 = ptrtoint ptr %xaxes to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %xaxes, align 4
  tail call void @input_event(ptr noundef %50, i32 noundef 3, i32 noundef 0, i32 noundef %52) #7
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 4
  %yaxes = getelementptr inbounds %struct.grip_port, ptr %1, i32 0, i32 5
  %55 = ptrtoint ptr %yaxes to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %yaxes, align 4
  tail call void @input_event(ptr noundef %54, i32 noundef 3, i32 noundef 1, i32 noundef %56) #7
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 4
  tail call void @input_event(ptr noundef %58, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  %dirty = getelementptr inbounds %struct.grip_port, ptr %1, i32 0, i32 6
  %59 = ptrtoint ptr %dirty to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %dirty, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @multiport_io(ptr noundef %gameport, i32 noundef %sendflags, i32 noundef %sendcode, ptr nocapture noundef writeonly %packet) unnamed_addr #2 align 64 {
entry:
  %raw_data.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !63
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end11_crit_edge

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_off() #7
  br label %do.end11

do.end11:                                         ; preds = %if.then, %entry.do.end11_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %raw_data.i) #7
  %1 = ptrtoint ptr %raw_data.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %raw_data.i, align 1, !annotation !62
  %2 = ptrtoint ptr %packet to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %packet, align 4
  %read.i.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 7
  %3 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call zeroext i8 %4(ptr noundef %gameport) #7
  br label %gameport_read.exit.i

if.else.i.i:                                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #9
  %io.i.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 3
  %5 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %io.i.i, align 4
  %and.i.i = and i32 %6, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %7 = inttoptr i32 %add.i.i to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #7, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  br label %gameport_read.exit.i

gameport_read.exit.i:                             ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i8 [ %call.i.i, %if.then.i.i ], [ %8, %if.else.i.i ]
  %9 = and i8 %retval.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %for.cond.preheader.i, label %gameport_read.exit.i.mp_io.exit_crit_edge

gameport_read.exit.i.mp_io.exit_crit_edge:        ; preds = %gameport_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mp_io.exit

for.cond.preheader.i:                             ; preds = %gameport_read.exit.i
  %io.i169.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %gameport_read.exit174.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.0280.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %gameport_read.exit174.i.for.body.i_crit_edge ]
  %portvals.0279.i = phi i32 [ 0, %for.cond.preheader.i ], [ %or.i, %gameport_read.exit174.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read.i.i, align 4
  %tobool.not.i166.i = icmp eq ptr %11, null
  br i1 %tobool.not.i166.i, label %if.else.i172.i, label %if.then.i168.i

if.then.i168.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i167.i = tail call zeroext i8 %11(ptr noundef %gameport) #7
  br label %gameport_read.exit174.i

if.else.i172.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %io.i169.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %io.i169.i, align 4
  %and.i170.i = and i32 %13, 1048575
  %add.i171.i = or i32 %and.i170.i, -18874368
  %14 = inttoptr i32 %add.i171.i to ptr
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #7, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  br label %gameport_read.exit174.i

gameport_read.exit174.i:                          ; preds = %if.else.i172.i, %if.then.i168.i
  %retval.0.i173.i = phi i8 [ %call.i167.i, %if.then.i168.i ], [ %15, %if.else.i172.i ]
  %16 = lshr i8 %retval.0.i173.i, 4
  %17 = and i8 %16, 3
  %and4.i = zext i8 %17 to i32
  %shl.i = shl nuw nsw i32 1, %and4.i
  %or.i = or i32 %shl.i, %portvals.0279.i
  %inc.i = add nuw nsw i32 %i.0280.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %for.end.i, label %gameport_read.exit174.i.for.body.i_crit_edge

gameport_read.exit174.i.for.body.i_crit_edge:     ; preds = %gameport_read.exit174.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %gameport_read.exit174.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %or.i)
  %cmp5.i = icmp eq i32 %or.i, 1
  br i1 %cmp5.i, label %if.then7.i, label %for.end.i.mp_io.exit_crit_edge

for.end.i.mp_io.exit_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mp_io.exit

if.then7.i:                                       ; preds = %for.end.i
  %18 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read.i.i, align 4
  %tobool.not.i176.i = icmp eq ptr %19, null
  br i1 %tobool.not.i176.i, label %if.else.i182.i, label %if.then.i178.i

if.then.i178.i:                                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i177.i = tail call zeroext i8 %19(ptr noundef %gameport) #7
  br label %gameport_read.exit184.i

if.else.i182.i:                                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %io.i169.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %io.i169.i, align 4
  %and.i180.i = and i32 %21, 1048575
  %add.i181.i = or i32 %and.i180.i, -18874368
  %22 = inttoptr i32 %add.i181.i to ptr
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %22) #7, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  br label %gameport_read.exit184.i

gameport_read.exit184.i:                          ; preds = %if.else.i182.i, %if.then.i178.i
  %retval.0.i183.i = phi i8 [ %call.i177.i, %if.then.i178.i ], [ %23, %if.else.i182.i ]
  %conv9.i = zext i8 %retval.0.i183.i to i32
  %and10.i = and i32 %conv9.i, 240
  %and12.i = and i32 %conv9.i, 49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %gameport_read.exit184.i.mp_io.exit_crit_edge

gameport_read.exit184.i.mp_io.exit_crit_edge:     ; preds = %gameport_read.exit184.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mp_io.exit

if.end15.i:                                       ; preds = %gameport_read.exit184.i
  %trigger.i.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 6
  %24 = ptrtoint ptr %trigger.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %trigger.i.i, align 8
  %tobool.not.i185.i = icmp eq ptr %25, null
  br i1 %tobool.not.i185.i, label %do.body.i.i, label %if.then.i186.i

if.then.i186.i:                                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %25(ptr noundef %gameport) #7
  br label %gameport_trigger.exit.i

do.body.i.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  tail call void @arm_heavy_mb() #7
  %26 = ptrtoint ptr %io.i169.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %io.i169.i, align 4
  %and.i188.i = and i32 %27, 1048575
  %add.i189.i = or i32 %and.i188.i, -18874368
  %28 = inttoptr i32 %add.i189.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 -1) #7, !srcloc !67
  br label %gameport_trigger.exit.i

gameport_trigger.exit.i:                          ; preds = %do.body.i.i, %if.then.i186.i
  %speed.i.i.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 4
  %29 = ptrtoint ptr %speed.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %speed.i.i.i, align 8
  %mul.i.i.i = mul i32 %30, 308
  %div.i.i.i = sdiv i32 %mul.i.i.i, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %mul.i.i.i)
  %cmp20.i.i = icmp sgt i32 %mul.i.i.i, 999
  br i1 %cmp20.i.i, label %gameport_trigger.exit.i.for.body.i.i_crit_edge, label %gameport_trigger.exit.i.mp_io.exit_crit_edge

gameport_trigger.exit.i.mp_io.exit_crit_edge:     ; preds = %gameport_trigger.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mp_io.exit

gameport_trigger.exit.i.for.body.i.i_crit_edge:   ; preds = %gameport_trigger.exit.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %gameport_trigger.exit.i.for.body.i.i_crit_edge
  %i.021.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %gameport_trigger.exit.i.for.body.i.i_crit_edge ]
  %31 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = tail call zeroext i8 %32(ptr noundef %gameport) #7
  br label %gameport_read.exit.i.i

if.else.i.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %io.i169.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %io.i169.i, align 4
  %and.i.i.i = and i32 %34, 1048575
  %add.i.i.i = or i32 %and.i.i.i, -18874368
  %35 = inttoptr i32 %add.i.i.i to ptr
  %36 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %35) #7, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  br label %gameport_read.exit.i.i

gameport_read.exit.i.i:                           ; preds = %if.else.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i8 [ %call.i.i.i, %if.then.i.i.i ], [ %36, %if.else.i.i.i ]
  %and19.i.i = and i8 %retval.0.i.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and19.i.i)
  %cmp4.i.not.i = icmp eq i8 %and19.i.i, 0
  br i1 %cmp4.i.not.i, label %for.inc.i.i, label %if.end20.i

for.inc.i.i:                                      ; preds = %gameport_read.exit.i.i
  %inc.i.i = add nuw nsw i32 %i.021.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %div.i.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.mp_io.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.mp_io.exit_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mp_io.exit

if.end20.i:                                       ; preds = %gameport_read.exit.i.i
  %conv21.i = zext i8 %retval.0.i.i.i to i32
  %and22.i = and i32 %conv21.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.end20.i.if.end33.i_crit_edge, label %if.then24.i

if.end20.i.if.end33.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33.i

if.then24.i:                                      ; preds = %if.end20.i
  %37 = lshr i32 %conv21.i, 4
  %or27.i = or i32 %37, %and10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %or27.i)
  %cmp28.not.i = icmp eq i32 %or27.i, 11
  br i1 %cmp28.not.i, label %if.then24.i.if.end33.i_crit_edge, label %if.then24.i.mp_io.exit_crit_edge

if.then24.i.mp_io.exit_crit_edge:                 ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mp_io.exit

if.then24.i.if.end33.i_crit_edge:                 ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then24.i.if.end33.i_crit_edge, %if.end20.i.if.end33.i_crit_edge
  %data_mask.0.i = phi i8 [ 7, %if.then24.i.if.end33.i_crit_edge ], [ 1, %if.end20.i.if.end33.i_crit_edge ]
  %pkt.0.i = phi i32 [ 12, %if.then24.i.if.end33.i_crit_edge ], [ 10, %if.end20.i.if.end33.i_crit_edge ]
  %bits_per_read.0.i = phi i32 [ 3, %if.then24.i.if.end33.i_crit_edge ], [ 1, %if.end20.i.if.end33.i_crit_edge ]
  %38 = ptrtoint ptr %speed.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %speed.i.i.i, align 8
  %mul.i.i192288.i = mul i32 %39, 77
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %mul.i.i192288.i)
  %cmp20.i194290.i = icmp sgt i32 %mul.i.i192288.i, 999
  br i1 %cmp20.i194290.i, label %if.end33.i.for.body.lr.ph.i197.i_crit_edge, label %if.end33.i.mp_io.exit_crit_edge

if.end33.i.mp_io.exit_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mp_io.exit

if.end33.i.for.body.lr.ph.i197.i_crit_edge:       ; preds = %if.end33.i
  br label %for.body.lr.ph.i197.i

while.cond.loopexit.i:                            ; preds = %gameport_read.exit.i234.i
  %40 = ptrtoint ptr %speed.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %speed.i.i.i, align 8
  %mul.i.i192.i = mul i32 %41, 77
  %cmp20.i194.i = icmp sgt i32 %mul.i.i192.i, 999
  br i1 %cmp20.i194.i, label %while.cond.loopexit.i.for.body.lr.ph.i197.i_crit_edge, label %while.cond.loopexit.i.mp_io.exit_crit_edge

while.cond.loopexit.i.mp_io.exit_crit_edge:       ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mp_io.exit

while.cond.loopexit.i.for.body.lr.ph.i197.i_crit_edge: ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.lr.ph.i197.i

for.body.lr.ph.i197.i:                            ; preds = %while.cond.loopexit.i.for.body.lr.ph.i197.i_crit_edge, %if.end33.i.for.body.lr.ph.i197.i_crit_edge
  %div.i.i193292.in.i = phi i32 [ %mul.i.i192.i, %while.cond.loopexit.i.for.body.lr.ph.i197.i_crit_edge ], [ %mul.i.i192288.i, %if.end33.i.for.body.lr.ph.i197.i_crit_edge ]
  %pkt.1291.i = phi i32 [ %or49.i, %while.cond.loopexit.i.for.body.lr.ph.i197.i_crit_edge ], [ %pkt.0.i, %if.end33.i.for.body.lr.ph.i197.i_crit_edge ]
  %div.i.i193292302.i = udiv i32 %div.i.i193292.in.i, 1000
  br label %for.body.i200.i

for.body.i200.i:                                  ; preds = %for.inc.i213.i.for.body.i200.i_crit_edge, %for.body.lr.ph.i197.i
  %i.021.i198.i = phi i32 [ 0, %for.body.lr.ph.i197.i ], [ %inc.i211.i, %for.inc.i213.i.for.body.i200.i_crit_edge ]
  %42 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read.i.i, align 4
  %tobool.not.i.i199.i = icmp eq ptr %43, null
  br i1 %tobool.not.i.i199.i, label %if.else.i.i205.i, label %if.then.i.i202.i

if.then.i.i202.i:                                 ; preds = %for.body.i200.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i201.i = tail call zeroext i8 %43(ptr noundef %gameport) #7
  br label %gameport_read.exit.i207.i

if.else.i.i205.i:                                 ; preds = %for.body.i200.i
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %io.i169.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %io.i169.i, align 4
  %and.i.i203.i = and i32 %45, 1048575
  %add.i.i204.i = or i32 %and.i.i203.i, -18874368
  %46 = inttoptr i32 %add.i.i204.i to ptr
  %47 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %46) #7, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  br label %gameport_read.exit.i207.i

gameport_read.exit.i207.i:                        ; preds = %if.else.i.i205.i, %if.then.i.i202.i
  %retval.0.i.i206.i = phi i8 [ %call.i.i201.i, %if.then.i.i202.i ], [ %47, %if.else.i.i205.i ]
  %48 = and i8 %retval.0.i.i206.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %cmp10.i.i = icmp eq i8 %48, 0
  br i1 %cmp10.i.i, label %if.end37.i, label %for.inc.i213.i

for.inc.i213.i:                                   ; preds = %gameport_read.exit.i207.i
  %inc.i211.i = add nuw nsw i32 %i.021.i198.i, 1
  %exitcond.not.i212.i = icmp eq i32 %inc.i211.i, %div.i.i193292302.i
  br i1 %exitcond.not.i212.i, label %cleanup.loopexit271.i, label %for.inc.i213.i.for.body.i200.i_crit_edge

for.inc.i213.i.for.body.i200.i_crit_edge:         ; preds = %for.inc.i213.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i200.i

if.end37.i:                                       ; preds = %gameport_read.exit.i207.i
  %49 = lshr i8 %retval.0.i.i206.i, 5
  %and41.i = and i8 %49, %data_mask.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %pkt.1291.i)
  %tobool44.not.i = icmp sgt i32 %pkt.1291.i, -1
  br i1 %tobool44.not.i, label %if.end46.i, label %while.end.i

if.end46.i:                                       ; preds = %if.end37.i
  %shl47.i = shl i32 %pkt.1291.i, %bits_per_read.0.i
  %conv48.i = zext i8 %and41.i to i32
  %or49.i = or i32 %shl47.i, %conv48.i
  %50 = ptrtoint ptr %speed.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %speed.i.i.i, align 8
  %mul.i.i217.i = mul i32 %51, 77
  %div.i.i218.i = sdiv i32 %mul.i.i217.i, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %mul.i.i217.i)
  %cmp20.i219.i = icmp sgt i32 %mul.i.i217.i, 999
  br i1 %cmp20.i219.i, label %if.end46.i.for.body.i225.i_crit_edge, label %if.end46.i.mp_io.exit_crit_edge

if.end46.i.mp_io.exit_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mp_io.exit

if.end46.i.for.body.i225.i_crit_edge:             ; preds = %if.end46.i
  br label %for.body.i225.i

for.body.i225.i:                                  ; preds = %for.inc.i240.i.for.body.i225.i_crit_edge, %if.end46.i.for.body.i225.i_crit_edge
  %i.021.i223.i = phi i32 [ %inc.i238.i, %for.inc.i240.i.for.body.i225.i_crit_edge ], [ 0, %if.end46.i.for.body.i225.i_crit_edge ]
  %52 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %read.i.i, align 4
  %tobool.not.i.i224.i = icmp eq ptr %53, null
  br i1 %tobool.not.i.i224.i, label %if.else.i.i230.i, label %if.then.i.i227.i

if.then.i.i227.i:                                 ; preds = %for.body.i225.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i226.i = tail call zeroext i8 %53(ptr noundef %gameport) #7
  br label %gameport_read.exit.i234.i

if.else.i.i230.i:                                 ; preds = %for.body.i225.i
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %io.i169.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %io.i169.i, align 4
  %and.i.i228.i = and i32 %55, 1048575
  %add.i.i229.i = or i32 %and.i.i228.i, -18874368
  %56 = inttoptr i32 %add.i.i229.i to ptr
  %57 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %56) #7, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  br label %gameport_read.exit.i234.i

gameport_read.exit.i234.i:                        ; preds = %if.else.i.i230.i, %if.then.i.i227.i
  %retval.0.i.i231.i = phi i8 [ %call.i.i226.i, %if.then.i.i227.i ], [ %57, %if.else.i.i230.i ]
  %and19.i232.i = and i8 %retval.0.i.i231.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and19.i232.i)
  %cmp4.i233.not.i = icmp eq i8 %and19.i232.i, 0
  br i1 %cmp4.i233.not.i, label %for.inc.i240.i, label %while.cond.loopexit.i

for.inc.i240.i:                                   ; preds = %gameport_read.exit.i234.i
  %inc.i238.i = add nuw nsw i32 %i.021.i223.i, 1
  %exitcond.not.i239.i = icmp eq i32 %inc.i238.i, %div.i.i218.i
  br i1 %exitcond.not.i239.i, label %for.inc.i240.i.mp_io.exit_crit_edge, label %for.inc.i240.i.for.body.i225.i_crit_edge

for.inc.i240.i.for.body.i225.i_crit_edge:         ; preds = %for.inc.i240.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i225.i

for.inc.i240.i.mp_io.exit_crit_edge:              ; preds = %for.inc.i240.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mp_io.exit

while.end.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and41.i)
  %tobool54.not.i = icmp eq i8 %and41.i, 0
  br i1 %tobool54.not.i, label %if.end56.i, label %while.end.i.mp_io.exit_crit_edge

while.end.i.mp_io.exit_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mp_io.exit

if.end56.i:                                       ; preds = %while.end.i
  %and60.i = and i32 %pkt.1291.i, 1073676288
  %shl61.i = shl i32 %pkt.1291.i, 1
  %and62.i = and i32 %shl61.i, 65532
  %or63.i = or i32 %and62.i, %and60.i
  %shr64.i = lshr exact i32 %or63.i, 2
  %or65.i = or i32 %shr64.i, -268435456
  %pkt.2.i = select i1 %tobool23.not.i, i32 %pkt.1291.i, i32 %or65.i
  %shr.i.i = lshr i32 %pkt.2.i, 16
  %xor.i.i = xor i32 %shr.i.i, %pkt.2.i
  %shr1.i.i = ashr i32 %xor.i.i, 8
  %xor2.i.i = xor i32 %shr1.i.i, %xor.i.i
  %shr3.i.i = ashr i32 %xor2.i.i, 4
  %xor4.i.i = xor i32 %shr3.i.i, %xor2.i.i
  %shr5.i.i = ashr i32 %xor4.i.i, 2
  %xor6.i.i = xor i32 %shr5.i.i, %xor4.i.i
  %shr718.i.i = lshr i32 %xor6.i.i, 1
  %xor8.i.i = xor i32 %shr718.i.i, %xor6.i.i
  %and.i243.i = and i32 %xor8.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i243.i)
  %cmp68.not.i = icmp eq i32 %and.i243.i, 0
  br i1 %cmp68.not.i, label %if.end71.i, label %if.end56.i.mp_io.exit_crit_edge

if.end56.i.mp_io.exit_crit_edge:                  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mp_io.exit

if.end71.i:                                       ; preds = %if.end56.i
  %call72.i = call fastcc i32 @poll_until(i8 noundef zeroext 48, i8 noundef zeroext 0, i32 noundef 77, ptr noundef %gameport, ptr noundef nonnull %raw_data.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72.i)
  %tobool73.not.i = icmp eq i32 %call72.i, 0
  br i1 %tobool73.not.i, label %if.end71.i.mp_io.exit_crit_edge, label %if.end75.i

if.end71.i.mp_io.exit_crit_edge:                  ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mp_io.exit

if.end75.i:                                       ; preds = %if.end71.i
  %58 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %read.i.i, align 4
  %tobool.not.i245.i = icmp eq ptr %59, null
  br i1 %tobool.not.i245.i, label %if.else.i251.i, label %if.then.i247.i

if.then.i247.i:                                   ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i246.i = tail call zeroext i8 %59(ptr noundef %gameport) #7
  br label %gameport_read.exit253.i

if.else.i251.i:                                   ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %io.i169.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %io.i169.i, align 4
  %and.i249.i = and i32 %61, 1048575
  %add.i250.i = or i32 %and.i249.i, -18874368
  %62 = inttoptr i32 %add.i250.i to ptr
  %63 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %62) #7, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  br label %gameport_read.exit253.i

gameport_read.exit253.i:                          ; preds = %if.else.i251.i, %if.then.i247.i
  %retval.0.i252.i = phi i8 [ %call.i246.i, %if.then.i247.i ], [ %63, %if.else.i251.i ]
  %64 = and i8 %retval.0.i252.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool79.not.i = icmp eq i8 %64, 0
  br i1 %tobool79.not.i, label %if.end81.i, label %gameport_read.exit253.i.mp_io.exit_crit_edge

gameport_read.exit253.i.mp_io.exit_crit_edge:     ; preds = %gameport_read.exit253.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mp_io.exit

if.end81.i:                                       ; preds = %gameport_read.exit253.i
  tail call fastcc void @gameport_trigger(ptr noundef %gameport) #7
  %call82.i = call fastcc i32 @poll_until(i8 noundef zeroext 0, i8 noundef zeroext 32, i32 noundef 77, ptr noundef %gameport, ptr noundef nonnull %raw_data.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82.i)
  %tobool83.not.i = icmp eq i32 %call82.i, 0
  br i1 %tobool83.not.i, label %if.end81.i.mp_io.exit_crit_edge, label %if.end85.i

if.end81.i.mp_io.exit_crit_edge:                  ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mp_io.exit

if.end85.i:                                       ; preds = %if.end81.i
  %65 = ptrtoint ptr %packet to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %pkt.2.i, ptr %packet, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sendflags)
  %cmp86.i = icmp eq i32 %sendflags, 0
  br i1 %cmp86.i, label %if.end85.i.mp_io.exit_crit_edge, label %lor.lhs.false.i

if.end85.i.mp_io.exit_crit_edge:                  ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mp_io.exit

lor.lhs.false.i:                                  ; preds = %if.end85.i
  %and88.i = and i32 %sendflags, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88.i)
  %tobool89.not.i = icmp ne i32 %and88.i, 0
  %and90.i = and i32 %pkt.2.i, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90.i)
  %tobool91.not.i = icmp eq i32 %and90.i, 0
  %or.cond.i = select i1 %tobool89.not.i, i1 %tobool91.not.i, i1 false
  br i1 %or.cond.i, label %lor.lhs.false.i.mp_io.exit_crit_edge, label %if.end93.i

lor.lhs.false.i.mp_io.exit_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mp_io.exit

if.end93.i:                                       ; preds = %lor.lhs.false.i
  %and94.i = and i32 %pkt.2.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94.i)
  %tobool95.not.i = icmp eq i32 %and94.i, 0
  br i1 %tobool95.not.i, label %if.end97.i, label %if.end93.i.mp_io.exit_crit_edge

if.end93.i.mp_io.exit_crit_edge:                  ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mp_io.exit

if.end97.i:                                       ; preds = %if.end93.i
  %call98.i = call fastcc i32 @poll_until(i8 noundef zeroext 32, i8 noundef zeroext 0, i32 noundef 77, ptr noundef %gameport, ptr noundef nonnull %raw_data.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98.i)
  %tobool99.not.i = icmp eq i32 %call98.i, 0
  br i1 %tobool99.not.i, label %if.end97.i.mp_io.exit_crit_edge, label %if.end101.i

if.end97.i.mp_io.exit_crit_edge:                  ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mp_io.exit

if.end101.i:                                      ; preds = %if.end97.i
  %66 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %read.i.i, align 4
  %tobool.not.i255.i = icmp eq ptr %67, null
  br i1 %tobool.not.i255.i, label %if.else.i261.i, label %if.then.i257.i

if.then.i257.i:                                   ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i256.i = tail call zeroext i8 %67(ptr noundef %gameport) #7
  br label %gameport_read.exit263.i

if.else.i261.i:                                   ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %io.i169.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %io.i169.i, align 4
  %and.i259.i = and i32 %69, 1048575
  %add.i260.i = or i32 %and.i259.i, -18874368
  %70 = inttoptr i32 %add.i260.i to ptr
  %71 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %70) #7, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  br label %gameport_read.exit263.i

gameport_read.exit263.i:                          ; preds = %if.else.i261.i, %if.then.i257.i
  %retval.0.i262.i = phi i8 [ %call.i256.i, %if.then.i257.i ], [ %71, %if.else.i261.i ]
  %72 = ptrtoint ptr %raw_data.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %retval.0.i262.i, ptr %raw_data.i, align 1
  %73 = and i8 %retval.0.i262.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool105.not.i = icmp eq i8 %73, 0
  br i1 %tobool105.not.i, label %if.end107.i, label %gameport_read.exit263.i.mp_io.exit_crit_edge

gameport_read.exit263.i.mp_io.exit_crit_edge:     ; preds = %gameport_read.exit263.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mp_io.exit

if.end107.i:                                      ; preds = %gameport_read.exit263.i
  tail call fastcc void @gameport_trigger(ptr noundef %gameport) #7
  br label %do.body.i

do.body.i:                                        ; preds = %if.end124.i.do.body.i_crit_edge, %if.end107.i
  %sendcode.addr.0.i = phi i32 [ %sendcode, %if.end107.i ], [ %shr125.i, %if.end124.i.do.body.i_crit_edge ]
  %call108.i = call fastcc i32 @poll_until(i8 noundef zeroext 32, i8 noundef zeroext 16, i32 noundef 116, ptr noundef %gameport, ptr noundef nonnull %raw_data.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108.i)
  %tobool109.not.i = icmp eq i32 %call108.i, 0
  br i1 %tobool109.not.i, label %do.body.i.mp_io.exit_crit_edge, label %if.end111.i

do.body.i.mp_io.exit_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mp_io.exit

if.end111.i:                                      ; preds = %do.body.i
  %call112.i = call fastcc i32 @poll_until(i8 noundef zeroext 48, i8 noundef zeroext 0, i32 noundef 193, ptr noundef %gameport, ptr noundef nonnull %raw_data.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112.i)
  %tobool113.not.i = icmp eq i32 %call112.i, 0
  br i1 %tobool113.not.i, label %if.end111.i.mp_io.exit_crit_edge, label %if.end115.i

if.end111.i.mp_io.exit_crit_edge:                 ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mp_io.exit

if.end115.i:                                      ; preds = %if.end111.i
  %74 = ptrtoint ptr %raw_data.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %raw_data.i, align 1
  %76 = and i8 %75, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool118.not.i = icmp eq i8 %76, 0
  br i1 %tobool118.not.i, label %if.end120.i, label %if.end115.i.mp_io.exit_crit_edge

if.end115.i.mp_io.exit_crit_edge:                 ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mp_io.exit

if.end120.i:                                      ; preds = %if.end115.i
  %and121.i = and i32 %sendcode.addr.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121.i)
  %tobool122.not.i = icmp eq i32 %and121.i, 0
  br i1 %tobool122.not.i, label %if.end120.i.if.end124.i_crit_edge, label %if.then123.i

if.end120.i.if.end124.i_crit_edge:                ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end124.i

if.then123.i:                                     ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gameport_trigger(ptr noundef %gameport) #7
  br label %if.end124.i

if.end124.i:                                      ; preds = %if.then123.i, %if.end120.i.if.end124.i_crit_edge
  %shr125.i = ashr i32 %sendcode.addr.0.i, 1
  %tobool126.not.i = icmp ult i32 %sendcode.addr.0.i, 2
  br i1 %tobool126.not.i, label %if.end124.i.mp_io.exit_crit_edge, label %if.end124.i.do.body.i_crit_edge

if.end124.i.do.body.i_crit_edge:                  ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

if.end124.i.mp_io.exit_crit_edge:                 ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mp_io.exit

cleanup.loopexit271.i:                            ; preds = %for.inc.i213.i
  call void @__sanitizer_cov_trace_pc() #9
  %77 = ptrtoint ptr %raw_data.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %retval.0.i.i206.i, ptr %raw_data.i, align 1
  br label %mp_io.exit

mp_io.exit:                                       ; preds = %cleanup.loopexit271.i, %if.end124.i.mp_io.exit_crit_edge, %if.end115.i.mp_io.exit_crit_edge, %if.end111.i.mp_io.exit_crit_edge, %do.body.i.mp_io.exit_crit_edge, %gameport_read.exit263.i.mp_io.exit_crit_edge, %if.end97.i.mp_io.exit_crit_edge, %if.end93.i.mp_io.exit_crit_edge, %lor.lhs.false.i.mp_io.exit_crit_edge, %if.end85.i.mp_io.exit_crit_edge, %if.end81.i.mp_io.exit_crit_edge, %gameport_read.exit253.i.mp_io.exit_crit_edge, %if.end71.i.mp_io.exit_crit_edge, %if.end56.i.mp_io.exit_crit_edge, %while.end.i.mp_io.exit_crit_edge, %for.inc.i240.i.mp_io.exit_crit_edge, %if.end46.i.mp_io.exit_crit_edge, %while.cond.loopexit.i.mp_io.exit_crit_edge, %if.end33.i.mp_io.exit_crit_edge, %if.then24.i.mp_io.exit_crit_edge, %for.inc.i.i.mp_io.exit_crit_edge, %gameport_trigger.exit.i.mp_io.exit_crit_edge, %gameport_read.exit184.i.mp_io.exit_crit_edge, %for.end.i.mp_io.exit_crit_edge, %gameport_read.exit.i.mp_io.exit_crit_edge
  %retval.0.i = phi i32 [ 16384, %gameport_read.exit.i.mp_io.exit_crit_edge ], [ 32768, %gameport_read.exit184.i.mp_io.exit_crit_edge ], [ 16384, %for.end.i.mp_io.exit_crit_edge ], [ 0, %if.then24.i.mp_io.exit_crit_edge ], [ 32768, %while.end.i.mp_io.exit_crit_edge ], [ 32768, %if.end56.i.mp_io.exit_crit_edge ], [ 32768, %if.end71.i.mp_io.exit_crit_edge ], [ 32768, %gameport_read.exit253.i.mp_io.exit_crit_edge ], [ 32768, %if.end81.i.mp_io.exit_crit_edge ], [ 256, %lor.lhs.false.i.mp_io.exit_crit_edge ], [ 256, %if.end85.i.mp_io.exit_crit_edge ], [ 16640, %if.end93.i.mp_io.exit_crit_edge ], [ 33024, %if.end97.i.mp_io.exit_crit_edge ], [ 33024, %gameport_read.exit263.i.mp_io.exit_crit_edge ], [ 32768, %gameport_trigger.exit.i.mp_io.exit_crit_edge ], [ 32768, %cleanup.loopexit271.i ], [ 32768, %if.end33.i.mp_io.exit_crit_edge ], [ 33024, %do.body.i.mp_io.exit_crit_edge ], [ 33024, %if.end111.i.mp_io.exit_crit_edge ], [ 33024, %if.end115.i.mp_io.exit_crit_edge ], [ 768, %if.end124.i.mp_io.exit_crit_edge ], [ 32768, %for.inc.i240.i.mp_io.exit_crit_edge ], [ 32768, %if.end46.i.mp_io.exit_crit_edge ], [ 32768, %while.cond.loopexit.i.mp_io.exit_crit_edge ], [ 32768, %for.inc.i.i.mp_io.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %raw_data.i) #7
  br i1 %tobool.not, label %if.then22, label %mp_io.exit.do.body24_crit_edge

mp_io.exit.do.body24_crit_edge:                   ; preds = %mp_io.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body24

if.then22:                                        ; preds = %mp_io.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_on() #7
  br label %do.body24

do.body24:                                        ; preds = %if.then22, %mp_io.exit.do.body24_crit_edge
  %78 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !68
  %and.i.i47 = and i32 %78, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i47)
  %tobool32.not = icmp eq i32 %and.i.i47, 0
  br i1 %tobool32.not, label %if.then36, label %do.body24.do.end39_crit_edge, !prof !69

do.body24.do.end39_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end39

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %do.body24.do.end39_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #7, !srcloc !70
  ret i32 %retval.0.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gameport_trigger(ptr noundef %gameport) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %trigger = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 6
  %0 = ptrtoint ptr %trigger to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trigger, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %1(ptr noundef %gameport) #7
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  tail call void @arm_heavy_mb() #7
  %io = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 3
  %2 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %io, align 4
  %and = and i32 %3, 1048575
  %add = or i32 %and, -18874368
  %4 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 -1) #7, !srcloc !67
  br label %if.end

if.end:                                           ; preds = %do.body, %if.then
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @poll_until(i8 noundef zeroext %onbits, i8 noundef zeroext %offbits, i32 noundef %u_sec, ptr noundef %gp, ptr nocapture noundef writeonly %data) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %speed.i = getelementptr inbounds %struct.gameport, ptr %gp, i32 0, i32 4
  %0 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %speed.i, align 8
  %mul.i = mul i32 %1, %u_sec
  %div.i = sdiv i32 %mul.i, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %mul.i)
  %cmp20 = icmp sgt i32 %mul.i, 999
  br i1 %cmp20, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %read.i = getelementptr inbounds %struct.gameport, ptr %gp, i32 0, i32 7
  %io.i = getelementptr inbounds %struct.gameport, ptr %gp, i32 0, i32 3
  %conv7 = zext i8 %offbits to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.021 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call zeroext i8 %3(ptr noundef %gp) #7
  br label %gameport_read.exit

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io.i, align 4
  %and.i = and i32 %5, 1048575
  %add.i = or i32 %and.i, -18874368
  %6 = inttoptr i32 %add.i to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #7, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  br label %gameport_read.exit

gameport_read.exit:                               ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i8 [ %call.i, %if.then.i ], [ %7, %if.else.i ]
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %retval.0.i, ptr %data, align 1
  %and19 = and i8 %retval.0.i, %onbits
  call void @__sanitizer_cov_trace_cmp1(i8 %and19, i8 %onbits)
  %cmp4 = icmp eq i8 %and19, %onbits
  br i1 %cmp4, label %land.lhs.true, label %gameport_read.exit.for.inc_crit_edge

gameport_read.exit.for.inc_crit_edge:             ; preds = %gameport_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %gameport_read.exit
  %conv = zext i8 %retval.0.i to i32
  %neg = xor i32 %conv, -1
  %and8 = and i32 %neg, %conv7
  call void @__sanitizer_cov_trace_cmp4(i32 %and8, i32 %conv7)
  %cmp10 = icmp eq i32 %and8, %conv7
  br i1 %cmp10, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %gameport_read.exit.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.021, 1
  %exitcond.not = icmp eq i32 %inc, %div.i
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ 1, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @grip_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @gameport_start_polling(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @grip_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @gameport_stop_polling(ptr noundef %3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_start_polling(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_stop_polling(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dig_mode_start(ptr noundef %gameport, ptr nocapture noundef writeonly %packet) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %trigger.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 6
  %io.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.030 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr [91 x i32], ptr @init_seq, i32 0, i32 %i.030
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %for.body
  %2 = ptrtoint ptr %trigger.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trigger.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %3(ptr noundef %gameport) #7
  br label %if.end

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io.i, align 4
  %and.i = and i32 %5, 1048575
  %add.i = or i32 %and.i, -18874368
  %6 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 -1) #7, !srcloc !67
  br label %if.end

if.end:                                           ; preds = %do.body.i, %if.then.i, %for.body.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 429496000) #7
  %inc = add nuw nsw i32 %i.030, 1
  %exitcond.not = icmp eq i32 %inc, 91
  br i1 %exitcond.not, label %for.body3.preheader, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body3.preheader:                              ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 429496000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 429496000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 429496000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 429496000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 429496000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 429496000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 429496000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 429496000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 429496000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 429496000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 429496000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 429496000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 429496000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 429496000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 429496000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 429496000) #7
  br label %while.body

while.body:                                       ; preds = %if.end11.while.body_crit_edge, %for.body3.preheader
  %bads.033 = phi i32 [ %bads.1, %if.end11.while.body_crit_edge ], [ 0, %for.body3.preheader ]
  %tries.032 = phi i32 [ %tries.1, %if.end11.while.body_crit_edge ], [ 0, %for.body3.preheader ]
  %call = tail call fastcc i32 @multiport_io(ptr noundef %gameport, i32 noundef 32768, i32 noundef 39, ptr noundef %packet)
  %and = and i32 %call, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end11, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %while.body
  %and12 = lshr i32 %call, 14
  %and12.lobit29 = and i32 %and12, 1
  %tries.1 = add nuw nsw i32 %and12.lobit29, %tries.032
  %24 = xor i32 %and12.lobit29, 1
  %bads.1 = add nuw nsw i32 %24, %bads.033
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %tries.1)
  %cmp7 = icmp ult i32 %tries.1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %bads.1)
  %cmp8 = icmp ult i32 %bads.1, 8
  %or.cond = select i1 %cmp7, i1 %cmp8, i1 false
  br i1 %or.cond, label %if.end11.while.body_crit_edge, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11.while.body_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

cleanup:                                          ; preds = %if.end11.cleanup_crit_edge, %while.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %while.body.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !18, !19, !20, !21, !23, !25, !26, !27, !29, !30, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__UNIQUE_ID_author223, !1, !"__UNIQUE_ID_author223", i1 false, i1 false}
!1 = !{!"../drivers/input/joystick/grip_mp.c", i32 24, i32 1}
!2 = !{ptr @__UNIQUE_ID_description224, !3, !"__UNIQUE_ID_description224", i1 false, i1 false}
!3 = !{!"../drivers/input/joystick/grip_mp.c", i32 25, i32 1}
!4 = !{ptr @__UNIQUE_ID_file225, !5, !"__UNIQUE_ID_file225", i1 false, i1 false}
!5 = !{!"../drivers/input/joystick/grip_mp.c", i32 26, i32 1}
!6 = !{ptr @__UNIQUE_ID_license226, !5, !"__UNIQUE_ID_license226", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_grip_mp__227_690_grip_drv_init6, !8, !"__initcall__kmod_grip_mp__227_690_grip_drv_init6", i1 false, i1 false}
!8 = !{!"../drivers/input/joystick/grip_mp.c", i32 690, i32 1}
!9 = !{ptr @__exitcall_grip_drv_exit, !8, !"__exitcall_grip_drv_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/input/joystick/grip_mp.c", i32 685, i32 17}
!13 = !{ptr @grip_drv, !14, !"grip_drv", i1 false, i1 false}
!14 = !{!"../drivers/input/joystick/grip_mp.c", i32 681, i32 31}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/input/joystick/grip_mp.c", i32 396, i32 4}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @get_and_decode_packet._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @get_and_decode_packet._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @get_and_decode_packet.strange_code, !22, !"strange_code", i1 false, i1 false}
!22 = !{!"../drivers/input/joystick/grip_mp.c", i32 435, i32 14}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/input/joystick/grip_mp.c", i32 437, i32 4}
!25 = !{ptr @get_and_decode_packet._entry.5, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @get_and_decode_packet._entry_ptr.7, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/input/joystick/grip_mp.c", i32 438, i32 4}
!29 = !{ptr @get_and_decode_packet._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @get_and_decode_packet._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/joystick/grip_mp.c", i32 101, i32 48}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/input/joystick/grip_mp.c", i32 101, i32 67}
!35 = !{ptr @grip_name, !36, !"grip_name", i1 false, i1 false}
!36 = !{!"../drivers/input/joystick/grip_mp.c", i32 101, i32 20}
!37 = !{ptr @axis_map, !38, !"axis_map", i1 false, i1 false}
!38 = !{!"../drivers/input/joystick/grip_mp.c", i32 111, i32 18}
!39 = !{ptr @grip_abs, !40, !"grip_abs", i1 false, i1 false}
!40 = !{!"../drivers/input/joystick/grip_mp.c", i32 98, i32 19}
!41 = !{ptr @grip_abs_gp, !42, !"grip_abs_gp", i1 false, i1 false}
!42 = !{!"../drivers/input/joystick/grip_mp.c", i32 95, i32 18}
!43 = !{ptr @grip_abs_c64, !44, !"grip_abs_c64", i1 false, i1 false}
!44 = !{!"../drivers/input/joystick/grip_mp.c", i32 96, i32 18}
!45 = !{ptr @grip_btn, !46, !"grip_btn", i1 false, i1 false}
!46 = !{!"../drivers/input/joystick/grip_mp.c", i32 99, i32 19}
!47 = !{ptr @grip_btn_gp, !48, !"grip_btn_gp", i1 false, i1 false}
!48 = !{!"../drivers/input/joystick/grip_mp.c", i32 92, i32 18}
!49 = !{ptr @grip_btn_c64, !50, !"grip_btn_c64", i1 false, i1 false}
!50 = !{!"../drivers/input/joystick/grip_mp.c", i32 93, i32 18}
!51 = !{ptr @init_seq, !52, !"init_seq", i1 false, i1 false}
!52 = !{!"../drivers/input/joystick/grip_mp.c", i32 103, i32 18}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{!"auto-init"}
!63 = !{i64 617320, i64 617381}
!64 = !{i64 4948434}
!65 = !{i64 2152738361}
!66 = !{i64 2152737786}
!67 = !{i64 4948039}
!68 = !{i64 620052}
!69 = !{!"branch_weights", i32 1, i32 2000}
!70 = !{i64 620337}
