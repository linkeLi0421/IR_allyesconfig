; ModuleID = '/llk/IR_all_yes/drivers/input/joystick/sidewinder.c_pt.bc'
source_filename = "../drivers/input/joystick/sidewinder.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gameport_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.anon.69 = type { i32, i32 }
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
%struct.sw = type { ptr, [4 x ptr], [64 x i8], [4 x [32 x i8]], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__UNIQUE_ID_author223 = internal constant [50 x i8] c"sidewinder.author=Vojtech Pavlik <vojtech@ucw.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description224 = internal constant [67 x i8] c"sidewinder.description=Microsoft SideWinder joystick family driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file225 = internal constant [50 x i8] c"sidewinder.file=drivers/input/joystick/sidewinder\00", section ".modinfo", align 1
@__UNIQUE_ID_license226 = internal constant [23 x i8] c"sidewinder.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_sidewinder__227_812_sw_drv_init6 = internal global ptr @sw_drv_init, section ".initcall6.init", align 4
@sw_drv = internal global { %struct.gameport_driver, [32 x i8] } { %struct.gameport_driver { ptr @.str.1, ptr @sw_connect, ptr null, ptr @sw_disconnect, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i8 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_sw_drv_exit = internal global ptr @sw_drv_exit, section ".exitcall.exit", align 4
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sidewinder\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Microsoft SideWinder joystick family driver\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" [AC %s]\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@sw_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 705, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\014sidewinder.c: unknown joystick device detected on %s, contact <vojtech@ucw.cz>\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sw_connect\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/input/joystick/sidewinder.c\00", [60 x i8] zeroinitializer }, align 32
@sw_connect._entry_ptr = internal global ptr @sw_connect._entry, section ".printk_index", align 4
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ID\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Data\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Microsoft SideWinder %s\00", [40 x i8] zeroinitializer }, align 32
@sw_name = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s/input%d\00", [21 x i8] zeroinitializer }, align 32
@sw_bit = internal constant { [6 x [7 x i8]], [54 x i8] } { [6 x [7 x i8]] [[7 x i8] c"\0A\0A\09\0A\01\01\00", [7 x i8] c"\01\01\00\00\00\00\00", [7 x i8] c"\0A\0A\06\07\01\01\00", [7 x i8] c"\0A\0A\06\07\01\01\00", [7 x i8] c"\0A\0A\06\01\01\00\00", [7 x i8] c"\0A\07\07\01\01\00\00"], [54 x i8] zeroinitializer }, align 32
@sw_abs = internal constant { [6 x [7 x i8]], [54 x i8] } { [6 x [7 x i8]] [[7 x i8] c"\00\01\05\06\10\11\00", [7 x i8] c"\00\01\00\00\00\00\00", [7 x i8] c"\00\01\05\06\10\11\00", [7 x i8] c"\00\01\05\06\10\11\00", [7 x i8] c"\00\01\06\10\11\00\00", [7 x i8] c"\03\07\06\00\00\00\00"], [54 x i8] zeroinitializer }, align 32
@sw_btn = internal constant { [6 x [12 x i16]], [48 x i8] } { [6 x [12 x i16]] [[12 x i16] [i16 288, i16 291, i16 289, i16 290, i16 294, i16 295, i16 296, i16 297, i16 316, i16 0, i16 0, i16 0], [12 x i16] [i16 304, i16 305, i16 306, i16 307, i16 308, i16 309, i16 310, i16 311, i16 315, i16 316, i16 0, i16 0], [12 x i16] [i16 288, i16 289, i16 291, i16 292, i16 294, i16 295, i16 296, i16 297, i16 314, i16 0, i16 0, i16 0], [12 x i16] [i16 288, i16 289, i16 291, i16 292, i16 294, i16 295, i16 296, i16 297, i16 314, i16 0, i16 0, i16 0], [12 x i16] [i16 304, i16 305, i16 306, i16 307, i16 308, i16 309, i16 310, i16 311, i16 315, i16 316, i16 314, i16 0], [12 x i16] [i16 288, i16 291, i16 289, i16 290, i16 294, i16 295, i16 296, i16 297, i16 0, i16 0, i16 0, i16 0]], [48 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sw_init_digital.seq = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 140, i32 865, i32 440, i32 0], [16 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c" [PnP %d.%02d id %s rev %s]\00", [36 x i8] zeroinitializer }, align 32
@sw_print_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.7, i32 516, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016sidewinder.c: %s packet, %d bits. [\00", [58 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sw_print_packet\00", [16 x i8] zeroinitializer }, align 32
@sw_print_packet._entry_ptr = internal global ptr @sw_print_packet._entry, section ".printk_index", align 4
@sw_print_packet._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.7, i32 518, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%x\00", [29 x i8] zeroinitializer }, align 32
@sw_print_packet._entry_ptr.17 = internal global ptr @sw_print_packet._entry.15, section ".printk_index", align 4
@sw_print_packet._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.7, i32 519, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"]\0A\00", [29 x i8] zeroinitializer }, align 32
@sw_print_packet._entry_ptr.20 = internal global ptr @sw_print_packet._entry.18, section ".printk_index", align 4
@sw_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.7, i32 420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\014sidewinder.c: Joystick in wrong mode on %s - going to reinitialize.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sw_read\00", [24 x i8] zeroinitializer }, align 32
@sw_read._entry_ptr = internal global ptr @sw_read._entry, section ".printk_index", align 4
@sw_read._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.7, i32 446, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\016sidewinder.c: No more trouble on %s - enabling optimization again.\0A\00", [58 x i8] zeroinitializer }, align 32
@sw_read._entry_ptr.25 = internal global ptr @sw_read._entry.23, section ".printk_index", align 4
@sw_read._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.7, i32 459, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016sidewinder.c: Many bit errors on %s - disabling optimization.\0A\00", [63 x i8] zeroinitializer }, align 32
@sw_read._entry_ptr.28 = internal global ptr @sw_read._entry.26, section ".printk_index", align 4
@sw_read._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.22, ptr @.str.7, i32 467, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\014sidewinder.c: Too many bit errors on %s - reinitializing joystick.\0A\00", [58 x i8] zeroinitializer }, align 32
@sw_read._entry_ptr.31 = internal global ptr @sw_read._entry.29, section ".printk_index", align 4
@sw_hat_to_axis = internal constant { [9 x %struct.anon.69], [56 x i8] } { [9 x %struct.anon.69] [%struct.anon.69 zeroinitializer, %struct.anon.69 { i32 0, i32 -1 }, %struct.anon.69 { i32 1, i32 -1 }, %struct.anon.69 { i32 1, i32 0 }, %struct.anon.69 { i32 1, i32 1 }, %struct.anon.69 { i32 0, i32 1 }, %struct.anon.69 { i32 -1, i32 1 }, %struct.anon.69 { i32 -1, i32 0 }, %struct.anon.69 { i32 -1, i32 -1 }], [56 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"3D Pro\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GamePad\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Precision Pro\00", [18 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Force Feedback Pro\00", [45 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FreeStyle Pro\00", [18 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Force Feedback Wheel\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 32, i64 15, i64 30, i64 31, i64 33, i64 43, i64 45, i64 48, i64 60, i64 64, i64 66, i64 198]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 64, i64 66]
@__sancov_gen_cov_switch_values.39 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.40 = private unnamed_addr constant [7 x i8] c"sw_drv\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 802, i32 31 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 812, i32 1 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 807, i32 17 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 683, i32 24 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 683, i32 64 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 683, i32 72 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 704, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 706, i32 19 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 707, i32 19 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 727, i32 5 }
@___asan_gen_.79 = private unnamed_addr constant [8 x i8] c"sw_name\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 66, i32 14 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 729, i32 5 }
@___asan_gen_.85 = private unnamed_addr constant [7 x i8] c"sw_bit\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 77, i32 13 }
@___asan_gen_.88 = private unnamed_addr constant [7 x i8] c"sw_abs\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 69, i32 13 }
@___asan_gen_.91 = private unnamed_addr constant [7 x i8] c"sw_btn\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 85, i32 14 }
@___asan_gen_.94 = private unnamed_addr constant [4 x i8] c"seq\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 226, i32 19 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 540, i32 26 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 516, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 518, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 519, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 419, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 445, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 458, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 466, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant [15 x i8] c"sw_hat_to_axis\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 96, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 66, i32 28 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 66, i32 38 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 66, i32 49 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 66, i32 66 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 66, i32 88 }
@___asan_gen_.166 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.167 = private constant [39 x i8] c"../drivers/input/joystick/sidewinder.c\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 67, i32 5 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @__UNIQUE_ID_author223, ptr @__UNIQUE_ID_description224, ptr @__UNIQUE_ID_file225, ptr @__UNIQUE_ID_license226, ptr @__exitcall_sw_drv_exit, ptr @__initcall__kmod_sidewinder__227_812_sw_drv_init6, ptr @sw_connect._entry, ptr @sw_connect._entry_ptr, ptr @sw_drv_exit, ptr @sw_print_packet._entry, ptr @sw_print_packet._entry.15, ptr @sw_print_packet._entry.18, ptr @sw_print_packet._entry_ptr, ptr @sw_print_packet._entry_ptr.17, ptr @sw_print_packet._entry_ptr.20, ptr @sw_read._entry, ptr @sw_read._entry.23, ptr @sw_read._entry.26, ptr @sw_read._entry.29, ptr @sw_read._entry_ptr, ptr @sw_read._entry_ptr.25, ptr @sw_read._entry_ptr.28, ptr @sw_read._entry_ptr.31, ptr @sw_drv, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @sw_name, ptr @.str.11, ptr @sw_bit, ptr @sw_abs, ptr @sw_btn, ptr @sw_init_digital.seq, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @sw_hat_to_axis, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sw_drv to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sw_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sw_name to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sw_bit to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sw_abs to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sw_btn to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sw_init_digital.seq to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sw_print_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sw_print_packet._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sw_print_packet._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sw_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sw_read._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sw_read._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sw_read._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sw_hat_to_axis to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sw_drv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__gameport_register_driver(ptr noundef nonnull @sw_drv, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sw_drv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gameport_unregister_driver(ptr noundef nonnull @sw_drv) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__gameport_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sw_connect(ptr noundef %gameport, ptr noundef %drv) #2 align 64 {
entry:
  %pnp.i = alloca [8 x i8], align 1
  %rev.i = alloca [9 x i8], align 8
  %comment = alloca [40 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %comment) #7
  %0 = getelementptr inbounds i8, ptr %comment, i32 1
  %1 = call ptr @memset(ptr %0, i32 255, i32 39)
  %2 = ptrtoint ptr %comment to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %comment, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 244) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 512) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i358 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 512) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  %tobool3.not = icmp eq ptr %call7.i, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  %tobool5.not = icmp eq ptr %call7.i358, null
  %or.cond356 = select i1 %or.cond, i1 true, i1 %tobool5.not
  br i1 %or.cond356, label %entry.fail1_crit_edge, label %if.end

entry.fail1_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail1

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %gameport, ptr %call7.i.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 21, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call7 = tail call i32 @gameport_open(ptr noundef %gameport, ptr noundef %drv, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %do.end, label %if.end.fail1_crit_edge

if.end.fail1_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail1

do.end:                                           ; preds = %if.end
  %call11 = tail call fastcc i32 @sw_read_packet(ptr noundef %gameport, ptr noundef nonnull %call7.i, i32 noundef 512, i32 noundef 0)
  tail call void @msleep(i32 noundef 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool15.not = icmp eq i32 %call11, 0
  br i1 %tobool15.not, label %if.then16, label %do.end.if.end24_crit_edge

do.end.if.end24_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then16:                                        ; preds = %do.end
  tail call fastcc void @sw_init_digital(ptr noundef %gameport)
  tail call void @msleep(i32 noundef 6) #7
  %call17 = tail call fastcc i32 @sw_read_packet(ptr noundef %gameport, ptr noundef nonnull %call7.i, i32 noundef 512, i32 noundef 0)
  tail call void @msleep(i32 noundef 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool21.not = icmp eq i32 %call17, 0
  br i1 %tobool21.not, label %if.then16.fail2_crit_edge, label %if.then16.if.end24_crit_edge

if.then16.if.end24_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then16.fail2_crit_edge:                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail2

if.end24:                                         ; preds = %if.then16.if.end24_crit_edge, %do.end.if.end24_crit_edge
  %i.0 = phi i32 [ %call11, %do.end.if.end24_crit_edge ], [ %call17, %if.then16.if.end24_crit_edge ]
  %call25 = tail call fastcc i32 @sw_read_packet(ptr noundef %gameport, ptr noundef nonnull %call7.i358, i32 noundef 512, i32 noundef %i.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25)
  %cmp14.i = icmp sgt i32 %call25, 1
  br i1 %cmp14.i, label %if.end24.for.body.i_crit_edge, label %if.end24.sw_guess_mode.exit_crit_edge

if.end24.sw_guess_mode.exit_crit_edge:            ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw_guess_mode.exit

if.end24.for.body.i_crit_edge:                    ; preds = %if.end24
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end24.for.body.i_crit_edge
  %xor.016.i = phi i8 [ %or13.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end24.for.body.i_crit_edge ]
  %i.015.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 1, %if.end24.for.body.i_crit_edge ]
  %sub.i = add nsw i32 %i.015.i, -1
  %arrayidx.i = getelementptr i8, ptr %call7.i358, i32 %sub.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %arrayidx1.i = getelementptr i8, ptr %call7.i358, i32 %i.015.i
  %10 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx1.i, align 1
  %xor312.i = xor i8 %11, %9
  %12 = and i8 %xor312.i, 6
  %or13.i = or i8 %12, %xor.016.i
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call25
  br i1 %exitcond.not.i, label %for.end.loopexit.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.loopexit.i:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or13.i)
  %phi.cmp.i = icmp eq i8 %or13.i, 0
  %phi.sel.i = select i1 %phi.cmp.i, i8 1, i8 3
  br label %sw_guess_mode.exit

sw_guess_mode.exit:                               ; preds = %for.end.loopexit.i, %if.end24.sw_guess_mode.exit_crit_edge
  %xor.0.lcssa.i = phi i8 [ 1, %if.end24.sw_guess_mode.exit_crit_edge ], [ %phi.sel.i, %for.end.loopexit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25)
  %cmp = icmp slt i32 %call25, 1
  br i1 %cmp, label %if.then32, label %sw_guess_mode.exit.if.end48_crit_edge

sw_guess_mode.exit.if.end48_crit_edge:            ; preds = %sw_guess_mode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.then32:                                        ; preds = %sw_guess_mode.exit
  tail call void @msleep(i32 noundef 6) #7
  %call33 = tail call fastcc i32 @sw_read_packet(ptr noundef %gameport, ptr noundef nonnull %call7.i, i32 noundef 512, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call33)
  %cmp14.i359 = icmp sgt i32 %call33, 1
  br i1 %cmp14.i359, label %if.then32.for.body.i369_crit_edge, label %if.then32.sw_guess_mode.exit374_crit_edge

if.then32.sw_guess_mode.exit374_crit_edge:        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw_guess_mode.exit374

if.then32.for.body.i369_crit_edge:                ; preds = %if.then32
  br label %for.body.i369

for.body.i369:                                    ; preds = %for.body.i369.for.body.i369_crit_edge, %if.then32.for.body.i369_crit_edge
  %xor.016.i360 = phi i8 [ %or13.i366, %for.body.i369.for.body.i369_crit_edge ], [ 0, %if.then32.for.body.i369_crit_edge ]
  %i.015.i361 = phi i32 [ %inc.i367, %for.body.i369.for.body.i369_crit_edge ], [ 1, %if.then32.for.body.i369_crit_edge ]
  %sub.i362 = add nsw i32 %i.015.i361, -1
  %arrayidx.i363 = getelementptr i8, ptr %call7.i, i32 %sub.i362
  %13 = ptrtoint ptr %arrayidx.i363 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i363, align 1
  %arrayidx1.i364 = getelementptr i8, ptr %call7.i, i32 %i.015.i361
  %15 = ptrtoint ptr %arrayidx1.i364 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx1.i364, align 1
  %xor312.i365 = xor i8 %16, %14
  %17 = and i8 %xor312.i365, 6
  %or13.i366 = or i8 %17, %xor.016.i360
  %inc.i367 = add nuw nsw i32 %i.015.i361, 1
  %exitcond.not.i368 = icmp eq i32 %inc.i367, %call33
  br i1 %exitcond.not.i368, label %for.end.loopexit.i372, label %for.body.i369.for.body.i369_crit_edge

for.body.i369.for.body.i369_crit_edge:            ; preds = %for.body.i369
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i369

for.end.loopexit.i372:                            ; preds = %for.body.i369
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or13.i366)
  %phi.cmp.i370 = icmp eq i8 %or13.i366, 0
  %phi.sel.i371 = select i1 %phi.cmp.i370, i8 1, i8 3
  br label %sw_guess_mode.exit374

sw_guess_mode.exit374:                            ; preds = %for.end.loopexit.i372, %if.then32.sw_guess_mode.exit374_crit_edge
  %xor.0.lcssa.i373 = phi i8 [ 1, %if.then32.sw_guess_mode.exit374_crit_edge ], [ %phi.sel.i371, %for.end.loopexit.i372 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool41.not = icmp eq i32 %call33, 0
  br i1 %tobool41.not, label %sw_guess_mode.exit374.fail2_crit_edge, label %if.end43

sw_guess_mode.exit374.fail2_crit_edge:            ; preds = %sw_guess_mode.exit374
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail2

if.end43:                                         ; preds = %sw_guess_mode.exit374
  call void @__sanitizer_cov_trace_pc() #9
  %conv37 = or i8 %xor.0.lcssa.i373, %xor.0.lcssa.i
  tail call void @msleep(i32 noundef 6) #7
  %call44 = tail call fastcc i32 @sw_read_packet(ptr noundef %gameport, ptr noundef nonnull %call7.i358, i32 noundef 512, i32 noundef %call33)
  br label %if.end48

if.end48:                                         ; preds = %if.end43, %sw_guess_mode.exit.if.end48_crit_edge
  %j.0 = phi i32 [ %call44, %if.end43 ], [ %call25, %sw_guess_mode.exit.if.end48_crit_edge ]
  %m.0 = phi i8 [ %conv37, %if.end43 ], [ %xor.0.lcssa.i, %sw_guess_mode.exit.if.end48_crit_edge ]
  %type = getelementptr inbounds %struct.sw, ptr %call7.i.i, i32 0, i32 5
  %18 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %type, align 8
  %number = getelementptr inbounds %struct.sw, ptr %call7.i.i, i32 0, i32 7
  %length = getelementptr inbounds %struct.sw, ptr %call7.i.i, i32 0, i32 4
  %conv58 = zext i8 %m.0 to i32
  %bits = getelementptr inbounds %struct.sw, ptr %call7.i.i, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %j.0)
  %cmp96 = icmp eq i32 %j.0, 160
  %19 = getelementptr inbounds [9 x i8], ptr %rev.i, i32 0, i32 8
  %20 = getelementptr inbounds [8 x i8], ptr %pnp.i, i32 0, i32 7
  %arrayidx.i29.i = getelementptr i8, ptr %call7.i358, i32 8
  %arrayidx.i29.1.i = getelementptr i8, ptr %call7.i358, i32 9
  %arrayidx.i29.2.i = getelementptr i8, ptr %call7.i358, i32 10
  %arrayidx.i29.3.i = getelementptr i8, ptr %call7.i358, i32 11
  %arrayidx.i29.4.i = getelementptr i8, ptr %call7.i358, i32 12
  %arrayidx.i29.5.i = getelementptr i8, ptr %call7.i358, i32 13
  %arrayidx.i51.i = getelementptr i8, ptr %call7.i358, i32 16
  %arrayidx.i51.1.i = getelementptr i8, ptr %call7.i358, i32 17
  %arrayidx.i51.2.i = getelementptr i8, ptr %call7.i358, i32 18
  %arrayidx.i51.3.i = getelementptr i8, ptr %call7.i358, i32 19
  %arrayidx.i51.4.i = getelementptr i8, ptr %call7.i358, i32 20
  %arrayidx.i51.5.i = getelementptr i8, ptr %call7.i358, i32 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %j.0)
  %cmp81 = icmp eq i32 %j.0, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 41, i32 %j.0)
  %cmp65 = icmp slt i32 %j.0, 41
  %arrayidx.i.i = getelementptr i8, ptr %call7.i358, i32 24
  %arrayidx.i.1.i = getelementptr i8, ptr %call7.i358, i32 25
  %arrayidx.i.2.i = getelementptr i8, ptr %call7.i358, i32 26
  %arrayidx.i.3.i = getelementptr i8, ptr %call7.i358, i32 27
  %arrayidx.i.4.i = getelementptr i8, ptr %call7.i358, i32 28
  %arrayidx.i.5.i = getelementptr i8, ptr %call7.i358, i32 29
  %arrayidx.i.6.i = getelementptr i8, ptr %call7.i358, i32 30
  %arrayidx.i.7.i = getelementptr i8, ptr %call7.i358, i32 31
  %arrayidx.i.i.1 = getelementptr i8, ptr %call7.i358, i32 32
  %arrayidx.i.1.i.1 = getelementptr i8, ptr %call7.i358, i32 33
  %arrayidx.i.2.i.1 = getelementptr i8, ptr %call7.i358, i32 34
  %arrayidx.i.3.i.1 = getelementptr i8, ptr %call7.i358, i32 35
  %arrayidx.i.4.i.1 = getelementptr i8, ptr %call7.i358, i32 36
  %arrayidx.i.5.i.1 = getelementptr i8, ptr %call7.i358, i32 37
  %arrayidx.i.6.i.1 = getelementptr i8, ptr %call7.i358, i32 38
  %arrayidx.i.7.i.1 = getelementptr i8, ptr %call7.i358, i32 39
  %arrayidx.i379.1 = getelementptr inbounds [8 x i8], ptr %pnp.i, i32 0, i32 1
  %arrayidx.i.i.2 = getelementptr i8, ptr %call7.i358, i32 40
  %arrayidx.i.1.i.2 = getelementptr i8, ptr %call7.i358, i32 41
  %arrayidx.i.2.i.2 = getelementptr i8, ptr %call7.i358, i32 42
  %arrayidx.i.3.i.2 = getelementptr i8, ptr %call7.i358, i32 43
  %arrayidx.i.4.i.2 = getelementptr i8, ptr %call7.i358, i32 44
  %arrayidx.i.5.i.2 = getelementptr i8, ptr %call7.i358, i32 45
  %arrayidx.i.6.i.2 = getelementptr i8, ptr %call7.i358, i32 46
  %arrayidx.i.7.i.2 = getelementptr i8, ptr %call7.i358, i32 47
  %arrayidx.i379.2 = getelementptr inbounds [8 x i8], ptr %pnp.i, i32 0, i32 2
  %arrayidx.i.i.3 = getelementptr i8, ptr %call7.i358, i32 48
  %arrayidx.i.1.i.3 = getelementptr i8, ptr %call7.i358, i32 49
  %arrayidx.i.2.i.3 = getelementptr i8, ptr %call7.i358, i32 50
  %arrayidx.i.3.i.3 = getelementptr i8, ptr %call7.i358, i32 51
  %arrayidx.i.4.i.3 = getelementptr i8, ptr %call7.i358, i32 52
  %arrayidx.i.5.i.3 = getelementptr i8, ptr %call7.i358, i32 53
  %arrayidx.i.6.i.3 = getelementptr i8, ptr %call7.i358, i32 54
  %arrayidx.i.7.i.3 = getelementptr i8, ptr %call7.i358, i32 55
  %arrayidx.i379.3 = getelementptr inbounds [8 x i8], ptr %pnp.i, i32 0, i32 3
  %arrayidx.i.i.4 = getelementptr i8, ptr %call7.i358, i32 56
  %arrayidx.i.1.i.4 = getelementptr i8, ptr %call7.i358, i32 57
  %arrayidx.i.2.i.4 = getelementptr i8, ptr %call7.i358, i32 58
  %arrayidx.i.3.i.4 = getelementptr i8, ptr %call7.i358, i32 59
  %arrayidx.i.4.i.4 = getelementptr i8, ptr %call7.i358, i32 60
  %arrayidx.i.5.i.4 = getelementptr i8, ptr %call7.i358, i32 61
  %arrayidx.i.6.i.4 = getelementptr i8, ptr %call7.i358, i32 62
  %arrayidx.i.7.i.4 = getelementptr i8, ptr %call7.i358, i32 63
  %arrayidx.i379.4 = getelementptr inbounds [8 x i8], ptr %pnp.i, i32 0, i32 4
  %arrayidx.i.i.5 = getelementptr i8, ptr %call7.i358, i32 64
  %arrayidx.i.1.i.5 = getelementptr i8, ptr %call7.i358, i32 65
  %arrayidx.i.2.i.5 = getelementptr i8, ptr %call7.i358, i32 66
  %arrayidx.i.3.i.5 = getelementptr i8, ptr %call7.i358, i32 67
  %arrayidx.i.4.i.5 = getelementptr i8, ptr %call7.i358, i32 68
  %arrayidx.i.5.i.5 = getelementptr i8, ptr %call7.i358, i32 69
  %arrayidx.i.6.i.5 = getelementptr i8, ptr %call7.i358, i32 70
  %arrayidx.i.7.i.5 = getelementptr i8, ptr %call7.i358, i32 71
  %arrayidx.i379.5 = getelementptr inbounds [8 x i8], ptr %pnp.i, i32 0, i32 5
  %arrayidx.i.i.6 = getelementptr i8, ptr %call7.i358, i32 72
  %arrayidx.i.1.i.6 = getelementptr i8, ptr %call7.i358, i32 73
  %arrayidx.i.2.i.6 = getelementptr i8, ptr %call7.i358, i32 74
  %arrayidx.i.3.i.6 = getelementptr i8, ptr %call7.i358, i32 75
  %arrayidx.i.4.i.6 = getelementptr i8, ptr %call7.i358, i32 76
  %arrayidx.i.5.i.6 = getelementptr i8, ptr %call7.i358, i32 77
  %arrayidx.i.6.i.6 = getelementptr i8, ptr %call7.i358, i32 78
  %arrayidx.i.7.i.6 = getelementptr i8, ptr %call7.i358, i32 79
  %arrayidx.i379.6 = getelementptr inbounds [8 x i8], ptr %pnp.i, i32 0, i32 6
  %arrayidx.i7.i = getelementptr i8, ptr %call7.i358, i32 88
  %arrayidx.i7.1.i = getelementptr i8, ptr %call7.i358, i32 89
  %arrayidx.i7.2.i = getelementptr i8, ptr %call7.i358, i32 90
  %arrayidx.i7.3.i = getelementptr i8, ptr %call7.i358, i32 91
  %arrayidx.i7.4.i = getelementptr i8, ptr %call7.i358, i32 92
  %arrayidx.i7.5.i = getelementptr i8, ptr %call7.i358, i32 93
  %arrayidx.i7.6.i = getelementptr i8, ptr %call7.i358, i32 94
  %arrayidx.i7.7.i = getelementptr i8, ptr %call7.i358, i32 95
  %arrayidx.i7.i.1 = getelementptr i8, ptr %call7.i358, i32 96
  %arrayidx.i7.1.i.1 = getelementptr i8, ptr %call7.i358, i32 97
  %arrayidx.i7.2.i.1 = getelementptr i8, ptr %call7.i358, i32 98
  %arrayidx.i7.3.i.1 = getelementptr i8, ptr %call7.i358, i32 99
  %arrayidx.i7.4.i.1 = getelementptr i8, ptr %call7.i358, i32 100
  %arrayidx.i7.5.i.1 = getelementptr i8, ptr %call7.i358, i32 101
  %arrayidx.i7.6.i.1 = getelementptr i8, ptr %call7.i358, i32 102
  %arrayidx.i7.7.i.1 = getelementptr i8, ptr %call7.i358, i32 103
  %arrayidx9.i.1 = getelementptr inbounds [9 x i8], ptr %rev.i, i32 0, i32 1
  %arrayidx.i7.i.2 = getelementptr i8, ptr %call7.i358, i32 104
  %arrayidx.i7.1.i.2 = getelementptr i8, ptr %call7.i358, i32 105
  %arrayidx.i7.2.i.2 = getelementptr i8, ptr %call7.i358, i32 106
  %arrayidx.i7.3.i.2 = getelementptr i8, ptr %call7.i358, i32 107
  %arrayidx.i7.4.i.2 = getelementptr i8, ptr %call7.i358, i32 108
  %arrayidx.i7.5.i.2 = getelementptr i8, ptr %call7.i358, i32 109
  %arrayidx.i7.6.i.2 = getelementptr i8, ptr %call7.i358, i32 110
  %arrayidx.i7.7.i.2 = getelementptr i8, ptr %call7.i358, i32 111
  %arrayidx9.i.2 = getelementptr inbounds [9 x i8], ptr %rev.i, i32 0, i32 2
  %arrayidx.i7.i.3 = getelementptr i8, ptr %call7.i358, i32 112
  %arrayidx.i7.1.i.3 = getelementptr i8, ptr %call7.i358, i32 113
  %arrayidx.i7.2.i.3 = getelementptr i8, ptr %call7.i358, i32 114
  %arrayidx.i7.3.i.3 = getelementptr i8, ptr %call7.i358, i32 115
  %arrayidx.i7.4.i.3 = getelementptr i8, ptr %call7.i358, i32 116
  %arrayidx.i7.5.i.3 = getelementptr i8, ptr %call7.i358, i32 117
  %arrayidx.i7.6.i.3 = getelementptr i8, ptr %call7.i358, i32 118
  %arrayidx.i7.7.i.3 = getelementptr i8, ptr %call7.i358, i32 119
  %arrayidx9.i.3 = getelementptr inbounds [9 x i8], ptr %rev.i, i32 0, i32 3
  %arrayidx.i7.i.4 = getelementptr i8, ptr %call7.i358, i32 120
  %arrayidx.i7.1.i.4 = getelementptr i8, ptr %call7.i358, i32 121
  %arrayidx.i7.2.i.4 = getelementptr i8, ptr %call7.i358, i32 122
  %arrayidx.i7.3.i.4 = getelementptr i8, ptr %call7.i358, i32 123
  %arrayidx.i7.4.i.4 = getelementptr i8, ptr %call7.i358, i32 124
  %arrayidx.i7.5.i.4 = getelementptr i8, ptr %call7.i358, i32 125
  %arrayidx.i7.6.i.4 = getelementptr i8, ptr %call7.i358, i32 126
  %arrayidx.i7.7.i.4 = getelementptr i8, ptr %call7.i358, i32 127
  %arrayidx9.i.4 = getelementptr inbounds [9 x i8], ptr %rev.i, i32 0, i32 4
  %arrayidx.i7.i.5 = getelementptr i8, ptr %call7.i358, i32 128
  %arrayidx.i7.1.i.5 = getelementptr i8, ptr %call7.i358, i32 129
  %arrayidx.i7.2.i.5 = getelementptr i8, ptr %call7.i358, i32 130
  %arrayidx.i7.3.i.5 = getelementptr i8, ptr %call7.i358, i32 131
  %arrayidx.i7.4.i.5 = getelementptr i8, ptr %call7.i358, i32 132
  %arrayidx.i7.5.i.5 = getelementptr i8, ptr %call7.i358, i32 133
  %arrayidx.i7.6.i.5 = getelementptr i8, ptr %call7.i358, i32 134
  %arrayidx.i7.7.i.5 = getelementptr i8, ptr %call7.i358, i32 135
  %arrayidx9.i.5 = getelementptr inbounds [9 x i8], ptr %rev.i, i32 0, i32 5
  %arrayidx.i7.i.6 = getelementptr i8, ptr %call7.i358, i32 136
  %arrayidx.i7.1.i.6 = getelementptr i8, ptr %call7.i358, i32 137
  %arrayidx.i7.2.i.6 = getelementptr i8, ptr %call7.i358, i32 138
  %arrayidx.i7.3.i.6 = getelementptr i8, ptr %call7.i358, i32 139
  %arrayidx.i7.4.i.6 = getelementptr i8, ptr %call7.i358, i32 140
  %arrayidx.i7.5.i.6 = getelementptr i8, ptr %call7.i358, i32 141
  %arrayidx.i7.6.i.6 = getelementptr i8, ptr %call7.i358, i32 142
  %arrayidx.i7.7.i.6 = getelementptr i8, ptr %call7.i358, i32 143
  %arrayidx9.i.6 = getelementptr inbounds [9 x i8], ptr %rev.i, i32 0, i32 6
  %arrayidx.i7.i.7 = getelementptr i8, ptr %call7.i358, i32 144
  %arrayidx.i7.1.i.7 = getelementptr i8, ptr %call7.i358, i32 145
  %arrayidx.i7.2.i.7 = getelementptr i8, ptr %call7.i358, i32 146
  %arrayidx.i7.3.i.7 = getelementptr i8, ptr %call7.i358, i32 147
  %arrayidx.i7.4.i.7 = getelementptr i8, ptr %call7.i358, i32 148
  %arrayidx.i7.5.i.7 = getelementptr i8, ptr %call7.i358, i32 149
  %arrayidx.i7.6.i.7 = getelementptr i8, ptr %call7.i358, i32 150
  %arrayidx.i7.7.i.7 = getelementptr i8, ptr %call7.i358, i32 151
  %arrayidx9.i.7 = getelementptr inbounds [9 x i8], ptr %rev.i, i32 0, i32 7
  br label %do.body49

do.body49:                                        ; preds = %land.rhs.do.body49_crit_edge, %if.end48
  %k.0 = phi i32 [ 16, %if.end48 ], [ %dec, %land.rhs.do.body49_crit_edge ]
  %l.0 = phi i32 [ 0, %if.end48 ], [ %l.1, %land.rhs.do.body49_crit_edge ]
  %dec = add nsw i32 %k.0, -1
  call void @msleep(i32 noundef 6) #7
  %call50 = call fastcc i32 @sw_read_packet(ptr noundef %gameport, ptr noundef nonnull %call7.i, i32 noundef 512, i32 noundef 0)
  call void @__sanitizer_cov_trace_cmp4(i32 %call50, i32 %l.0)
  %cmp54 = icmp sgt i32 %call50, %l.0
  br i1 %cmp54, label %if.then56, label %do.body49.do.cond102_crit_edge

do.body49.do.cond102_crit_edge:                   ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond102

if.then56:                                        ; preds = %do.body49
  %21 = ptrtoint ptr %number to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %number, align 8
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %gameport, ptr %call7.i.i, align 8
  %23 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call50, ptr %length, align 4
  %24 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv58, ptr %bits, align 4
  %mul = mul i32 %call50, %conv58
  %25 = zext i32 %mul to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mul, label %if.then56.do.cond102_crit_edge [
    i32 60, label %sw.bb
    i32 45, label %if.then56.sw.bb64_crit_edge
    i32 43, label %if.then56.sw.bb68_crit_edge
    i32 30, label %if.then56.sw.bb73_crit_edge
    i32 15, label %if.then56.sw.bb76_crit_edge
    i32 33, label %if.then56.sw.bb78_crit_edge
    i32 31, label %if.then56.sw.bb78_crit_edge449
    i32 48, label %sw.bb80
    i32 66, label %sw.bb90
    i32 198, label %if.then56.sw.bb92_crit_edge
    i32 64, label %if.then56.sw.bb94_crit_edge
  ]

if.then56.sw.bb94_crit_edge:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb94

if.then56.sw.bb92_crit_edge:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb92

if.then56.sw.bb78_crit_edge449:                   ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb78

if.then56.sw.bb78_crit_edge:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb78

if.then56.sw.bb76_crit_edge:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb76

if.then56.sw.bb73_crit_edge:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb73

if.then56.sw.bb68_crit_edge:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb68

if.then56.sw.bb64_crit_edge:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb64

if.then56.do.cond102_crit_edge:                   ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond102

sw.bb:                                            ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %number to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %number, align 8
  br label %sw.bb64

sw.bb64:                                          ; preds = %sw.bb, %if.then56.sw.bb64_crit_edge
  br i1 %cmp65, label %sw.bb64.sw.bb68_crit_edge, label %if.end70

sw.bb64.sw.bb68_crit_edge:                        ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb68

sw.bb68:                                          ; preds = %sw.bb64.sw.bb68_crit_edge, %if.then56.sw.bb68_crit_edge
  %27 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 4, ptr %type, align 8
  br label %do.cond102

if.end70:                                         ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %number, align 8
  %inc72 = add i32 %29, 1
  store i32 %inc72, ptr %number, align 8
  br label %sw.bb73

sw.bb73:                                          ; preds = %if.end70, %if.then56.sw.bb73_crit_edge
  %30 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %number, align 8
  %inc75 = add i32 %31, 1
  store i32 %inc75, ptr %number, align 8
  br label %sw.bb76

sw.bb76:                                          ; preds = %sw.bb73, %if.then56.sw.bb76_crit_edge
  %32 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %type, align 8
  br label %do.cond102

sw.bb78:                                          ; preds = %if.then56.sw.bb78_crit_edge, %if.then56.sw.bb78_crit_edge449
  %33 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 5, ptr %type, align 8
  br label %do.cond102

sw.bb80:                                          ; preds = %if.then56
  br i1 %cmp81, label %if.then83, label %if.else

if.then83:                                        ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 3, ptr %type, align 8
  %35 = ptrtoint ptr %arrayidx.i29.4.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.i29.4.i, align 4
  %37 = and i8 %36, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool86.not = icmp eq i8 %37, 0
  %cond = select i1 %tobool86.not, ptr @.str.4, ptr @.str.3
  %call87 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %comment, ptr noundef nonnull @.str.2, ptr noundef nonnull %cond)
  br label %do.cond102

if.else:                                          ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 2, ptr %type, align 8
  br label %do.cond102

sw.bb90:                                          ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 3, ptr %bits, align 4
  br label %sw.bb92

sw.bb92:                                          ; preds = %sw.bb90, %if.then56.sw.bb92_crit_edge
  %40 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 22, ptr %length, align 4
  br label %sw.bb94

sw.bb94:                                          ; preds = %sw.bb92, %if.then56.sw.bb94_crit_edge
  %41 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %type, align 8
  br i1 %cmp96, label %if.then98, label %sw.bb94.do.cond102_crit_edge

sw.bb94.do.cond102_crit_edge:                     ; preds = %sw.bb94
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond102

if.then98:                                        ; preds = %sw.bb94
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pnp.i) #7
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %rev.i) #7
  %42 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i.i, align 8
  %44 = and i8 %43, 1
  %45 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.i.1.i, align 1
  %47 = shl i8 %46, 1
  %48 = and i8 %47, 2
  %or.i.1114.i = or i8 %48, %44
  %49 = ptrtoint ptr %arrayidx.i.2.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.i.2.i, align 2
  %51 = shl i8 %50, 2
  %52 = and i8 %51, 4
  %or.i.2115.i = or i8 %or.i.1114.i, %52
  %53 = ptrtoint ptr %arrayidx.i.3.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.i.3.i, align 1
  %55 = shl i8 %54, 3
  %56 = and i8 %55, 8
  %or.i.3116.i = or i8 %or.i.2115.i, %56
  %57 = ptrtoint ptr %arrayidx.i.4.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx.i.4.i, align 4
  %59 = shl i8 %58, 4
  %60 = and i8 %59, 16
  %or.i.4117.i = or i8 %or.i.3116.i, %60
  %61 = ptrtoint ptr %arrayidx.i.5.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.i.5.i, align 1
  %63 = shl i8 %62, 5
  %64 = and i8 %63, 32
  %or.i.5118.i = or i8 %or.i.4117.i, %64
  %65 = ptrtoint ptr %arrayidx.i.6.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx.i.6.i, align 2
  %67 = shl i8 %66, 6
  %68 = and i8 %67, 64
  %or.i.6119.i = or i8 %or.i.5118.i, %68
  %69 = ptrtoint ptr %arrayidx.i.7.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx.i.7.i, align 1
  %71 = shl i8 %70, 7
  %or.i.7120.i = or i8 %or.i.6119.i, %71
  %72 = ptrtoint ptr %pnp.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %or.i.7120.i, ptr %pnp.i, align 1
  %73 = ptrtoint ptr %arrayidx.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx.i.i.1, align 8
  %75 = and i8 %74, 1
  %76 = ptrtoint ptr %arrayidx.i.1.i.1 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx.i.1.i.1, align 1
  %78 = shl i8 %77, 1
  %79 = and i8 %78, 2
  %or.i.1114.i.1 = or i8 %79, %75
  %80 = ptrtoint ptr %arrayidx.i.2.i.1 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx.i.2.i.1, align 2
  %82 = shl i8 %81, 2
  %83 = and i8 %82, 4
  %or.i.2115.i.1 = or i8 %or.i.1114.i.1, %83
  %84 = ptrtoint ptr %arrayidx.i.3.i.1 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx.i.3.i.1, align 1
  %86 = shl i8 %85, 3
  %87 = and i8 %86, 8
  %or.i.3116.i.1 = or i8 %or.i.2115.i.1, %87
  %88 = ptrtoint ptr %arrayidx.i.4.i.1 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx.i.4.i.1, align 4
  %90 = shl i8 %89, 4
  %91 = and i8 %90, 16
  %or.i.4117.i.1 = or i8 %or.i.3116.i.1, %91
  %92 = ptrtoint ptr %arrayidx.i.5.i.1 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx.i.5.i.1, align 1
  %94 = shl i8 %93, 5
  %95 = and i8 %94, 32
  %or.i.5118.i.1 = or i8 %or.i.4117.i.1, %95
  %96 = ptrtoint ptr %arrayidx.i.6.i.1 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx.i.6.i.1, align 2
  %98 = shl i8 %97, 6
  %99 = and i8 %98, 64
  %or.i.6119.i.1 = or i8 %or.i.5118.i.1, %99
  %100 = ptrtoint ptr %arrayidx.i.7.i.1 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx.i.7.i.1, align 1
  %102 = shl i8 %101, 7
  %or.i.7120.i.1 = or i8 %or.i.6119.i.1, %102
  %103 = ptrtoint ptr %arrayidx.i379.1 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %or.i.7120.i.1, ptr %arrayidx.i379.1, align 1
  %104 = ptrtoint ptr %arrayidx.i.i.2 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx.i.i.2, align 8
  %106 = and i8 %105, 1
  %107 = ptrtoint ptr %arrayidx.i.1.i.2 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx.i.1.i.2, align 1
  %109 = shl i8 %108, 1
  %110 = and i8 %109, 2
  %or.i.1114.i.2 = or i8 %110, %106
  %111 = ptrtoint ptr %arrayidx.i.2.i.2 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx.i.2.i.2, align 2
  %113 = shl i8 %112, 2
  %114 = and i8 %113, 4
  %or.i.2115.i.2 = or i8 %or.i.1114.i.2, %114
  %115 = ptrtoint ptr %arrayidx.i.3.i.2 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx.i.3.i.2, align 1
  %117 = shl i8 %116, 3
  %118 = and i8 %117, 8
  %or.i.3116.i.2 = or i8 %or.i.2115.i.2, %118
  %119 = ptrtoint ptr %arrayidx.i.4.i.2 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx.i.4.i.2, align 4
  %121 = shl i8 %120, 4
  %122 = and i8 %121, 16
  %or.i.4117.i.2 = or i8 %or.i.3116.i.2, %122
  %123 = ptrtoint ptr %arrayidx.i.5.i.2 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx.i.5.i.2, align 1
  %125 = shl i8 %124, 5
  %126 = and i8 %125, 32
  %or.i.5118.i.2 = or i8 %or.i.4117.i.2, %126
  %127 = ptrtoint ptr %arrayidx.i.6.i.2 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx.i.6.i.2, align 2
  %129 = shl i8 %128, 6
  %130 = and i8 %129, 64
  %or.i.6119.i.2 = or i8 %or.i.5118.i.2, %130
  %131 = ptrtoint ptr %arrayidx.i.7.i.2 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx.i.7.i.2, align 1
  %133 = shl i8 %132, 7
  %or.i.7120.i.2 = or i8 %or.i.6119.i.2, %133
  %134 = ptrtoint ptr %arrayidx.i379.2 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %or.i.7120.i.2, ptr %arrayidx.i379.2, align 1
  %135 = ptrtoint ptr %arrayidx.i.i.3 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx.i.i.3, align 8
  %137 = and i8 %136, 1
  %138 = ptrtoint ptr %arrayidx.i.1.i.3 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx.i.1.i.3, align 1
  %140 = shl i8 %139, 1
  %141 = and i8 %140, 2
  %or.i.1114.i.3 = or i8 %141, %137
  %142 = ptrtoint ptr %arrayidx.i.2.i.3 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx.i.2.i.3, align 2
  %144 = shl i8 %143, 2
  %145 = and i8 %144, 4
  %or.i.2115.i.3 = or i8 %or.i.1114.i.3, %145
  %146 = ptrtoint ptr %arrayidx.i.3.i.3 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx.i.3.i.3, align 1
  %148 = shl i8 %147, 3
  %149 = and i8 %148, 8
  %or.i.3116.i.3 = or i8 %or.i.2115.i.3, %149
  %150 = ptrtoint ptr %arrayidx.i.4.i.3 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %arrayidx.i.4.i.3, align 4
  %152 = shl i8 %151, 4
  %153 = and i8 %152, 16
  %or.i.4117.i.3 = or i8 %or.i.3116.i.3, %153
  %154 = ptrtoint ptr %arrayidx.i.5.i.3 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %arrayidx.i.5.i.3, align 1
  %156 = shl i8 %155, 5
  %157 = and i8 %156, 32
  %or.i.5118.i.3 = or i8 %or.i.4117.i.3, %157
  %158 = ptrtoint ptr %arrayidx.i.6.i.3 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %arrayidx.i.6.i.3, align 2
  %160 = shl i8 %159, 6
  %161 = and i8 %160, 64
  %or.i.6119.i.3 = or i8 %or.i.5118.i.3, %161
  %162 = ptrtoint ptr %arrayidx.i.7.i.3 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %arrayidx.i.7.i.3, align 1
  %164 = shl i8 %163, 7
  %or.i.7120.i.3 = or i8 %or.i.6119.i.3, %164
  %165 = ptrtoint ptr %arrayidx.i379.3 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %or.i.7120.i.3, ptr %arrayidx.i379.3, align 1
  %166 = ptrtoint ptr %arrayidx.i.i.4 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %arrayidx.i.i.4, align 8
  %168 = and i8 %167, 1
  %169 = ptrtoint ptr %arrayidx.i.1.i.4 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %arrayidx.i.1.i.4, align 1
  %171 = shl i8 %170, 1
  %172 = and i8 %171, 2
  %or.i.1114.i.4 = or i8 %172, %168
  %173 = ptrtoint ptr %arrayidx.i.2.i.4 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %arrayidx.i.2.i.4, align 2
  %175 = shl i8 %174, 2
  %176 = and i8 %175, 4
  %or.i.2115.i.4 = or i8 %or.i.1114.i.4, %176
  %177 = ptrtoint ptr %arrayidx.i.3.i.4 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %arrayidx.i.3.i.4, align 1
  %179 = shl i8 %178, 3
  %180 = and i8 %179, 8
  %or.i.3116.i.4 = or i8 %or.i.2115.i.4, %180
  %181 = ptrtoint ptr %arrayidx.i.4.i.4 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %arrayidx.i.4.i.4, align 4
  %183 = shl i8 %182, 4
  %184 = and i8 %183, 16
  %or.i.4117.i.4 = or i8 %or.i.3116.i.4, %184
  %185 = ptrtoint ptr %arrayidx.i.5.i.4 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %arrayidx.i.5.i.4, align 1
  %187 = shl i8 %186, 5
  %188 = and i8 %187, 32
  %or.i.5118.i.4 = or i8 %or.i.4117.i.4, %188
  %189 = ptrtoint ptr %arrayidx.i.6.i.4 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %arrayidx.i.6.i.4, align 2
  %191 = shl i8 %190, 6
  %192 = and i8 %191, 64
  %or.i.6119.i.4 = or i8 %or.i.5118.i.4, %192
  %193 = ptrtoint ptr %arrayidx.i.7.i.4 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %arrayidx.i.7.i.4, align 1
  %195 = shl i8 %194, 7
  %or.i.7120.i.4 = or i8 %or.i.6119.i.4, %195
  %196 = ptrtoint ptr %arrayidx.i379.4 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %or.i.7120.i.4, ptr %arrayidx.i379.4, align 1
  %197 = ptrtoint ptr %arrayidx.i.i.5 to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %arrayidx.i.i.5, align 8
  %199 = and i8 %198, 1
  %200 = ptrtoint ptr %arrayidx.i.1.i.5 to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %arrayidx.i.1.i.5, align 1
  %202 = shl i8 %201, 1
  %203 = and i8 %202, 2
  %or.i.1114.i.5 = or i8 %203, %199
  %204 = ptrtoint ptr %arrayidx.i.2.i.5 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %arrayidx.i.2.i.5, align 2
  %206 = shl i8 %205, 2
  %207 = and i8 %206, 4
  %or.i.2115.i.5 = or i8 %or.i.1114.i.5, %207
  %208 = ptrtoint ptr %arrayidx.i.3.i.5 to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %arrayidx.i.3.i.5, align 1
  %210 = shl i8 %209, 3
  %211 = and i8 %210, 8
  %or.i.3116.i.5 = or i8 %or.i.2115.i.5, %211
  %212 = ptrtoint ptr %arrayidx.i.4.i.5 to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %arrayidx.i.4.i.5, align 4
  %214 = shl i8 %213, 4
  %215 = and i8 %214, 16
  %or.i.4117.i.5 = or i8 %or.i.3116.i.5, %215
  %216 = ptrtoint ptr %arrayidx.i.5.i.5 to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %arrayidx.i.5.i.5, align 1
  %218 = shl i8 %217, 5
  %219 = and i8 %218, 32
  %or.i.5118.i.5 = or i8 %or.i.4117.i.5, %219
  %220 = ptrtoint ptr %arrayidx.i.6.i.5 to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %arrayidx.i.6.i.5, align 2
  %222 = shl i8 %221, 6
  %223 = and i8 %222, 64
  %or.i.6119.i.5 = or i8 %or.i.5118.i.5, %223
  %224 = ptrtoint ptr %arrayidx.i.7.i.5 to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %arrayidx.i.7.i.5, align 1
  %226 = shl i8 %225, 7
  %or.i.7120.i.5 = or i8 %or.i.6119.i.5, %226
  %227 = ptrtoint ptr %arrayidx.i379.5 to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 %or.i.7120.i.5, ptr %arrayidx.i379.5, align 1
  %228 = ptrtoint ptr %arrayidx.i.i.6 to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %arrayidx.i.i.6, align 8
  %230 = and i8 %229, 1
  %231 = ptrtoint ptr %arrayidx.i.1.i.6 to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %arrayidx.i.1.i.6, align 1
  %233 = shl i8 %232, 1
  %234 = and i8 %233, 2
  %or.i.1114.i.6 = or i8 %234, %230
  %235 = ptrtoint ptr %arrayidx.i.2.i.6 to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %arrayidx.i.2.i.6, align 2
  %237 = shl i8 %236, 2
  %238 = and i8 %237, 4
  %or.i.2115.i.6 = or i8 %or.i.1114.i.6, %238
  %239 = ptrtoint ptr %arrayidx.i.3.i.6 to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %arrayidx.i.3.i.6, align 1
  %241 = shl i8 %240, 3
  %242 = and i8 %241, 8
  %or.i.3116.i.6 = or i8 %or.i.2115.i.6, %242
  %243 = ptrtoint ptr %arrayidx.i.4.i.6 to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %arrayidx.i.4.i.6, align 4
  %245 = shl i8 %244, 4
  %246 = and i8 %245, 16
  %or.i.4117.i.6 = or i8 %or.i.3116.i.6, %246
  %247 = ptrtoint ptr %arrayidx.i.5.i.6 to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %arrayidx.i.5.i.6, align 1
  %249 = shl i8 %248, 5
  %250 = and i8 %249, 32
  %or.i.5118.i.6 = or i8 %or.i.4117.i.6, %250
  %251 = ptrtoint ptr %arrayidx.i.6.i.6 to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %arrayidx.i.6.i.6, align 2
  %253 = shl i8 %252, 6
  %254 = and i8 %253, 64
  %or.i.6119.i.6 = or i8 %or.i.5118.i.6, %254
  %255 = ptrtoint ptr %arrayidx.i.7.i.6 to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %arrayidx.i.7.i.6, align 1
  %257 = shl i8 %256, 7
  %or.i.7120.i.6 = or i8 %or.i.6119.i.6, %257
  %258 = ptrtoint ptr %arrayidx.i379.6 to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 %or.i.7120.i.6, ptr %arrayidx.i379.6, align 1
  %259 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %arrayidx.i7.i, align 8
  %261 = and i8 %260, 1
  %262 = ptrtoint ptr %arrayidx.i7.1.i to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %arrayidx.i7.1.i, align 1
  %264 = shl i8 %263, 1
  %265 = and i8 %264, 2
  %or.i15.1121.i = or i8 %265, %261
  %266 = ptrtoint ptr %arrayidx.i7.2.i to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %arrayidx.i7.2.i, align 2
  %268 = shl i8 %267, 2
  %269 = and i8 %268, 4
  %or.i15.2122.i = or i8 %or.i15.1121.i, %269
  %270 = ptrtoint ptr %arrayidx.i7.3.i to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %arrayidx.i7.3.i, align 1
  %272 = shl i8 %271, 3
  %273 = and i8 %272, 8
  %or.i15.3123.i = or i8 %or.i15.2122.i, %273
  %274 = ptrtoint ptr %arrayidx.i7.4.i to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %arrayidx.i7.4.i, align 4
  %276 = shl i8 %275, 4
  %277 = and i8 %276, 16
  %or.i15.4124.i = or i8 %or.i15.3123.i, %277
  %278 = ptrtoint ptr %arrayidx.i7.5.i to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %arrayidx.i7.5.i, align 1
  %280 = shl i8 %279, 5
  %281 = and i8 %280, 32
  %or.i15.5125.i = or i8 %or.i15.4124.i, %281
  %282 = ptrtoint ptr %arrayidx.i7.6.i to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %arrayidx.i7.6.i, align 2
  %284 = shl i8 %283, 6
  %285 = and i8 %284, 64
  %or.i15.6126.i = or i8 %or.i15.5125.i, %285
  %286 = ptrtoint ptr %arrayidx.i7.7.i to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %arrayidx.i7.7.i, align 1
  %288 = shl i8 %287, 7
  %or.i15.7127.i = or i8 %or.i15.6126.i, %288
  %289 = ptrtoint ptr %rev.i to i32
  call void @__asan_store1_noabort(i32 %289)
  store i8 %or.i15.7127.i, ptr %rev.i, align 8
  %290 = ptrtoint ptr %arrayidx.i7.i.1 to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %arrayidx.i7.i.1, align 8
  %292 = and i8 %291, 1
  %293 = ptrtoint ptr %arrayidx.i7.1.i.1 to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %arrayidx.i7.1.i.1, align 1
  %295 = shl i8 %294, 1
  %296 = and i8 %295, 2
  %or.i15.1121.i.1 = or i8 %296, %292
  %297 = ptrtoint ptr %arrayidx.i7.2.i.1 to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %arrayidx.i7.2.i.1, align 2
  %299 = shl i8 %298, 2
  %300 = and i8 %299, 4
  %or.i15.2122.i.1 = or i8 %or.i15.1121.i.1, %300
  %301 = ptrtoint ptr %arrayidx.i7.3.i.1 to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %arrayidx.i7.3.i.1, align 1
  %303 = shl i8 %302, 3
  %304 = and i8 %303, 8
  %or.i15.3123.i.1 = or i8 %or.i15.2122.i.1, %304
  %305 = ptrtoint ptr %arrayidx.i7.4.i.1 to i32
  call void @__asan_load1_noabort(i32 %305)
  %306 = load i8, ptr %arrayidx.i7.4.i.1, align 4
  %307 = shl i8 %306, 4
  %308 = and i8 %307, 16
  %or.i15.4124.i.1 = or i8 %or.i15.3123.i.1, %308
  %309 = ptrtoint ptr %arrayidx.i7.5.i.1 to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %arrayidx.i7.5.i.1, align 1
  %311 = shl i8 %310, 5
  %312 = and i8 %311, 32
  %or.i15.5125.i.1 = or i8 %or.i15.4124.i.1, %312
  %313 = ptrtoint ptr %arrayidx.i7.6.i.1 to i32
  call void @__asan_load1_noabort(i32 %313)
  %314 = load i8, ptr %arrayidx.i7.6.i.1, align 2
  %315 = shl i8 %314, 6
  %316 = and i8 %315, 64
  %or.i15.6126.i.1 = or i8 %or.i15.5125.i.1, %316
  %317 = ptrtoint ptr %arrayidx.i7.7.i.1 to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %arrayidx.i7.7.i.1, align 1
  %319 = shl i8 %318, 7
  %or.i15.7127.i.1 = or i8 %or.i15.6126.i.1, %319
  %320 = ptrtoint ptr %arrayidx9.i.1 to i32
  call void @__asan_store1_noabort(i32 %320)
  store i8 %or.i15.7127.i.1, ptr %arrayidx9.i.1, align 1
  %321 = ptrtoint ptr %arrayidx.i7.i.2 to i32
  call void @__asan_load1_noabort(i32 %321)
  %322 = load i8, ptr %arrayidx.i7.i.2, align 8
  %323 = and i8 %322, 1
  %324 = ptrtoint ptr %arrayidx.i7.1.i.2 to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %arrayidx.i7.1.i.2, align 1
  %326 = shl i8 %325, 1
  %327 = and i8 %326, 2
  %or.i15.1121.i.2 = or i8 %327, %323
  %328 = ptrtoint ptr %arrayidx.i7.2.i.2 to i32
  call void @__asan_load1_noabort(i32 %328)
  %329 = load i8, ptr %arrayidx.i7.2.i.2, align 2
  %330 = shl i8 %329, 2
  %331 = and i8 %330, 4
  %or.i15.2122.i.2 = or i8 %or.i15.1121.i.2, %331
  %332 = ptrtoint ptr %arrayidx.i7.3.i.2 to i32
  call void @__asan_load1_noabort(i32 %332)
  %333 = load i8, ptr %arrayidx.i7.3.i.2, align 1
  %334 = shl i8 %333, 3
  %335 = and i8 %334, 8
  %or.i15.3123.i.2 = or i8 %or.i15.2122.i.2, %335
  %336 = ptrtoint ptr %arrayidx.i7.4.i.2 to i32
  call void @__asan_load1_noabort(i32 %336)
  %337 = load i8, ptr %arrayidx.i7.4.i.2, align 4
  %338 = shl i8 %337, 4
  %339 = and i8 %338, 16
  %or.i15.4124.i.2 = or i8 %or.i15.3123.i.2, %339
  %340 = ptrtoint ptr %arrayidx.i7.5.i.2 to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %arrayidx.i7.5.i.2, align 1
  %342 = shl i8 %341, 5
  %343 = and i8 %342, 32
  %or.i15.5125.i.2 = or i8 %or.i15.4124.i.2, %343
  %344 = ptrtoint ptr %arrayidx.i7.6.i.2 to i32
  call void @__asan_load1_noabort(i32 %344)
  %345 = load i8, ptr %arrayidx.i7.6.i.2, align 2
  %346 = shl i8 %345, 6
  %347 = and i8 %346, 64
  %or.i15.6126.i.2 = or i8 %or.i15.5125.i.2, %347
  %348 = ptrtoint ptr %arrayidx.i7.7.i.2 to i32
  call void @__asan_load1_noabort(i32 %348)
  %349 = load i8, ptr %arrayidx.i7.7.i.2, align 1
  %350 = shl i8 %349, 7
  %or.i15.7127.i.2 = or i8 %or.i15.6126.i.2, %350
  %351 = ptrtoint ptr %arrayidx9.i.2 to i32
  call void @__asan_store1_noabort(i32 %351)
  store i8 %or.i15.7127.i.2, ptr %arrayidx9.i.2, align 2
  %352 = ptrtoint ptr %arrayidx.i7.i.3 to i32
  call void @__asan_load1_noabort(i32 %352)
  %353 = load i8, ptr %arrayidx.i7.i.3, align 8
  %354 = and i8 %353, 1
  %355 = ptrtoint ptr %arrayidx.i7.1.i.3 to i32
  call void @__asan_load1_noabort(i32 %355)
  %356 = load i8, ptr %arrayidx.i7.1.i.3, align 1
  %357 = shl i8 %356, 1
  %358 = and i8 %357, 2
  %or.i15.1121.i.3 = or i8 %358, %354
  %359 = ptrtoint ptr %arrayidx.i7.2.i.3 to i32
  call void @__asan_load1_noabort(i32 %359)
  %360 = load i8, ptr %arrayidx.i7.2.i.3, align 2
  %361 = shl i8 %360, 2
  %362 = and i8 %361, 4
  %or.i15.2122.i.3 = or i8 %or.i15.1121.i.3, %362
  %363 = ptrtoint ptr %arrayidx.i7.3.i.3 to i32
  call void @__asan_load1_noabort(i32 %363)
  %364 = load i8, ptr %arrayidx.i7.3.i.3, align 1
  %365 = shl i8 %364, 3
  %366 = and i8 %365, 8
  %or.i15.3123.i.3 = or i8 %or.i15.2122.i.3, %366
  %367 = ptrtoint ptr %arrayidx.i7.4.i.3 to i32
  call void @__asan_load1_noabort(i32 %367)
  %368 = load i8, ptr %arrayidx.i7.4.i.3, align 4
  %369 = shl i8 %368, 4
  %370 = and i8 %369, 16
  %or.i15.4124.i.3 = or i8 %or.i15.3123.i.3, %370
  %371 = ptrtoint ptr %arrayidx.i7.5.i.3 to i32
  call void @__asan_load1_noabort(i32 %371)
  %372 = load i8, ptr %arrayidx.i7.5.i.3, align 1
  %373 = shl i8 %372, 5
  %374 = and i8 %373, 32
  %or.i15.5125.i.3 = or i8 %or.i15.4124.i.3, %374
  %375 = ptrtoint ptr %arrayidx.i7.6.i.3 to i32
  call void @__asan_load1_noabort(i32 %375)
  %376 = load i8, ptr %arrayidx.i7.6.i.3, align 2
  %377 = shl i8 %376, 6
  %378 = and i8 %377, 64
  %or.i15.6126.i.3 = or i8 %or.i15.5125.i.3, %378
  %379 = ptrtoint ptr %arrayidx.i7.7.i.3 to i32
  call void @__asan_load1_noabort(i32 %379)
  %380 = load i8, ptr %arrayidx.i7.7.i.3, align 1
  %381 = shl i8 %380, 7
  %or.i15.7127.i.3 = or i8 %or.i15.6126.i.3, %381
  %382 = ptrtoint ptr %arrayidx9.i.3 to i32
  call void @__asan_store1_noabort(i32 %382)
  store i8 %or.i15.7127.i.3, ptr %arrayidx9.i.3, align 1
  %383 = ptrtoint ptr %arrayidx.i7.i.4 to i32
  call void @__asan_load1_noabort(i32 %383)
  %384 = load i8, ptr %arrayidx.i7.i.4, align 8
  %385 = and i8 %384, 1
  %386 = ptrtoint ptr %arrayidx.i7.1.i.4 to i32
  call void @__asan_load1_noabort(i32 %386)
  %387 = load i8, ptr %arrayidx.i7.1.i.4, align 1
  %388 = shl i8 %387, 1
  %389 = and i8 %388, 2
  %or.i15.1121.i.4 = or i8 %389, %385
  %390 = ptrtoint ptr %arrayidx.i7.2.i.4 to i32
  call void @__asan_load1_noabort(i32 %390)
  %391 = load i8, ptr %arrayidx.i7.2.i.4, align 2
  %392 = shl i8 %391, 2
  %393 = and i8 %392, 4
  %or.i15.2122.i.4 = or i8 %or.i15.1121.i.4, %393
  %394 = ptrtoint ptr %arrayidx.i7.3.i.4 to i32
  call void @__asan_load1_noabort(i32 %394)
  %395 = load i8, ptr %arrayidx.i7.3.i.4, align 1
  %396 = shl i8 %395, 3
  %397 = and i8 %396, 8
  %or.i15.3123.i.4 = or i8 %or.i15.2122.i.4, %397
  %398 = ptrtoint ptr %arrayidx.i7.4.i.4 to i32
  call void @__asan_load1_noabort(i32 %398)
  %399 = load i8, ptr %arrayidx.i7.4.i.4, align 4
  %400 = shl i8 %399, 4
  %401 = and i8 %400, 16
  %or.i15.4124.i.4 = or i8 %or.i15.3123.i.4, %401
  %402 = ptrtoint ptr %arrayidx.i7.5.i.4 to i32
  call void @__asan_load1_noabort(i32 %402)
  %403 = load i8, ptr %arrayidx.i7.5.i.4, align 1
  %404 = shl i8 %403, 5
  %405 = and i8 %404, 32
  %or.i15.5125.i.4 = or i8 %or.i15.4124.i.4, %405
  %406 = ptrtoint ptr %arrayidx.i7.6.i.4 to i32
  call void @__asan_load1_noabort(i32 %406)
  %407 = load i8, ptr %arrayidx.i7.6.i.4, align 2
  %408 = shl i8 %407, 6
  %409 = and i8 %408, 64
  %or.i15.6126.i.4 = or i8 %or.i15.5125.i.4, %409
  %410 = ptrtoint ptr %arrayidx.i7.7.i.4 to i32
  call void @__asan_load1_noabort(i32 %410)
  %411 = load i8, ptr %arrayidx.i7.7.i.4, align 1
  %412 = shl i8 %411, 7
  %or.i15.7127.i.4 = or i8 %or.i15.6126.i.4, %412
  %413 = ptrtoint ptr %arrayidx9.i.4 to i32
  call void @__asan_store1_noabort(i32 %413)
  store i8 %or.i15.7127.i.4, ptr %arrayidx9.i.4, align 4
  %414 = ptrtoint ptr %arrayidx.i7.i.5 to i32
  call void @__asan_load1_noabort(i32 %414)
  %415 = load i8, ptr %arrayidx.i7.i.5, align 8
  %416 = and i8 %415, 1
  %417 = ptrtoint ptr %arrayidx.i7.1.i.5 to i32
  call void @__asan_load1_noabort(i32 %417)
  %418 = load i8, ptr %arrayidx.i7.1.i.5, align 1
  %419 = shl i8 %418, 1
  %420 = and i8 %419, 2
  %or.i15.1121.i.5 = or i8 %420, %416
  %421 = ptrtoint ptr %arrayidx.i7.2.i.5 to i32
  call void @__asan_load1_noabort(i32 %421)
  %422 = load i8, ptr %arrayidx.i7.2.i.5, align 2
  %423 = shl i8 %422, 2
  %424 = and i8 %423, 4
  %or.i15.2122.i.5 = or i8 %or.i15.1121.i.5, %424
  %425 = ptrtoint ptr %arrayidx.i7.3.i.5 to i32
  call void @__asan_load1_noabort(i32 %425)
  %426 = load i8, ptr %arrayidx.i7.3.i.5, align 1
  %427 = shl i8 %426, 3
  %428 = and i8 %427, 8
  %or.i15.3123.i.5 = or i8 %or.i15.2122.i.5, %428
  %429 = ptrtoint ptr %arrayidx.i7.4.i.5 to i32
  call void @__asan_load1_noabort(i32 %429)
  %430 = load i8, ptr %arrayidx.i7.4.i.5, align 4
  %431 = shl i8 %430, 4
  %432 = and i8 %431, 16
  %or.i15.4124.i.5 = or i8 %or.i15.3123.i.5, %432
  %433 = ptrtoint ptr %arrayidx.i7.5.i.5 to i32
  call void @__asan_load1_noabort(i32 %433)
  %434 = load i8, ptr %arrayidx.i7.5.i.5, align 1
  %435 = shl i8 %434, 5
  %436 = and i8 %435, 32
  %or.i15.5125.i.5 = or i8 %or.i15.4124.i.5, %436
  %437 = ptrtoint ptr %arrayidx.i7.6.i.5 to i32
  call void @__asan_load1_noabort(i32 %437)
  %438 = load i8, ptr %arrayidx.i7.6.i.5, align 2
  %439 = shl i8 %438, 6
  %440 = and i8 %439, 64
  %or.i15.6126.i.5 = or i8 %or.i15.5125.i.5, %440
  %441 = ptrtoint ptr %arrayidx.i7.7.i.5 to i32
  call void @__asan_load1_noabort(i32 %441)
  %442 = load i8, ptr %arrayidx.i7.7.i.5, align 1
  %443 = shl i8 %442, 7
  %or.i15.7127.i.5 = or i8 %or.i15.6126.i.5, %443
  %444 = ptrtoint ptr %arrayidx9.i.5 to i32
  call void @__asan_store1_noabort(i32 %444)
  store i8 %or.i15.7127.i.5, ptr %arrayidx9.i.5, align 1
  %445 = ptrtoint ptr %arrayidx.i7.i.6 to i32
  call void @__asan_load1_noabort(i32 %445)
  %446 = load i8, ptr %arrayidx.i7.i.6, align 8
  %447 = and i8 %446, 1
  %448 = ptrtoint ptr %arrayidx.i7.1.i.6 to i32
  call void @__asan_load1_noabort(i32 %448)
  %449 = load i8, ptr %arrayidx.i7.1.i.6, align 1
  %450 = shl i8 %449, 1
  %451 = and i8 %450, 2
  %or.i15.1121.i.6 = or i8 %451, %447
  %452 = ptrtoint ptr %arrayidx.i7.2.i.6 to i32
  call void @__asan_load1_noabort(i32 %452)
  %453 = load i8, ptr %arrayidx.i7.2.i.6, align 2
  %454 = shl i8 %453, 2
  %455 = and i8 %454, 4
  %or.i15.2122.i.6 = or i8 %or.i15.1121.i.6, %455
  %456 = ptrtoint ptr %arrayidx.i7.3.i.6 to i32
  call void @__asan_load1_noabort(i32 %456)
  %457 = load i8, ptr %arrayidx.i7.3.i.6, align 1
  %458 = shl i8 %457, 3
  %459 = and i8 %458, 8
  %or.i15.3123.i.6 = or i8 %or.i15.2122.i.6, %459
  %460 = ptrtoint ptr %arrayidx.i7.4.i.6 to i32
  call void @__asan_load1_noabort(i32 %460)
  %461 = load i8, ptr %arrayidx.i7.4.i.6, align 4
  %462 = shl i8 %461, 4
  %463 = and i8 %462, 16
  %or.i15.4124.i.6 = or i8 %or.i15.3123.i.6, %463
  %464 = ptrtoint ptr %arrayidx.i7.5.i.6 to i32
  call void @__asan_load1_noabort(i32 %464)
  %465 = load i8, ptr %arrayidx.i7.5.i.6, align 1
  %466 = shl i8 %465, 5
  %467 = and i8 %466, 32
  %or.i15.5125.i.6 = or i8 %or.i15.4124.i.6, %467
  %468 = ptrtoint ptr %arrayidx.i7.6.i.6 to i32
  call void @__asan_load1_noabort(i32 %468)
  %469 = load i8, ptr %arrayidx.i7.6.i.6, align 2
  %470 = shl i8 %469, 6
  %471 = and i8 %470, 64
  %or.i15.6126.i.6 = or i8 %or.i15.5125.i.6, %471
  %472 = ptrtoint ptr %arrayidx.i7.7.i.6 to i32
  call void @__asan_load1_noabort(i32 %472)
  %473 = load i8, ptr %arrayidx.i7.7.i.6, align 1
  %474 = shl i8 %473, 7
  %or.i15.7127.i.6 = or i8 %or.i15.6126.i.6, %474
  %475 = ptrtoint ptr %arrayidx9.i.6 to i32
  call void @__asan_store1_noabort(i32 %475)
  store i8 %or.i15.7127.i.6, ptr %arrayidx9.i.6, align 2
  %476 = ptrtoint ptr %arrayidx.i7.i.7 to i32
  call void @__asan_load1_noabort(i32 %476)
  %477 = load i8, ptr %arrayidx.i7.i.7, align 8
  %478 = and i8 %477, 1
  %479 = ptrtoint ptr %arrayidx.i7.1.i.7 to i32
  call void @__asan_load1_noabort(i32 %479)
  %480 = load i8, ptr %arrayidx.i7.1.i.7, align 1
  %481 = shl i8 %480, 1
  %482 = and i8 %481, 2
  %or.i15.1121.i.7 = or i8 %482, %478
  %483 = ptrtoint ptr %arrayidx.i7.2.i.7 to i32
  call void @__asan_load1_noabort(i32 %483)
  %484 = load i8, ptr %arrayidx.i7.2.i.7, align 2
  %485 = shl i8 %484, 2
  %486 = and i8 %485, 4
  %or.i15.2122.i.7 = or i8 %or.i15.1121.i.7, %486
  %487 = ptrtoint ptr %arrayidx.i7.3.i.7 to i32
  call void @__asan_load1_noabort(i32 %487)
  %488 = load i8, ptr %arrayidx.i7.3.i.7, align 1
  %489 = shl i8 %488, 3
  %490 = and i8 %489, 8
  %or.i15.3123.i.7 = or i8 %or.i15.2122.i.7, %490
  %491 = ptrtoint ptr %arrayidx.i7.4.i.7 to i32
  call void @__asan_load1_noabort(i32 %491)
  %492 = load i8, ptr %arrayidx.i7.4.i.7, align 4
  %493 = shl i8 %492, 4
  %494 = and i8 %493, 16
  %or.i15.4124.i.7 = or i8 %or.i15.3123.i.7, %494
  %495 = ptrtoint ptr %arrayidx.i7.5.i.7 to i32
  call void @__asan_load1_noabort(i32 %495)
  %496 = load i8, ptr %arrayidx.i7.5.i.7, align 1
  %497 = shl i8 %496, 5
  %498 = and i8 %497, 32
  %or.i15.5125.i.7 = or i8 %or.i15.4124.i.7, %498
  %499 = ptrtoint ptr %arrayidx.i7.6.i.7 to i32
  call void @__asan_load1_noabort(i32 %499)
  %500 = load i8, ptr %arrayidx.i7.6.i.7, align 2
  %501 = shl i8 %500, 6
  %502 = and i8 %501, 64
  %or.i15.6126.i.7 = or i8 %or.i15.5125.i.7, %502
  %503 = ptrtoint ptr %arrayidx.i7.7.i.7 to i32
  call void @__asan_load1_noabort(i32 %503)
  %504 = load i8, ptr %arrayidx.i7.7.i.7, align 1
  %505 = shl i8 %504, 7
  %or.i15.7127.i.7 = or i8 %or.i15.6126.i.7, %505
  %506 = ptrtoint ptr %arrayidx9.i.7 to i32
  call void @__asan_store1_noabort(i32 %506)
  store i8 %or.i15.7127.i.7, ptr %arrayidx9.i.7, align 1
  %507 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %507)
  store i8 0, ptr %19, align 8
  %508 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %508)
  store i8 0, ptr %20, align 1
  %509 = ptrtoint ptr %arrayidx.i29.i to i32
  call void @__asan_load1_noabort(i32 %509)
  %510 = load i8, ptr %arrayidx.i29.i, align 8
  %511 = and i8 %510, 1
  %512 = ptrtoint ptr %arrayidx.i29.1.i to i32
  call void @__asan_load1_noabort(i32 %512)
  %513 = load i8, ptr %arrayidx.i29.1.i, align 1
  %514 = shl i8 %513, 1
  %515 = and i8 %514, 2
  %516 = ptrtoint ptr %arrayidx.i29.2.i to i32
  call void @__asan_load1_noabort(i32 %516)
  %517 = load i8, ptr %arrayidx.i29.2.i, align 2
  %518 = shl i8 %517, 2
  %519 = and i8 %518, 4
  %520 = ptrtoint ptr %arrayidx.i29.3.i to i32
  call void @__asan_load1_noabort(i32 %520)
  %521 = load i8, ptr %arrayidx.i29.3.i, align 1
  %522 = shl i8 %521, 3
  %523 = and i8 %522, 8
  %524 = ptrtoint ptr %arrayidx.i29.4.i to i32
  call void @__asan_load1_noabort(i32 %524)
  %525 = load i8, ptr %arrayidx.i29.4.i, align 4
  %526 = shl i8 %525, 4
  %527 = and i8 %526, 16
  %528 = ptrtoint ptr %arrayidx.i29.5.i to i32
  call void @__asan_load1_noabort(i32 %528)
  %529 = load i8, ptr %arrayidx.i29.5.i, align 1
  %530 = shl i8 %529, 5
  %531 = and i8 %530, 32
  %532 = ptrtoint ptr %arrayidx.i51.i to i32
  call void @__asan_load1_noabort(i32 %532)
  %533 = load i8, ptr %arrayidx.i51.i, align 8
  %534 = and i8 %533, 1
  %535 = ptrtoint ptr %arrayidx.i51.1.i to i32
  call void @__asan_load1_noabort(i32 %535)
  %536 = load i8, ptr %arrayidx.i51.1.i, align 1
  %537 = shl i8 %536, 1
  %538 = and i8 %537, 2
  %539 = ptrtoint ptr %arrayidx.i51.2.i to i32
  call void @__asan_load1_noabort(i32 %539)
  %540 = load i8, ptr %arrayidx.i51.2.i, align 2
  %541 = shl i8 %540, 2
  %542 = and i8 %541, 4
  %543 = ptrtoint ptr %arrayidx.i51.3.i to i32
  call void @__asan_load1_noabort(i32 %543)
  %544 = load i8, ptr %arrayidx.i51.3.i, align 1
  %545 = shl i8 %544, 3
  %546 = and i8 %545, 8
  %547 = ptrtoint ptr %arrayidx.i51.4.i to i32
  call void @__asan_load1_noabort(i32 %547)
  %548 = load i8, ptr %arrayidx.i51.4.i, align 4
  %549 = shl i8 %548, 4
  %550 = and i8 %549, 16
  %551 = ptrtoint ptr %arrayidx.i51.5.i to i32
  call void @__asan_load1_noabort(i32 %551)
  %552 = load i8, ptr %arrayidx.i51.5.i, align 1
  %553 = shl i8 %552, 5
  %554 = and i8 %553, 32
  %or.i37.1128.i = or i8 %515, %511
  %or.i37.2129.i = or i8 %or.i37.1128.i, %519
  %or.i37.3130.i = or i8 %or.i37.2129.i, %523
  %or.i37.4131.i = or i8 %or.i37.3130.i, %527
  %or.i59.1132.i = or i8 %538, %534
  %or.i59.2133.i = or i8 %or.i59.1132.i, %542
  %or.i59.3134.i = or i8 %or.i59.2133.i, %546
  %or.i59.4135.i = or i8 %or.i59.3134.i, %550
  %or.i59.5136.i = or i8 %or.i59.4135.i, %554
  %or.i59.5.i = zext i8 %or.i59.5136.i to i32
  %or.i81.5137.i = or i8 %or.i37.4131.i, %531
  %or.i81.5.i = zext i8 %or.i81.5137.i to i32
  %shl19.i = shl nuw nsw i32 %or.i81.5.i, 6
  %or.i383 = or i32 %shl19.i, %or.i59.5.i
  %or.i383.frozen = freeze i32 %or.i383
  %div.i = udiv i32 %or.i383.frozen, 100
  %555 = mul i32 %div.i, 100
  %rem.i384.decomposed = sub i32 %or.i383.frozen, %555
  %call24.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %comment, i32 noundef 40, ptr noundef nonnull @.str.12, i32 noundef %div.i, i32 noundef %rem.i384.decomposed, ptr noundef nonnull %pnp.i, ptr noundef nonnull %rev.i) #7
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %rev.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pnp.i) #7
  br label %do.cond102

do.cond102:                                       ; preds = %if.then98, %sw.bb94.do.cond102_crit_edge, %if.else, %if.then83, %sw.bb78, %sw.bb76, %sw.bb68, %if.then56.do.cond102_crit_edge, %do.body49.do.cond102_crit_edge
  %l.1 = phi i32 [ %call50, %if.then56.do.cond102_crit_edge ], [ %call50, %if.then98 ], [ %call50, %sw.bb94.do.cond102_crit_edge ], [ %call50, %if.then83 ], [ %call50, %if.else ], [ %call50, %sw.bb78 ], [ %call50, %sw.bb76 ], [ %call50, %sw.bb68 ], [ %l.0, %do.body49.do.cond102_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool103.not = icmp eq i32 %dec, 0
  %556 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %556)
  %.pr = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr)
  %cmp109 = icmp eq i32 %.pr, -1
  br i1 %tobool103.not, label %do.end107, label %land.rhs

land.rhs:                                         ; preds = %do.cond102
  br i1 %cmp109, label %land.rhs.do.body49_crit_edge, label %land.rhs.if.end120_crit_edge

land.rhs.if.end120_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120

land.rhs.do.body49_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body49

do.end107:                                        ; preds = %do.cond102
  br i1 %cmp109, label %do.end114, label %do.end107.if.end120_crit_edge

do.end107.if.end120_crit_edge:                    ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120

do.end114:                                        ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #9
  %phys = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 2
  %call116 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %phys) #11
  %mul117 = mul i32 %j.0, 3
  call fastcc void @sw_print_packet(ptr noundef nonnull @.str.8, i32 noundef %mul117, ptr noundef nonnull %call7.i358, i8 noundef zeroext 3)
  %mul119 = mul i32 %call50, %conv58
  call fastcc void @sw_print_packet(ptr noundef nonnull @.str.9, i32 noundef %mul119, ptr noundef nonnull %call7.i, i8 noundef zeroext %m.0)
  br label %fail2

if.end120:                                        ; preds = %do.end107.if.end120_crit_edge, %land.rhs.if.end120_crit_edge
  %poll_handler.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 16
  %557 = ptrtoint ptr %poll_handler.i to i32
  call void @__asan_store4_noabort(i32 %557)
  store ptr @sw_poll, ptr %poll_handler.i, align 4
  %poll_interval.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 13
  %558 = ptrtoint ptr %poll_interval.i to i32
  call void @__asan_store4_noabort(i32 %558)
  store i32 20, ptr %poll_interval.i, align 8
  %559 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load i32, ptr %number, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %560)
  %cmp122407 = icmp sgt i32 %560, 0
  br i1 %cmp122407, label %for.body.lr.ph, label %if.end120.cleanup218_crit_edge

if.end120.cleanup218_crit_edge:                   ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup218

for.body.lr.ph:                                   ; preds = %if.end120
  %name = getelementptr inbounds %struct.sw, ptr %call7.i.i, i32 0, i32 2
  %phys132 = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 2
  %dev152 = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 21
  br label %for.body

for.body:                                         ; preds = %for.inc208.for.body_crit_edge, %for.body.lr.ph
  %i.1408 = phi i32 [ 0, %for.body.lr.ph ], [ %inc209, %for.inc208.for.body_crit_edge ]
  %561 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load i32, ptr %type, align 8
  %arrayidx127 = getelementptr [6 x ptr], ptr @sw_name, i32 0, i32 %562
  %563 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load ptr, ptr %arrayidx127, align 4
  %call128 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 64, ptr noundef nonnull @.str.10, ptr noundef %564)
  %arrayidx130 = getelementptr %struct.sw, ptr %call7.i.i, i32 0, i32 3, i32 %i.1408
  %call134 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx130, i32 noundef 32, ptr noundef nonnull @.str.11, ptr noundef %phys132, i32 noundef %i.1408)
  %call135 = call ptr @input_allocate_device() #7
  %arrayidx136 = getelementptr %struct.sw, ptr %call7.i.i, i32 0, i32 1, i32 %i.1408
  %565 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_store4_noabort(i32 %565)
  store ptr %call135, ptr %arrayidx136, align 4
  %tobool137.not = icmp eq ptr %call135, null
  br i1 %tobool137.not, label %for.body.fail3_crit_edge, label %for.body161.preheader

for.body.fail3_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail3

for.body161.preheader:                            ; preds = %for.body
  %566 = ptrtoint ptr %call135 to i32
  call void @__asan_store4_noabort(i32 %566)
  store ptr %name, ptr %call135, align 8
  %phys146 = getelementptr inbounds %struct.input_dev, ptr %call135, i32 0, i32 1
  %567 = ptrtoint ptr %phys146 to i32
  call void @__asan_store4_noabort(i32 %567)
  store ptr %arrayidx130, ptr %phys146, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %call135, i32 0, i32 3
  %568 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %568)
  store i16 20, ptr %id, align 4
  %vendor = getelementptr inbounds %struct.input_dev, ptr %call135, i32 0, i32 3, i32 1
  %569 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %569)
  store i16 7, ptr %vendor, align 2
  %570 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load i32, ptr %type, align 8
  %conv149 = trunc i32 %571 to i16
  %product = getelementptr inbounds %struct.input_dev, ptr %call135, i32 0, i32 3, i32 2
  %572 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %572)
  store i16 %conv149, ptr %product, align 4
  %version = getelementptr inbounds %struct.input_dev, ptr %call135, i32 0, i32 3, i32 3
  %573 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %573)
  store i16 256, ptr %version, align 2
  %parent = getelementptr inbounds %struct.input_dev, ptr %call135, i32 0, i32 40, i32 1
  %574 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %574)
  store ptr %dev152, ptr %parent, align 8
  %driver_data.i.i385 = getelementptr inbounds %struct.input_dev, ptr %call135, i32 0, i32 40, i32 8
  %575 = ptrtoint ptr %driver_data.i.i385 to i32
  call void @__asan_store4_noabort(i32 %575)
  store ptr %call7.i.i, ptr %driver_data.i.i385, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %call135, i32 0, i32 31
  %576 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %576)
  store ptr @sw_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call135, i32 0, i32 32
  %577 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %577)
  store ptr @sw_close, ptr %close, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call135, i32 0, i32 5
  %578 = ptrtoint ptr %evbit to i32
  call void @__asan_store4_noabort(i32 %578)
  store i32 10, ptr %evbit, align 8
  %579 = load i32, ptr %type, align 8
  %arrayidx158401 = getelementptr [6 x [7 x i8]], ptr @sw_bit, i32 0, i32 %579, i32 0
  %580 = ptrtoint ptr %arrayidx158401 to i32
  call void @__asan_load1_noabort(i32 %580)
  %581 = load i8, ptr %arrayidx158401, align 1
  br label %for.body161

for.body193.lr.ph:                                ; preds = %for.body161
  %582 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load i32, ptr %type, align 8
  %arrayidx190404 = getelementptr [6 x [12 x i16]], ptr @sw_btn, i32 0, i32 %583, i32 0
  %584 = ptrtoint ptr %arrayidx190404 to i32
  call void @__asan_load2_noabort(i32 %584)
  %585 = load i16, ptr %arrayidx190404, align 2
  %keybit = getelementptr inbounds %struct.input_dev, ptr %call135, i32 0, i32 6
  br label %for.body193

for.body161:                                      ; preds = %for.body161.for.body161_crit_edge, %for.body161.preheader
  %586 = phi i8 [ %594, %for.body161.for.body161_crit_edge ], [ %581, %for.body161.preheader ]
  %587 = phi i32 [ %592, %for.body161.for.body161_crit_edge ], [ %579, %for.body161.preheader ]
  %j.1403 = phi i32 [ %inc186, %for.body161.for.body161_crit_edge ], [ 0, %for.body161.preheader ]
  %conv159 = zext i8 %586 to i32
  %arrayidx164 = getelementptr [6 x [7 x i8]], ptr @sw_abs, i32 0, i32 %587, i32 %j.1403
  %588 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_load1_noabort(i32 %588)
  %589 = load i8, ptr %arrayidx164, align 1
  %conv165 = zext i8 %589 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %586)
  %cmp166 = icmp eq i8 %586, 1
  %cond168 = sext i1 %cmp166 to i32
  %notmask = shl nsw i32 -1, %conv159
  %sub = xor i32 %notmask, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %586)
  %cmp169 = icmp ugt i8 %586, 3
  %590 = lshr i32 %conv159, 1
  %sub172 = add nsw i32 %590, -2
  %shl173 = shl nuw i32 1, %sub172
  %cond174 = select i1 %cmp169, i32 %shl173, i32 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %589)
  %cmp175 = icmp eq i8 %589, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %586)
  %cmp178 = icmp ult i8 %586, 5
  %or.cond357 = select i1 %cmp175, i1 true, i1 %cmp178
  %sub182 = add nsw i32 %conv159, -5
  %shl183 = shl nuw i32 1, %sub182
  %cond185 = select i1 %or.cond357, i32 0, i32 %shl183
  call void @input_set_abs_params(ptr noundef nonnull %call135, i32 noundef %conv165, i32 noundef %cond168, i32 noundef %sub, i32 noundef %cond174, i32 noundef %cond185) #7
  %inc186 = add i32 %j.1403, 1
  %591 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load i32, ptr %type, align 8
  %arrayidx158 = getelementptr [6 x [7 x i8]], ptr @sw_bit, i32 0, i32 %592, i32 %inc186
  %593 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_load1_noabort(i32 %593)
  %594 = load i8, ptr %arrayidx158, align 1
  %tobool160.not = icmp eq i8 %594, 0
  br i1 %tobool160.not, label %for.body193.lr.ph, label %for.body161.for.body161_crit_edge

for.body161.for.body161_crit_edge:                ; preds = %for.body161
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body161

for.body193:                                      ; preds = %for.body193.for.body193_crit_edge, %for.body193.lr.ph
  %595 = phi i16 [ %585, %for.body193.lr.ph ], [ %601, %for.body193.for.body193_crit_edge ]
  %j.2406 = phi i32 [ 0, %for.body193.lr.ph ], [ %inc196, %for.body193.for.body193_crit_edge ]
  %conv191 = sext i16 %595 to i32
  %rem.i = and i32 %conv191, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %conv191, 5
  %add.ptr.i = getelementptr i32, ptr %keybit, i32 %div2.i
  %596 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %597, %shl.i
  store i32 %or.i, ptr %add.ptr.i, align 4
  %inc196 = add i32 %j.2406, 1
  %598 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load i32, ptr %type, align 8
  %arrayidx190 = getelementptr [6 x [12 x i16]], ptr @sw_btn, i32 0, i32 %599, i32 %inc196
  %600 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_load2_noabort(i32 %600)
  %601 = load i16, ptr %arrayidx190, align 2
  %tobool192.not = icmp eq i16 %601, 0
  br i1 %tobool192.not, label %do.end200, label %for.body193.for.body193_crit_edge

for.body193.for.body193_crit_edge:                ; preds = %for.body193
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body193

do.end200:                                        ; preds = %for.body193
  %602 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load ptr, ptr %arrayidx136, align 4
  %call203 = call i32 @input_register_device(ptr noundef %603) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call203)
  %tobool204.not = icmp eq i32 %call203, 0
  br i1 %tobool204.not, label %for.inc208, label %fail4

for.inc208:                                       ; preds = %do.end200
  %inc209 = add nuw nsw i32 %i.1408, 1
  %604 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load i32, ptr %number, align 8
  %cmp122 = icmp slt i32 %inc209, %605
  br i1 %cmp122, label %for.inc208.for.body_crit_edge, label %for.inc208.cleanup218_crit_edge

for.inc208.cleanup218_crit_edge:                  ; preds = %for.inc208
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup218

for.inc208.for.body_crit_edge:                    ; preds = %for.inc208
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

fail4:                                            ; preds = %do.end200
  call void @__sanitizer_cov_trace_pc() #9
  %606 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load ptr, ptr %arrayidx136, align 4
  call void @input_free_device(ptr noundef %607) #7
  br label %fail3

fail3:                                            ; preds = %fail4, %for.body.fail3_crit_edge
  %err.1394 = phi i32 [ %call203, %fail4 ], [ -12, %for.body.fail3_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1408)
  %cmp214410.not = icmp eq i32 %i.1408, 0
  br i1 %cmp214410.not, label %fail3.fail2_crit_edge, label %fail3.while.body_crit_edge

fail3.while.body_crit_edge:                       ; preds = %fail3
  br label %while.body

fail3.fail2_crit_edge:                            ; preds = %fail3
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail2

while.body:                                       ; preds = %while.body.while.body_crit_edge, %fail3.while.body_crit_edge
  %dec213411.in = phi i32 [ %dec213411, %while.body.while.body_crit_edge ], [ %i.1408, %fail3.while.body_crit_edge ]
  %dec213411 = add nsw i32 %dec213411.in, -1
  %arrayidx217 = getelementptr %struct.sw, ptr %call7.i.i, i32 0, i32 1, i32 %dec213411
  %608 = ptrtoint ptr %arrayidx217 to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load ptr, ptr %arrayidx217, align 4
  call void @input_unregister_device(ptr noundef %609) #7
  %cmp214 = icmp sgt i32 %dec213411.in, 1
  br i1 %cmp214, label %while.body.while.body_crit_edge, label %while.body.fail2_crit_edge

while.body.fail2_crit_edge:                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail2

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

fail2:                                            ; preds = %while.body.fail2_crit_edge, %fail3.fail2_crit_edge, %do.end114, %sw_guess_mode.exit374.fail2_crit_edge, %if.then16.fail2_crit_edge
  %err.3 = phi i32 [ -19, %do.end114 ], [ -19, %if.then16.fail2_crit_edge ], [ -19, %sw_guess_mode.exit374.fail2_crit_edge ], [ %err.1394, %fail3.fail2_crit_edge ], [ %err.1394, %while.body.fail2_crit_edge ]
  call void @gameport_close(ptr noundef %gameport) #7
  br label %fail1

fail1:                                            ; preds = %fail2, %if.end.fail1_crit_edge, %entry.fail1_crit_edge
  %err.4 = phi i32 [ %call7, %if.end.fail1_crit_edge ], [ %err.3, %fail2 ], [ -12, %entry.fail1_crit_edge ]
  %driver_data.i.i386 = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 21, i32 8
  %610 = ptrtoint ptr %driver_data.i.i386 to i32
  call void @__asan_store4_noabort(i32 %610)
  store ptr null, ptr %driver_data.i.i386, align 4
  call void @kfree(ptr noundef %call7.i.i) #7
  br label %cleanup218

cleanup218:                                       ; preds = %fail1, %for.inc208.cleanup218_crit_edge, %if.end120.cleanup218_crit_edge
  %err.2 = phi i32 [ %err.4, %fail1 ], [ 0, %if.end120.cleanup218_crit_edge ], [ 0, %for.inc208.cleanup218_crit_edge ]
  call void @kfree(ptr noundef %call7.i) #7
  call void @kfree(ptr noundef %call7.i358) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %comment) #7
  ret i32 %err.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sw_disconnect(ptr noundef %gameport) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 21, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %number = getelementptr inbounds %struct.sw, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %number, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp8 = icmp sgt i32 %3, 0
  br i1 %cmp8, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.09 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sw, ptr %1, i32 0, i32 1, i32 %i.09
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @input_unregister_device(ptr noundef %5) #7
  %inc = add nuw nsw i32 %i.09, 1
  %6 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %number, align 4
  %cmp = icmp slt i32 %inc, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @gameport_close(ptr noundef %gameport) #7
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gameport_open(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sw_read_packet(ptr noundef %gameport, ptr nocapture noundef writeonly %buf, i32 noundef %length, i32 noundef %id) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = sub i32 0, %id
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id)
  %tobool.not = icmp eq i32 %id, 0
  br i1 %tobool.not, label %entry.cond.end5_crit_edge, label %cond.true2

entry.cond.end5_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end5

cond.true2:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %speed.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 4
  %0 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %speed.i, align 8
  %mul.i = mul i32 %1, 6000
  %div.i = sdiv i32 %mul.i, 1000
  %mul.i155 = mul i32 %1, 45
  %div.i156 = sdiv i32 %mul.i155, 1000
  br label %cond.end5

cond.end5:                                        ; preds = %cond.true2, %entry.cond.end5_crit_edge
  %cond199 = phi i32 [ %div.i, %cond.true2 ], [ 0, %entry.cond.end5_crit_edge ]
  %cond6 = phi i32 [ %div.i156, %cond.true2 ], [ 0, %entry.cond.end5_crit_edge ]
  %speed.i157 = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 4
  %2 = ptrtoint ptr %speed.i157 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed.i157, align 8
  %mul.i158 = mul i32 %3, 600
  %div.i159 = sdiv i32 %mul.i158, 1000
  %mul.i161 = mul i32 %3, 60
  %div.i162 = sdiv i32 %mul.i161, 1000
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !100
  %and.i = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool18.not = icmp eq i32 %and.i, 0
  br i1 %tobool18.not, label %if.then, label %cond.end5.do.end20_crit_edge

cond.end5.do.end20_crit_edge:                     ; preds = %cond.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end20

if.then:                                          ; preds = %cond.end5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_off() #7
  br label %do.end20

do.end20:                                         ; preds = %if.then, %cond.end5.do.end20_crit_edge
  %trigger.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 6
  %5 = ptrtoint ptr %trigger.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %trigger.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %6(ptr noundef %gameport) #7
  br label %gameport_trigger.exit

do.body.i:                                        ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %io.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 3
  %7 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %io.i, align 4
  %and.i163 = and i32 %8, 1048575
  %add.i = or i32 %and.i163, -18874368
  %9 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 -1) #7, !srcloc !102
  br label %gameport_trigger.exit

gameport_trigger.exit:                            ; preds = %do.body.i, %if.then.i
  %read.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 7
  %10 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read.i, align 4
  %tobool.not.i164 = icmp eq ptr %11, null
  br i1 %tobool.not.i164, label %if.else.i, label %if.then.i165

if.then.i165:                                     ; preds = %gameport_trigger.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call zeroext i8 %11(ptr noundef %gameport) #7
  br label %gameport_read.exit

if.else.i:                                        ; preds = %gameport_trigger.exit
  call void @__sanitizer_cov_trace_pc() #9
  %io.i166 = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 3
  %12 = ptrtoint ptr %io.i166 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %io.i166, align 4
  %and.i167 = and i32 %13, 1048575
  %add.i168 = or i32 %and.i167, -18874368
  %14 = inttoptr i32 %add.i168 to ptr
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  br label %gameport_read.exit

gameport_read.exit:                               ; preds = %if.else.i, %if.then.i165
  %retval.0.i = phi i8 [ %call.i, %if.then.i165 ], [ %15, %if.else.i ]
  %io.i173 = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 3
  br label %do.body22

do.body22:                                        ; preds = %gameport_read.exit178.do.body22_crit_edge, %gameport_read.exit
  %v.0 = phi i8 [ %retval.0.i, %gameport_read.exit ], [ %retval.0.i177, %gameport_read.exit178.do.body22_crit_edge ]
  %bitout.0 = phi i32 [ %div.i159, %gameport_read.exit ], [ %dec, %gameport_read.exit178.do.body22_crit_edge ]
  %dec = add nsw i32 %bitout.0, -1
  %16 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read.i, align 4
  %tobool.not.i170 = icmp eq ptr %17, null
  br i1 %tobool.not.i170, label %if.else.i176, label %if.then.i172

if.then.i172:                                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  %call.i171 = tail call zeroext i8 %17(ptr noundef %gameport) #7
  br label %gameport_read.exit178

if.else.i176:                                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %io.i173 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %io.i173, align 4
  %and.i174 = and i32 %19, 1048575
  %add.i175 = or i32 %and.i174, -18874368
  %20 = inttoptr i32 %add.i175 to ptr
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  br label %gameport_read.exit178

gameport_read.exit178:                            ; preds = %if.else.i176, %if.then.i172
  %retval.0.i177 = phi i8 [ %call.i171, %if.then.i172 ], [ %21, %if.else.i176 ]
  %conv25 = zext i8 %retval.0.i177 to i32
  %neg = xor i32 %conv25, -1
  %22 = and i8 %v.0, 16
  %and = zext i8 %22 to i32
  %and27 = and i32 %and, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bitout.0)
  %cmp29 = icmp sgt i32 %bitout.0, 1
  %or.cond = select i1 %tobool28.not, i1 %cmp29, i1 false
  br i1 %or.cond, label %gameport_read.exit178.do.body22_crit_edge, label %do.end31

gameport_read.exit178.do.body22_crit_edge:        ; preds = %gameport_read.exit178
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body22

do.end31:                                         ; preds = %gameport_read.exit178
  %spec.select = select i1 %cmp29, i32 %div.i162, i32 %dec
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond199)
  %cmp36200 = icmp sgt i32 %cond199, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp38201 = icmp sgt i32 %spec.select, 0
  %or.cond149202 = select i1 %cmp36200, i1 true, i1 %cmp38201
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %length)
  %cmp41203 = icmp slt i32 %sub, %length
  %or.cond150204 = and i1 %or.cond149202, %cmp41203
  br i1 %or.cond150204, label %do.end31.while.body_crit_edge, label %do.end31.do.body84_crit_edge

do.end31.do.body84_crit_edge:                     ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body84

do.end31.while.body_crit_edge:                    ; preds = %do.end31
  br label %while.body

while.body:                                       ; preds = %if.end83.while.body_crit_edge, %do.end31.while.body_crit_edge
  %timeout.0212 = phi i32 [ %timeout.1, %if.end83.while.body_crit_edge ], [ %cond199, %do.end31.while.body_crit_edge ]
  %bitout.2211 = phi i32 [ %bitout.4, %if.end83.while.body_crit_edge ], [ %spec.select, %do.end31.while.body_crit_edge ]
  %sched.0210 = phi i32 [ %sched.1, %if.end83.while.body_crit_edge ], [ 0, %do.end31.while.body_crit_edge ]
  %i.0208 = phi i32 [ %i.1, %if.end83.while.body_crit_edge ], [ %sub, %do.end31.while.body_crit_edge ]
  %kick.0207 = phi i32 [ %kick.1, %if.end83.while.body_crit_edge ], [ %cond6, %do.end31.while.body_crit_edge ]
  %v.1206 = phi i8 [ %retval.0.i187, %if.end83.while.body_crit_edge ], [ %retval.0.i177, %do.end31.while.body_crit_edge ]
  %pending.0205 = phi i8 [ %pending.2, %if.end83.while.body_crit_edge ], [ 0, %do.end31.while.body_crit_edge ]
  %dec44 = add i32 %timeout.0212, -1
  %dec45 = add i32 %bitout.2211, -1
  %dec46 = add i32 %sched.0210, -1
  %23 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read.i, align 4
  %tobool.not.i180 = icmp eq ptr %24, null
  br i1 %tobool.not.i180, label %if.else.i186, label %if.then.i182

if.then.i182:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %call.i181 = tail call zeroext i8 %24(ptr noundef %gameport) #7
  br label %gameport_read.exit188

if.else.i186:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %io.i173 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %io.i173, align 4
  %and.i184 = and i32 %26, 1048575
  %add.i185 = or i32 %and.i184, -18874368
  %27 = inttoptr i32 %add.i185 to ptr
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %27) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  br label %gameport_read.exit188

gameport_read.exit188:                            ; preds = %if.else.i186, %if.then.i182
  %retval.0.i187 = phi i8 [ %call.i181, %if.then.i182 ], [ %28, %if.else.i186 ]
  %conv48 = zext i8 %v.1206 to i32
  %conv50 = zext i8 %retval.0.i187 to i32
  %neg49 = and i32 %conv48, 16
  %and51 = xor i32 %neg49, 16
  %and52 = and i32 %and51, %conv50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp ne i32 %and52, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec45)
  %cmp54 = icmp sgt i32 %dec45, 0
  %or.cond151 = select i1 %tobool53.not, i1 %cmp54, i1 false
  br i1 %or.cond151, label %if.then56, label %gameport_read.exit188.if.end63_crit_edge

gameport_read.exit188.if.end63_crit_edge:         ; preds = %gameport_read.exit188
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

if.then56:                                        ; preds = %gameport_read.exit188
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0208)
  %cmp57 = icmp sgt i32 %i.0208, -1
  br i1 %cmp57, label %if.then59, label %if.then56.if.end62_crit_edge

if.then56.if.end62_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.then59:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  %29 = lshr i8 %retval.0.i187, 5
  %arrayidx = getelementptr i8, ptr %buf, i32 %i.0208
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %arrayidx, align 1
  br label %if.end62

if.end62:                                         ; preds = %if.then59, %if.then56.if.end62_crit_edge
  %inc = add nsw i32 %i.0208, 1
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %gameport_read.exit188.if.end63_crit_edge
  %i.1 = phi i32 [ %inc, %if.end62 ], [ %i.0208, %gameport_read.exit188.if.end63_crit_edge ]
  %bitout.3 = phi i32 [ %div.i162, %if.end62 ], [ %dec45, %gameport_read.exit188.if.end63_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %kick.0207)
  %tobool64.not = icmp eq i32 %kick.0207, 0
  br i1 %tobool64.not, label %if.end63.if.end73_crit_edge, label %land.lhs.true65

if.end63.if.end73_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

land.lhs.true65:                                  ; preds = %if.end63
  %neg67 = xor i32 %conv50, -1
  %and69 = and i32 %conv48, 1
  %and70 = and i32 %and69, %neg67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %land.lhs.true65.if.end73_crit_edge, label %if.then72

land.lhs.true65.if.end73_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

if.then72:                                        ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

if.end73:                                         ; preds = %if.then72, %land.lhs.true65.if.end73_crit_edge, %if.end63.if.end73_crit_edge
  %pending.1 = phi i8 [ 1, %if.then72 ], [ %pending.0205, %land.lhs.true65.if.end73_crit_edge ], [ %pending.0205, %if.end63.if.end73_crit_edge ]
  %kick.1 = phi i32 [ 0, %if.then72 ], [ %kick.0207, %land.lhs.true65.if.end73_crit_edge ], [ 0, %if.end63.if.end73_crit_edge ]
  %sched.1 = phi i32 [ %kick.0207, %if.then72 ], [ %dec46, %land.lhs.true65.if.end73_crit_edge ], [ %dec46, %if.end63.if.end73_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %pending.1)
  %tobool75.not = icmp ne i8 %pending.1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sched.1)
  %cmp77 = icmp slt i32 %sched.1, 0
  %or.cond152 = select i1 %tobool75.not, i1 %cmp77, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %i.1)
  %cmp80 = icmp sgt i32 %i.1, -8
  %or.cond153 = select i1 %or.cond152, i1 %cmp80, i1 false
  br i1 %or.cond153, label %if.then82, label %if.end73.if.end83_crit_edge

if.end73.if.end83_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

if.then82:                                        ; preds = %if.end73
  %31 = ptrtoint ptr %trigger.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %trigger.i, align 8
  %tobool.not.i190 = icmp eq ptr %32, null
  br i1 %tobool.not.i190, label %do.body.i195, label %if.then.i191

if.then.i191:                                     ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %32(ptr noundef %gameport) #7
  br label %if.end83

do.body.i195:                                     ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %33 = ptrtoint ptr %io.i173 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %io.i173, align 4
  %and.i193 = and i32 %34, 1048575
  %add.i194 = or i32 %and.i193, -18874368
  %35 = inttoptr i32 %add.i194 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 -1) #7, !srcloc !102
  br label %if.end83

if.end83:                                         ; preds = %do.body.i195, %if.then.i191, %if.end73.if.end83_crit_edge
  %pending.2 = phi i8 [ %pending.1, %if.end73.if.end83_crit_edge ], [ 0, %if.then.i191 ], [ 0, %do.body.i195 ]
  %bitout.4 = phi i32 [ %bitout.3, %if.end73.if.end83_crit_edge ], [ %div.i159, %if.then.i191 ], [ %div.i159, %do.body.i195 ]
  %timeout.1 = phi i32 [ %dec44, %if.end73.if.end83_crit_edge ], [ 0, %if.then.i191 ], [ 0, %do.body.i195 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.1)
  %cmp36 = icmp sgt i32 %timeout.1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bitout.4)
  %cmp38 = icmp sgt i32 %bitout.4, 0
  %or.cond149 = select i1 %cmp36, i1 true, i1 %cmp38
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1, i32 %length)
  %cmp41 = icmp slt i32 %i.1, %length
  %or.cond150 = select i1 %or.cond149, i1 %cmp41, i1 false
  br i1 %or.cond150, label %if.end83.while.body_crit_edge, label %if.end83.do.body84_crit_edge

if.end83.do.body84_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body84

if.end83.while.body_crit_edge:                    ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

do.body84:                                        ; preds = %if.end83.do.body84_crit_edge, %do.end31.do.body84_crit_edge
  %i.0.lcssa = phi i32 [ %sub, %do.end31.do.body84_crit_edge ], [ %i.1, %if.end83.do.body84_crit_edge ]
  br i1 %tobool18.not, label %if.then93, label %do.body84.do.body95_crit_edge

do.body84.do.body95_crit_edge:                    ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body95

if.then93:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_on() #7
  br label %do.body95

do.body95:                                        ; preds = %if.then93, %do.body84.do.body95_crit_edge
  %36 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !105
  %and.i.i = and i32 %36, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool103.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool103.not, label %if.then107, label %do.body95.do.end110_crit_edge, !prof !106

do.body95.do.end110_crit_edge:                    ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end110

if.then107:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %do.end110

do.end110:                                        ; preds = %if.then107, %do.body95.do.end110_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #7, !srcloc !107
  ret i32 %i.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sw_init_digital(ptr noundef %gameport) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !100
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
  %trigger.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 6
  %io.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 3
  %speed.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 4
  %read.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 7
  %1 = ptrtoint ptr %trigger.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %trigger.i, align 8
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %2(ptr noundef %gameport) #7
  br label %gameport_trigger.exit

do.body.i:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %3 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %io.i, align 4
  %and.i71 = and i32 %4, 1048575
  %add.i = or i32 %and.i71, -18874368
  %5 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 -1) #7, !srcloc !102
  br label %gameport_trigger.exit

gameport_trigger.exit:                            ; preds = %do.body.i, %if.then.i
  %6 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %speed.i, align 8
  %mul.i = mul i32 %7, 6000
  %div.i = sdiv i32 %mul.i, 1000
  br label %while.cond

while.cond:                                       ; preds = %gameport_read.exit.while.cond_crit_edge, %gameport_trigger.exit
  %t.0 = phi i32 [ %div.i, %gameport_trigger.exit ], [ %dec, %gameport_read.exit.while.cond_crit_edge ]
  %8 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read.i, align 4
  %tobool.not.i72 = icmp eq ptr %9, null
  br i1 %tobool.not.i72, label %if.else.i, label %if.then.i73

if.then.i73:                                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call zeroext i8 %9(ptr noundef %gameport) #7
  br label %gameport_read.exit

if.else.i:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %io.i, align 4
  %and.i75 = and i32 %11, 1048575
  %add.i76 = or i32 %and.i75, -18874368
  %12 = inttoptr i32 %add.i76 to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  br label %gameport_read.exit

gameport_read.exit:                               ; preds = %if.else.i, %if.then.i73
  %retval.0.i = phi i8 [ %call.i, %if.then.i73 ], [ %13, %if.else.i ]
  %14 = and i8 %retval.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool16.not = icmp eq i8 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t.0)
  %tobool17.not = icmp eq i32 %t.0, 0
  %or.cond = select i1 %tobool16.not, i1 true, i1 %tobool17.not
  %dec = add i32 %t.0, -1
  br i1 %or.cond, label %cond.false23, label %gameport_read.exit.while.cond_crit_edge

gameport_read.exit.while.cond_crit_edge:          ; preds = %gameport_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

cond.false23:                                     ; preds = %gameport_read.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %15(i32 noundef 140) #7
  %16 = ptrtoint ptr %trigger.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %trigger.i, align 8
  %tobool.not.i.1 = icmp eq ptr %17, null
  br i1 %tobool.not.i.1, label %do.body.i.1, label %if.then.i.1

if.then.i.1:                                      ; preds = %cond.false23
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %17(ptr noundef %gameport) #7
  br label %gameport_trigger.exit.1

do.body.i.1:                                      ; preds = %cond.false23
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %io.i, align 4
  %and.i71.1 = and i32 %19, 1048575
  %add.i.1 = or i32 %and.i71.1, -18874368
  %20 = inttoptr i32 %add.i.1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 -1) #7, !srcloc !102
  br label %gameport_trigger.exit.1

gameport_trigger.exit.1:                          ; preds = %do.body.i.1, %if.then.i.1
  %21 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %speed.i, align 8
  %mul.i.1 = mul i32 %22, 6000
  %div.i.1 = sdiv i32 %mul.i.1, 1000
  br label %while.cond.1

while.cond.1:                                     ; preds = %gameport_read.exit.1.while.cond.1_crit_edge, %gameport_trigger.exit.1
  %t.0.1 = phi i32 [ %div.i.1, %gameport_trigger.exit.1 ], [ %dec.1, %gameport_read.exit.1.while.cond.1_crit_edge ]
  %23 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read.i, align 4
  %tobool.not.i72.1 = icmp eq ptr %24, null
  br i1 %tobool.not.i72.1, label %if.else.i.1, label %if.then.i73.1

if.then.i73.1:                                    ; preds = %while.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.1 = tail call zeroext i8 %24(ptr noundef %gameport) #7
  br label %gameport_read.exit.1

if.else.i.1:                                      ; preds = %while.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %io.i, align 4
  %and.i75.1 = and i32 %26, 1048575
  %add.i76.1 = or i32 %and.i75.1, -18874368
  %27 = inttoptr i32 %add.i76.1 to ptr
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %27) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  br label %gameport_read.exit.1

gameport_read.exit.1:                             ; preds = %if.else.i.1, %if.then.i73.1
  %retval.0.i.1 = phi i8 [ %call.i.1, %if.then.i73.1 ], [ %28, %if.else.i.1 ]
  %29 = and i8 %retval.0.i.1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool16.not.1 = icmp eq i8 %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t.0.1)
  %tobool17.not.1 = icmp eq i32 %t.0.1, 0
  %or.cond.1 = select i1 %tobool16.not.1, i1 true, i1 %tobool17.not.1
  %dec.1 = add i32 %t.0.1, -1
  br i1 %or.cond.1, label %cond.false23.1, label %gameport_read.exit.1.while.cond.1_crit_edge

gameport_read.exit.1.while.cond.1_crit_edge:      ; preds = %gameport_read.exit.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.1

cond.false23.1:                                   ; preds = %gameport_read.exit.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %30(i32 noundef 865) #7
  %31 = ptrtoint ptr %trigger.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %trigger.i, align 8
  %tobool.not.i.2 = icmp eq ptr %32, null
  br i1 %tobool.not.i.2, label %do.body.i.2, label %if.then.i.2

if.then.i.2:                                      ; preds = %cond.false23.1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %32(ptr noundef %gameport) #7
  br label %gameport_trigger.exit.2

do.body.i.2:                                      ; preds = %cond.false23.1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %33 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %io.i, align 4
  %and.i71.2 = and i32 %34, 1048575
  %add.i.2 = or i32 %and.i71.2, -18874368
  %35 = inttoptr i32 %add.i.2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 -1) #7, !srcloc !102
  br label %gameport_trigger.exit.2

gameport_trigger.exit.2:                          ; preds = %do.body.i.2, %if.then.i.2
  %36 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %speed.i, align 8
  %mul.i.2 = mul i32 %37, 6000
  %div.i.2 = sdiv i32 %mul.i.2, 1000
  br label %while.cond.2

while.cond.2:                                     ; preds = %gameport_read.exit.2.while.cond.2_crit_edge, %gameport_trigger.exit.2
  %t.0.2 = phi i32 [ %div.i.2, %gameport_trigger.exit.2 ], [ %dec.2, %gameport_read.exit.2.while.cond.2_crit_edge ]
  %38 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read.i, align 4
  %tobool.not.i72.2 = icmp eq ptr %39, null
  br i1 %tobool.not.i72.2, label %if.else.i.2, label %if.then.i73.2

if.then.i73.2:                                    ; preds = %while.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.2 = tail call zeroext i8 %39(ptr noundef %gameport) #7
  br label %gameport_read.exit.2

if.else.i.2:                                      ; preds = %while.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %io.i, align 4
  %and.i75.2 = and i32 %41, 1048575
  %add.i76.2 = or i32 %and.i75.2, -18874368
  %42 = inttoptr i32 %add.i76.2 to ptr
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %42) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  br label %gameport_read.exit.2

gameport_read.exit.2:                             ; preds = %if.else.i.2, %if.then.i73.2
  %retval.0.i.2 = phi i8 [ %call.i.2, %if.then.i73.2 ], [ %43, %if.else.i.2 ]
  %44 = and i8 %retval.0.i.2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool16.not.2 = icmp eq i8 %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t.0.2)
  %tobool17.not.2 = icmp eq i32 %t.0.2, 0
  %or.cond.2 = select i1 %tobool16.not.2, i1 true, i1 %tobool17.not.2
  %dec.2 = add i32 %t.0.2, -1
  br i1 %or.cond.2, label %cond.false23.2, label %gameport_read.exit.2.while.cond.2_crit_edge

gameport_read.exit.2.while.cond.2_crit_edge:      ; preds = %gameport_read.exit.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.2

cond.false23.2:                                   ; preds = %gameport_read.exit.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %45(i32 noundef 440) #7
  %46 = ptrtoint ptr %trigger.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %trigger.i, align 8
  %tobool.not.i78 = icmp eq ptr %47, null
  br i1 %tobool.not.i78, label %do.body.i83, label %if.then.i79

if.then.i79:                                      ; preds = %cond.false23.2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %47(ptr noundef %gameport) #7
  br label %gameport_trigger.exit84

do.body.i83:                                      ; preds = %cond.false23.2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %48 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %io.i, align 4
  %and.i81 = and i32 %49, 1048575
  %add.i82 = or i32 %and.i81, -18874368
  %50 = inttoptr i32 %add.i82 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %50, i8 -1) #7, !srcloc !102
  br label %gameport_trigger.exit84

gameport_trigger.exit84:                          ; preds = %do.body.i83, %if.then.i79
  br i1 %tobool.not, label %if.then39, label %gameport_trigger.exit84.do.body41_crit_edge

gameport_trigger.exit84.do.body41_crit_edge:      ; preds = %gameport_trigger.exit84
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body41

if.then39:                                        ; preds = %gameport_trigger.exit84
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_on() #7
  br label %do.body41

do.body41:                                        ; preds = %if.then39, %gameport_trigger.exit84.do.body41_crit_edge
  %51 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !105
  %and.i.i = and i32 %51, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool49.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool49.not, label %if.then53, label %do.body41.do.end56_crit_edge, !prof !106

do.body41.do.end56_crit_edge:                     ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end56

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %do.end56

do.end56:                                         ; preds = %if.then53, %do.body41.do.end56_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #7, !srcloc !107
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sw_print_packet(ptr noundef %name, i32 noundef %length, ptr nocapture noundef readonly %buf, i8 noundef zeroext %bits) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %name, i32 noundef %length) #11
  %add = add i32 %length, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %add)
  %cmp16 = icmp sgt i32 %add, 3
  br i1 %cmp16, label %do.end3.lr.ph, label %entry.do.end9_crit_edge

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.end3.lr.ph:                                    ; preds = %entry
  %shr21 = lshr i32 %add, 2
  %conv.i = zext i8 %bits to i32
  br label %do.end3

do.end3:                                          ; preds = %do.end3.do.end3_crit_edge, %do.end3.lr.ph
  %i.017.in = phi i32 [ %shr21, %do.end3.lr.ph ], [ %i.017, %do.end3.do.end3_crit_edge ]
  %i.017 = add nsw i32 %i.017.in, -1
  %shl = shl i32 %i.017, 2
  %shl.frozen = freeze i32 %shl
  %div.i = sdiv i32 %shl.frozen, %conv.i
  %0 = mul i32 %div.i, %conv.i
  %rem.i.decomposed = sub i32 %shl.frozen, %0
  %arrayidx.i = getelementptr i8, ptr %buf, i32 %div.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx.i, align 1
  %conv2.i = zext i8 %2 to i32
  %inc.i = add i32 %rem.i.decomposed, 1
  %shr.i = lshr i32 %conv2.i, %rem.i.decomposed
  %and.i = and i32 %shr.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %conv.i)
  %cmp.i = icmp eq i32 %inc.i, %conv.i
  %spec.select.i = select i1 %cmp.i, i32 0, i32 %inc.i
  %inc7.i = zext i1 %cmp.i to i32
  %spec.select14.i = add i32 %div.i, %inc7.i
  %arrayidx.i.1 = getelementptr i8, ptr %buf, i32 %spec.select14.i
  %3 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i.1, align 1
  %conv2.i.1 = zext i8 %4 to i32
  %inc.i.1 = add i32 %spec.select.i, 1
  %shr.i.1 = lshr i32 %conv2.i.1, %spec.select.i
  %and.i.1 = shl nuw nsw i32 %shr.i.1, 1
  %5 = and i32 %and.i.1, 2
  %or.i.118 = or i32 %5, %and.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.1, i32 %conv.i)
  %cmp.i.1 = icmp eq i32 %inc.i.1, %conv.i
  %spec.select.i.1 = select i1 %cmp.i.1, i32 0, i32 %inc.i.1
  %inc7.i.1 = zext i1 %cmp.i.1 to i32
  %spec.select14.i.1 = add i32 %spec.select14.i, %inc7.i.1
  %arrayidx.i.2 = getelementptr i8, ptr %buf, i32 %spec.select14.i.1
  %6 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i.2, align 1
  %conv2.i.2 = zext i8 %7 to i32
  %inc.i.2 = add i32 %spec.select.i.1, 1
  %shr.i.2 = lshr i32 %conv2.i.2, %spec.select.i.1
  %and.i.2 = shl nuw nsw i32 %shr.i.2, 2
  %8 = and i32 %and.i.2, 4
  %or.i.219 = or i32 %8, %or.i.118
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.2, i32 %conv.i)
  %cmp.i.2 = icmp eq i32 %inc.i.2, %conv.i
  %spec.select.i.2 = select i1 %cmp.i.2, i32 0, i32 %inc.i.2
  %inc7.i.2 = zext i1 %cmp.i.2 to i32
  %spec.select14.i.2 = add i32 %spec.select14.i.1, %inc7.i.2
  %arrayidx.i.3 = getelementptr i8, ptr %buf, i32 %spec.select14.i.2
  %9 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i.3, align 1
  %conv2.i.3 = zext i8 %10 to i32
  %shr.i.3 = lshr i32 %conv2.i.3, %spec.select.i.2
  %and.i.3 = shl nuw nsw i32 %shr.i.3, 3
  %11 = and i32 %and.i.3, 8
  %or.i.320 = or i32 %11, %or.i.219
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %or.i.320) #11
  %cmp = icmp ugt i32 %i.017.in, 1
  br i1 %cmp, label %do.end3.do.end3_crit_edge, label %do.end3.do.end9_crit_edge

do.end3.do.end9_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.end3.do.end3_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end9:                                          ; preds = %do.end3.do.end9_crit_edge, %entry.do.end9_crit_edge
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sw_poll(ptr nocapture noundef readonly %gameport) #2 align 64 {
entry:
  %buf.i = alloca [512 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 21, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %reads = getelementptr inbounds %struct.sw, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %reads to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reads, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %reads, align 4
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %buf.i) #7
  %4 = call ptr @memset(ptr %buf.i, i32 255, i32 512)
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %length.i = getelementptr inbounds %struct.sw, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %length.i, align 4
  %call.i = call fastcc i32 @sw_read_packet(ptr noundef %6, ptr noundef nonnull %buf.i, i32 noundef %8, i32 noundef 0) #7
  %type.i = getelementptr inbounds %struct.sw, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i = icmp eq i32 %10, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.if.end63.i_crit_edge

entry.if.end63.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63.i

land.lhs.true.i:                                  ; preds = %entry
  %11 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 66, i32 %12)
  %cmp2.i = icmp eq i32 %12, 66
  br i1 %cmp2.i, label %land.lhs.true3.i, label %land.lhs.true.i.if.end63.i_crit_edge

land.lhs.true.i.if.end63.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %13 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %call.i, label %if.end.i [
    i32 66, label %land.lhs.true3.i.if.end63.i_crit_edge
    i32 64, label %land.lhs.true3.i.while.body.i.i_crit_edge
  ]

land.lhs.true3.i.while.body.i.i_crit_edge:        ; preds = %land.lhs.true3.i
  br label %while.body.i.i

land.lhs.true3.i.if.end63.i_crit_edge:            ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %land.lhs.true3.i.while.body.i.i_crit_edge
  %bit.020.i.i = phi i32 [ %inc4.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 0, %land.lhs.true3.i.while.body.i.i_crit_edge ]
  %data.017.i.i = phi i64 [ %or.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 0, %land.lhs.true3.i.while.body.i.i_crit_edge ]
  %num.addr.016.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %call.i, %land.lhs.true3.i.while.body.i.i_crit_edge ]
  %dec.i.i = add nsw i32 %num.addr.016.i.i, -1
  %arrayidx.i.i = getelementptr i8, ptr %buf.i, i32 %bit.020.i.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i.i, align 1
  %16 = and i8 %15, 1
  %17 = zext i8 %16 to i64
  %inc4.i.i = add nuw nsw i32 %bit.020.i.i, 1
  %sh_prom.i.i = zext i32 %bit.020.i.i to i64
  %shl.i.i = shl nuw i64 %17, %sh_prom.i.i
  %or.i.i = or i64 %shl.i.i, %data.017.i.i
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %sw_get_bits.exit.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

sw_get_bits.exit.i:                               ; preds = %while.body.i.i
  %and.i210.i = and i64 %or.i.i, -9187201950435737472
  call void @__sanitizer_cov_trace_const_cmp8(i64 128, i64 %and.i210.i)
  %tobool.not.i211.i = icmp eq i64 %and.i210.i, 128
  br i1 %tobool.not.i211.i, label %sw_get_bits.exit.i.while.body.i213.i_crit_edge, label %sw_get_bits.exit.i.land.lhs.true15.i_crit_edge

sw_get_bits.exit.i.land.lhs.true15.i_crit_edge:   ; preds = %sw_get_bits.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true15.i

sw_get_bits.exit.i.while.body.i213.i_crit_edge:   ; preds = %sw_get_bits.exit.i
  br label %while.body.i213.i

while.body.i213.i:                                ; preds = %while.body.i213.i.while.body.i213.i_crit_edge, %sw_get_bits.exit.i.while.body.i213.i_crit_edge
  %sum.012.i.i = phi i8 [ %conv3.i.i, %while.body.i213.i.while.body.i213.i_crit_edge ], [ 0, %sw_get_bits.exit.i.while.body.i213.i_crit_edge ]
  %t.addr.011.i.i = phi i64 [ %shr.i212.i, %while.body.i213.i.while.body.i213.i_crit_edge ], [ %or.i.i, %sw_get_bits.exit.i.while.body.i213.i_crit_edge ]
  %18 = trunc i64 %t.addr.011.i.i to i8
  %19 = and i8 %18, 15
  %conv3.i.i = add i8 %19, %sum.012.i.i
  %shr.i212.i = lshr i64 %t.addr.011.i.i, 4
  %tobool1.not.i.i = icmp ult i64 %t.addr.011.i.i, 16
  br i1 %tobool1.not.i.i, label %sw_check.exit.i, label %while.body.i213.i.while.body.i213.i_crit_edge

while.body.i213.i.while.body.i213.i_crit_edge:    ; preds = %while.body.i213.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i213.i

sw_check.exit.i:                                  ; preds = %while.body.i213.i
  %phi.bo.i.i = and i8 %conv3.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %phi.bo.i.i)
  %tobool.not.i = icmp eq i8 %phi.bo.i.i, 0
  br i1 %tobool.not.i, label %if.end.thread372.i, label %sw_check.exit.i.land.lhs.true15.i_crit_edge

sw_check.exit.i.land.lhs.true15.i_crit_edge:      ; preds = %sw_check.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true15.i

if.end.thread372.i:                               ; preds = %sw_check.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %phys.i = getelementptr inbounds %struct.gameport, ptr %21, i32 0, i32 2
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %phys.i) #11
  %fail.i = getelementptr inbounds %struct.sw, ptr %1, i32 0, i32 8
  %22 = ptrtoint ptr %fail.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 16, ptr %fail.i, align 4
  br label %if.end63.i

if.end.i:                                         ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 66, i32 %call.i)
  %cmp14.i = icmp slt i32 %call.i, 66
  br i1 %cmp14.i, label %if.end.i.land.lhs.true15.i_crit_edge, label %if.end.i.if.end63.i_crit_edge

if.end.i.if.end63.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63.i

if.end.i.land.lhs.true15.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true15.i

land.lhs.true15.i:                                ; preds = %if.end.i.land.lhs.true15.i_crit_edge, %sw_check.exit.i.land.lhs.true15.i_crit_edge, %sw_get_bits.exit.i.land.lhs.true15.i_crit_edge
  %i.0371.i = phi i32 [ %call.i, %if.end.i.land.lhs.true15.i_crit_edge ], [ 64, %sw_check.exit.i.land.lhs.true15.i_crit_edge ], [ 64, %sw_get_bits.exit.i.land.lhs.true15.i_crit_edge ]
  %bits.i = getelementptr inbounds %struct.sw, ptr %1, i32 0, i32 6
  %23 = ptrtoint ptr %bits.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bits.i, align 4
  %conv.i.i = and i32 %24, 255
  br label %while.body.i234.i

while.body.i234.i:                                ; preds = %while.body.i234.i.while.body.i234.i_crit_edge, %land.lhs.true15.i
  %bit.020.i214.i = phi i32 [ %inc4.i225.i, %while.body.i234.i.while.body.i234.i_crit_edge ], [ 0, %land.lhs.true15.i ]
  %i.019.i215.i = phi i32 [ %spec.select14.i232.i, %while.body.i234.i.while.body.i234.i_crit_edge ], [ 0, %land.lhs.true15.i ]
  %tri.018.i216.i = phi i32 [ %spec.select.i230.i, %while.body.i234.i.while.body.i234.i_crit_edge ], [ 0, %land.lhs.true15.i ]
  %data.017.i217.i = phi i64 [ %or.i228.i, %while.body.i234.i.while.body.i234.i_crit_edge ], [ 0, %land.lhs.true15.i ]
  %num.addr.016.i218.i = phi i32 [ %dec.i219.i, %while.body.i234.i.while.body.i234.i_crit_edge ], [ 64, %land.lhs.true15.i ]
  %dec.i219.i = add nsw i32 %num.addr.016.i218.i, -1
  %arrayidx.i220.i = getelementptr i8, ptr %buf.i, i32 %i.019.i215.i
  %25 = ptrtoint ptr %arrayidx.i220.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i220.i, align 1
  %conv2.i221.i = zext i8 %26 to i32
  %inc.i222.i = add i32 %tri.018.i216.i, 1
  %shr.i223.i = lshr i32 %conv2.i221.i, %tri.018.i216.i
  %and.i224.i = and i32 %shr.i223.i, 1
  %27 = zext i32 %and.i224.i to i64
  %inc4.i225.i = add nuw nsw i32 %bit.020.i214.i, 1
  %sh_prom.i226.i = zext i32 %bit.020.i214.i to i64
  %shl.i227.i = shl nuw i64 %27, %sh_prom.i226.i
  %or.i228.i = or i64 %shl.i227.i, %data.017.i217.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i222.i, i32 %conv.i.i)
  %cmp.i229.i = icmp eq i32 %inc.i222.i, %conv.i.i
  %spec.select.i230.i = select i1 %cmp.i229.i, i32 0, i32 %inc.i222.i
  %inc7.i231.i = zext i1 %cmp.i229.i to i32
  %spec.select14.i232.i = add i32 %i.019.i215.i, %inc7.i231.i
  %tobool.not.i233.i = icmp eq i32 %dec.i219.i, 0
  br i1 %tobool.not.i233.i, label %sw_get_bits.exit236.i, label %while.body.i234.i.while.body.i234.i_crit_edge

while.body.i234.i.while.body.i234.i_crit_edge:    ; preds = %while.body.i234.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i234.i

sw_get_bits.exit236.i:                            ; preds = %while.body.i234.i
  %mul.i = mul i32 %i.0371.i, 3
  %sub.i = add i32 %mul.i, -66
  %conv.i.i.frozen = freeze i32 %conv.i.i
  %div.i.i = sdiv i32 %sub.i, %conv.i.i.frozen
  %28 = mul i32 %div.i.i, %conv.i.i.frozen
  %rem.i.i.decomposed = sub i32 %sub.i, %28
  br label %while.body.i258.i

while.body.i258.i:                                ; preds = %while.body.i258.i.while.body.i258.i_crit_edge, %sw_get_bits.exit236.i
  %bit.020.i238.i = phi i32 [ %inc4.i249.i, %while.body.i258.i.while.body.i258.i_crit_edge ], [ 0, %sw_get_bits.exit236.i ]
  %i.019.i239.i = phi i32 [ %spec.select14.i256.i, %while.body.i258.i.while.body.i258.i_crit_edge ], [ %div.i.i, %sw_get_bits.exit236.i ]
  %tri.018.i240.i = phi i32 [ %spec.select.i254.i, %while.body.i258.i.while.body.i258.i_crit_edge ], [ %rem.i.i.decomposed, %sw_get_bits.exit236.i ]
  %data.017.i241.i = phi i64 [ %or.i252.i, %while.body.i258.i.while.body.i258.i_crit_edge ], [ 0, %sw_get_bits.exit236.i ]
  %num.addr.016.i242.i = phi i32 [ %dec.i243.i, %while.body.i258.i.while.body.i258.i_crit_edge ], [ 64, %sw_get_bits.exit236.i ]
  %dec.i243.i = add nsw i32 %num.addr.016.i242.i, -1
  %arrayidx.i244.i = getelementptr i8, ptr %buf.i, i32 %i.019.i239.i
  %29 = ptrtoint ptr %arrayidx.i244.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.i244.i, align 1
  %conv2.i245.i = zext i8 %30 to i32
  %inc.i246.i = add i32 %tri.018.i240.i, 1
  %shr.i247.i = lshr i32 %conv2.i245.i, %tri.018.i240.i
  %and.i248.i = and i32 %shr.i247.i, 1
  %31 = zext i32 %and.i248.i to i64
  %inc4.i249.i = add nuw nsw i32 %bit.020.i238.i, 1
  %sh_prom.i250.i = zext i32 %bit.020.i238.i to i64
  %shl.i251.i = shl nuw i64 %31, %sh_prom.i250.i
  %or.i252.i = or i64 %shl.i251.i, %data.017.i241.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i246.i, i32 %conv.i.i)
  %cmp.i253.i = icmp eq i32 %inc.i246.i, %conv.i.i
  %spec.select.i254.i = select i1 %cmp.i253.i, i32 0, i32 %inc.i246.i
  %inc7.i255.i = zext i1 %cmp.i253.i to i32
  %spec.select14.i256.i = add i32 %i.019.i239.i, %inc7.i255.i
  %tobool.not.i257.i = icmp eq i32 %dec.i243.i, 0
  br i1 %tobool.not.i257.i, label %sw_get_bits.exit260.i, label %while.body.i258.i.while.body.i258.i_crit_edge

while.body.i258.i.while.body.i258.i_crit_edge:    ; preds = %while.body.i258.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i258.i

sw_get_bits.exit260.i:                            ; preds = %while.body.i258.i
  call void @__sanitizer_cov_trace_cmp8(i64 %or.i228.i, i64 %or.i252.i)
  %cmp22.i = icmp eq i64 %or.i228.i, %or.i252.i
  br i1 %cmp22.i, label %sw_get_bits.exit260.i.if.end63.i_crit_edge, label %if.end25.i

sw_get_bits.exit260.i.if.end63.i_crit_edge:       ; preds = %sw_get_bits.exit260.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63.i

if.end25.i:                                       ; preds = %sw_get_bits.exit260.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 66, i32 %i.0371.i)
  %cmp26.i = icmp slt i32 %i.0371.i, 66
  br i1 %cmp26.i, label %if.end25.i.while.body.i282.i_crit_edge, label %if.end25.i.if.end63.i_crit_edge

if.end25.i.if.end63.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63.i

if.end25.i.while.body.i282.i_crit_edge:           ; preds = %if.end25.i
  br label %while.body.i282.i

while.body.i282.i:                                ; preds = %while.body.i282.i.while.body.i282.i_crit_edge, %if.end25.i.while.body.i282.i_crit_edge
  %bit.020.i262.i = phi i32 [ %inc4.i273.i, %while.body.i282.i.while.body.i282.i_crit_edge ], [ 0, %if.end25.i.while.body.i282.i_crit_edge ]
  %i.019.i263.i = phi i32 [ %spec.select14.i280.i, %while.body.i282.i.while.body.i282.i_crit_edge ], [ 0, %if.end25.i.while.body.i282.i_crit_edge ]
  %tri.018.i264.i = phi i32 [ %spec.select.i278.i, %while.body.i282.i.while.body.i282.i_crit_edge ], [ 0, %if.end25.i.while.body.i282.i_crit_edge ]
  %data.017.i265.i = phi i64 [ %or.i276.i, %while.body.i282.i.while.body.i282.i_crit_edge ], [ 0, %if.end25.i.while.body.i282.i_crit_edge ]
  %num.addr.016.i266.i = phi i32 [ %dec.i267.i, %while.body.i282.i.while.body.i282.i_crit_edge ], [ 64, %if.end25.i.while.body.i282.i_crit_edge ]
  %dec.i267.i = add nsw i32 %num.addr.016.i266.i, -1
  %arrayidx.i268.i = getelementptr i8, ptr %buf.i, i32 %i.019.i263.i
  %32 = ptrtoint ptr %arrayidx.i268.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i268.i, align 1
  %conv2.i269.i = zext i8 %33 to i32
  %inc.i270.i = add i32 %tri.018.i264.i, 1
  %shr.i271.i = lshr i32 %conv2.i269.i, %tri.018.i264.i
  %and.i272.i = and i32 %shr.i271.i, 1
  %34 = zext i32 %and.i272.i to i64
  %inc4.i273.i = add nuw nsw i32 %bit.020.i262.i, 1
  %sh_prom.i274.i = zext i32 %bit.020.i262.i to i64
  %shl.i275.i = shl nuw i64 %34, %sh_prom.i274.i
  %or.i276.i = or i64 %shl.i275.i, %data.017.i265.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i270.i, i32 %conv.i.i)
  %cmp.i277.i = icmp eq i32 %inc.i270.i, %conv.i.i
  %spec.select.i278.i = select i1 %cmp.i277.i, i32 0, i32 %inc.i270.i
  %inc7.i279.i = zext i1 %cmp.i277.i to i32
  %spec.select14.i280.i = add i32 %i.019.i263.i, %inc7.i279.i
  %tobool.not.i281.i = icmp eq i32 %dec.i267.i, 0
  br i1 %tobool.not.i281.i, label %sw_get_bits.exit284.i, label %while.body.i282.i.while.body.i282.i_crit_edge

while.body.i282.i.while.body.i282.i_crit_edge:    ; preds = %while.body.i282.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i282.i

sw_get_bits.exit284.i:                            ; preds = %while.body.i282.i
  %conv.i.i.frozen7 = freeze i32 %conv.i.i
  %div.i286.i = udiv i32 66, %conv.i.i.frozen7
  %35 = mul i32 %div.i286.i, %conv.i.i.frozen7
  %rem.i287.i.decomposed = sub i32 66, %35
  br label %while.body.i308.i

while.body.i308.i:                                ; preds = %while.body.i308.i.while.body.i308.i_crit_edge, %sw_get_bits.exit284.i
  %bit.020.i288.i = phi i32 [ %inc4.i299.i, %while.body.i308.i.while.body.i308.i_crit_edge ], [ 0, %sw_get_bits.exit284.i ]
  %i.019.i289.i = phi i32 [ %spec.select14.i306.i, %while.body.i308.i.while.body.i308.i_crit_edge ], [ %div.i286.i, %sw_get_bits.exit284.i ]
  %tri.018.i290.i = phi i32 [ %spec.select.i304.i, %while.body.i308.i.while.body.i308.i_crit_edge ], [ %rem.i287.i.decomposed, %sw_get_bits.exit284.i ]
  %data.017.i291.i = phi i64 [ %or.i302.i, %while.body.i308.i.while.body.i308.i_crit_edge ], [ 0, %sw_get_bits.exit284.i ]
  %num.addr.016.i292.i = phi i32 [ %dec.i293.i, %while.body.i308.i.while.body.i308.i_crit_edge ], [ 64, %sw_get_bits.exit284.i ]
  %dec.i293.i = add nsw i32 %num.addr.016.i292.i, -1
  %arrayidx.i294.i = getelementptr i8, ptr %buf.i, i32 %i.019.i289.i
  %36 = ptrtoint ptr %arrayidx.i294.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i294.i, align 1
  %conv2.i295.i = zext i8 %37 to i32
  %inc.i296.i = add i32 %tri.018.i290.i, 1
  %shr.i297.i = lshr i32 %conv2.i295.i, %tri.018.i290.i
  %and.i298.i = and i32 %shr.i297.i, 1
  %38 = zext i32 %and.i298.i to i64
  %inc4.i299.i = add nuw nsw i32 %bit.020.i288.i, 1
  %sh_prom.i300.i = zext i32 %bit.020.i288.i to i64
  %shl.i301.i = shl nuw i64 %38, %sh_prom.i300.i
  %or.i302.i = or i64 %shl.i301.i, %data.017.i291.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i296.i, i32 %conv.i.i)
  %cmp.i303.i = icmp eq i32 %inc.i296.i, %conv.i.i
  %spec.select.i304.i = select i1 %cmp.i303.i, i32 0, i32 %inc.i296.i
  %inc7.i305.i = zext i1 %cmp.i303.i to i32
  %spec.select14.i306.i = add i32 %i.019.i289.i, %inc7.i305.i
  %tobool.not.i307.i = icmp eq i32 %dec.i293.i, 0
  br i1 %tobool.not.i307.i, label %sw_get_bits.exit310.i, label %while.body.i308.i.while.body.i308.i_crit_edge

while.body.i308.i.while.body.i308.i_crit_edge:    ; preds = %while.body.i308.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i308.i

sw_get_bits.exit310.i:                            ; preds = %while.body.i308.i
  call void @__sanitizer_cov_trace_cmp8(i64 %or.i276.i, i64 %or.i302.i)
  %cmp37.i = icmp eq i64 %or.i276.i, %or.i302.i
  br i1 %cmp37.i, label %sw_get_bits.exit310.i.if.end63.i_crit_edge, label %land.lhs.true43.i

sw_get_bits.exit310.i.if.end63.i_crit_edge:       ; preds = %sw_get_bits.exit310.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63.i

land.lhs.true43.i:                                ; preds = %sw_get_bits.exit310.i
  %sub46.i = add i32 %mul.i, -132
  %conv.i.i.frozen8 = freeze i32 %conv.i.i
  %div.i312.i = sdiv i32 %sub46.i, %conv.i.i.frozen8
  %39 = mul i32 %div.i312.i, %conv.i.i.frozen8
  %rem.i313.i.decomposed = sub i32 %sub46.i, %39
  br label %while.body.i334.i

while.body.i334.i:                                ; preds = %while.body.i334.i.while.body.i334.i_crit_edge, %land.lhs.true43.i
  %bit.020.i314.i = phi i32 [ %inc4.i325.i, %while.body.i334.i.while.body.i334.i_crit_edge ], [ 0, %land.lhs.true43.i ]
  %i.019.i315.i = phi i32 [ %spec.select14.i332.i, %while.body.i334.i.while.body.i334.i_crit_edge ], [ %div.i312.i, %land.lhs.true43.i ]
  %tri.018.i316.i = phi i32 [ %spec.select.i330.i, %while.body.i334.i.while.body.i334.i_crit_edge ], [ %rem.i313.i.decomposed, %land.lhs.true43.i ]
  %data.017.i317.i = phi i64 [ %or.i328.i, %while.body.i334.i.while.body.i334.i_crit_edge ], [ 0, %land.lhs.true43.i ]
  %num.addr.016.i318.i = phi i32 [ %dec.i319.i, %while.body.i334.i.while.body.i334.i_crit_edge ], [ 64, %land.lhs.true43.i ]
  %dec.i319.i = add nsw i32 %num.addr.016.i318.i, -1
  %arrayidx.i320.i = getelementptr i8, ptr %buf.i, i32 %i.019.i315.i
  %40 = ptrtoint ptr %arrayidx.i320.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.i320.i, align 1
  %conv2.i321.i = zext i8 %41 to i32
  %inc.i322.i = add i32 %tri.018.i316.i, 1
  %shr.i323.i = lshr i32 %conv2.i321.i, %tri.018.i316.i
  %and.i324.i = and i32 %shr.i323.i, 1
  %42 = zext i32 %and.i324.i to i64
  %inc4.i325.i = add nuw nsw i32 %bit.020.i314.i, 1
  %sh_prom.i326.i = zext i32 %bit.020.i314.i to i64
  %shl.i327.i = shl nuw i64 %42, %sh_prom.i326.i
  %or.i328.i = or i64 %shl.i327.i, %data.017.i317.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i322.i, i32 %conv.i.i)
  %cmp.i329.i = icmp eq i32 %inc.i322.i, %conv.i.i
  %spec.select.i330.i = select i1 %cmp.i329.i, i32 0, i32 %inc.i322.i
  %inc7.i331.i = zext i1 %cmp.i329.i to i32
  %spec.select14.i332.i = add i32 %i.019.i315.i, %inc7.i331.i
  %tobool.not.i333.i = icmp eq i32 %dec.i319.i, 0
  br i1 %tobool.not.i333.i, label %while.body.i334.i.while.body.i360.i_crit_edge, label %while.body.i334.i.while.body.i334.i_crit_edge

while.body.i334.i.while.body.i334.i_crit_edge:    ; preds = %while.body.i334.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i334.i

while.body.i334.i.while.body.i360.i_crit_edge:    ; preds = %while.body.i334.i
  br label %while.body.i360.i

while.body.i360.i:                                ; preds = %while.body.i360.i.while.body.i360.i_crit_edge, %while.body.i334.i.while.body.i360.i_crit_edge
  %bit.020.i340.i = phi i32 [ %inc4.i351.i, %while.body.i360.i.while.body.i360.i_crit_edge ], [ 0, %while.body.i334.i.while.body.i360.i_crit_edge ]
  %i.019.i341.i = phi i32 [ %spec.select14.i358.i, %while.body.i360.i.while.body.i360.i_crit_edge ], [ %div.i.i, %while.body.i334.i.while.body.i360.i_crit_edge ]
  %tri.018.i342.i = phi i32 [ %spec.select.i356.i, %while.body.i360.i.while.body.i360.i_crit_edge ], [ %rem.i.i.decomposed, %while.body.i334.i.while.body.i360.i_crit_edge ]
  %data.017.i343.i = phi i64 [ %or.i354.i, %while.body.i360.i.while.body.i360.i_crit_edge ], [ 0, %while.body.i334.i.while.body.i360.i_crit_edge ]
  %num.addr.016.i344.i = phi i32 [ %dec.i345.i, %while.body.i360.i.while.body.i360.i_crit_edge ], [ 64, %while.body.i334.i.while.body.i360.i_crit_edge ]
  %dec.i345.i = add nsw i32 %num.addr.016.i344.i, -1
  %arrayidx.i346.i = getelementptr i8, ptr %buf.i, i32 %i.019.i341.i
  %43 = ptrtoint ptr %arrayidx.i346.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.i346.i, align 1
  %conv2.i347.i = zext i8 %44 to i32
  %inc.i348.i = add i32 %tri.018.i342.i, 1
  %shr.i349.i = lshr i32 %conv2.i347.i, %tri.018.i342.i
  %and.i350.i = and i32 %shr.i349.i, 1
  %45 = zext i32 %and.i350.i to i64
  %inc4.i351.i = add nuw nsw i32 %bit.020.i340.i, 1
  %sh_prom.i352.i = zext i32 %bit.020.i340.i to i64
  %shl.i353.i = shl nuw i64 %45, %sh_prom.i352.i
  %or.i354.i = or i64 %shl.i353.i, %data.017.i343.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i348.i, i32 %conv.i.i)
  %cmp.i355.i = icmp eq i32 %inc.i348.i, %conv.i.i
  %spec.select.i356.i = select i1 %cmp.i355.i, i32 0, i32 %inc.i348.i
  %inc7.i357.i = zext i1 %cmp.i355.i to i32
  %spec.select14.i358.i = add i32 %i.019.i341.i, %inc7.i357.i
  %tobool.not.i359.i = icmp eq i32 %dec.i345.i, 0
  br i1 %tobool.not.i359.i, label %sw_get_bits.exit362.i, label %while.body.i360.i.while.body.i360.i_crit_edge

while.body.i360.i.while.body.i360.i_crit_edge:    ; preds = %while.body.i360.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i360.i

sw_get_bits.exit362.i:                            ; preds = %while.body.i360.i
  call void @__sanitizer_cov_trace_cmp8(i64 %or.i328.i, i64 %or.i354.i)
  %cmp56.i = icmp eq i64 %or.i328.i, %or.i354.i
  br i1 %cmp56.i, label %if.then58.i, label %sw_get_bits.exit362.i.if.end63.i_crit_edge

sw_get_bits.exit362.i.if.end63.i_crit_edge:       ; preds = %sw_get_bits.exit362.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63.i

if.then58.i:                                      ; preds = %sw_get_bits.exit362.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %buf.i, i32 %i.0371.i
  %add.ptr61.i = getelementptr i8, ptr %add.ptr.i, i32 -22
  %46 = call ptr @memmove(ptr %buf.i, ptr %add.ptr61.i, i32 22)
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then58.i, %sw_get_bits.exit362.i.if.end63.i_crit_edge, %sw_get_bits.exit310.i.if.end63.i_crit_edge, %if.end25.i.if.end63.i_crit_edge, %sw_get_bits.exit260.i.if.end63.i_crit_edge, %if.end.i.if.end63.i_crit_edge, %if.end.thread372.i, %land.lhs.true3.i.if.end63.i_crit_edge, %land.lhs.true.i.if.end63.i_crit_edge, %entry.if.end63.i_crit_edge
  %i.3.i = phi i32 [ 66, %if.then58.i ], [ %i.0371.i, %sw_get_bits.exit362.i.if.end63.i_crit_edge ], [ %call.i, %land.lhs.true3.i.if.end63.i_crit_edge ], [ %call.i, %land.lhs.true.i.if.end63.i_crit_edge ], [ %call.i, %entry.if.end63.i_crit_edge ], [ %i.0371.i, %if.end25.i.if.end63.i_crit_edge ], [ 128, %if.end.thread372.i ], [ %call.i, %if.end.i.if.end63.i_crit_edge ], [ 66, %sw_get_bits.exit260.i.if.end63.i_crit_edge ], [ 66, %sw_get_bits.exit310.i.if.end63.i_crit_edge ]
  %47 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.3.i, i32 %48)
  %cmp65.i = icmp eq i32 %i.3.i, %48
  br i1 %cmp65.i, label %land.lhs.true67.i, label %if.end63.i.if.end95.i_crit_edge

if.end63.i.if.end95.i_crit_edge:                  ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95.i

land.lhs.true67.i:                                ; preds = %if.end63.i
  %49 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %type.i, align 4
  %51 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %50, label %if.end95.thread.i [
    i32 0, label %sw.bb.i.i
    i32 1, label %for.cond70.preheader.i.i
    i32 2, label %land.lhs.true67.i.sw.bb133.i.i_crit_edge
    i32 3, label %land.lhs.true67.i.sw.bb133.i.i_crit_edge19
    i32 4, label %sw.bb185.i.i
    i32 5, label %sw.bb258.i.i
  ]

land.lhs.true67.i.sw.bb133.i.i_crit_edge19:       ; preds = %land.lhs.true67.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb133.i.i

land.lhs.true67.i.sw.bb133.i.i_crit_edge:         ; preds = %land.lhs.true67.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb133.i.i

if.end95.thread.i:                                ; preds = %land.lhs.true67.i
  call void @__sanitizer_cov_trace_pc() #9
  %ok96383.i = getelementptr inbounds %struct.sw, ptr %1, i32 0, i32 9
  %52 = ptrtoint ptr %ok96383.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %ok96383.i, align 4
  %fail97384.i = getelementptr inbounds %struct.sw, ptr %1, i32 0, i32 8
  %53 = ptrtoint ptr %fail97384.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %fail97384.i, align 4
  %inc98385.i = add i32 %54, 1
  store i32 %inc98385.i, ptr %fail97384.i, align 4
  br label %if.end120.i

for.cond70.preheader.i.i:                         ; preds = %land.lhs.true67.i
  %number.i.i = getelementptr inbounds %struct.sw, ptr %1, i32 0, i32 7
  %55 = ptrtoint ptr %number.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %number.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp711636.i.i = icmp sgt i32 %56, 0
  br i1 %cmp711636.i.i, label %for.body73.lr.ph.i.i, label %if.then71.thread.i

if.then71.thread.i:                               ; preds = %for.cond70.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %fail72394.i = getelementptr inbounds %struct.sw, ptr %1, i32 0, i32 8
  %57 = ptrtoint ptr %fail72394.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %fail72394.i, align 4
  %ok395.i = getelementptr inbounds %struct.sw, ptr %1, i32 0, i32 9
  %58 = ptrtoint ptr %ok395.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ok395.i, align 4
  %inc396.i = add i32 %59, 1
  store i32 %inc396.i, ptr %ok395.i, align 4
  br label %sw_read.exit.thread

for.body73.lr.ph.i.i:                             ; preds = %for.cond70.preheader.i.i
  %bits74.i.i = getelementptr inbounds %struct.sw, ptr %1, i32 0, i32 6
  br label %for.body73.i.i

sw.bb.i.i:                                        ; preds = %land.lhs.true67.i
  %bits.i.i = getelementptr inbounds %struct.sw, ptr %1, i32 0, i32 6
  %60 = ptrtoint ptr %bits.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %bits.i.i, align 4
  %conv.i.i.i = and i32 %61, 255
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %sw.bb.i.i
  %bit.020.i.i.i = phi i32 [ %inc4.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ 0, %sw.bb.i.i ]
  %i.019.i.i.i = phi i32 [ %spec.select14.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ 0, %sw.bb.i.i ]
  %tri.018.i.i.i = phi i32 [ %spec.select.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ 0, %sw.bb.i.i ]
  %data.017.i.i.i = phi i64 [ %or.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ 0, %sw.bb.i.i ]
  %num.addr.016.i.i.i = phi i32 [ %dec.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ 64, %sw.bb.i.i ]
  %dec.i.i.i = add nsw i32 %num.addr.016.i.i.i, -1
  %arrayidx.i.i.i = getelementptr i8, ptr %buf.i, i32 %i.019.i.i.i
  %62 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv2.i.i.i = zext i8 %63 to i32
  %inc.i.i.i = add i32 %tri.018.i.i.i, 1
  %shr.i.i.i = lshr i32 %conv2.i.i.i, %tri.018.i.i.i
  %and.i.i.i = and i32 %shr.i.i.i, 1
  %64 = zext i32 %and.i.i.i to i64
  %inc4.i.i.i = add nuw nsw i32 %bit.020.i.i.i, 1
  %sh_prom.i.i.i = zext i32 %bit.020.i.i.i to i64
  %shl.i.i.i = shl nuw i64 %64, %sh_prom.i.i.i
  %or.i.i.i = or i64 %shl.i.i.i, %data.017.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.i, i32 %conv.i.i.i)
  %cmp.i.i.i = icmp eq i32 %inc.i.i.i, %conv.i.i.i
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i32 0, i32 %inc.i.i.i
  %inc7.i.i.i = zext i1 %cmp.i.i.i to i32
  %spec.select14.i.i.i = add i32 %i.019.i.i.i, %inc7.i.i.i
  %tobool.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %sw_get_bits.exit.i.i, label %while.body.i.i.i.while.body.i.i.i_crit_edge

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i.i

sw_get_bits.exit.i.i:                             ; preds = %while.body.i.i.i
  %and.i459.i.i = and i64 %or.i.i.i, -9187201950435737472
  call void @__sanitizer_cov_trace_const_cmp8(i64 128, i64 %and.i459.i.i)
  %tobool.not.i460.i.i = icmp eq i64 %and.i459.i.i, 128
  br i1 %tobool.not.i460.i.i, label %sw_get_bits.exit.i.i.while.body.i462.i.i_crit_edge, label %sw_get_bits.exit.i.i.if.end95.i_crit_edge

sw_get_bits.exit.i.i.if.end95.i_crit_edge:        ; preds = %sw_get_bits.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95.i

sw_get_bits.exit.i.i.while.body.i462.i.i_crit_edge: ; preds = %sw_get_bits.exit.i.i
  br label %while.body.i462.i.i

while.body.i462.i.i:                              ; preds = %while.body.i462.i.i.while.body.i462.i.i_crit_edge, %sw_get_bits.exit.i.i.while.body.i462.i.i_crit_edge
  %sum.012.i.i.i = phi i8 [ %conv3.i.i.i, %while.body.i462.i.i.while.body.i462.i.i_crit_edge ], [ 0, %sw_get_bits.exit.i.i.while.body.i462.i.i_crit_edge ]
  %t.addr.011.i.i.i = phi i64 [ %shr.i461.i.i, %while.body.i462.i.i.while.body.i462.i.i_crit_edge ], [ %or.i.i.i, %sw_get_bits.exit.i.i.while.body.i462.i.i_crit_edge ]
  %65 = trunc i64 %t.addr.011.i.i.i to i8
  %66 = and i8 %65, 15
  %conv3.i.i.i = add i8 %66, %sum.012.i.i.i
  %shr.i461.i.i = lshr i64 %t.addr.011.i.i.i, 4
  %tobool1.not.i.i.i = icmp ult i64 %t.addr.011.i.i.i, 16
  br i1 %tobool1.not.i.i.i, label %sw_check.exit.i.i, label %while.body.i462.i.i.while.body.i462.i.i_crit_edge

while.body.i462.i.i.while.body.i462.i.i_crit_edge: ; preds = %while.body.i462.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i462.i.i

sw_check.exit.i.i:                                ; preds = %while.body.i462.i.i
  %phi.bo.i.i.i = and i8 %conv3.i.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %phi.bo.i.i.i)
  %tobool.not.i363.i = icmp eq i8 %phi.bo.i.i.i, 0
  br i1 %tobool.not.i363.i, label %lor.lhs.false.i.i, label %sw_check.exit.i.i.if.end95.i_crit_edge

sw_check.exit.i.i.if.end95.i_crit_edge:           ; preds = %sw_check.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95.i

lor.lhs.false.i.i:                                ; preds = %sw_check.exit.i.i
  %conv.i.i.i.frozen = freeze i32 %conv.i.i.i
  %div.i.i.i = udiv i32 6, %conv.i.i.i.frozen
  %67 = mul i32 %div.i.i.i, %conv.i.i.i.frozen
  %rem.i.i.i.decomposed = sub i32 6, %67
  %arrayidx.i470.i.i = getelementptr i8, ptr %buf.i, i32 %div.i.i.i
  %68 = ptrtoint ptr %arrayidx.i470.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx.i470.i.i, align 1
  %conv2.i471.i.i = zext i8 %69 to i32
  %shr.i473.i.i = lshr i32 %conv2.i471.i.i, %rem.i.i.i.decomposed
  %conv.i.i.i.frozen9 = freeze i32 %conv.i.i.i
  %div.i488.i.i = udiv i32 60, %conv.i.i.i.frozen9
  %70 = mul i32 %div.i488.i.i, %conv.i.i.i.frozen9
  %rem.i489.i.i.decomposed = sub i32 60, %70
  %arrayidx.i496.i.i = getelementptr i8, ptr %buf.i, i32 %div.i488.i.i
  %71 = ptrtoint ptr %arrayidx.i496.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx.i496.i.i, align 1
  %conv2.i497.i.i = zext i8 %72 to i32
  %inc.i498.i.i = add nuw nsw i32 %rem.i489.i.i.decomposed, 1
  %shr.i499.i.i = lshr i32 %conv2.i497.i.i, %rem.i489.i.i.decomposed
  %and.i500.i.i = and i32 %shr.i499.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i498.i.i, i32 %conv.i.i.i)
  %cmp.i505.i.i = icmp eq i32 %inc.i498.i.i, %conv.i.i.i
  %spec.select.i506.i.i = select i1 %cmp.i505.i.i, i32 0, i32 %inc.i498.i.i
  %inc7.i507.i.i = zext i1 %cmp.i505.i.i to i32
  %spec.select14.i508.i.i = add nuw nsw i32 %div.i488.i.i, %inc7.i507.i.i
  %arrayidx.i496.1.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i508.i.i
  %73 = ptrtoint ptr %arrayidx.i496.1.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx.i496.1.i.i, align 1
  %conv2.i497.1.i.i = zext i8 %74 to i32
  %inc.i498.1.i.i = add nuw nsw i32 %spec.select.i506.i.i, 1
  %shr.i499.1.i.i = lshr i32 %conv2.i497.1.i.i, %spec.select.i506.i.i
  %and.i500.1.i.i = shl nuw nsw i32 %shr.i499.1.i.i, 1
  %75 = and i32 %and.i500.1.i.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i498.1.i.i, i32 %conv.i.i.i)
  %cmp.i505.1.i.i = icmp eq i32 %inc.i498.1.i.i, %conv.i.i.i
  %spec.select.i506.1.i.i = select i1 %cmp.i505.1.i.i, i32 0, i32 %inc.i498.1.i.i
  %inc7.i507.1.i.i = zext i1 %cmp.i505.1.i.i to i32
  %spec.select14.i508.1.i.i = add nuw nsw i32 %spec.select14.i508.i.i, %inc7.i507.1.i.i
  %arrayidx.i496.2.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i508.1.i.i
  %76 = ptrtoint ptr %arrayidx.i496.2.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx.i496.2.i.i, align 1
  %conv2.i497.2.i.i = zext i8 %77 to i32
  %shr.i499.2.i.i = lshr i32 %conv2.i497.2.i.i, %spec.select.i506.1.i.i
  %and.i500.2.i.i = shl nuw nsw i32 %shr.i499.2.i.i, 2
  %78 = and i32 %and.i500.2.i.i, 4
  %and.i474.i.i = shl nuw nsw i32 %shr.i473.i.i, 3
  %79 = and i32 %and.i474.i.i, 8
  %or.i504.11703.i.i = or i32 %and.i500.i.i, %79
  %or.i504.21704.i.i = or i32 %or.i504.11703.i.i, %75
  %or1705.i.i = or i32 %or.i504.21704.i.i, %78
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %or1705.i.i)
  %cmp.i364.i = icmp ugt i32 %or1705.i.i, 8
  br i1 %cmp.i364.i, label %lor.lhs.false.i.i.if.end95.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.if.end95.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev10.i.i = getelementptr inbounds %struct.sw, ptr %1, i32 0, i32 1
  %80 = ptrtoint ptr %dev10.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev10.i.i, align 4
  %conv.i.i.i.frozen10 = freeze i32 %conv.i.i.i
  %div.i514.i.i = udiv i32 3, %conv.i.i.i.frozen10
  %82 = mul i32 %div.i514.i.i, %conv.i.i.i.frozen10
  %rem.i515.i.i.decomposed = sub i32 3, %82
  %arrayidx.i522.i.i = getelementptr i8, ptr %buf.i, i32 %div.i514.i.i
  %83 = ptrtoint ptr %arrayidx.i522.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx.i522.i.i, align 1
  %conv2.i523.i.i = zext i8 %84 to i32
  %inc.i524.i.i = add nuw nsw i32 %rem.i515.i.i.decomposed, 1
  %shr.i525.i.i = lshr i32 %conv2.i523.i.i, %rem.i515.i.i.decomposed
  %and.i526.i.i = and i32 %shr.i525.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i524.i.i, i32 %conv.i.i.i)
  %cmp.i531.i.i = icmp eq i32 %inc.i524.i.i, %conv.i.i.i
  %spec.select.i532.i.i = select i1 %cmp.i531.i.i, i32 0, i32 %inc.i524.i.i
  %inc7.i533.i.i = zext i1 %cmp.i531.i.i to i32
  %spec.select14.i534.i.i = add nuw nsw i32 %div.i514.i.i, %inc7.i533.i.i
  %arrayidx.i522.1.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i534.i.i
  %85 = ptrtoint ptr %arrayidx.i522.1.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx.i522.1.i.i, align 1
  %conv2.i523.1.i.i = zext i8 %86 to i32
  %inc.i524.1.i.i = add nuw nsw i32 %spec.select.i532.i.i, 1
  %shr.i525.1.i.i = lshr i32 %conv2.i523.1.i.i, %spec.select.i532.i.i
  %and.i526.1.i.i = shl nuw nsw i32 %shr.i525.1.i.i, 1
  %87 = and i32 %and.i526.1.i.i, 2
  %or.i530.11706.i.i = or i32 %and.i526.i.i, %87
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i524.1.i.i, i32 %conv.i.i.i)
  %cmp.i531.1.i.i = icmp eq i32 %inc.i524.1.i.i, %conv.i.i.i
  %spec.select.i532.1.i.i = select i1 %cmp.i531.1.i.i, i32 0, i32 %inc.i524.1.i.i
  %inc7.i533.1.i.i = zext i1 %cmp.i531.1.i.i to i32
  %spec.select14.i534.1.i.i = add nuw nsw i32 %spec.select14.i534.i.i, %inc7.i533.1.i.i
  %arrayidx.i522.2.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i534.1.i.i
  %88 = ptrtoint ptr %arrayidx.i522.2.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx.i522.2.i.i, align 1
  %conv2.i523.2.i.i = zext i8 %89 to i32
  %shr.i525.2.i.i = lshr i32 %conv2.i523.2.i.i, %spec.select.i532.1.i.i
  %and.i526.2.i.i = shl nuw nsw i32 %shr.i525.2.i.i, 2
  %90 = and i32 %and.i526.2.i.i, 4
  %or.i530.21707.i.i = or i32 %90, %or.i530.11706.i.i
  %conv.i.i.i.frozen11 = freeze i32 %conv.i.i.i
  %div.i540.i.i = udiv i32 16, %conv.i.i.i.frozen11
  %91 = mul i32 %div.i540.i.i, %conv.i.i.i.frozen11
  %rem.i541.i.i.decomposed = sub i32 16, %91
  %arrayidx.i548.i.i = getelementptr i8, ptr %buf.i, i32 %div.i540.i.i
  %92 = ptrtoint ptr %arrayidx.i548.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx.i548.i.i, align 1
  %conv2.i549.i.i = zext i8 %93 to i32
  %inc.i550.i.i = add nuw nsw i32 %rem.i541.i.i.decomposed, 1
  %shr.i551.i.i = lshr i32 %conv2.i549.i.i, %rem.i541.i.i.decomposed
  %and.i552.i.i = and i32 %shr.i551.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i550.i.i, i32 %conv.i.i.i)
  %cmp.i557.i.i = icmp eq i32 %inc.i550.i.i, %conv.i.i.i
  %spec.select.i558.i.i = select i1 %cmp.i557.i.i, i32 0, i32 %inc.i550.i.i
  %inc7.i559.i.i = zext i1 %cmp.i557.i.i to i32
  %spec.select14.i560.i.i = add nuw nsw i32 %div.i540.i.i, %inc7.i559.i.i
  %arrayidx.i548.1.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i560.i.i
  %94 = ptrtoint ptr %arrayidx.i548.1.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx.i548.1.i.i, align 1
  %conv2.i549.1.i.i = zext i8 %95 to i32
  %inc.i550.1.i.i = add nuw nsw i32 %spec.select.i558.i.i, 1
  %shr.i551.1.i.i = lshr i32 %conv2.i549.1.i.i, %spec.select.i558.i.i
  %and.i552.1.i.i = shl nuw nsw i32 %shr.i551.1.i.i, 1
  %96 = and i32 %and.i552.1.i.i, 2
  %or.i556.11708.i.i = or i32 %and.i552.i.i, %96
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i550.1.i.i, i32 %conv.i.i.i)
  %cmp.i557.1.i.i = icmp eq i32 %inc.i550.1.i.i, %conv.i.i.i
  %spec.select.i558.1.i.i = select i1 %cmp.i557.1.i.i, i32 0, i32 %inc.i550.1.i.i
  %inc7.i559.1.i.i = zext i1 %cmp.i557.1.i.i to i32
  %spec.select14.i560.1.i.i = add nuw nsw i32 %spec.select14.i560.i.i, %inc7.i559.1.i.i
  %arrayidx.i548.2.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i560.1.i.i
  %97 = ptrtoint ptr %arrayidx.i548.2.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx.i548.2.i.i, align 1
  %conv2.i549.2.i.i = zext i8 %98 to i32
  %inc.i550.2.i.i = add nuw nsw i32 %spec.select.i558.1.i.i, 1
  %shr.i551.2.i.i = lshr i32 %conv2.i549.2.i.i, %spec.select.i558.1.i.i
  %and.i552.2.i.i = shl nuw nsw i32 %shr.i551.2.i.i, 2
  %99 = and i32 %and.i552.2.i.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i550.2.i.i, i32 %conv.i.i.i)
  %cmp.i557.2.i.i = icmp eq i32 %inc.i550.2.i.i, %conv.i.i.i
  %spec.select.i558.2.i.i = select i1 %cmp.i557.2.i.i, i32 0, i32 %inc.i550.2.i.i
  %inc7.i559.2.i.i = zext i1 %cmp.i557.2.i.i to i32
  %spec.select14.i560.2.i.i = add nuw nsw i32 %spec.select14.i560.1.i.i, %inc7.i559.2.i.i
  %arrayidx.i548.3.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i560.2.i.i
  %100 = ptrtoint ptr %arrayidx.i548.3.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx.i548.3.i.i, align 1
  %conv2.i549.3.i.i = zext i8 %101 to i32
  %inc.i550.3.i.i = add nuw nsw i32 %spec.select.i558.2.i.i, 1
  %shr.i551.3.i.i = lshr i32 %conv2.i549.3.i.i, %spec.select.i558.2.i.i
  %and.i552.3.i.i = shl nuw nsw i32 %shr.i551.3.i.i, 3
  %102 = and i32 %and.i552.3.i.i, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i550.3.i.i, i32 %conv.i.i.i)
  %cmp.i557.3.i.i = icmp eq i32 %inc.i550.3.i.i, %conv.i.i.i
  %spec.select.i558.3.i.i = select i1 %cmp.i557.3.i.i, i32 0, i32 %inc.i550.3.i.i
  %inc7.i559.3.i.i = zext i1 %cmp.i557.3.i.i to i32
  %spec.select14.i560.3.i.i = add nuw nsw i32 %spec.select14.i560.2.i.i, %inc7.i559.3.i.i
  %arrayidx.i548.4.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i560.3.i.i
  %103 = ptrtoint ptr %arrayidx.i548.4.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx.i548.4.i.i, align 1
  %conv2.i549.4.i.i = zext i8 %104 to i32
  %inc.i550.4.i.i = add nuw nsw i32 %spec.select.i558.3.i.i, 1
  %shr.i551.4.i.i = lshr i32 %conv2.i549.4.i.i, %spec.select.i558.3.i.i
  %and.i552.4.i.i = shl nuw nsw i32 %shr.i551.4.i.i, 4
  %105 = and i32 %and.i552.4.i.i, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i550.4.i.i, i32 %conv.i.i.i)
  %cmp.i557.4.i.i = icmp eq i32 %inc.i550.4.i.i, %conv.i.i.i
  %spec.select.i558.4.i.i = select i1 %cmp.i557.4.i.i, i32 0, i32 %inc.i550.4.i.i
  %inc7.i559.4.i.i = zext i1 %cmp.i557.4.i.i to i32
  %spec.select14.i560.4.i.i = add nuw nsw i32 %spec.select14.i560.3.i.i, %inc7.i559.4.i.i
  %arrayidx.i548.5.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i560.4.i.i
  %106 = ptrtoint ptr %arrayidx.i548.5.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx.i548.5.i.i, align 1
  %conv2.i549.5.i.i = zext i8 %107 to i32
  %inc.i550.5.i.i = add nuw nsw i32 %spec.select.i558.4.i.i, 1
  %shr.i551.5.i.i = lshr i32 %conv2.i549.5.i.i, %spec.select.i558.4.i.i
  %and.i552.5.i.i = shl nuw nsw i32 %shr.i551.5.i.i, 5
  %108 = and i32 %and.i552.5.i.i, 32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i550.5.i.i, i32 %conv.i.i.i)
  %cmp.i557.5.i.i = icmp eq i32 %inc.i550.5.i.i, %conv.i.i.i
  %spec.select.i558.5.i.i = select i1 %cmp.i557.5.i.i, i32 0, i32 %inc.i550.5.i.i
  %inc7.i559.5.i.i = zext i1 %cmp.i557.5.i.i to i32
  %spec.select14.i560.5.i.i = add nuw nsw i32 %spec.select14.i560.4.i.i, %inc7.i559.5.i.i
  %arrayidx.i548.6.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i560.5.i.i
  %109 = ptrtoint ptr %arrayidx.i548.6.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx.i548.6.i.i, align 1
  %conv2.i549.6.i.i = zext i8 %110 to i32
  %shr.i551.6.i.i = lshr i32 %conv2.i549.6.i.i, %spec.select.i558.5.i.i
  %and.i552.6.i.i = shl nuw nsw i32 %shr.i551.6.i.i, 6
  %111 = and i32 %and.i552.6.i.i, 64
  %112 = shl nuw nsw i32 %or.i530.21707.i.i, 7
  %or.i556.21709.i.i = or i32 %or.i556.11708.i.i, %112
  %or.i556.31710.i.i = or i32 %99, %or.i556.21709.i.i
  %or.i556.41711.i.i = or i32 %102, %or.i556.31710.i.i
  %or.i556.51712.i.i = or i32 %105, %or.i556.41711.i.i
  %or.i556.61713.i.i = or i32 %108, %or.i556.51712.i.i
  %or181714.i.i = or i32 %111, %or.i556.61713.i.i
  tail call void @input_event(ptr noundef %81, i32 noundef 3, i32 noundef 0, i32 noundef %or181714.i.i) #7
  %113 = ptrtoint ptr %bits.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %bits.i.i, align 4
  %conv.i565.i.i = and i32 %114, 255
  %115 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %buf.i, align 1
  %117 = and i8 %116, 1
  %118 = zext i8 %117 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv.i565.i.i)
  %cmp.i581.i.i = icmp eq i32 %conv.i565.i.i, 1
  %not.cmp.i581.i.i = xor i1 %cmp.i581.i.i, true
  %spec.select.i582.i.i = zext i1 %not.cmp.i581.i.i to i32
  %inc7.i583.i.i = zext i1 %cmp.i581.i.i to i32
  %arrayidx.i572.1.i.i = getelementptr i8, ptr %buf.i, i32 %inc7.i583.i.i
  %119 = ptrtoint ptr %arrayidx.i572.1.i.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx.i572.1.i.i, align 1
  %conv2.i573.1.i.i = zext i8 %120 to i32
  %inc.i574.1.i.i = select i1 %cmp.i581.i.i, i32 1, i32 2
  %shr.i575.1.i.i = lshr i32 %conv2.i573.1.i.i, %spec.select.i582.i.i
  %and.i576.1.i.i = shl nuw nsw i32 %shr.i575.1.i.i, 1
  %121 = and i32 %and.i576.1.i.i, 2
  %or.i580.1.i.i = or i32 %121, %118
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i574.1.i.i, i32 %conv.i565.i.i)
  %cmp.i581.1.i.i = icmp eq i32 %inc.i574.1.i.i, %conv.i565.i.i
  %spec.select.i582.1.i.i = select i1 %cmp.i581.1.i.i, i32 0, i32 %inc.i574.1.i.i
  %inc7.i583.1.i.i = zext i1 %cmp.i581.1.i.i to i32
  %spec.select14.i584.1.i.i = add nuw nsw i32 %inc7.i583.1.i.i, %inc7.i583.i.i
  %arrayidx.i572.2.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i584.1.i.i
  %122 = ptrtoint ptr %arrayidx.i572.2.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx.i572.2.i.i, align 1
  %conv2.i573.2.i.i = zext i8 %123 to i32
  %shr.i575.2.i.i = lshr i32 %conv2.i573.2.i.i, %spec.select.i582.1.i.i
  %and.i576.2.i.i = shl nuw nsw i32 %shr.i575.2.i.i, 2
  %124 = and i32 %and.i576.2.i.i, 4
  %or.i580.2.i.i = or i32 %124, %or.i580.1.i.i
  %div.i590.rhs.trunc.i.i = trunc i32 %114 to i8
  %div.i590.rhs.trunc.i.i.frozen = freeze i8 %div.i590.rhs.trunc.i.i
  %div.i5901738.i.i = udiv i8 24, %div.i590.rhs.trunc.i.i.frozen
  %div.i590.zext.i.i = zext i8 %div.i5901738.i.i to i32
  %125 = mul i8 %div.i5901738.i.i, %div.i590.rhs.trunc.i.i.frozen
  %rem.i5911739.i.i.decomposed = sub i8 24, %125
  %rem.i591.zext.i.i = zext i8 %rem.i5911739.i.i.decomposed to i32
  %arrayidx.i598.i.i = getelementptr i8, ptr %buf.i, i32 %div.i590.zext.i.i
  %126 = ptrtoint ptr %arrayidx.i598.i.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx.i598.i.i, align 1
  %conv2.i599.i.i = zext i8 %127 to i32
  %inc.i600.i.i = add nuw nsw i32 %rem.i591.zext.i.i, 1
  %shr.i601.i.i = lshr i32 %conv2.i599.i.i, %rem.i591.zext.i.i
  %and.i602.i.i = and i32 %shr.i601.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i600.i.i, i32 %conv.i565.i.i)
  %cmp.i607.i.i = icmp eq i32 %inc.i600.i.i, %conv.i565.i.i
  %spec.select.i608.i.i = select i1 %cmp.i607.i.i, i32 0, i32 %inc.i600.i.i
  %inc7.i609.i.i = zext i1 %cmp.i607.i.i to i32
  %spec.select14.i610.i.i = add nuw nsw i32 %inc7.i609.i.i, %div.i590.zext.i.i
  %arrayidx.i598.1.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i610.i.i
  %128 = ptrtoint ptr %arrayidx.i598.1.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx.i598.1.i.i, align 1
  %conv2.i599.1.i.i = zext i8 %129 to i32
  %inc.i600.1.i.i = add nuw nsw i32 %spec.select.i608.i.i, 1
  %shr.i601.1.i.i = lshr i32 %conv2.i599.1.i.i, %spec.select.i608.i.i
  %and.i602.1.i.i = shl nuw nsw i32 %shr.i601.1.i.i, 1
  %130 = and i32 %and.i602.1.i.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i600.1.i.i, i32 %conv.i565.i.i)
  %cmp.i607.1.i.i = icmp eq i32 %inc.i600.1.i.i, %conv.i565.i.i
  %spec.select.i608.1.i.i = select i1 %cmp.i607.1.i.i, i32 0, i32 %inc.i600.1.i.i
  %inc7.i609.1.i.i = zext i1 %cmp.i607.1.i.i to i32
  %spec.select14.i610.1.i.i = add nuw nsw i32 %spec.select14.i610.i.i, %inc7.i609.1.i.i
  %arrayidx.i598.2.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i610.1.i.i
  %131 = ptrtoint ptr %arrayidx.i598.2.i.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx.i598.2.i.i, align 1
  %conv2.i599.2.i.i = zext i8 %132 to i32
  %inc.i600.2.i.i = add nuw nsw i32 %spec.select.i608.1.i.i, 1
  %shr.i601.2.i.i = lshr i32 %conv2.i599.2.i.i, %spec.select.i608.1.i.i
  %and.i602.2.i.i = shl nuw nsw i32 %shr.i601.2.i.i, 2
  %133 = and i32 %and.i602.2.i.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i600.2.i.i, i32 %conv.i565.i.i)
  %cmp.i607.2.i.i = icmp eq i32 %inc.i600.2.i.i, %conv.i565.i.i
  %spec.select.i608.2.i.i = select i1 %cmp.i607.2.i.i, i32 0, i32 %inc.i600.2.i.i
  %inc7.i609.2.i.i = zext i1 %cmp.i607.2.i.i to i32
  %spec.select14.i610.2.i.i = add nuw nsw i32 %spec.select14.i610.1.i.i, %inc7.i609.2.i.i
  %arrayidx.i598.3.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i610.2.i.i
  %134 = ptrtoint ptr %arrayidx.i598.3.i.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx.i598.3.i.i, align 1
  %conv2.i599.3.i.i = zext i8 %135 to i32
  %inc.i600.3.i.i = add nuw nsw i32 %spec.select.i608.2.i.i, 1
  %shr.i601.3.i.i = lshr i32 %conv2.i599.3.i.i, %spec.select.i608.2.i.i
  %and.i602.3.i.i = shl nuw nsw i32 %shr.i601.3.i.i, 3
  %136 = and i32 %and.i602.3.i.i, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i600.3.i.i, i32 %conv.i565.i.i)
  %cmp.i607.3.i.i = icmp eq i32 %inc.i600.3.i.i, %conv.i565.i.i
  %spec.select.i608.3.i.i = select i1 %cmp.i607.3.i.i, i32 0, i32 %inc.i600.3.i.i
  %inc7.i609.3.i.i = zext i1 %cmp.i607.3.i.i to i32
  %spec.select14.i610.3.i.i = add nuw nsw i32 %spec.select14.i610.2.i.i, %inc7.i609.3.i.i
  %arrayidx.i598.4.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i610.3.i.i
  %137 = ptrtoint ptr %arrayidx.i598.4.i.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx.i598.4.i.i, align 1
  %conv2.i599.4.i.i = zext i8 %138 to i32
  %inc.i600.4.i.i = add nuw nsw i32 %spec.select.i608.3.i.i, 1
  %shr.i601.4.i.i = lshr i32 %conv2.i599.4.i.i, %spec.select.i608.3.i.i
  %and.i602.4.i.i = shl nuw nsw i32 %shr.i601.4.i.i, 4
  %139 = and i32 %and.i602.4.i.i, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i600.4.i.i, i32 %conv.i565.i.i)
  %cmp.i607.4.i.i = icmp eq i32 %inc.i600.4.i.i, %conv.i565.i.i
  %spec.select.i608.4.i.i = select i1 %cmp.i607.4.i.i, i32 0, i32 %inc.i600.4.i.i
  %inc7.i609.4.i.i = zext i1 %cmp.i607.4.i.i to i32
  %spec.select14.i610.4.i.i = add nuw nsw i32 %spec.select14.i610.3.i.i, %inc7.i609.4.i.i
  %arrayidx.i598.5.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i610.4.i.i
  %140 = ptrtoint ptr %arrayidx.i598.5.i.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx.i598.5.i.i, align 1
  %conv2.i599.5.i.i = zext i8 %141 to i32
  %inc.i600.5.i.i = add nuw nsw i32 %spec.select.i608.4.i.i, 1
  %shr.i601.5.i.i = lshr i32 %conv2.i599.5.i.i, %spec.select.i608.4.i.i
  %and.i602.5.i.i = shl nuw nsw i32 %shr.i601.5.i.i, 5
  %142 = and i32 %and.i602.5.i.i, 32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i600.5.i.i, i32 %conv.i565.i.i)
  %cmp.i607.5.i.i = icmp eq i32 %inc.i600.5.i.i, %conv.i565.i.i
  %spec.select.i608.5.i.i = select i1 %cmp.i607.5.i.i, i32 0, i32 %inc.i600.5.i.i
  %inc7.i609.5.i.i = zext i1 %cmp.i607.5.i.i to i32
  %spec.select14.i610.5.i.i = add nuw nsw i32 %spec.select14.i610.4.i.i, %inc7.i609.5.i.i
  %arrayidx.i598.6.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i610.5.i.i
  %143 = ptrtoint ptr %arrayidx.i598.6.i.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx.i598.6.i.i, align 1
  %conv2.i599.6.i.i = zext i8 %144 to i32
  %shr.i601.6.i.i = lshr i32 %conv2.i599.6.i.i, %spec.select.i608.5.i.i
  %and.i602.6.i.i = shl nuw nsw i32 %shr.i601.6.i.i, 6
  %145 = and i32 %and.i602.6.i.i, 64
  %shl23.i.i = shl nuw nsw i32 %or.i580.2.i.i, 7
  %or.i606.11715.i.i = or i32 %shl23.i.i, %and.i602.i.i
  %or.i606.21716.i.i = or i32 %130, %or.i606.11715.i.i
  %or.i606.31717.i.i = or i32 %133, %or.i606.21716.i.i
  %or.i606.41718.i.i = or i32 %136, %or.i606.31717.i.i
  %or.i606.51719.i.i = or i32 %139, %or.i606.41718.i.i
  %or.i606.61720.i.i = or i32 %142, %or.i606.51719.i.i
  %or27.i.i = or i32 %145, %or.i606.61720.i.i
  tail call void @input_event(ptr noundef %81, i32 noundef 3, i32 noundef 1, i32 noundef %or27.i.i) #7
  %146 = ptrtoint ptr %bits.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %bits.i.i, align 4
  %conv.i615.i.i = and i32 %147, 255
  %div.i6161572.rhs.trunc.i.i = trunc i32 %147 to i8
  %div.i6161572.rhs.trunc.i.i.frozen = freeze i8 %div.i6161572.rhs.trunc.i.i
  %div.i61615721573.i.i = udiv i8 35, %div.i6161572.rhs.trunc.i.i.frozen
  %div.i6161572.zext.i.i = zext i8 %div.i61615721573.i.i to i32
  %148 = mul i8 %div.i61615721573.i.i, %div.i6161572.rhs.trunc.i.i.frozen
  %rem.i61715741575.i.i.decomposed = sub i8 35, %148
  %rem.i6171574.zext.i.i = zext i8 %rem.i61715741575.i.i.decomposed to i32
  %arrayidx.i624.i.i = getelementptr i8, ptr %buf.i, i32 %div.i6161572.zext.i.i
  %149 = ptrtoint ptr %arrayidx.i624.i.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx.i624.i.i, align 1
  %conv2.i625.i.i = zext i8 %150 to i32
  %inc.i626.i.i = add nuw nsw i32 %rem.i6171574.zext.i.i, 1
  %shr.i627.i.i = lshr i32 %conv2.i625.i.i, %rem.i6171574.zext.i.i
  %and.i628.i.i = and i32 %shr.i627.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i626.i.i, i32 %conv.i615.i.i)
  %cmp.i633.i.i = icmp eq i32 %inc.i626.i.i, %conv.i615.i.i
  %spec.select.i634.i.i = select i1 %cmp.i633.i.i, i32 0, i32 %inc.i626.i.i
  %inc7.i635.i.i = zext i1 %cmp.i633.i.i to i32
  %spec.select14.i636.i.i = add nuw nsw i32 %inc7.i635.i.i, %div.i6161572.zext.i.i
  %arrayidx.i624.1.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i636.i.i
  %151 = ptrtoint ptr %arrayidx.i624.1.i.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %arrayidx.i624.1.i.i, align 1
  %conv2.i625.1.i.i = zext i8 %152 to i32
  %shr.i627.1.i.i = lshr i32 %conv2.i625.1.i.i, %spec.select.i634.i.i
  %and.i628.1.i.i = shl nuw nsw i32 %shr.i627.1.i.i, 1
  %153 = and i32 %and.i628.1.i.i, 2
  %or.i632.11721.i.i = or i32 %153, %and.i628.i.i
  %div.i6161572.rhs.trunc.i.i.frozen12 = freeze i8 %div.i6161572.rhs.trunc.i.i
  %div.i6421740.i.i = udiv i8 40, %div.i6161572.rhs.trunc.i.i.frozen12
  %div.i642.zext.i.i = zext i8 %div.i6421740.i.i to i32
  %154 = mul i8 %div.i6421740.i.i, %div.i6161572.rhs.trunc.i.i.frozen12
  %rem.i6431741.i.i.decomposed = sub i8 40, %154
  %rem.i643.zext.i.i = zext i8 %rem.i6431741.i.i.decomposed to i32
  %arrayidx.i650.i.i = getelementptr i8, ptr %buf.i, i32 %div.i642.zext.i.i
  %155 = ptrtoint ptr %arrayidx.i650.i.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %arrayidx.i650.i.i, align 1
  %conv2.i651.i.i = zext i8 %156 to i32
  %inc.i652.i.i = add nuw nsw i32 %rem.i643.zext.i.i, 1
  %shr.i653.i.i = lshr i32 %conv2.i651.i.i, %rem.i643.zext.i.i
  %and.i654.i.i = and i32 %shr.i653.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i652.i.i, i32 %conv.i615.i.i)
  %cmp.i659.i.i = icmp eq i32 %inc.i652.i.i, %conv.i615.i.i
  %spec.select.i660.i.i = select i1 %cmp.i659.i.i, i32 0, i32 %inc.i652.i.i
  %inc7.i661.i.i = zext i1 %cmp.i659.i.i to i32
  %spec.select14.i662.i.i = add nuw nsw i32 %inc7.i661.i.i, %div.i642.zext.i.i
  %arrayidx.i650.1.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i662.i.i
  %157 = ptrtoint ptr %arrayidx.i650.1.i.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %arrayidx.i650.1.i.i, align 1
  %conv2.i651.1.i.i = zext i8 %158 to i32
  %inc.i652.1.i.i = add nuw nsw i32 %spec.select.i660.i.i, 1
  %shr.i653.1.i.i = lshr i32 %conv2.i651.1.i.i, %spec.select.i660.i.i
  %and.i654.1.i.i = shl nuw nsw i32 %shr.i653.1.i.i, 1
  %159 = and i32 %and.i654.1.i.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i652.1.i.i, i32 %conv.i615.i.i)
  %cmp.i659.1.i.i = icmp eq i32 %inc.i652.1.i.i, %conv.i615.i.i
  %spec.select.i660.1.i.i = select i1 %cmp.i659.1.i.i, i32 0, i32 %inc.i652.1.i.i
  %inc7.i661.1.i.i = zext i1 %cmp.i659.1.i.i to i32
  %spec.select14.i662.1.i.i = add nuw nsw i32 %spec.select14.i662.i.i, %inc7.i661.1.i.i
  %arrayidx.i650.2.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i662.1.i.i
  %160 = ptrtoint ptr %arrayidx.i650.2.i.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %arrayidx.i650.2.i.i, align 1
  %conv2.i651.2.i.i = zext i8 %161 to i32
  %inc.i652.2.i.i = add nuw nsw i32 %spec.select.i660.1.i.i, 1
  %shr.i653.2.i.i = lshr i32 %conv2.i651.2.i.i, %spec.select.i660.1.i.i
  %and.i654.2.i.i = shl nuw nsw i32 %shr.i653.2.i.i, 2
  %162 = and i32 %and.i654.2.i.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i652.2.i.i, i32 %conv.i615.i.i)
  %cmp.i659.2.i.i = icmp eq i32 %inc.i652.2.i.i, %conv.i615.i.i
  %spec.select.i660.2.i.i = select i1 %cmp.i659.2.i.i, i32 0, i32 %inc.i652.2.i.i
  %inc7.i661.2.i.i = zext i1 %cmp.i659.2.i.i to i32
  %spec.select14.i662.2.i.i = add nuw nsw i32 %spec.select14.i662.1.i.i, %inc7.i661.2.i.i
  %arrayidx.i650.3.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i662.2.i.i
  %163 = ptrtoint ptr %arrayidx.i650.3.i.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %arrayidx.i650.3.i.i, align 1
  %conv2.i651.3.i.i = zext i8 %164 to i32
  %inc.i652.3.i.i = add nuw nsw i32 %spec.select.i660.2.i.i, 1
  %shr.i653.3.i.i = lshr i32 %conv2.i651.3.i.i, %spec.select.i660.2.i.i
  %and.i654.3.i.i = shl nuw nsw i32 %shr.i653.3.i.i, 3
  %165 = and i32 %and.i654.3.i.i, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i652.3.i.i, i32 %conv.i615.i.i)
  %cmp.i659.3.i.i = icmp eq i32 %inc.i652.3.i.i, %conv.i615.i.i
  %spec.select.i660.3.i.i = select i1 %cmp.i659.3.i.i, i32 0, i32 %inc.i652.3.i.i
  %inc7.i661.3.i.i = zext i1 %cmp.i659.3.i.i to i32
  %spec.select14.i662.3.i.i = add nuw nsw i32 %spec.select14.i662.2.i.i, %inc7.i661.3.i.i
  %arrayidx.i650.4.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i662.3.i.i
  %166 = ptrtoint ptr %arrayidx.i650.4.i.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %arrayidx.i650.4.i.i, align 1
  %conv2.i651.4.i.i = zext i8 %167 to i32
  %inc.i652.4.i.i = add nuw nsw i32 %spec.select.i660.3.i.i, 1
  %shr.i653.4.i.i = lshr i32 %conv2.i651.4.i.i, %spec.select.i660.3.i.i
  %and.i654.4.i.i = shl nuw nsw i32 %shr.i653.4.i.i, 4
  %168 = and i32 %and.i654.4.i.i, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i652.4.i.i, i32 %conv.i615.i.i)
  %cmp.i659.4.i.i = icmp eq i32 %inc.i652.4.i.i, %conv.i615.i.i
  %spec.select.i660.4.i.i = select i1 %cmp.i659.4.i.i, i32 0, i32 %inc.i652.4.i.i
  %inc7.i661.4.i.i = zext i1 %cmp.i659.4.i.i to i32
  %spec.select14.i662.4.i.i = add nuw nsw i32 %spec.select14.i662.3.i.i, %inc7.i661.4.i.i
  %arrayidx.i650.5.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i662.4.i.i
  %169 = ptrtoint ptr %arrayidx.i650.5.i.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %arrayidx.i650.5.i.i, align 1
  %conv2.i651.5.i.i = zext i8 %170 to i32
  %inc.i652.5.i.i = add nuw nsw i32 %spec.select.i660.4.i.i, 1
  %shr.i653.5.i.i = lshr i32 %conv2.i651.5.i.i, %spec.select.i660.4.i.i
  %and.i654.5.i.i = shl nuw nsw i32 %shr.i653.5.i.i, 5
  %171 = and i32 %and.i654.5.i.i, 32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i652.5.i.i, i32 %conv.i615.i.i)
  %cmp.i659.5.i.i = icmp eq i32 %inc.i652.5.i.i, %conv.i615.i.i
  %spec.select.i660.5.i.i = select i1 %cmp.i659.5.i.i, i32 0, i32 %inc.i652.5.i.i
  %inc7.i661.5.i.i = zext i1 %cmp.i659.5.i.i to i32
  %spec.select14.i662.5.i.i = add nuw nsw i32 %spec.select14.i662.4.i.i, %inc7.i661.5.i.i
  %arrayidx.i650.6.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i662.5.i.i
  %172 = ptrtoint ptr %arrayidx.i650.6.i.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %arrayidx.i650.6.i.i, align 1
  %conv2.i651.6.i.i = zext i8 %173 to i32
  %shr.i653.6.i.i = lshr i32 %conv2.i651.6.i.i, %spec.select.i660.5.i.i
  %and.i654.6.i.i = shl nuw nsw i32 %shr.i653.6.i.i, 6
  %174 = and i32 %and.i654.6.i.i, 64
  %175 = shl nuw nsw i32 %or.i632.11721.i.i, 7
  %or.i658.11722.i.i = or i32 %175, %and.i654.i.i
  %or.i658.21723.i.i = or i32 %159, %or.i658.11722.i.i
  %or.i658.31724.i.i = or i32 %162, %or.i658.21723.i.i
  %or.i658.41725.i.i = or i32 %165, %or.i658.31724.i.i
  %or.i658.51726.i.i = or i32 %168, %or.i658.41725.i.i
  %or.i658.61727.i.i = or i32 %171, %or.i658.51726.i.i
  %or361728.i.i = or i32 %174, %or.i658.61727.i.i
  tail call void @input_event(ptr noundef %81, i32 noundef 3, i32 noundef 5, i32 noundef %or361728.i.i) #7
  %176 = ptrtoint ptr %bits.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %bits.i.i, align 4
  %conv.i667.i.i = and i32 %177, 255
  %div.i6681576.rhs.trunc.i.i = trunc i32 %177 to i8
  %div.i6681576.rhs.trunc.i.i.frozen = freeze i8 %div.i6681576.rhs.trunc.i.i
  %div.i66815761577.i.i = udiv i8 32, %div.i6681576.rhs.trunc.i.i.frozen
  %div.i6681576.zext.i.i = zext i8 %div.i66815761577.i.i to i32
  %178 = mul i8 %div.i66815761577.i.i, %div.i6681576.rhs.trunc.i.i.frozen
  %rem.i66915781579.i.i.decomposed = sub i8 32, %178
  %rem.i6691578.zext.i.i = zext i8 %rem.i66915781579.i.i.decomposed to i32
  %arrayidx.i676.i.i = getelementptr i8, ptr %buf.i, i32 %div.i6681576.zext.i.i
  %179 = ptrtoint ptr %arrayidx.i676.i.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %arrayidx.i676.i.i, align 1
  %conv2.i677.i.i = zext i8 %180 to i32
  %inc.i678.i.i = add nuw nsw i32 %rem.i6691578.zext.i.i, 1
  %shr.i679.i.i = lshr i32 %conv2.i677.i.i, %rem.i6691578.zext.i.i
  %and.i680.i.i = and i32 %shr.i679.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i678.i.i, i32 %conv.i667.i.i)
  %cmp.i685.i.i = icmp eq i32 %inc.i678.i.i, %conv.i667.i.i
  %spec.select.i686.i.i = select i1 %cmp.i685.i.i, i32 0, i32 %inc.i678.i.i
  %inc7.i687.i.i = zext i1 %cmp.i685.i.i to i32
  %spec.select14.i688.i.i = add nuw nsw i32 %inc7.i687.i.i, %div.i6681576.zext.i.i
  %arrayidx.i676.1.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i688.i.i
  %181 = ptrtoint ptr %arrayidx.i676.1.i.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %arrayidx.i676.1.i.i, align 1
  %conv2.i677.1.i.i = zext i8 %182 to i32
  %inc.i678.1.i.i = add nuw nsw i32 %spec.select.i686.i.i, 1
  %shr.i679.1.i.i = lshr i32 %conv2.i677.1.i.i, %spec.select.i686.i.i
  %and.i680.1.i.i = shl nuw nsw i32 %shr.i679.1.i.i, 1
  %183 = and i32 %and.i680.1.i.i, 2
  %or.i684.11729.i.i = or i32 %and.i680.i.i, %183
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i678.1.i.i, i32 %conv.i667.i.i)
  %cmp.i685.1.i.i = icmp eq i32 %inc.i678.1.i.i, %conv.i667.i.i
  %spec.select.i686.1.i.i = select i1 %cmp.i685.1.i.i, i32 0, i32 %inc.i678.1.i.i
  %inc7.i687.1.i.i = zext i1 %cmp.i685.1.i.i to i32
  %spec.select14.i688.1.i.i = add nuw nsw i32 %spec.select14.i688.i.i, %inc7.i687.1.i.i
  %arrayidx.i676.2.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i688.1.i.i
  %184 = ptrtoint ptr %arrayidx.i676.2.i.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %arrayidx.i676.2.i.i, align 1
  %conv2.i677.2.i.i = zext i8 %185 to i32
  %shr.i679.2.i.i = lshr i32 %conv2.i677.2.i.i, %spec.select.i686.1.i.i
  %and.i680.2.i.i = shl nuw nsw i32 %shr.i679.2.i.i, 2
  %186 = and i32 %and.i680.2.i.i, 4
  %or.i684.21730.i.i = or i32 %186, %or.i684.11729.i.i
  %div.i6681576.rhs.trunc.i.i.frozen13 = freeze i8 %div.i6681576.rhs.trunc.i.i
  %div.i6941742.i.i = udiv i8 48, %div.i6681576.rhs.trunc.i.i.frozen13
  %div.i694.zext.i.i = zext i8 %div.i6941742.i.i to i32
  %187 = mul i8 %div.i6941742.i.i, %div.i6681576.rhs.trunc.i.i.frozen13
  %rem.i6951743.i.i.decomposed = sub i8 48, %187
  %rem.i695.zext.i.i = zext i8 %rem.i6951743.i.i.decomposed to i32
  %arrayidx.i702.i.i = getelementptr i8, ptr %buf.i, i32 %div.i694.zext.i.i
  %188 = ptrtoint ptr %arrayidx.i702.i.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %arrayidx.i702.i.i, align 1
  %conv2.i703.i.i = zext i8 %189 to i32
  %inc.i704.i.i = add nuw nsw i32 %rem.i695.zext.i.i, 1
  %shr.i705.i.i = lshr i32 %conv2.i703.i.i, %rem.i695.zext.i.i
  %and.i706.i.i = and i32 %shr.i705.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i704.i.i, i32 %conv.i667.i.i)
  %cmp.i711.i.i = icmp eq i32 %inc.i704.i.i, %conv.i667.i.i
  %spec.select.i712.i.i = select i1 %cmp.i711.i.i, i32 0, i32 %inc.i704.i.i
  %inc7.i713.i.i = zext i1 %cmp.i711.i.i to i32
  %spec.select14.i714.i.i = add nuw nsw i32 %inc7.i713.i.i, %div.i694.zext.i.i
  %arrayidx.i702.1.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i714.i.i
  %190 = ptrtoint ptr %arrayidx.i702.1.i.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %arrayidx.i702.1.i.i, align 1
  %conv2.i703.1.i.i = zext i8 %191 to i32
  %inc.i704.1.i.i = add nuw nsw i32 %spec.select.i712.i.i, 1
  %shr.i705.1.i.i = lshr i32 %conv2.i703.1.i.i, %spec.select.i712.i.i
  %and.i706.1.i.i = shl nuw nsw i32 %shr.i705.1.i.i, 1
  %192 = and i32 %and.i706.1.i.i, 2
  %or.i710.11731.i.i = or i32 %and.i706.i.i, %192
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i704.1.i.i, i32 %conv.i667.i.i)
  %cmp.i711.1.i.i = icmp eq i32 %inc.i704.1.i.i, %conv.i667.i.i
  %spec.select.i712.1.i.i = select i1 %cmp.i711.1.i.i, i32 0, i32 %inc.i704.1.i.i
  %inc7.i713.1.i.i = zext i1 %cmp.i711.1.i.i to i32
  %spec.select14.i714.1.i.i = add nuw nsw i32 %spec.select14.i714.i.i, %inc7.i713.1.i.i
  %arrayidx.i702.2.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i714.1.i.i
  %193 = ptrtoint ptr %arrayidx.i702.2.i.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %arrayidx.i702.2.i.i, align 1
  %conv2.i703.2.i.i = zext i8 %194 to i32
  %inc.i704.2.i.i = add nuw nsw i32 %spec.select.i712.1.i.i, 1
  %shr.i705.2.i.i = lshr i32 %conv2.i703.2.i.i, %spec.select.i712.1.i.i
  %and.i706.2.i.i = shl nuw nsw i32 %shr.i705.2.i.i, 2
  %195 = and i32 %and.i706.2.i.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i704.2.i.i, i32 %conv.i667.i.i)
  %cmp.i711.2.i.i = icmp eq i32 %inc.i704.2.i.i, %conv.i667.i.i
  %spec.select.i712.2.i.i = select i1 %cmp.i711.2.i.i, i32 0, i32 %inc.i704.2.i.i
  %inc7.i713.2.i.i = zext i1 %cmp.i711.2.i.i to i32
  %spec.select14.i714.2.i.i = add nuw nsw i32 %spec.select14.i714.1.i.i, %inc7.i713.2.i.i
  %arrayidx.i702.3.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i714.2.i.i
  %196 = ptrtoint ptr %arrayidx.i702.3.i.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %arrayidx.i702.3.i.i, align 1
  %conv2.i703.3.i.i = zext i8 %197 to i32
  %inc.i704.3.i.i = add nuw nsw i32 %spec.select.i712.2.i.i, 1
  %shr.i705.3.i.i = lshr i32 %conv2.i703.3.i.i, %spec.select.i712.2.i.i
  %and.i706.3.i.i = shl nuw nsw i32 %shr.i705.3.i.i, 3
  %198 = and i32 %and.i706.3.i.i, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i704.3.i.i, i32 %conv.i667.i.i)
  %cmp.i711.3.i.i = icmp eq i32 %inc.i704.3.i.i, %conv.i667.i.i
  %spec.select.i712.3.i.i = select i1 %cmp.i711.3.i.i, i32 0, i32 %inc.i704.3.i.i
  %inc7.i713.3.i.i = zext i1 %cmp.i711.3.i.i to i32
  %spec.select14.i714.3.i.i = add nuw nsw i32 %spec.select14.i714.2.i.i, %inc7.i713.3.i.i
  %arrayidx.i702.4.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i714.3.i.i
  %199 = ptrtoint ptr %arrayidx.i702.4.i.i to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %arrayidx.i702.4.i.i, align 1
  %conv2.i703.4.i.i = zext i8 %200 to i32
  %inc.i704.4.i.i = add nuw nsw i32 %spec.select.i712.3.i.i, 1
  %shr.i705.4.i.i = lshr i32 %conv2.i703.4.i.i, %spec.select.i712.3.i.i
  %and.i706.4.i.i = shl nuw nsw i32 %shr.i705.4.i.i, 4
  %201 = and i32 %and.i706.4.i.i, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i704.4.i.i, i32 %conv.i667.i.i)
  %cmp.i711.4.i.i = icmp eq i32 %inc.i704.4.i.i, %conv.i667.i.i
  %spec.select.i712.4.i.i = select i1 %cmp.i711.4.i.i, i32 0, i32 %inc.i704.4.i.i
  %inc7.i713.4.i.i = zext i1 %cmp.i711.4.i.i to i32
  %spec.select14.i714.4.i.i = add nuw nsw i32 %spec.select14.i714.3.i.i, %inc7.i713.4.i.i
  %arrayidx.i702.5.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i714.4.i.i
  %202 = ptrtoint ptr %arrayidx.i702.5.i.i to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %arrayidx.i702.5.i.i, align 1
  %conv2.i703.5.i.i = zext i8 %203 to i32
  %inc.i704.5.i.i = add nuw nsw i32 %spec.select.i712.4.i.i, 1
  %shr.i705.5.i.i = lshr i32 %conv2.i703.5.i.i, %spec.select.i712.4.i.i
  %and.i706.5.i.i = shl nuw nsw i32 %shr.i705.5.i.i, 5
  %204 = and i32 %and.i706.5.i.i, 32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i704.5.i.i, i32 %conv.i667.i.i)
  %cmp.i711.5.i.i = icmp eq i32 %inc.i704.5.i.i, %conv.i667.i.i
  %spec.select.i712.5.i.i = select i1 %cmp.i711.5.i.i, i32 0, i32 %inc.i704.5.i.i
  %inc7.i713.5.i.i = zext i1 %cmp.i711.5.i.i to i32
  %spec.select14.i714.5.i.i = add nuw nsw i32 %spec.select14.i714.4.i.i, %inc7.i713.5.i.i
  %arrayidx.i702.6.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i714.5.i.i
  %205 = ptrtoint ptr %arrayidx.i702.6.i.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %arrayidx.i702.6.i.i, align 1
  %conv2.i703.6.i.i = zext i8 %206 to i32
  %shr.i705.6.i.i = lshr i32 %conv2.i703.6.i.i, %spec.select.i712.5.i.i
  %and.i706.6.i.i = shl nuw nsw i32 %shr.i705.6.i.i, 6
  %207 = and i32 %and.i706.6.i.i, 64
  %208 = shl nuw nsw i32 %or.i684.21730.i.i, 7
  %or.i710.21732.i.i = or i32 %or.i710.11731.i.i, %208
  %or.i710.31733.i.i = or i32 %195, %or.i710.21732.i.i
  %or.i710.41734.i.i = or i32 %198, %or.i710.31733.i.i
  %or.i710.51735.i.i = or i32 %201, %or.i710.41734.i.i
  %or.i710.61736.i.i = or i32 %204, %or.i710.51735.i.i
  %or451737.i.i = or i32 %207, %or.i710.61736.i.i
  tail call void @input_event(ptr noundef %81, i32 noundef 3, i32 noundef 6, i32 noundef %or451737.i.i) #7
  %arrayidx47.i.i = getelementptr [9 x %struct.anon.69], ptr @sw_hat_to_axis, i32 0, i32 %or1705.i.i
  %209 = ptrtoint ptr %arrayidx47.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %arrayidx47.i.i, align 4
  tail call void @input_event(ptr noundef %81, i32 noundef 3, i32 noundef 16, i32 noundef %210) #7
  %y.i.i = getelementptr [9 x %struct.anon.69], ptr @sw_hat_to_axis, i32 0, i32 %or1705.i.i, i32 1
  %211 = ptrtoint ptr %y.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %y.i.i, align 4
  tail call void @input_event(ptr noundef %81, i32 noundef 3, i32 noundef 17, i32 noundef %212) #7
  %213 = ptrtoint ptr %bits.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %bits.i.i, align 4
  %div.i720.udiv.i.rhs.trunc.i = trunc i32 %214 to i8
  %div.i720.udiv.i.rhs.trunc.i.frozen = freeze i8 %div.i720.udiv.i.rhs.trunc.i
  %div.i720.udiv.i398.i = udiv i8 8, %div.i720.udiv.i.rhs.trunc.i.frozen
  %div.i720.udiv.i.zext.i = zext i8 %div.i720.udiv.i398.i to i32
  %215 = mul i8 %div.i720.udiv.i398.i, %div.i720.udiv.i.rhs.trunc.i.frozen
  %rem.i721.urem.i399.i.decomposed = sub i8 8, %215
  %rem.i721.urem.i.zext.i = zext i8 %rem.i721.urem.i399.i.decomposed to i32
  %arrayidx.i728.i.i = getelementptr i8, ptr %buf.i, i32 %div.i720.udiv.i.zext.i
  %216 = ptrtoint ptr %arrayidx.i728.i.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %arrayidx.i728.i.i, align 1
  %conv2.i729.i.i = zext i8 %217 to i32
  %218 = xor i32 %conv2.i729.i.i, -1
  %219 = lshr i32 %218, %rem.i721.urem.i.zext.i
  %220 = and i32 %219, 1
  tail call void @input_event(ptr noundef %81, i32 noundef 1, i32 noundef 288, i32 noundef %220) #7
  %221 = ptrtoint ptr %bits.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %bits.i.i, align 4
  %div.i720.udiv.i.1.rhs.trunc.i = trunc i32 %222 to i8
  %div.i720.udiv.i.1.rhs.trunc.i.frozen = freeze i8 %div.i720.udiv.i.1.rhs.trunc.i
  %div.i720.udiv.i.1400.i = udiv i8 9, %div.i720.udiv.i.1.rhs.trunc.i.frozen
  %div.i720.udiv.i.1.zext.i = zext i8 %div.i720.udiv.i.1400.i to i32
  %223 = mul i8 %div.i720.udiv.i.1400.i, %div.i720.udiv.i.1.rhs.trunc.i.frozen
  %rem.i721.urem.i.1401.i.decomposed = sub i8 9, %223
  %rem.i721.urem.i.1.zext.i = zext i8 %rem.i721.urem.i.1401.i.decomposed to i32
  %arrayidx.i728.i.1.i = getelementptr i8, ptr %buf.i, i32 %div.i720.udiv.i.1.zext.i
  %224 = ptrtoint ptr %arrayidx.i728.i.1.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %arrayidx.i728.i.1.i, align 1
  %conv2.i729.i.1.i = zext i8 %225 to i32
  %226 = xor i32 %conv2.i729.i.1.i, -1
  %227 = lshr i32 %226, %rem.i721.urem.i.1.zext.i
  %228 = and i32 %227, 1
  tail call void @input_event(ptr noundef %81, i32 noundef 1, i32 noundef 291, i32 noundef %228) #7
  %229 = ptrtoint ptr %bits.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %bits.i.i, align 4
  %div.i720.udiv.i.2.rhs.trunc.i = trunc i32 %230 to i8
  %div.i720.udiv.i.2.rhs.trunc.i.frozen = freeze i8 %div.i720.udiv.i.2.rhs.trunc.i
  %div.i720.udiv.i.2402.i = udiv i8 10, %div.i720.udiv.i.2.rhs.trunc.i.frozen
  %div.i720.udiv.i.2.zext.i = zext i8 %div.i720.udiv.i.2402.i to i32
  %231 = mul i8 %div.i720.udiv.i.2402.i, %div.i720.udiv.i.2.rhs.trunc.i.frozen
  %rem.i721.urem.i.2403.i.decomposed = sub i8 10, %231
  %rem.i721.urem.i.2.zext.i = zext i8 %rem.i721.urem.i.2403.i.decomposed to i32
  %arrayidx.i728.i.2.i = getelementptr i8, ptr %buf.i, i32 %div.i720.udiv.i.2.zext.i
  %232 = ptrtoint ptr %arrayidx.i728.i.2.i to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %arrayidx.i728.i.2.i, align 1
  %conv2.i729.i.2.i = zext i8 %233 to i32
  %234 = xor i32 %conv2.i729.i.2.i, -1
  %235 = lshr i32 %234, %rem.i721.urem.i.2.zext.i
  %236 = and i32 %235, 1
  tail call void @input_event(ptr noundef %81, i32 noundef 1, i32 noundef 289, i32 noundef %236) #7
  %237 = ptrtoint ptr %bits.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %bits.i.i, align 4
  %div.i720.udiv.i.3.rhs.trunc.i = trunc i32 %238 to i8
  %div.i720.udiv.i.3.rhs.trunc.i.frozen = freeze i8 %div.i720.udiv.i.3.rhs.trunc.i
  %div.i720.udiv.i.3404.i = udiv i8 11, %div.i720.udiv.i.3.rhs.trunc.i.frozen
  %div.i720.udiv.i.3.zext.i = zext i8 %div.i720.udiv.i.3404.i to i32
  %239 = mul i8 %div.i720.udiv.i.3404.i, %div.i720.udiv.i.3.rhs.trunc.i.frozen
  %rem.i721.urem.i.3405.i.decomposed = sub i8 11, %239
  %rem.i721.urem.i.3.zext.i = zext i8 %rem.i721.urem.i.3405.i.decomposed to i32
  %arrayidx.i728.i.3.i = getelementptr i8, ptr %buf.i, i32 %div.i720.udiv.i.3.zext.i
  %240 = ptrtoint ptr %arrayidx.i728.i.3.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %arrayidx.i728.i.3.i, align 1
  %conv2.i729.i.3.i = zext i8 %241 to i32
  %242 = xor i32 %conv2.i729.i.3.i, -1
  %243 = lshr i32 %242, %rem.i721.urem.i.3.zext.i
  %244 = and i32 %243, 1
  tail call void @input_event(ptr noundef %81, i32 noundef 1, i32 noundef 290, i32 noundef %244) #7
  %245 = ptrtoint ptr %bits.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %bits.i.i, align 4
  %div.i720.udiv.i.4.rhs.trunc.i = trunc i32 %246 to i8
  %div.i720.udiv.i.4.rhs.trunc.i.frozen = freeze i8 %div.i720.udiv.i.4.rhs.trunc.i
  %div.i720.udiv.i.4406.i = udiv i8 12, %div.i720.udiv.i.4.rhs.trunc.i.frozen
  %div.i720.udiv.i.4.zext.i = zext i8 %div.i720.udiv.i.4406.i to i32
  %247 = mul i8 %div.i720.udiv.i.4406.i, %div.i720.udiv.i.4.rhs.trunc.i.frozen
  %rem.i721.urem.i.4407.i.decomposed = sub i8 12, %247
  %rem.i721.urem.i.4.zext.i = zext i8 %rem.i721.urem.i.4407.i.decomposed to i32
  %arrayidx.i728.i.4.i = getelementptr i8, ptr %buf.i, i32 %div.i720.udiv.i.4.zext.i
  %248 = ptrtoint ptr %arrayidx.i728.i.4.i to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %arrayidx.i728.i.4.i, align 1
  %conv2.i729.i.4.i = zext i8 %249 to i32
  %250 = xor i32 %conv2.i729.i.4.i, -1
  %251 = lshr i32 %250, %rem.i721.urem.i.4.zext.i
  %252 = and i32 %251, 1
  tail call void @input_event(ptr noundef %81, i32 noundef 1, i32 noundef 294, i32 noundef %252) #7
  %253 = ptrtoint ptr %bits.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %bits.i.i, align 4
  %div.i720.udiv.i.5.rhs.trunc.i = trunc i32 %254 to i8
  %div.i720.udiv.i.5.rhs.trunc.i.frozen = freeze i8 %div.i720.udiv.i.5.rhs.trunc.i
  %div.i720.udiv.i.5408.i = udiv i8 13, %div.i720.udiv.i.5.rhs.trunc.i.frozen
  %div.i720.udiv.i.5.zext.i = zext i8 %div.i720.udiv.i.5408.i to i32
  %255 = mul i8 %div.i720.udiv.i.5408.i, %div.i720.udiv.i.5.rhs.trunc.i.frozen
  %rem.i721.urem.i.5409.i.decomposed = sub i8 13, %255
  %rem.i721.urem.i.5.zext.i = zext i8 %rem.i721.urem.i.5409.i.decomposed to i32
  %arrayidx.i728.i.5.i = getelementptr i8, ptr %buf.i, i32 %div.i720.udiv.i.5.zext.i
  %256 = ptrtoint ptr %arrayidx.i728.i.5.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %arrayidx.i728.i.5.i, align 1
  %conv2.i729.i.5.i = zext i8 %257 to i32
  %258 = xor i32 %conv2.i729.i.5.i, -1
  %259 = lshr i32 %258, %rem.i721.urem.i.5.zext.i
  %260 = and i32 %259, 1
  tail call void @input_event(ptr noundef %81, i32 noundef 1, i32 noundef 295, i32 noundef %260) #7
  %261 = ptrtoint ptr %bits.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %bits.i.i, align 4
  %div.i720.udiv.i.6.rhs.trunc.i = trunc i32 %262 to i8
  %div.i720.udiv.i.6.rhs.trunc.i.frozen = freeze i8 %div.i720.udiv.i.6.rhs.trunc.i
  %div.i720.udiv.i.6410.i = udiv i8 14, %div.i720.udiv.i.6.rhs.trunc.i.frozen
  %div.i720.udiv.i.6.zext.i = zext i8 %div.i720.udiv.i.6410.i to i32
  %263 = mul i8 %div.i720.udiv.i.6410.i, %div.i720.udiv.i.6.rhs.trunc.i.frozen
  %rem.i721.urem.i.6411.i.decomposed = sub i8 14, %263
  %rem.i721.urem.i.6.zext.i = zext i8 %rem.i721.urem.i.6411.i.decomposed to i32
  %arrayidx.i728.i.6.i = getelementptr i8, ptr %buf.i, i32 %div.i720.udiv.i.6.zext.i
  %264 = ptrtoint ptr %arrayidx.i728.i.6.i to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %arrayidx.i728.i.6.i, align 1
  %conv2.i729.i.6.i = zext i8 %265 to i32
  %266 = xor i32 %conv2.i729.i.6.i, -1
  %267 = lshr i32 %266, %rem.i721.urem.i.6.zext.i
  %268 = and i32 %267, 1
  tail call void @input_event(ptr noundef %81, i32 noundef 1, i32 noundef 296, i32 noundef %268) #7
  %269 = ptrtoint ptr %bits.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %bits.i.i, align 4
  %div.i7461580.rhs.trunc.i.i = trunc i32 %270 to i8
  %div.i7461580.rhs.trunc.i.i.frozen = freeze i8 %div.i7461580.rhs.trunc.i.i
  %div.i74615801581.i.i = udiv i8 38, %div.i7461580.rhs.trunc.i.i.frozen
  %div.i7461580.zext.i.i = zext i8 %div.i74615801581.i.i to i32
  %271 = mul i8 %div.i74615801581.i.i, %div.i7461580.rhs.trunc.i.i.frozen
  %rem.i74715821583.i.i.decomposed = sub i8 38, %271
  %rem.i7471582.zext.i.i = zext i8 %rem.i74715821583.i.i.decomposed to i32
  %arrayidx.i754.i.i = getelementptr i8, ptr %buf.i, i32 %div.i7461580.zext.i.i
  %272 = ptrtoint ptr %arrayidx.i754.i.i to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %arrayidx.i754.i.i, align 1
  %conv2.i755.i.i = zext i8 %273 to i32
  %274 = xor i32 %conv2.i755.i.i, -1
  %275 = lshr i32 %274, %rem.i7471582.zext.i.i
  %276 = and i32 %275, 1
  tail call void @input_event(ptr noundef %81, i32 noundef 1, i32 noundef 297, i32 noundef %276) #7
  %277 = ptrtoint ptr %bits.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %bits.i.i, align 4
  %div.i7731584.rhs.trunc.i.i = trunc i32 %278 to i8
  %div.i7731584.rhs.trunc.i.i.frozen = freeze i8 %div.i7731584.rhs.trunc.i.i
  %div.i77315841585.i.i = udiv i8 37, %div.i7731584.rhs.trunc.i.i.frozen
  %div.i7731584.zext.i.i = zext i8 %div.i77315841585.i.i to i32
  %279 = mul i8 %div.i77315841585.i.i, %div.i7731584.rhs.trunc.i.i.frozen
  %rem.i77415861587.i.i.decomposed = sub i8 37, %279
  %rem.i7741586.zext.i.i = zext i8 %rem.i77415861587.i.i.decomposed to i32
  %arrayidx.i781.i.i = getelementptr i8, ptr %buf.i, i32 %div.i7731584.zext.i.i
  %280 = ptrtoint ptr %arrayidx.i781.i.i to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %arrayidx.i781.i.i, align 1
  %conv2.i782.i.i = zext i8 %281 to i32
  %282 = xor i32 %conv2.i782.i.i, -1
  %283 = lshr i32 %282, %rem.i7741586.zext.i.i
  %284 = and i32 %283, 1
  tail call void @input_event(ptr noundef %81, i32 noundef 1, i32 noundef 298, i32 noundef %284) #7
  br label %cleanup.sink.split.i.i

for.body73.i.i:                                   ; preds = %for.end127.i.i.for.body73.i.i_crit_edge, %for.body73.lr.ph.i.i
  %i.01637.i.i = phi i32 [ 0, %for.body73.lr.ph.i.i ], [ %inc131.i.i, %for.end127.i.i.for.body73.i.i_crit_edge ]
  %mul.i.i = mul i32 %i.01637.i.i, 15
  %285 = ptrtoint ptr %bits74.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %bits74.i.i, align 4
  %conv.i799.i.i = and i32 %286, 255
  %mul.i.i.frozen = freeze i32 %mul.i.i
  %conv.i799.i.i.frozen = freeze i32 %conv.i799.i.i
  %div.i800.i.i = sdiv i32 %mul.i.i.frozen, %conv.i799.i.i.frozen
  %287 = mul i32 %div.i800.i.i, %conv.i799.i.i.frozen
  %rem.i801.i.i.decomposed = sub i32 %mul.i.i.frozen, %287
  br label %while.body.i822.i.i

while.body.i822.i.i:                              ; preds = %while.body.i822.i.i.while.body.i822.i.i_crit_edge, %for.body73.i.i
  %bit.020.i802.i.i = phi i32 [ %inc4.i813.i.i, %while.body.i822.i.i.while.body.i822.i.i_crit_edge ], [ 0, %for.body73.i.i ]
  %i.019.i803.i.i = phi i32 [ %spec.select14.i820.i.i, %while.body.i822.i.i.while.body.i822.i.i_crit_edge ], [ %div.i800.i.i, %for.body73.i.i ]
  %tri.018.i804.i.i = phi i32 [ %spec.select.i818.i.i, %while.body.i822.i.i.while.body.i822.i.i_crit_edge ], [ %rem.i801.i.i.decomposed, %for.body73.i.i ]
  %data.017.i805.i.i = phi i64 [ %or.i816.i.i, %while.body.i822.i.i.while.body.i822.i.i_crit_edge ], [ 0, %for.body73.i.i ]
  %num.addr.016.i806.i.i = phi i32 [ %dec.i807.i.i, %while.body.i822.i.i.while.body.i822.i.i_crit_edge ], [ 15, %for.body73.i.i ]
  %dec.i807.i.i = add nsw i32 %num.addr.016.i806.i.i, -1
  %arrayidx.i808.i.i = getelementptr i8, ptr %buf.i, i32 %i.019.i803.i.i
  %288 = ptrtoint ptr %arrayidx.i808.i.i to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %arrayidx.i808.i.i, align 1
  %conv2.i809.i.i = zext i8 %289 to i32
  %inc.i810.i.i = add i32 %tri.018.i804.i.i, 1
  %shr.i811.i.i = lshr i32 %conv2.i809.i.i, %tri.018.i804.i.i
  %and.i812.i.i = and i32 %shr.i811.i.i, 1
  %290 = zext i32 %and.i812.i.i to i64
  %inc4.i813.i.i = add nuw nsw i32 %bit.020.i802.i.i, 1
  %sh_prom.i814.i.i = zext i32 %bit.020.i802.i.i to i64
  %shl.i815.i.i = shl nuw i64 %290, %sh_prom.i814.i.i
  %or.i816.i.i = or i64 %shl.i815.i.i, %data.017.i805.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i810.i.i, i32 %conv.i799.i.i)
  %cmp.i817.i.i = icmp eq i32 %inc.i810.i.i, %conv.i799.i.i
  %spec.select.i818.i.i = select i1 %cmp.i817.i.i, i32 0, i32 %inc.i810.i.i
  %inc7.i819.i.i = zext i1 %cmp.i817.i.i to i32
  %spec.select14.i820.i.i = add i32 %i.019.i803.i.i, %inc7.i819.i.i
  %tobool.not.i821.i.i = icmp eq i32 %dec.i807.i.i, 0
  br i1 %tobool.not.i821.i.i, label %sw_get_bits.exit824.i.i, label %while.body.i822.i.i.while.body.i822.i.i_crit_edge

while.body.i822.i.i.while.body.i822.i.i_crit_edge: ; preds = %while.body.i822.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i822.i.i

sw_get_bits.exit824.i.i:                          ; preds = %while.body.i822.i.i
  %shr.i825.i.i = lshr i64 %or.i816.i.i, 32
  %xor.i.i.i = xor i64 %shr.i825.i.i, %or.i816.i.i
  %conv.i826.i.i = trunc i64 %xor.i.i.i to i32
  %shr1.i.i.i = ashr i32 %conv.i826.i.i, 16
  %xor2.i.i.i = xor i32 %shr1.i.i.i, %conv.i826.i.i
  %shr3.i.i.i = ashr i32 %xor2.i.i.i, 8
  %xor4.i.i.i = xor i32 %shr3.i.i.i, %xor2.i.i.i
  %shr5.i.i.i = ashr i32 %xor4.i.i.i, 4
  %xor6.i.i.i = xor i32 %shr5.i.i.i, %xor4.i.i.i
  %shr7.i.i.i = ashr i32 %xor6.i.i.i, 2
  %xor8.i.i.i = xor i32 %shr7.i.i.i, %xor6.i.i.i
  %shr922.i.i.i = lshr i32 %xor8.i.i.i, 1
  %xor10.i.i.i = xor i32 %shr922.i.i.i, %xor8.i.i.i
  %and.i827.i.i = and i32 %xor10.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i827.i.i)
  %tobool78.not.i.i = icmp eq i32 %and.i827.i.i, 0
  br i1 %tobool78.not.i.i, label %if.end80.i.i, label %sw_get_bits.exit824.i.i.if.end95.i_crit_edge

sw_get_bits.exit824.i.i.if.end95.i_crit_edge:     ; preds = %sw_get_bits.exit824.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95.i

if.end80.i.i:                                     ; preds = %sw_get_bits.exit824.i.i
  %arrayidx82.i.i = getelementptr %struct.sw, ptr %1, i32 0, i32 1, i32 %i.01637.i.i
  %291 = ptrtoint ptr %arrayidx82.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %arrayidx82.i.i, align 4
  %add84.i.i = add i32 %mul.i.i, 3
  %add84.i.i.frozen = freeze i32 %add84.i.i
  %conv.i799.i.i.frozen14 = freeze i32 %conv.i799.i.i
  %div.i829.i.i = sdiv i32 %add84.i.i.frozen, %conv.i799.i.i.frozen14
  %293 = mul i32 %div.i829.i.i, %conv.i799.i.i.frozen14
  %rem.i830.i.i.decomposed = sub i32 %add84.i.i.frozen, %293
  %arrayidx.i837.i.i = getelementptr i8, ptr %buf.i, i32 %div.i829.i.i
  %294 = ptrtoint ptr %arrayidx.i837.i.i to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %arrayidx.i837.i.i, align 1
  %conv2.i838.i.i = zext i8 %295 to i32
  %shr.i840.i.i = lshr i32 %conv2.i838.i.i, %rem.i830.i.i.decomposed
  %and.i841.i.i = and i32 %shr.i840.i.i, 1
  %add89.i.i = add i32 %mul.i.i, 2
  %add89.i.i.frozen = freeze i32 %add89.i.i
  %conv.i799.i.i.frozen15 = freeze i32 %conv.i799.i.i
  %div.i855.i.i = sdiv i32 %add89.i.i.frozen, %conv.i799.i.i.frozen15
  %296 = mul i32 %div.i855.i.i, %conv.i799.i.i.frozen15
  %rem.i856.i.i.decomposed = sub i32 %add89.i.i.frozen, %296
  %arrayidx.i863.i.i = getelementptr i8, ptr %buf.i, i32 %div.i855.i.i
  %297 = ptrtoint ptr %arrayidx.i863.i.i to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %arrayidx.i863.i.i, align 1
  %conv2.i864.i.i = zext i8 %298 to i32
  %shr.i866.i.i = lshr i32 %conv2.i864.i.i, %rem.i856.i.i.decomposed
  %and.i867.i.i = and i32 %shr.i866.i.i, 1
  %sub.i.i = sub nsw i32 %and.i841.i.i, %and.i867.i.i
  tail call void @input_event(ptr noundef %292, i32 noundef 3, i32 noundef 0, i32 noundef %sub.i.i) #7
  %299 = ptrtoint ptr %arrayidx82.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %arrayidx82.i.i, align 4
  %301 = ptrtoint ptr %bits74.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %bits74.i.i, align 4
  %conv.i880.i.i = and i32 %302, 255
  %mul.i.i.frozen16 = freeze i32 %mul.i.i
  %conv.i880.i.i.frozen = freeze i32 %conv.i880.i.i
  %div.i881.i.i = sdiv i32 %mul.i.i.frozen16, %conv.i880.i.i.frozen
  %303 = mul i32 %div.i881.i.i, %conv.i880.i.i.frozen
  %rem.i882.i.i.decomposed = sub i32 %mul.i.i.frozen16, %303
  %arrayidx.i889.i.i = getelementptr i8, ptr %buf.i, i32 %div.i881.i.i
  %304 = ptrtoint ptr %arrayidx.i889.i.i to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %arrayidx.i889.i.i, align 1
  %conv2.i890.i.i = zext i8 %305 to i32
  %shr.i892.i.i = lshr i32 %conv2.i890.i.i, %rem.i882.i.i.decomposed
  %and.i893.i.i = and i32 %shr.i892.i.i, 1
  %add102.i.i = add i32 %mul.i.i, 1
  %add102.i.i.frozen = freeze i32 %add102.i.i
  %conv.i880.i.i.frozen17 = freeze i32 %conv.i880.i.i
  %div.i907.i.i = sdiv i32 %add102.i.i.frozen, %conv.i880.i.i.frozen17
  %306 = mul i32 %div.i907.i.i, %conv.i880.i.i.frozen17
  %rem.i908.i.i.decomposed = sub i32 %add102.i.i.frozen, %306
  %arrayidx.i915.i.i = getelementptr i8, ptr %buf.i, i32 %div.i907.i.i
  %307 = ptrtoint ptr %arrayidx.i915.i.i to i32
  call void @__asan_load1_noabort(i32 %307)
  %308 = load i8, ptr %arrayidx.i915.i.i, align 1
  %conv2.i916.i.i = zext i8 %308 to i32
  %shr.i918.i.i = lshr i32 %conv2.i916.i.i, %rem.i908.i.i.decomposed
  %and.i919.i.i = and i32 %shr.i918.i.i, 1
  %sub106.i.i = sub nsw i32 %and.i893.i.i, %and.i919.i.i
  tail call void @input_event(ptr noundef %300, i32 noundef 3, i32 noundef 1, i32 noundef %sub106.i.i) #7
  %add117.i.i = add i32 %mul.i.i, 4
  br label %for.body111.i.i

for.body111.i.i:                                  ; preds = %for.body111.i.i.for.body111.i.i_crit_edge, %if.end80.i.i
  %j.11635.i.i = phi i32 [ 0, %if.end80.i.i ], [ %inc126.i.i, %for.body111.i.i.for.body111.i.i_crit_edge ]
  %309 = ptrtoint ptr %arrayidx82.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %arrayidx82.i.i, align 4
  %arrayidx114.i.i = getelementptr [6 x [12 x i16]], ptr @sw_btn, i32 0, i32 1, i32 %j.11635.i.i
  %311 = ptrtoint ptr %arrayidx114.i.i to i32
  call void @__asan_load2_noabort(i32 %311)
  %312 = load i16, ptr %arrayidx114.i.i, align 2
  %add118.i.i = add i32 %add117.i.i, %j.11635.i.i
  %313 = ptrtoint ptr %bits74.i.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %bits74.i.i, align 4
  %conv.i932.i.i = and i32 %314, 255
  %add118.i.i.frozen = freeze i32 %add118.i.i
  %conv.i932.i.i.frozen = freeze i32 %conv.i932.i.i
  %div.i933.i.i = sdiv i32 %add118.i.i.frozen, %conv.i932.i.i.frozen
  %315 = mul i32 %div.i933.i.i, %conv.i932.i.i.frozen
  %rem.i934.i.i.decomposed = sub i32 %add118.i.i.frozen, %315
  %arrayidx.i941.i.i = getelementptr i8, ptr %buf.i, i32 %div.i933.i.i
  %316 = ptrtoint ptr %arrayidx.i941.i.i to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %arrayidx.i941.i.i, align 1
  %conv2.i942.i.i = zext i8 %317 to i32
  %conv115.i.i = sext i16 %312 to i32
  %318 = xor i32 %conv2.i942.i.i, -1
  %319 = lshr i32 %318, %rem.i934.i.i.decomposed
  %320 = and i32 %319, 1
  tail call void @input_event(ptr noundef %310, i32 noundef 1, i32 noundef %conv115.i.i, i32 noundef %320) #7
  %inc126.i.i = add nuw nsw i32 %j.11635.i.i, 1
  %exitcond1642.not.i.i = icmp eq i32 %inc126.i.i, 10
  br i1 %exitcond1642.not.i.i, label %for.end127.i.i, label %for.body111.i.i.for.body111.i.i_crit_edge

for.body111.i.i.for.body111.i.i_crit_edge:        ; preds = %for.body111.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body111.i.i

for.end127.i.i:                                   ; preds = %for.body111.i.i
  %321 = ptrtoint ptr %arrayidx82.i.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %arrayidx82.i.i, align 4
  tail call void @input_event(ptr noundef %322, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  %inc131.i.i = add nuw nsw i32 %i.01637.i.i, 1
  %323 = ptrtoint ptr %number.i.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %number.i.i, align 4
  %cmp71.i.i = icmp slt i32 %inc131.i.i, %324
  br i1 %cmp71.i.i, label %for.end127.i.i.for.body73.i.i_crit_edge, label %for.end127.i.i.if.then71.i_crit_edge

for.end127.i.i.if.then71.i_crit_edge:             ; preds = %for.end127.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then71.i

for.end127.i.i.for.body73.i.i_crit_edge:          ; preds = %for.end127.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body73.i.i

sw.bb133.i.i:                                     ; preds = %land.lhs.true67.i.sw.bb133.i.i_crit_edge, %land.lhs.true67.i.sw.bb133.i.i_crit_edge19
  %bits134.i.i = getelementptr inbounds %struct.sw, ptr %1, i32 0, i32 6
  %325 = ptrtoint ptr %bits134.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %bits134.i.i, align 4
  %conv.i959.i.i = and i32 %326, 255
  br label %while.body.i980.i.i

while.body.i980.i.i:                              ; preds = %while.body.i980.i.i.while.body.i980.i.i_crit_edge, %sw.bb133.i.i
  %bit.020.i960.i.i = phi i32 [ %inc4.i971.i.i, %while.body.i980.i.i.while.body.i980.i.i_crit_edge ], [ 0, %sw.bb133.i.i ]
  %i.019.i961.i.i = phi i32 [ %spec.select14.i978.i.i, %while.body.i980.i.i.while.body.i980.i.i_crit_edge ], [ 0, %sw.bb133.i.i ]
  %tri.018.i962.i.i = phi i32 [ %spec.select.i976.i.i, %while.body.i980.i.i.while.body.i980.i.i_crit_edge ], [ 0, %sw.bb133.i.i ]
  %data.017.i963.i.i = phi i64 [ %or.i974.i.i, %while.body.i980.i.i.while.body.i980.i.i_crit_edge ], [ 0, %sw.bb133.i.i ]
  %num.addr.016.i964.i.i = phi i32 [ %dec.i965.i.i, %while.body.i980.i.i.while.body.i980.i.i_crit_edge ], [ 48, %sw.bb133.i.i ]
  %dec.i965.i.i = add nsw i32 %num.addr.016.i964.i.i, -1
  %arrayidx.i966.i.i = getelementptr i8, ptr %buf.i, i32 %i.019.i961.i.i
  %327 = ptrtoint ptr %arrayidx.i966.i.i to i32
  call void @__asan_load1_noabort(i32 %327)
  %328 = load i8, ptr %arrayidx.i966.i.i, align 1
  %conv2.i967.i.i = zext i8 %328 to i32
  %inc.i968.i.i = add i32 %tri.018.i962.i.i, 1
  %shr.i969.i.i = lshr i32 %conv2.i967.i.i, %tri.018.i962.i.i
  %and.i970.i.i = and i32 %shr.i969.i.i, 1
  %329 = zext i32 %and.i970.i.i to i64
  %inc4.i971.i.i = add nuw nsw i32 %bit.020.i960.i.i, 1
  %sh_prom.i972.i.i = zext i32 %bit.020.i960.i.i to i64
  %shl.i973.i.i = shl nuw i64 %329, %sh_prom.i972.i.i
  %or.i974.i.i = or i64 %shl.i973.i.i, %data.017.i963.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i968.i.i, i32 %conv.i959.i.i)
  %cmp.i975.i.i = icmp eq i32 %inc.i968.i.i, %conv.i959.i.i
  %spec.select.i976.i.i = select i1 %cmp.i975.i.i, i32 0, i32 %inc.i968.i.i
  %inc7.i977.i.i = zext i1 %cmp.i975.i.i to i32
  %spec.select14.i978.i.i = add i32 %i.019.i961.i.i, %inc7.i977.i.i
  %tobool.not.i979.i.i = icmp eq i32 %dec.i965.i.i, 0
  br i1 %tobool.not.i979.i.i, label %sw_get_bits.exit982.i.i, label %while.body.i980.i.i.while.body.i980.i.i_crit_edge

while.body.i980.i.i.while.body.i980.i.i_crit_edge: ; preds = %while.body.i980.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i980.i.i

sw_get_bits.exit982.i.i:                          ; preds = %while.body.i980.i.i
  %shr.i983.i.i = lshr i64 %or.i974.i.i, 32
  %xor.i984.i.i = xor i64 %shr.i983.i.i, %or.i974.i.i
  %conv.i985.i.i = trunc i64 %xor.i984.i.i to i32
  %shr1.i986.i.i = ashr i32 %conv.i985.i.i, 16
  %xor2.i987.i.i = xor i32 %shr1.i986.i.i, %conv.i985.i.i
  %shr3.i988.i.i = ashr i32 %xor2.i987.i.i, 8
  %xor4.i989.i.i = xor i32 %shr3.i988.i.i, %xor2.i987.i.i
  %shr5.i990.i.i = ashr i32 %xor4.i989.i.i, 4
  %xor6.i991.i.i = xor i32 %shr5.i990.i.i, %xor4.i989.i.i
  %shr7.i992.i.i = ashr i32 %xor6.i991.i.i, 2
  %xor8.i993.i.i = xor i32 %shr7.i992.i.i, %xor6.i991.i.i
  %shr922.i994.i.i = lshr i32 %xor8.i993.i.i, 1
  %xor10.i995.i.i = xor i32 %shr922.i994.i.i, %xor8.i993.i.i
  %and.i996.i.i = and i32 %xor10.i995.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i996.i.i)
  %tobool138.not.i.i = icmp eq i32 %and.i996.i.i, 0
  br i1 %tobool138.not.i.i, label %sw_get_bits.exit982.i.i.if.end95.i_crit_edge, label %lor.lhs.false139.i.i

sw_get_bits.exit982.i.i.if.end95.i_crit_edge:     ; preds = %sw_get_bits.exit982.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95.i

lor.lhs.false139.i.i:                             ; preds = %sw_get_bits.exit982.i.i
  %conv.i959.i.i.frozen = freeze i32 %conv.i959.i.i
  %div.i998.i.i = udiv i32 42, %conv.i959.i.i.frozen
  %330 = mul i32 %div.i998.i.i, %conv.i959.i.i.frozen
  %rem.i999.i.i.decomposed = sub i32 42, %330
  %arrayidx.i1006.i.i = getelementptr i8, ptr %buf.i, i32 %div.i998.i.i
  %331 = ptrtoint ptr %arrayidx.i1006.i.i to i32
  call void @__asan_load1_noabort(i32 %331)
  %332 = load i8, ptr %arrayidx.i1006.i.i, align 1
  %conv2.i1007.i.i = zext i8 %332 to i32
  %inc.i1008.i.i = add nuw nsw i32 %rem.i999.i.i.decomposed, 1
  %shr.i1009.i.i = lshr i32 %conv2.i1007.i.i, %rem.i999.i.i.decomposed
  %and.i1010.i.i = and i32 %shr.i1009.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1008.i.i, i32 %conv.i959.i.i)
  %cmp.i1015.i.i = icmp eq i32 %inc.i1008.i.i, %conv.i959.i.i
  %spec.select.i1016.i.i = select i1 %cmp.i1015.i.i, i32 0, i32 %inc.i1008.i.i
  %inc7.i1017.i.i = zext i1 %cmp.i1015.i.i to i32
  %spec.select14.i1018.i.i = add nuw nsw i32 %div.i998.i.i, %inc7.i1017.i.i
  %arrayidx.i1006.1.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1018.i.i
  %333 = ptrtoint ptr %arrayidx.i1006.1.i.i to i32
  call void @__asan_load1_noabort(i32 %333)
  %334 = load i8, ptr %arrayidx.i1006.1.i.i, align 1
  %conv2.i1007.1.i.i = zext i8 %334 to i32
  %inc.i1008.1.i.i = add nuw nsw i32 %spec.select.i1016.i.i, 1
  %shr.i1009.1.i.i = lshr i32 %conv2.i1007.1.i.i, %spec.select.i1016.i.i
  %and.i1010.1.i.i = shl nuw nsw i32 %shr.i1009.1.i.i, 1
  %335 = and i32 %and.i1010.1.i.i, 2
  %or.i1014.11671.i.i = or i32 %335, %and.i1010.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1008.1.i.i, i32 %conv.i959.i.i)
  %cmp.i1015.1.i.i = icmp eq i32 %inc.i1008.1.i.i, %conv.i959.i.i
  %spec.select.i1016.1.i.i = select i1 %cmp.i1015.1.i.i, i32 0, i32 %inc.i1008.1.i.i
  %inc7.i1017.1.i.i = zext i1 %cmp.i1015.1.i.i to i32
  %spec.select14.i1018.1.i.i = add nuw nsw i32 %spec.select14.i1018.i.i, %inc7.i1017.1.i.i
  %arrayidx.i1006.2.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1018.1.i.i
  %336 = ptrtoint ptr %arrayidx.i1006.2.i.i to i32
  call void @__asan_load1_noabort(i32 %336)
  %337 = load i8, ptr %arrayidx.i1006.2.i.i, align 1
  %conv2.i1007.2.i.i = zext i8 %337 to i32
  %inc.i1008.2.i.i = add nuw nsw i32 %spec.select.i1016.1.i.i, 1
  %shr.i1009.2.i.i = lshr i32 %conv2.i1007.2.i.i, %spec.select.i1016.1.i.i
  %and.i1010.2.i.i = shl nuw nsw i32 %shr.i1009.2.i.i, 2
  %338 = and i32 %and.i1010.2.i.i, 4
  %or.i1014.21672.i.i = or i32 %or.i1014.11671.i.i, %338
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1008.2.i.i, i32 %conv.i959.i.i)
  %cmp.i1015.2.i.i = icmp eq i32 %inc.i1008.2.i.i, %conv.i959.i.i
  %spec.select.i1016.2.i.i = select i1 %cmp.i1015.2.i.i, i32 0, i32 %inc.i1008.2.i.i
  %inc7.i1017.2.i.i = zext i1 %cmp.i1015.2.i.i to i32
  %spec.select14.i1018.2.i.i = add nuw nsw i32 %spec.select14.i1018.1.i.i, %inc7.i1017.2.i.i
  %arrayidx.i1006.3.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1018.2.i.i
  %339 = ptrtoint ptr %arrayidx.i1006.3.i.i to i32
  call void @__asan_load1_noabort(i32 %339)
  %340 = load i8, ptr %arrayidx.i1006.3.i.i, align 1
  %conv2.i1007.3.i.i = zext i8 %340 to i32
  %shr.i1009.3.i.i = lshr i32 %conv2.i1007.3.i.i, %spec.select.i1016.2.i.i
  %and.i1010.3.i.i = shl nuw nsw i32 %shr.i1009.3.i.i, 3
  %341 = and i32 %and.i1010.3.i.i, 8
  %or.i1014.31673.i.i = or i32 %or.i1014.21672.i.i, %341
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %or.i1014.31673.i.i)
  %cmp144.i.i = icmp ugt i32 %or.i1014.31673.i.i, 8
  br i1 %cmp144.i.i, label %lor.lhs.false139.i.i.if.end95.i_crit_edge, label %if.end147.i.i

lor.lhs.false139.i.i.if.end95.i_crit_edge:        ; preds = %lor.lhs.false139.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95.i

if.end147.i.i:                                    ; preds = %lor.lhs.false139.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev148.i.i = getelementptr inbounds %struct.sw, ptr %1, i32 0, i32 1
  %342 = ptrtoint ptr %dev148.i.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %dev148.i.i, align 4
  %conv.i959.i.i.frozen18 = freeze i32 %conv.i959.i.i
  %div.i1024.i.i = udiv i32 9, %conv.i959.i.i.frozen18
  %344 = mul i32 %div.i1024.i.i, %conv.i959.i.i.frozen18
  %rem.i1025.i.i.decomposed = sub i32 9, %344
  %arrayidx.i1032.i.i = getelementptr i8, ptr %buf.i, i32 %div.i1024.i.i
  %345 = ptrtoint ptr %arrayidx.i1032.i.i to i32
  call void @__asan_load1_noabort(i32 %345)
  %346 = load i8, ptr %arrayidx.i1032.i.i, align 1
  %conv2.i1033.i.i = zext i8 %346 to i32
  %inc.i1034.i.i = add nuw nsw i32 %rem.i1025.i.i.decomposed, 1
  %shr.i1035.i.i = lshr i32 %conv2.i1033.i.i, %rem.i1025.i.i.decomposed
  %and.i1036.i.i = and i32 %shr.i1035.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1034.i.i, i32 %conv.i959.i.i)
  %cmp.i1041.i.i = icmp eq i32 %inc.i1034.i.i, %conv.i959.i.i
  %spec.select.i1042.i.i = select i1 %cmp.i1041.i.i, i32 0, i32 %inc.i1034.i.i
  %inc7.i1043.i.i = zext i1 %cmp.i1041.i.i to i32
  %spec.select14.i1044.i.i = add nuw nsw i32 %div.i1024.i.i, %inc7.i1043.i.i
  %arrayidx.i1032.1.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1044.i.i
  %347 = ptrtoint ptr %arrayidx.i1032.1.i.i to i32
  call void @__asan_load1_noabort(i32 %347)
  %348 = load i8, ptr %arrayidx.i1032.1.i.i, align 1
  %conv2.i1033.1.i.i = zext i8 %348 to i32
  %inc.i1034.1.i.i = add nuw nsw i32 %spec.select.i1042.i.i, 1
  %shr.i1035.1.i.i = lshr i32 %conv2.i1033.1.i.i, %spec.select.i1042.i.i
  %and.i1036.1.i.i = shl nuw nsw i32 %shr.i1035.1.i.i, 1
  %349 = and i32 %and.i1036.1.i.i, 2
  %or.i1040.11674.i.i = or i32 %349, %and.i1036.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1034.1.i.i, i32 %conv.i959.i.i)
  %cmp.i1041.1.i.i = icmp eq i32 %inc.i1034.1.i.i, %conv.i959.i.i
  %spec.select.i1042.1.i.i = select i1 %cmp.i1041.1.i.i, i32 0, i32 %inc.i1034.1.i.i
  %inc7.i1043.1.i.i = zext i1 %cmp.i1041.1.i.i to i32
  %spec.select14.i1044.1.i.i = add nuw nsw i32 %spec.select14.i1044.i.i, %inc7.i1043.1.i.i
  %arrayidx.i1032.2.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1044.1.i.i
  %350 = ptrtoint ptr %arrayidx.i1032.2.i.i to i32
  call void @__asan_load1_noabort(i32 %350)
  %351 = load i8, ptr %arrayidx.i1032.2.i.i, align 1
  %conv2.i1033.2.i.i = zext i8 %351 to i32
  %inc.i1034.2.i.i = add nuw nsw i32 %spec.select.i1042.1.i.i, 1
  %shr.i1035.2.i.i = lshr i32 %conv2.i1033.2.i.i, %spec.select.i1042.1.i.i
  %and.i1036.2.i.i = shl nuw nsw i32 %shr.i1035.2.i.i, 2
  %352 = and i32 %and.i1036.2.i.i, 4
  %or.i1040.21675.i.i = or i32 %or.i1040.11674.i.i, %352
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1034.2.i.i, i32 %conv.i959.i.i)
  %cmp.i1041.2.i.i = icmp eq i32 %inc.i1034.2.i.i, %conv.i959.i.i
  %spec.select.i1042.2.i.i = select i1 %cmp.i1041.2.i.i, i32 0, i32 %inc.i1034.2.i.i
  %inc7.i1043.2.i.i = zext i1 %cmp.i1041.2.i.i to i32
  %spec.select14.i1044.2.i.i = add nuw nsw i32 %spec.select14.i1044.1.i.i, %inc7.i1043.2.i.i
  %arrayidx.i1032.3.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1044.2.i.i
  %353 = ptrtoint ptr %arrayidx.i1032.3.i.i to i32
  call void @__asan_load1_noabort(i32 %353)
  %354 = load i8, ptr %arrayidx.i1032.3.i.i, align 1
  %conv2.i1033.3.i.i = zext i8 %354 to i32
  %inc.i1034.3.i.i = add nuw nsw i32 %spec.select.i1042.2.i.i, 1
  %shr.i1035.3.i.i = lshr i32 %conv2.i1033.3.i.i, %spec.select.i1042.2.i.i
  %and.i1036.3.i.i = shl nuw nsw i32 %shr.i1035.3.i.i, 3
  %355 = and i32 %and.i1036.3.i.i, 8
  %or.i1040.31676.i.i = or i32 %or.i1040.21675.i.i, %355
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1034.3.i.i, i32 %conv.i959.i.i)
  %cmp.i1041.3.i.i = icmp eq i32 %inc.i1034.3.i.i, %conv.i959.i.i
  %spec.select.i1042.3.i.i = select i1 %cmp.i1041.3.i.i, i32 0, i32 %inc.i1034.3.i.i
  %inc7.i1043.3.i.i = zext i1 %cmp.i1041.3.i.i to i32
  %spec.select14.i1044.3.i.i = add nuw nsw i32 %spec.select14.i1044.2.i.i, %inc7.i1043.3.i.i
  %arrayidx.i1032.4.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1044.3.i.i
  %356 = ptrtoint ptr %arrayidx.i1032.4.i.i to i32
  call void @__asan_load1_noabort(i32 %356)
  %357 = load i8, ptr %arrayidx.i1032.4.i.i, align 1
  %conv2.i1033.4.i.i = zext i8 %357 to i32
  %inc.i1034.4.i.i = add nuw nsw i32 %spec.select.i1042.3.i.i, 1
  %shr.i1035.4.i.i = lshr i32 %conv2.i1033.4.i.i, %spec.select.i1042.3.i.i
  %and.i1036.4.i.i = shl nuw nsw i32 %shr.i1035.4.i.i, 4
  %358 = and i32 %and.i1036.4.i.i, 16
  %or.i1040.41677.i.i = or i32 %or.i1040.31676.i.i, %358
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1034.4.i.i, i32 %conv.i959.i.i)
  %cmp.i1041.4.i.i = icmp eq i32 %inc.i1034.4.i.i, %conv.i959.i.i
  %spec.select.i1042.4.i.i = select i1 %cmp.i1041.4.i.i, i32 0, i32 %inc.i1034.4.i.i
  %inc7.i1043.4.i.i = zext i1 %cmp.i1041.4.i.i to i32
  %spec.select14.i1044.4.i.i = add nuw nsw i32 %spec.select14.i1044.3.i.i, %inc7.i1043.4.i.i
  %arrayidx.i1032.5.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1044.4.i.i
  %359 = ptrtoint ptr %arrayidx.i1032.5.i.i to i32
  call void @__asan_load1_noabort(i32 %359)
  %360 = load i8, ptr %arrayidx.i1032.5.i.i, align 1
  %conv2.i1033.5.i.i = zext i8 %360 to i32
  %inc.i1034.5.i.i = add nuw nsw i32 %spec.select.i1042.4.i.i, 1
  %shr.i1035.5.i.i = lshr i32 %conv2.i1033.5.i.i, %spec.select.i1042.4.i.i
  %and.i1036.5.i.i = shl nuw nsw i32 %shr.i1035.5.i.i, 5
  %361 = and i32 %and.i1036.5.i.i, 32
  %or.i1040.51678.i.i = or i32 %or.i1040.41677.i.i, %361
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1034.5.i.i, i32 %conv.i959.i.i)
  %cmp.i1041.5.i.i = icmp eq i32 %inc.i1034.5.i.i, %conv.i959.i.i
  %spec.select.i1042.5.i.i = select i1 %cmp.i1041.5.i.i, i32 0, i32 %inc.i1034.5.i.i
  %inc7.i1043.5.i.i = zext i1 %cmp.i1041.5.i.i to i32
  %spec.select14.i1044.5.i.i = add nuw nsw i32 %spec.select14.i1044.4.i.i, %inc7.i1043.5.i.i
  %arrayidx.i1032.6.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1044.5.i.i
  %362 = ptrtoint ptr %arrayidx.i1032.6.i.i to i32
  call void @__asan_load1_noabort(i32 %362)
  %363 = load i8, ptr %arrayidx.i1032.6.i.i, align 1
  %conv2.i1033.6.i.i = zext i8 %363 to i32
  %inc.i1034.6.i.i = add nuw nsw i32 %spec.select.i1042.5.i.i, 1
  %shr.i1035.6.i.i = lshr i32 %conv2.i1033.6.i.i, %spec.select.i1042.5.i.i
  %and.i1036.6.i.i = shl nuw nsw i32 %shr.i1035.6.i.i, 6
  %364 = and i32 %and.i1036.6.i.i, 64
  %or.i1040.61679.i.i = or i32 %or.i1040.51678.i.i, %364
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1034.6.i.i, i32 %conv.i959.i.i)
  %cmp.i1041.6.i.i = icmp eq i32 %inc.i1034.6.i.i, %conv.i959.i.i
  %spec.select.i1042.6.i.i = select i1 %cmp.i1041.6.i.i, i32 0, i32 %inc.i1034.6.i.i
  %inc7.i1043.6.i.i = zext i1 %cmp.i1041.6.i.i to i32
  %spec.select14.i1044.6.i.i = add nuw nsw i32 %spec.select14.i1044.5.i.i, %inc7.i1043.6.i.i
  %arrayidx.i1032.7.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1044.6.i.i
  %365 = ptrtoint ptr %arrayidx.i1032.7.i.i to i32
  call void @__asan_load1_noabort(i32 %365)
  %366 = load i8, ptr %arrayidx.i1032.7.i.i, align 1
  %conv2.i1033.7.i.i = zext i8 %366 to i32
  %inc.i1034.7.i.i = add nuw nsw i32 %spec.select.i1042.6.i.i, 1
  %shr.i1035.7.i.i = lshr i32 %conv2.i1033.7.i.i, %spec.select.i1042.6.i.i
  %and.i1036.7.i.i = shl nuw nsw i32 %shr.i1035.7.i.i, 7
  %367 = and i32 %and.i1036.7.i.i, 128
  %or.i1040.71680.i.i = or i32 %or.i1040.61679.i.i, %367
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1034.7.i.i, i32 %conv.i959.i.i)
  %cmp.i1041.7.i.i = icmp eq i32 %inc.i1034.7.i.i, %conv.i959.i.i
  %spec.select.i1042.7.i.i = select i1 %cmp.i1041.7.i.i, i32 0, i32 %inc.i1034.7.i.i
  %inc7.i1043.7.i.i = zext i1 %cmp.i1041.7.i.i to i32
  %spec.select14.i1044.7.i.i = add nuw nsw i32 %spec.select14.i1044.6.i.i, %inc7.i1043.7.i.i
  %arrayidx.i1032.8.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1044.7.i.i
  %368 = ptrtoint ptr %arrayidx.i1032.8.i.i to i32
  call void @__asan_load1_noabort(i32 %368)
  %369 = load i8, ptr %arrayidx.i1032.8.i.i, align 1
  %conv2.i1033.8.i.i = zext i8 %369 to i32
  %inc.i1034.8.i.i = add nuw nsw i32 %spec.select.i1042.7.i.i, 1
  %shr.i1035.8.i.i = lshr i32 %conv2.i1033.8.i.i, %spec.select.i1042.7.i.i
  %and.i1036.8.i.i = shl nuw nsw i32 %shr.i1035.8.i.i, 8
  %370 = and i32 %and.i1036.8.i.i, 256
  %or.i1040.81681.i.i = or i32 %or.i1040.71680.i.i, %370
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1034.8.i.i, i32 %conv.i959.i.i)
  %cmp.i1041.8.i.i = icmp eq i32 %inc.i1034.8.i.i, %conv.i959.i.i
  %spec.select.i1042.8.i.i = select i1 %cmp.i1041.8.i.i, i32 0, i32 %inc.i1034.8.i.i
  %inc7.i1043.8.i.i = zext i1 %cmp.i1041.8.i.i to i32
  %spec.select14.i1044.8.i.i = add nuw nsw i32 %spec.select14.i1044.7.i.i, %inc7.i1043.8.i.i
  %arrayidx.i1032.9.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1044.8.i.i
  %371 = ptrtoint ptr %arrayidx.i1032.9.i.i to i32
  call void @__asan_load1_noabort(i32 %371)
  %372 = load i8, ptr %arrayidx.i1032.9.i.i, align 1
  %conv2.i1033.9.i.i = zext i8 %372 to i32
  %shr.i1035.9.i.i = lshr i32 %conv2.i1033.9.i.i, %spec.select.i1042.8.i.i
  %and.i1036.9.i.i = shl nuw nsw i32 %shr.i1035.9.i.i, 9
  %373 = and i32 %and.i1036.9.i.i, 512
  %or.i1040.91682.i.i = or i32 %or.i1040.81681.i.i, %373
  tail call void @input_event(ptr noundef %343, i32 noundef 3, i32 noundef 0, i32 noundef %or.i1040.91682.i.i) #7
  %374 = ptrtoint ptr %bits134.i.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %bits134.i.i, align 4
  %conv.i1049.i.i = and i32 %375, 255
  %div.i10501588.rhs.trunc.i.i = trunc i32 %375 to i8
  %div.i10501588.rhs.trunc.i.i.frozen = freeze i8 %div.i10501588.rhs.trunc.i.i
  %div.i105015881589.i.i = udiv i8 19, %div.i10501588.rhs.trunc.i.i.frozen
  %div.i10501588.zext.i.i = zext i8 %div.i105015881589.i.i to i32
  %376 = mul i8 %div.i105015881589.i.i, %div.i10501588.rhs.trunc.i.i.frozen
  %rem.i105115901591.i.i.decomposed = sub i8 19, %376
  %rem.i10511590.zext.i.i = zext i8 %rem.i105115901591.i.i.decomposed to i32
  %arrayidx.i1058.i.i = getelementptr i8, ptr %buf.i, i32 %div.i10501588.zext.i.i
  %377 = ptrtoint ptr %arrayidx.i1058.i.i to i32
  call void @__asan_load1_noabort(i32 %377)
  %378 = load i8, ptr %arrayidx.i1058.i.i, align 1
  %conv2.i1059.i.i = zext i8 %378 to i32
  %inc.i1060.i.i = add nuw nsw i32 %rem.i10511590.zext.i.i, 1
  %shr.i1061.i.i = lshr i32 %conv2.i1059.i.i, %rem.i10511590.zext.i.i
  %and.i1062.i.i = and i32 %shr.i1061.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1060.i.i, i32 %conv.i1049.i.i)
  %cmp.i1067.i.i = icmp eq i32 %inc.i1060.i.i, %conv.i1049.i.i
  %spec.select.i1068.i.i = select i1 %cmp.i1067.i.i, i32 0, i32 %inc.i1060.i.i
  %inc7.i1069.i.i = zext i1 %cmp.i1067.i.i to i32
  %spec.select14.i1070.i.i = add nuw nsw i32 %inc7.i1069.i.i, %div.i10501588.zext.i.i
  %arrayidx.i1058.1.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1070.i.i
  %379 = ptrtoint ptr %arrayidx.i1058.1.i.i to i32
  call void @__asan_load1_noabort(i32 %379)
  %380 = load i8, ptr %arrayidx.i1058.1.i.i, align 1
  %conv2.i1059.1.i.i = zext i8 %380 to i32
  %inc.i1060.1.i.i = add nuw nsw i32 %spec.select.i1068.i.i, 1
  %shr.i1061.1.i.i = lshr i32 %conv2.i1059.1.i.i, %spec.select.i1068.i.i
  %and.i1062.1.i.i = shl nuw nsw i32 %shr.i1061.1.i.i, 1
  %381 = and i32 %and.i1062.1.i.i, 2
  %or.i1066.11683.i.i = or i32 %381, %and.i1062.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1060.1.i.i, i32 %conv.i1049.i.i)
  %cmp.i1067.1.i.i = icmp eq i32 %inc.i1060.1.i.i, %conv.i1049.i.i
  %spec.select.i1068.1.i.i = select i1 %cmp.i1067.1.i.i, i32 0, i32 %inc.i1060.1.i.i
  %inc7.i1069.1.i.i = zext i1 %cmp.i1067.1.i.i to i32
  %spec.select14.i1070.1.i.i = add nuw nsw i32 %spec.select14.i1070.i.i, %inc7.i1069.1.i.i
  %arrayidx.i1058.2.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1070.1.i.i
  %382 = ptrtoint ptr %arrayidx.i1058.2.i.i to i32
  call void @__asan_load1_noabort(i32 %382)
  %383 = load i8, ptr %arrayidx.i1058.2.i.i, align 1
  %conv2.i1059.2.i.i = zext i8 %383 to i32
  %inc.i1060.2.i.i = add nuw nsw i32 %spec.select.i1068.1.i.i, 1
  %shr.i1061.2.i.i = lshr i32 %conv2.i1059.2.i.i, %spec.select.i1068.1.i.i
  %and.i1062.2.i.i = shl nuw nsw i32 %shr.i1061.2.i.i, 2
  %384 = and i32 %and.i1062.2.i.i, 4
  %or.i1066.21684.i.i = or i32 %or.i1066.11683.i.i, %384
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1060.2.i.i, i32 %conv.i1049.i.i)
  %cmp.i1067.2.i.i = icmp eq i32 %inc.i1060.2.i.i, %conv.i1049.i.i
  %spec.select.i1068.2.i.i = select i1 %cmp.i1067.2.i.i, i32 0, i32 %inc.i1060.2.i.i
  %inc7.i1069.2.i.i = zext i1 %cmp.i1067.2.i.i to i32
  %spec.select14.i1070.2.i.i = add nuw nsw i32 %spec.select14.i1070.1.i.i, %inc7.i1069.2.i.i
  %arrayidx.i1058.3.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1070.2.i.i
  %385 = ptrtoint ptr %arrayidx.i1058.3.i.i to i32
  call void @__asan_load1_noabort(i32 %385)
  %386 = load i8, ptr %arrayidx.i1058.3.i.i, align 1
  %conv2.i1059.3.i.i = zext i8 %386 to i32
  %inc.i1060.3.i.i = add nuw nsw i32 %spec.select.i1068.2.i.i, 1
  %shr.i1061.3.i.i = lshr i32 %conv2.i1059.3.i.i, %spec.select.i1068.2.i.i
  %and.i1062.3.i.i = shl nuw nsw i32 %shr.i1061.3.i.i, 3
  %387 = and i32 %and.i1062.3.i.i, 8
  %or.i1066.31685.i.i = or i32 %or.i1066.21684.i.i, %387
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1060.3.i.i, i32 %conv.i1049.i.i)
  %cmp.i1067.3.i.i = icmp eq i32 %inc.i1060.3.i.i, %conv.i1049.i.i
  %spec.select.i1068.3.i.i = select i1 %cmp.i1067.3.i.i, i32 0, i32 %inc.i1060.3.i.i
  %inc7.i1069.3.i.i = zext i1 %cmp.i1067.3.i.i to i32
  %spec.select14.i1070.3.i.i = add nuw nsw i32 %spec.select14.i1070.2.i.i, %inc7.i1069.3.i.i
  %arrayidx.i1058.4.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1070.3.i.i
  %388 = ptrtoint ptr %arrayidx.i1058.4.i.i to i32
  call void @__asan_load1_noabort(i32 %388)
  %389 = load i8, ptr %arrayidx.i1058.4.i.i, align 1
  %conv2.i1059.4.i.i = zext i8 %389 to i32
  %inc.i1060.4.i.i = add nuw nsw i32 %spec.select.i1068.3.i.i, 1
  %shr.i1061.4.i.i = lshr i32 %conv2.i1059.4.i.i, %spec.select.i1068.3.i.i
  %and.i1062.4.i.i = shl nuw nsw i32 %shr.i1061.4.i.i, 4
  %390 = and i32 %and.i1062.4.i.i, 16
  %or.i1066.41686.i.i = or i32 %or.i1066.31685.i.i, %390
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1060.4.i.i, i32 %conv.i1049.i.i)
  %cmp.i1067.4.i.i = icmp eq i32 %inc.i1060.4.i.i, %conv.i1049.i.i
  %spec.select.i1068.4.i.i = select i1 %cmp.i1067.4.i.i, i32 0, i32 %inc.i1060.4.i.i
  %inc7.i1069.4.i.i = zext i1 %cmp.i1067.4.i.i to i32
  %spec.select14.i1070.4.i.i = add nuw nsw i32 %spec.select14.i1070.3.i.i, %inc7.i1069.4.i.i
  %arrayidx.i1058.5.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1070.4.i.i
  %391 = ptrtoint ptr %arrayidx.i1058.5.i.i to i32
  call void @__asan_load1_noabort(i32 %391)
  %392 = load i8, ptr %arrayidx.i1058.5.i.i, align 1
  %conv2.i1059.5.i.i = zext i8 %392 to i32
  %inc.i1060.5.i.i = add nuw nsw i32 %spec.select.i1068.4.i.i, 1
  %shr.i1061.5.i.i = lshr i32 %conv2.i1059.5.i.i, %spec.select.i1068.4.i.i
  %and.i1062.5.i.i = shl nuw nsw i32 %shr.i1061.5.i.i, 5
  %393 = and i32 %and.i1062.5.i.i, 32
  %or.i1066.51687.i.i = or i32 %or.i1066.41686.i.i, %393
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1060.5.i.i, i32 %conv.i1049.i.i)
  %cmp.i1067.5.i.i = icmp eq i32 %inc.i1060.5.i.i, %conv.i1049.i.i
  %spec.select.i1068.5.i.i = select i1 %cmp.i1067.5.i.i, i32 0, i32 %inc.i1060.5.i.i
  %inc7.i1069.5.i.i = zext i1 %cmp.i1067.5.i.i to i32
  %spec.select14.i1070.5.i.i = add nuw nsw i32 %spec.select14.i1070.4.i.i, %inc7.i1069.5.i.i
  %arrayidx.i1058.6.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1070.5.i.i
  %394 = ptrtoint ptr %arrayidx.i1058.6.i.i to i32
  call void @__asan_load1_noabort(i32 %394)
  %395 = load i8, ptr %arrayidx.i1058.6.i.i, align 1
  %conv2.i1059.6.i.i = zext i8 %395 to i32
  %inc.i1060.6.i.i = add nuw nsw i32 %spec.select.i1068.5.i.i, 1
  %shr.i1061.6.i.i = lshr i32 %conv2.i1059.6.i.i, %spec.select.i1068.5.i.i
  %and.i1062.6.i.i = shl nuw nsw i32 %shr.i1061.6.i.i, 6
  %396 = and i32 %and.i1062.6.i.i, 64
  %or.i1066.61688.i.i = or i32 %or.i1066.51687.i.i, %396
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1060.6.i.i, i32 %conv.i1049.i.i)
  %cmp.i1067.6.i.i = icmp eq i32 %inc.i1060.6.i.i, %conv.i1049.i.i
  %spec.select.i1068.6.i.i = select i1 %cmp.i1067.6.i.i, i32 0, i32 %inc.i1060.6.i.i
  %inc7.i1069.6.i.i = zext i1 %cmp.i1067.6.i.i to i32
  %spec.select14.i1070.6.i.i = add nuw nsw i32 %spec.select14.i1070.5.i.i, %inc7.i1069.6.i.i
  %arrayidx.i1058.7.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1070.6.i.i
  %397 = ptrtoint ptr %arrayidx.i1058.7.i.i to i32
  call void @__asan_load1_noabort(i32 %397)
  %398 = load i8, ptr %arrayidx.i1058.7.i.i, align 1
  %conv2.i1059.7.i.i = zext i8 %398 to i32
  %inc.i1060.7.i.i = add nuw nsw i32 %spec.select.i1068.6.i.i, 1
  %shr.i1061.7.i.i = lshr i32 %conv2.i1059.7.i.i, %spec.select.i1068.6.i.i
  %and.i1062.7.i.i = shl nuw nsw i32 %shr.i1061.7.i.i, 7
  %399 = and i32 %and.i1062.7.i.i, 128
  %or.i1066.71689.i.i = or i32 %or.i1066.61688.i.i, %399
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1060.7.i.i, i32 %conv.i1049.i.i)
  %cmp.i1067.7.i.i = icmp eq i32 %inc.i1060.7.i.i, %conv.i1049.i.i
  %spec.select.i1068.7.i.i = select i1 %cmp.i1067.7.i.i, i32 0, i32 %inc.i1060.7.i.i
  %inc7.i1069.7.i.i = zext i1 %cmp.i1067.7.i.i to i32
  %spec.select14.i1070.7.i.i = add nuw nsw i32 %spec.select14.i1070.6.i.i, %inc7.i1069.7.i.i
  %arrayidx.i1058.8.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1070.7.i.i
  %400 = ptrtoint ptr %arrayidx.i1058.8.i.i to i32
  call void @__asan_load1_noabort(i32 %400)
  %401 = load i8, ptr %arrayidx.i1058.8.i.i, align 1
  %conv2.i1059.8.i.i = zext i8 %401 to i32
  %inc.i1060.8.i.i = add nuw nsw i32 %spec.select.i1068.7.i.i, 1
  %shr.i1061.8.i.i = lshr i32 %conv2.i1059.8.i.i, %spec.select.i1068.7.i.i
  %and.i1062.8.i.i = shl nuw nsw i32 %shr.i1061.8.i.i, 8
  %402 = and i32 %and.i1062.8.i.i, 256
  %or.i1066.81690.i.i = or i32 %or.i1066.71689.i.i, %402
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1060.8.i.i, i32 %conv.i1049.i.i)
  %cmp.i1067.8.i.i = icmp eq i32 %inc.i1060.8.i.i, %conv.i1049.i.i
  %spec.select.i1068.8.i.i = select i1 %cmp.i1067.8.i.i, i32 0, i32 %inc.i1060.8.i.i
  %inc7.i1069.8.i.i = zext i1 %cmp.i1067.8.i.i to i32
  %spec.select14.i1070.8.i.i = add nuw nsw i32 %spec.select14.i1070.7.i.i, %inc7.i1069.8.i.i
  %arrayidx.i1058.9.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1070.8.i.i
  %403 = ptrtoint ptr %arrayidx.i1058.9.i.i to i32
  call void @__asan_load1_noabort(i32 %403)
  %404 = load i8, ptr %arrayidx.i1058.9.i.i, align 1
  %conv2.i1059.9.i.i = zext i8 %404 to i32
  %shr.i1061.9.i.i = lshr i32 %conv2.i1059.9.i.i, %spec.select.i1068.8.i.i
  %and.i1062.9.i.i = shl nuw nsw i32 %shr.i1061.9.i.i, 9
  %405 = and i32 %and.i1062.9.i.i, 512
  %or.i1066.91691.i.i = or i32 %or.i1066.81690.i.i, %405
  tail call void @input_event(ptr noundef %343, i32 noundef 3, i32 noundef 1, i32 noundef %or.i1066.91691.i.i) #7
  %406 = ptrtoint ptr %bits134.i.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %bits134.i.i, align 4
  %conv.i1075.i.i = and i32 %407, 255
  %div.i10761592.rhs.trunc.i.i = trunc i32 %407 to i8
  %div.i10761592.rhs.trunc.i.i.frozen = freeze i8 %div.i10761592.rhs.trunc.i.i
  %div.i107615921593.i.i = udiv i8 36, %div.i10761592.rhs.trunc.i.i.frozen
  %div.i10761592.zext.i.i = zext i8 %div.i107615921593.i.i to i32
  %408 = mul i8 %div.i107615921593.i.i, %div.i10761592.rhs.trunc.i.i.frozen
  %rem.i107715941595.i.i.decomposed = sub i8 36, %408
  %rem.i10771594.zext.i.i = zext i8 %rem.i107715941595.i.i.decomposed to i32
  %arrayidx.i1084.i.i = getelementptr i8, ptr %buf.i, i32 %div.i10761592.zext.i.i
  %409 = ptrtoint ptr %arrayidx.i1084.i.i to i32
  call void @__asan_load1_noabort(i32 %409)
  %410 = load i8, ptr %arrayidx.i1084.i.i, align 1
  %conv2.i1085.i.i = zext i8 %410 to i32
  %inc.i1086.i.i = add nuw nsw i32 %rem.i10771594.zext.i.i, 1
  %shr.i1087.i.i = lshr i32 %conv2.i1085.i.i, %rem.i10771594.zext.i.i
  %and.i1088.i.i = and i32 %shr.i1087.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1086.i.i, i32 %conv.i1075.i.i)
  %cmp.i1093.i.i = icmp eq i32 %inc.i1086.i.i, %conv.i1075.i.i
  %spec.select.i1094.i.i = select i1 %cmp.i1093.i.i, i32 0, i32 %inc.i1086.i.i
  %inc7.i1095.i.i = zext i1 %cmp.i1093.i.i to i32
  %spec.select14.i1096.i.i = add nuw nsw i32 %inc7.i1095.i.i, %div.i10761592.zext.i.i
  %arrayidx.i1084.1.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1096.i.i
  %411 = ptrtoint ptr %arrayidx.i1084.1.i.i to i32
  call void @__asan_load1_noabort(i32 %411)
  %412 = load i8, ptr %arrayidx.i1084.1.i.i, align 1
  %conv2.i1085.1.i.i = zext i8 %412 to i32
  %inc.i1086.1.i.i = add nuw nsw i32 %spec.select.i1094.i.i, 1
  %shr.i1087.1.i.i = lshr i32 %conv2.i1085.1.i.i, %spec.select.i1094.i.i
  %and.i1088.1.i.i = shl nuw nsw i32 %shr.i1087.1.i.i, 1
  %413 = and i32 %and.i1088.1.i.i, 2
  %or.i1092.11692.i.i = or i32 %413, %and.i1088.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1086.1.i.i, i32 %conv.i1075.i.i)
  %cmp.i1093.1.i.i = icmp eq i32 %inc.i1086.1.i.i, %conv.i1075.i.i
  %spec.select.i1094.1.i.i = select i1 %cmp.i1093.1.i.i, i32 0, i32 %inc.i1086.1.i.i
  %inc7.i1095.1.i.i = zext i1 %cmp.i1093.1.i.i to i32
  %spec.select14.i1096.1.i.i = add nuw nsw i32 %spec.select14.i1096.i.i, %inc7.i1095.1.i.i
  %arrayidx.i1084.2.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1096.1.i.i
  %414 = ptrtoint ptr %arrayidx.i1084.2.i.i to i32
  call void @__asan_load1_noabort(i32 %414)
  %415 = load i8, ptr %arrayidx.i1084.2.i.i, align 1
  %conv2.i1085.2.i.i = zext i8 %415 to i32
  %inc.i1086.2.i.i = add nuw nsw i32 %spec.select.i1094.1.i.i, 1
  %shr.i1087.2.i.i = lshr i32 %conv2.i1085.2.i.i, %spec.select.i1094.1.i.i
  %and.i1088.2.i.i = shl nuw nsw i32 %shr.i1087.2.i.i, 2
  %416 = and i32 %and.i1088.2.i.i, 4
  %or.i1092.21693.i.i = or i32 %or.i1092.11692.i.i, %416
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1086.2.i.i, i32 %conv.i1075.i.i)
  %cmp.i1093.2.i.i = icmp eq i32 %inc.i1086.2.i.i, %conv.i1075.i.i
  %spec.select.i1094.2.i.i = select i1 %cmp.i1093.2.i.i, i32 0, i32 %inc.i1086.2.i.i
  %inc7.i1095.2.i.i = zext i1 %cmp.i1093.2.i.i to i32
  %spec.select14.i1096.2.i.i = add nuw nsw i32 %spec.select14.i1096.1.i.i, %inc7.i1095.2.i.i
  %arrayidx.i1084.3.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1096.2.i.i
  %417 = ptrtoint ptr %arrayidx.i1084.3.i.i to i32
  call void @__asan_load1_noabort(i32 %417)
  %418 = load i8, ptr %arrayidx.i1084.3.i.i, align 1
  %conv2.i1085.3.i.i = zext i8 %418 to i32
  %inc.i1086.3.i.i = add nuw nsw i32 %spec.select.i1094.2.i.i, 1
  %shr.i1087.3.i.i = lshr i32 %conv2.i1085.3.i.i, %spec.select.i1094.2.i.i
  %and.i1088.3.i.i = shl nuw nsw i32 %shr.i1087.3.i.i, 3
  %419 = and i32 %and.i1088.3.i.i, 8
  %or.i1092.31694.i.i = or i32 %or.i1092.21693.i.i, %419
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1086.3.i.i, i32 %conv.i1075.i.i)
  %cmp.i1093.3.i.i = icmp eq i32 %inc.i1086.3.i.i, %conv.i1075.i.i
  %spec.select.i1094.3.i.i = select i1 %cmp.i1093.3.i.i, i32 0, i32 %inc.i1086.3.i.i
  %inc7.i1095.3.i.i = zext i1 %cmp.i1093.3.i.i to i32
  %spec.select14.i1096.3.i.i = add nuw nsw i32 %spec.select14.i1096.2.i.i, %inc7.i1095.3.i.i
  %arrayidx.i1084.4.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1096.3.i.i
  %420 = ptrtoint ptr %arrayidx.i1084.4.i.i to i32
  call void @__asan_load1_noabort(i32 %420)
  %421 = load i8, ptr %arrayidx.i1084.4.i.i, align 1
  %conv2.i1085.4.i.i = zext i8 %421 to i32
  %inc.i1086.4.i.i = add nuw nsw i32 %spec.select.i1094.3.i.i, 1
  %shr.i1087.4.i.i = lshr i32 %conv2.i1085.4.i.i, %spec.select.i1094.3.i.i
  %and.i1088.4.i.i = shl nuw nsw i32 %shr.i1087.4.i.i, 4
  %422 = and i32 %and.i1088.4.i.i, 16
  %or.i1092.41695.i.i = or i32 %or.i1092.31694.i.i, %422
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1086.4.i.i, i32 %conv.i1075.i.i)
  %cmp.i1093.4.i.i = icmp eq i32 %inc.i1086.4.i.i, %conv.i1075.i.i
  %spec.select.i1094.4.i.i = select i1 %cmp.i1093.4.i.i, i32 0, i32 %inc.i1086.4.i.i
  %inc7.i1095.4.i.i = zext i1 %cmp.i1093.4.i.i to i32
  %spec.select14.i1096.4.i.i = add nuw nsw i32 %spec.select14.i1096.3.i.i, %inc7.i1095.4.i.i
  %arrayidx.i1084.5.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1096.4.i.i
  %423 = ptrtoint ptr %arrayidx.i1084.5.i.i to i32
  call void @__asan_load1_noabort(i32 %423)
  %424 = load i8, ptr %arrayidx.i1084.5.i.i, align 1
  %conv2.i1085.5.i.i = zext i8 %424 to i32
  %shr.i1087.5.i.i = lshr i32 %conv2.i1085.5.i.i, %spec.select.i1094.4.i.i
  %and.i1088.5.i.i = shl nuw nsw i32 %shr.i1087.5.i.i, 5
  %425 = and i32 %and.i1088.5.i.i, 32
  %or.i1092.51696.i.i = or i32 %or.i1092.41695.i.i, %425
  tail call void @input_event(ptr noundef %343, i32 noundef 3, i32 noundef 5, i32 noundef %or.i1092.51696.i.i) #7
  %426 = ptrtoint ptr %bits134.i.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %bits134.i.i, align 4
  %conv.i1101.i.i = and i32 %427, 255
  %div.i11021596.rhs.trunc.i.i = trunc i32 %427 to i8
  %div.i11021596.rhs.trunc.i.i.frozen = freeze i8 %div.i11021596.rhs.trunc.i.i
  %div.i110215961597.i.i = udiv i8 29, %div.i11021596.rhs.trunc.i.i.frozen
  %div.i11021596.zext.i.i = zext i8 %div.i110215961597.i.i to i32
  %428 = mul i8 %div.i110215961597.i.i, %div.i11021596.rhs.trunc.i.i.frozen
  %rem.i110315981599.i.i.decomposed = sub i8 29, %428
  %rem.i11031598.zext.i.i = zext i8 %rem.i110315981599.i.i.decomposed to i32
  %arrayidx.i1110.i.i = getelementptr i8, ptr %buf.i, i32 %div.i11021596.zext.i.i
  %429 = ptrtoint ptr %arrayidx.i1110.i.i to i32
  call void @__asan_load1_noabort(i32 %429)
  %430 = load i8, ptr %arrayidx.i1110.i.i, align 1
  %conv2.i1111.i.i = zext i8 %430 to i32
  %inc.i1112.i.i = add nuw nsw i32 %rem.i11031598.zext.i.i, 1
  %shr.i1113.i.i = lshr i32 %conv2.i1111.i.i, %rem.i11031598.zext.i.i
  %and.i1114.i.i = and i32 %shr.i1113.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1112.i.i, i32 %conv.i1101.i.i)
  %cmp.i1119.i.i = icmp eq i32 %inc.i1112.i.i, %conv.i1101.i.i
  %spec.select.i1120.i.i = select i1 %cmp.i1119.i.i, i32 0, i32 %inc.i1112.i.i
  %inc7.i1121.i.i = zext i1 %cmp.i1119.i.i to i32
  %spec.select14.i1122.i.i = add nuw nsw i32 %inc7.i1121.i.i, %div.i11021596.zext.i.i
  %arrayidx.i1110.1.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1122.i.i
  %431 = ptrtoint ptr %arrayidx.i1110.1.i.i to i32
  call void @__asan_load1_noabort(i32 %431)
  %432 = load i8, ptr %arrayidx.i1110.1.i.i, align 1
  %conv2.i1111.1.i.i = zext i8 %432 to i32
  %inc.i1112.1.i.i = add nuw nsw i32 %spec.select.i1120.i.i, 1
  %shr.i1113.1.i.i = lshr i32 %conv2.i1111.1.i.i, %spec.select.i1120.i.i
  %and.i1114.1.i.i = shl nuw nsw i32 %shr.i1113.1.i.i, 1
  %433 = and i32 %and.i1114.1.i.i, 2
  %or.i1118.11697.i.i = or i32 %433, %and.i1114.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1112.1.i.i, i32 %conv.i1101.i.i)
  %cmp.i1119.1.i.i = icmp eq i32 %inc.i1112.1.i.i, %conv.i1101.i.i
  %spec.select.i1120.1.i.i = select i1 %cmp.i1119.1.i.i, i32 0, i32 %inc.i1112.1.i.i
  %inc7.i1121.1.i.i = zext i1 %cmp.i1119.1.i.i to i32
  %spec.select14.i1122.1.i.i = add nuw nsw i32 %spec.select14.i1122.i.i, %inc7.i1121.1.i.i
  %arrayidx.i1110.2.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1122.1.i.i
  %434 = ptrtoint ptr %arrayidx.i1110.2.i.i to i32
  call void @__asan_load1_noabort(i32 %434)
  %435 = load i8, ptr %arrayidx.i1110.2.i.i, align 1
  %conv2.i1111.2.i.i = zext i8 %435 to i32
  %inc.i1112.2.i.i = add nuw nsw i32 %spec.select.i1120.1.i.i, 1
  %shr.i1113.2.i.i = lshr i32 %conv2.i1111.2.i.i, %spec.select.i1120.1.i.i
  %and.i1114.2.i.i = shl nuw nsw i32 %shr.i1113.2.i.i, 2
  %436 = and i32 %and.i1114.2.i.i, 4
  %or.i1118.21698.i.i = or i32 %or.i1118.11697.i.i, %436
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1112.2.i.i, i32 %conv.i1101.i.i)
  %cmp.i1119.2.i.i = icmp eq i32 %inc.i1112.2.i.i, %conv.i1101.i.i
  %spec.select.i1120.2.i.i = select i1 %cmp.i1119.2.i.i, i32 0, i32 %inc.i1112.2.i.i
  %inc7.i1121.2.i.i = zext i1 %cmp.i1119.2.i.i to i32
  %spec.select14.i1122.2.i.i = add nuw nsw i32 %spec.select14.i1122.1.i.i, %inc7.i1121.2.i.i
  %arrayidx.i1110.3.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1122.2.i.i
  %437 = ptrtoint ptr %arrayidx.i1110.3.i.i to i32
  call void @__asan_load1_noabort(i32 %437)
  %438 = load i8, ptr %arrayidx.i1110.3.i.i, align 1
  %conv2.i1111.3.i.i = zext i8 %438 to i32
  %inc.i1112.3.i.i = add nuw nsw i32 %spec.select.i1120.2.i.i, 1
  %shr.i1113.3.i.i = lshr i32 %conv2.i1111.3.i.i, %spec.select.i1120.2.i.i
  %and.i1114.3.i.i = shl nuw nsw i32 %shr.i1113.3.i.i, 3
  %439 = and i32 %and.i1114.3.i.i, 8
  %or.i1118.31699.i.i = or i32 %or.i1118.21698.i.i, %439
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1112.3.i.i, i32 %conv.i1101.i.i)
  %cmp.i1119.3.i.i = icmp eq i32 %inc.i1112.3.i.i, %conv.i1101.i.i
  %spec.select.i1120.3.i.i = select i1 %cmp.i1119.3.i.i, i32 0, i32 %inc.i1112.3.i.i
  %inc7.i1121.3.i.i = zext i1 %cmp.i1119.3.i.i to i32
  %spec.select14.i1122.3.i.i = add nuw nsw i32 %spec.select14.i1122.2.i.i, %inc7.i1121.3.i.i
  %arrayidx.i1110.4.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1122.3.i.i
  %440 = ptrtoint ptr %arrayidx.i1110.4.i.i to i32
  call void @__asan_load1_noabort(i32 %440)
  %441 = load i8, ptr %arrayidx.i1110.4.i.i, align 1
  %conv2.i1111.4.i.i = zext i8 %441 to i32
  %inc.i1112.4.i.i = add nuw nsw i32 %spec.select.i1120.3.i.i, 1
  %shr.i1113.4.i.i = lshr i32 %conv2.i1111.4.i.i, %spec.select.i1120.3.i.i
  %and.i1114.4.i.i = shl nuw nsw i32 %shr.i1113.4.i.i, 4
  %442 = and i32 %and.i1114.4.i.i, 16
  %or.i1118.41700.i.i = or i32 %or.i1118.31699.i.i, %442
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1112.4.i.i, i32 %conv.i1101.i.i)
  %cmp.i1119.4.i.i = icmp eq i32 %inc.i1112.4.i.i, %conv.i1101.i.i
  %spec.select.i1120.4.i.i = select i1 %cmp.i1119.4.i.i, i32 0, i32 %inc.i1112.4.i.i
  %inc7.i1121.4.i.i = zext i1 %cmp.i1119.4.i.i to i32
  %spec.select14.i1122.4.i.i = add nuw nsw i32 %spec.select14.i1122.3.i.i, %inc7.i1121.4.i.i
  %arrayidx.i1110.5.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1122.4.i.i
  %443 = ptrtoint ptr %arrayidx.i1110.5.i.i to i32
  call void @__asan_load1_noabort(i32 %443)
  %444 = load i8, ptr %arrayidx.i1110.5.i.i, align 1
  %conv2.i1111.5.i.i = zext i8 %444 to i32
  %inc.i1112.5.i.i = add nuw nsw i32 %spec.select.i1120.4.i.i, 1
  %shr.i1113.5.i.i = lshr i32 %conv2.i1111.5.i.i, %spec.select.i1120.4.i.i
  %and.i1114.5.i.i = shl nuw nsw i32 %shr.i1113.5.i.i, 5
  %445 = and i32 %and.i1114.5.i.i, 32
  %or.i1118.51701.i.i = or i32 %or.i1118.41700.i.i, %445
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1112.5.i.i, i32 %conv.i1101.i.i)
  %cmp.i1119.5.i.i = icmp eq i32 %inc.i1112.5.i.i, %conv.i1101.i.i
  %spec.select.i1120.5.i.i = select i1 %cmp.i1119.5.i.i, i32 0, i32 %inc.i1112.5.i.i
  %inc7.i1121.5.i.i = zext i1 %cmp.i1119.5.i.i to i32
  %spec.select14.i1122.5.i.i = add nuw nsw i32 %spec.select14.i1122.4.i.i, %inc7.i1121.5.i.i
  %arrayidx.i1110.6.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1122.5.i.i
  %446 = ptrtoint ptr %arrayidx.i1110.6.i.i to i32
  call void @__asan_load1_noabort(i32 %446)
  %447 = load i8, ptr %arrayidx.i1110.6.i.i, align 1
  %conv2.i1111.6.i.i = zext i8 %447 to i32
  %shr.i1113.6.i.i = lshr i32 %conv2.i1111.6.i.i, %spec.select.i1120.5.i.i
  %and.i1114.6.i.i = shl nuw nsw i32 %shr.i1113.6.i.i, 6
  %448 = and i32 %and.i1114.6.i.i, 64
  %or.i1118.61702.i.i = or i32 %or.i1118.51701.i.i, %448
  tail call void @input_event(ptr noundef %343, i32 noundef 3, i32 noundef 6, i32 noundef %or.i1118.61702.i.i) #7
  %arrayidx166.i.i = getelementptr [9 x %struct.anon.69], ptr @sw_hat_to_axis, i32 0, i32 %or.i1014.31673.i.i
  %449 = ptrtoint ptr %arrayidx166.i.i to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load i32, ptr %arrayidx166.i.i, align 4
  tail call void @input_event(ptr noundef %343, i32 noundef 3, i32 noundef 16, i32 noundef %450) #7
  %y169.i.i = getelementptr [9 x %struct.anon.69], ptr @sw_hat_to_axis, i32 0, i32 %or.i1014.31673.i.i, i32 1
  %451 = ptrtoint ptr %y169.i.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load i32, ptr %y169.i.i, align 4
  tail call void @input_event(ptr noundef %343, i32 noundef 3, i32 noundef 17, i32 noundef %452) #7
  %453 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %453)
  %454 = load i8, ptr %buf.i, align 1
  %455 = and i8 %454, 1
  %456 = xor i8 %455, 1
  %457 = zext i8 %456 to i32
  tail call void @input_event(ptr noundef %343, i32 noundef 1, i32 noundef 288, i32 noundef %457) #7
  %458 = ptrtoint ptr %bits134.i.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load i32, ptr %bits134.i.i, align 4
  %conv.i1127.i.1.i = and i32 %459, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv.i1127.i.1.i)
  %460 = icmp eq i32 %conv.i1127.i.1.i, 1
  %div.i1128.udiv.i.1.i = zext i1 %460 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv.i1127.i.1.i)
  %461 = icmp ne i32 %conv.i1127.i.1.i, 1
  %rem.i1129.urem.i.1.i = zext i1 %461 to i32
  %arrayidx.i1136.i.1.i = getelementptr i8, ptr %buf.i, i32 %div.i1128.udiv.i.1.i
  %462 = ptrtoint ptr %arrayidx.i1136.i.1.i to i32
  call void @__asan_load1_noabort(i32 %462)
  %463 = load i8, ptr %arrayidx.i1136.i.1.i, align 1
  %conv2.i1137.i.1.i = zext i8 %463 to i32
  %464 = xor i32 %conv2.i1137.i.1.i, -1
  %465 = lshr i32 %464, %rem.i1129.urem.i.1.i
  %466 = and i32 %465, 1
  tail call void @input_event(ptr noundef %343, i32 noundef 1, i32 noundef 289, i32 noundef %466) #7
  %467 = ptrtoint ptr %bits134.i.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load i32, ptr %bits134.i.i, align 4
  %div.i1128.udiv.i.2.rhs.trunc.i = trunc i32 %468 to i8
  %div.i1128.udiv.i.2.rhs.trunc.i.frozen = freeze i8 %div.i1128.udiv.i.2.rhs.trunc.i
  %div.i1128.udiv.i.2412.i = udiv i8 2, %div.i1128.udiv.i.2.rhs.trunc.i.frozen
  %div.i1128.udiv.i.2.zext.i = zext i8 %div.i1128.udiv.i.2412.i to i32
  %469 = mul i8 %div.i1128.udiv.i.2412.i, %div.i1128.udiv.i.2.rhs.trunc.i.frozen
  %rem.i1129.urem.i.2413.i.decomposed = sub i8 2, %469
  %rem.i1129.urem.i.2.zext.i = zext i8 %rem.i1129.urem.i.2413.i.decomposed to i32
  %arrayidx.i1136.i.2.i = getelementptr i8, ptr %buf.i, i32 %div.i1128.udiv.i.2.zext.i
  %470 = ptrtoint ptr %arrayidx.i1136.i.2.i to i32
  call void @__asan_load1_noabort(i32 %470)
  %471 = load i8, ptr %arrayidx.i1136.i.2.i, align 1
  %conv2.i1137.i.2.i = zext i8 %471 to i32
  %472 = xor i32 %conv2.i1137.i.2.i, -1
  %473 = lshr i32 %472, %rem.i1129.urem.i.2.zext.i
  %474 = and i32 %473, 1
  tail call void @input_event(ptr noundef %343, i32 noundef 1, i32 noundef 291, i32 noundef %474) #7
  %475 = ptrtoint ptr %bits134.i.i to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load i32, ptr %bits134.i.i, align 4
  %div.i1128.udiv.i.3.rhs.trunc.i = trunc i32 %476 to i8
  %div.i1128.udiv.i.3.rhs.trunc.i.frozen = freeze i8 %div.i1128.udiv.i.3.rhs.trunc.i
  %div.i1128.udiv.i.3414.i = udiv i8 3, %div.i1128.udiv.i.3.rhs.trunc.i.frozen
  %div.i1128.udiv.i.3.zext.i = zext i8 %div.i1128.udiv.i.3414.i to i32
  %477 = mul i8 %div.i1128.udiv.i.3414.i, %div.i1128.udiv.i.3.rhs.trunc.i.frozen
  %rem.i1129.urem.i.3415.i.decomposed = sub i8 3, %477
  %rem.i1129.urem.i.3.zext.i = zext i8 %rem.i1129.urem.i.3415.i.decomposed to i32
  %arrayidx.i1136.i.3.i = getelementptr i8, ptr %buf.i, i32 %div.i1128.udiv.i.3.zext.i
  %478 = ptrtoint ptr %arrayidx.i1136.i.3.i to i32
  call void @__asan_load1_noabort(i32 %478)
  %479 = load i8, ptr %arrayidx.i1136.i.3.i, align 1
  %conv2.i1137.i.3.i = zext i8 %479 to i32
  %480 = xor i32 %conv2.i1137.i.3.i, -1
  %481 = lshr i32 %480, %rem.i1129.urem.i.3.zext.i
  %482 = and i32 %481, 1
  tail call void @input_event(ptr noundef %343, i32 noundef 1, i32 noundef 292, i32 noundef %482) #7
  %483 = ptrtoint ptr %bits134.i.i to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load i32, ptr %bits134.i.i, align 4
  %div.i1128.udiv.i.4.rhs.trunc.i = trunc i32 %484 to i8
  %div.i1128.udiv.i.4.rhs.trunc.i.frozen = freeze i8 %div.i1128.udiv.i.4.rhs.trunc.i
  %div.i1128.udiv.i.4416.i = udiv i8 4, %div.i1128.udiv.i.4.rhs.trunc.i.frozen
  %div.i1128.udiv.i.4.zext.i = zext i8 %div.i1128.udiv.i.4416.i to i32
  %485 = mul i8 %div.i1128.udiv.i.4416.i, %div.i1128.udiv.i.4.rhs.trunc.i.frozen
  %rem.i1129.urem.i.4417.i.decomposed = sub i8 4, %485
  %rem.i1129.urem.i.4.zext.i = zext i8 %rem.i1129.urem.i.4417.i.decomposed to i32
  %arrayidx.i1136.i.4.i = getelementptr i8, ptr %buf.i, i32 %div.i1128.udiv.i.4.zext.i
  %486 = ptrtoint ptr %arrayidx.i1136.i.4.i to i32
  call void @__asan_load1_noabort(i32 %486)
  %487 = load i8, ptr %arrayidx.i1136.i.4.i, align 1
  %conv2.i1137.i.4.i = zext i8 %487 to i32
  %488 = xor i32 %conv2.i1137.i.4.i, -1
  %489 = lshr i32 %488, %rem.i1129.urem.i.4.zext.i
  %490 = and i32 %489, 1
  tail call void @input_event(ptr noundef %343, i32 noundef 1, i32 noundef 294, i32 noundef %490) #7
  %491 = ptrtoint ptr %bits134.i.i to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load i32, ptr %bits134.i.i, align 4
  %div.i1128.udiv.i.5.rhs.trunc.i = trunc i32 %492 to i8
  %div.i1128.udiv.i.5.rhs.trunc.i.frozen = freeze i8 %div.i1128.udiv.i.5.rhs.trunc.i
  %div.i1128.udiv.i.5418.i = udiv i8 5, %div.i1128.udiv.i.5.rhs.trunc.i.frozen
  %div.i1128.udiv.i.5.zext.i = zext i8 %div.i1128.udiv.i.5418.i to i32
  %493 = mul i8 %div.i1128.udiv.i.5418.i, %div.i1128.udiv.i.5.rhs.trunc.i.frozen
  %rem.i1129.urem.i.5419.i.decomposed = sub i8 5, %493
  %rem.i1129.urem.i.5.zext.i = zext i8 %rem.i1129.urem.i.5419.i.decomposed to i32
  %arrayidx.i1136.i.5.i = getelementptr i8, ptr %buf.i, i32 %div.i1128.udiv.i.5.zext.i
  %494 = ptrtoint ptr %arrayidx.i1136.i.5.i to i32
  call void @__asan_load1_noabort(i32 %494)
  %495 = load i8, ptr %arrayidx.i1136.i.5.i, align 1
  %conv2.i1137.i.5.i = zext i8 %495 to i32
  %496 = xor i32 %conv2.i1137.i.5.i, -1
  %497 = lshr i32 %496, %rem.i1129.urem.i.5.zext.i
  %498 = and i32 %497, 1
  tail call void @input_event(ptr noundef %343, i32 noundef 1, i32 noundef 295, i32 noundef %498) #7
  %499 = ptrtoint ptr %bits134.i.i to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load i32, ptr %bits134.i.i, align 4
  %div.i1128.udiv.i.6.rhs.trunc.i = trunc i32 %500 to i8
  %div.i1128.udiv.i.6.rhs.trunc.i.frozen = freeze i8 %div.i1128.udiv.i.6.rhs.trunc.i
  %div.i1128.udiv.i.6420.i = udiv i8 6, %div.i1128.udiv.i.6.rhs.trunc.i.frozen
  %div.i1128.udiv.i.6.zext.i = zext i8 %div.i1128.udiv.i.6420.i to i32
  %501 = mul i8 %div.i1128.udiv.i.6420.i, %div.i1128.udiv.i.6.rhs.trunc.i.frozen
  %rem.i1129.urem.i.6421.i.decomposed = sub i8 6, %501
  %rem.i1129.urem.i.6.zext.i = zext i8 %rem.i1129.urem.i.6421.i.decomposed to i32
  %arrayidx.i1136.i.6.i = getelementptr i8, ptr %buf.i, i32 %div.i1128.udiv.i.6.zext.i
  %502 = ptrtoint ptr %arrayidx.i1136.i.6.i to i32
  call void @__asan_load1_noabort(i32 %502)
  %503 = load i8, ptr %arrayidx.i1136.i.6.i, align 1
  %conv2.i1137.i.6.i = zext i8 %503 to i32
  %504 = xor i32 %conv2.i1137.i.6.i, -1
  %505 = lshr i32 %504, %rem.i1129.urem.i.6.zext.i
  %506 = and i32 %505, 1
  tail call void @input_event(ptr noundef %343, i32 noundef 1, i32 noundef 296, i32 noundef %506) #7
  %507 = ptrtoint ptr %bits134.i.i to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load i32, ptr %bits134.i.i, align 4
  %div.i1128.udiv.i.7.rhs.trunc.i = trunc i32 %508 to i8
  %div.i1128.udiv.i.7.rhs.trunc.i.frozen = freeze i8 %div.i1128.udiv.i.7.rhs.trunc.i
  %div.i1128.udiv.i.7422.i = udiv i8 7, %div.i1128.udiv.i.7.rhs.trunc.i.frozen
  %div.i1128.udiv.i.7.zext.i = zext i8 %div.i1128.udiv.i.7422.i to i32
  %509 = mul i8 %div.i1128.udiv.i.7422.i, %div.i1128.udiv.i.7.rhs.trunc.i.frozen
  %rem.i1129.urem.i.7423.i.decomposed = sub i8 7, %509
  %rem.i1129.urem.i.7.zext.i = zext i8 %rem.i1129.urem.i.7423.i.decomposed to i32
  %arrayidx.i1136.i.7.i = getelementptr i8, ptr %buf.i, i32 %div.i1128.udiv.i.7.zext.i
  %510 = ptrtoint ptr %arrayidx.i1136.i.7.i to i32
  call void @__asan_load1_noabort(i32 %510)
  %511 = load i8, ptr %arrayidx.i1136.i.7.i, align 1
  %conv2.i1137.i.7.i = zext i8 %511 to i32
  %512 = xor i32 %conv2.i1137.i.7.i, -1
  %513 = lshr i32 %512, %rem.i1129.urem.i.7.zext.i
  %514 = and i32 %513, 1
  tail call void @input_event(ptr noundef %343, i32 noundef 1, i32 noundef 297, i32 noundef %514) #7
  %515 = ptrtoint ptr %bits134.i.i to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load i32, ptr %bits134.i.i, align 4
  %div.i1128.udiv.i.8.rhs.trunc.i = trunc i32 %516 to i8
  %div.i1128.udiv.i.8.rhs.trunc.i.frozen = freeze i8 %div.i1128.udiv.i.8.rhs.trunc.i
  %div.i1128.udiv.i.8424.i = udiv i8 8, %div.i1128.udiv.i.8.rhs.trunc.i.frozen
  %div.i1128.udiv.i.8.zext.i = zext i8 %div.i1128.udiv.i.8424.i to i32
  %517 = mul i8 %div.i1128.udiv.i.8424.i, %div.i1128.udiv.i.8.rhs.trunc.i.frozen
  %rem.i1129.urem.i.8425.i.decomposed = sub i8 8, %517
  %rem.i1129.urem.i.8.zext.i = zext i8 %rem.i1129.urem.i.8425.i.decomposed to i32
  %arrayidx.i1136.i.8.i = getelementptr i8, ptr %buf.i, i32 %div.i1128.udiv.i.8.zext.i
  %518 = ptrtoint ptr %arrayidx.i1136.i.8.i to i32
  call void @__asan_load1_noabort(i32 %518)
  %519 = load i8, ptr %arrayidx.i1136.i.8.i, align 1
  %conv2.i1137.i.8.i = zext i8 %519 to i32
  %520 = xor i32 %conv2.i1137.i.8.i, -1
  %521 = lshr i32 %520, %rem.i1129.urem.i.8.zext.i
  %522 = and i32 %521, 1
  tail call void @input_event(ptr noundef %343, i32 noundef 1, i32 noundef 314, i32 noundef %522) #7
  br label %cleanup.sink.split.i.i

sw.bb185.i.i:                                     ; preds = %land.lhs.true67.i
  %bits186.i.i = getelementptr inbounds %struct.sw, ptr %1, i32 0, i32 6
  %523 = ptrtoint ptr %bits186.i.i to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load i32, ptr %bits186.i.i, align 4
  %conv.i1154.i.i = and i32 %524, 255
  br label %while.body.i1175.i.i

while.body.i1175.i.i:                             ; preds = %while.body.i1175.i.i.while.body.i1175.i.i_crit_edge, %sw.bb185.i.i
  %bit.020.i1155.i.i = phi i32 [ %inc4.i1166.i.i, %while.body.i1175.i.i.while.body.i1175.i.i_crit_edge ], [ 0, %sw.bb185.i.i ]
  %i.019.i1156.i.i = phi i32 [ %spec.select14.i1173.i.i, %while.body.i1175.i.i.while.body.i1175.i.i_crit_edge ], [ 0, %sw.bb185.i.i ]
  %tri.018.i1157.i.i = phi i32 [ %spec.select.i1171.i.i, %while.body.i1175.i.i.while.body.i1175.i.i_crit_edge ], [ 0, %sw.bb185.i.i ]
  %data.017.i1158.i.i = phi i64 [ %or.i1169.i.i, %while.body.i1175.i.i.while.body.i1175.i.i_crit_edge ], [ 0, %sw.bb185.i.i ]
  %num.addr.016.i1159.i.i = phi i32 [ %dec.i1160.i.i, %while.body.i1175.i.i.while.body.i1175.i.i_crit_edge ], [ 43, %sw.bb185.i.i ]
  %dec.i1160.i.i = add nsw i32 %num.addr.016.i1159.i.i, -1
  %arrayidx.i1161.i.i = getelementptr i8, ptr %buf.i, i32 %i.019.i1156.i.i
  %525 = ptrtoint ptr %arrayidx.i1161.i.i to i32
  call void @__asan_load1_noabort(i32 %525)
  %526 = load i8, ptr %arrayidx.i1161.i.i, align 1
  %conv2.i1162.i.i = zext i8 %526 to i32
  %inc.i1163.i.i = add i32 %tri.018.i1157.i.i, 1
  %shr.i1164.i.i = lshr i32 %conv2.i1162.i.i, %tri.018.i1157.i.i
  %and.i1165.i.i = and i32 %shr.i1164.i.i, 1
  %527 = zext i32 %and.i1165.i.i to i64
  %inc4.i1166.i.i = add nuw nsw i32 %bit.020.i1155.i.i, 1
  %sh_prom.i1167.i.i = zext i32 %bit.020.i1155.i.i to i64
  %shl.i1168.i.i = shl nuw i64 %527, %sh_prom.i1167.i.i
  %or.i1169.i.i = or i64 %shl.i1168.i.i, %data.017.i1158.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1163.i.i, i32 %conv.i1154.i.i)
  %cmp.i1170.i.i = icmp eq i32 %inc.i1163.i.i, %conv.i1154.i.i
  %spec.select.i1171.i.i = select i1 %cmp.i1170.i.i, i32 0, i32 %inc.i1163.i.i
  %inc7.i1172.i.i = zext i1 %cmp.i1170.i.i to i32
  %spec.select14.i1173.i.i = add i32 %i.019.i1156.i.i, %inc7.i1172.i.i
  %tobool.not.i1174.i.i = icmp eq i32 %dec.i1160.i.i, 0
  br i1 %tobool.not.i1174.i.i, label %sw_get_bits.exit1177.i.i, label %while.body.i1175.i.i.while.body.i1175.i.i_crit_edge

while.body.i1175.i.i.while.body.i1175.i.i_crit_edge: ; preds = %while.body.i1175.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i1175.i.i

sw_get_bits.exit1177.i.i:                         ; preds = %while.body.i1175.i.i
  %shr.i1178.i.i = lshr i64 %or.i1169.i.i, 32
  %xor.i1179.i.i = xor i64 %shr.i1178.i.i, %or.i1169.i.i
  %conv.i1180.i.i = trunc i64 %xor.i1179.i.i to i32
  %shr1.i1181.i.i = ashr i32 %conv.i1180.i.i, 16
  %xor2.i1182.i.i = xor i32 %shr1.i1181.i.i, %conv.i1180.i.i
  %shr3.i1183.i.i = ashr i32 %xor2.i1182.i.i, 8
  %xor4.i1184.i.i = xor i32 %shr3.i1183.i.i, %xor2.i1182.i.i
  %shr5.i1185.i.i = ashr i32 %xor4.i1184.i.i, 4
  %xor6.i1186.i.i = xor i32 %shr5.i1185.i.i, %xor4.i1184.i.i
  %shr7.i1187.i.i = ashr i32 %xor6.i1186.i.i, 2
  %xor8.i1188.i.i = xor i32 %shr7.i1187.i.i, %xor6.i1186.i.i
  %shr922.i1189.i.i = lshr i32 %xor8.i1188.i.i, 1
  %xor10.i1190.i.i = xor i32 %shr922.i1189.i.i, %xor8.i1188.i.i
  %and.i1191.i.i = and i32 %xor10.i1190.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1191.i.i)
  %tobool190.not.i.i = icmp eq i32 %and.i1191.i.i, 0
  br i1 %tobool190.not.i.i, label %sw_get_bits.exit1177.i.i.if.end95.i_crit_edge, label %lor.lhs.false191.i.i

sw_get_bits.exit1177.i.i.if.end95.i_crit_edge:    ; preds = %sw_get_bits.exit1177.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95.i

lor.lhs.false191.i.i:                             ; preds = %sw_get_bits.exit1177.i.i
  %conv.i1154.i.i.frozen = freeze i32 %conv.i1154.i.i
  %div.i1193.i.i = udiv i32 28, %conv.i1154.i.i.frozen
  %528 = mul i32 %div.i1193.i.i, %conv.i1154.i.i.frozen
  %rem.i1194.i.i.decomposed = sub i32 28, %528
  %arrayidx.i1201.i.i = getelementptr i8, ptr %buf.i, i32 %div.i1193.i.i
  %529 = ptrtoint ptr %arrayidx.i1201.i.i to i32
  call void @__asan_load1_noabort(i32 %529)
  %530 = load i8, ptr %arrayidx.i1201.i.i, align 1
  %conv2.i1202.i.i = zext i8 %530 to i32
  %inc.i1203.i.i = add nuw nsw i32 %rem.i1194.i.i.decomposed, 1
  %shr.i1204.i.i = lshr i32 %conv2.i1202.i.i, %rem.i1194.i.i.decomposed
  %and.i1205.i.i = and i32 %shr.i1204.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1203.i.i, i32 %conv.i1154.i.i)
  %cmp.i1210.i.i = icmp eq i32 %inc.i1203.i.i, %conv.i1154.i.i
  %spec.select.i1211.i.i = select i1 %cmp.i1210.i.i, i32 0, i32 %inc.i1203.i.i
  %inc7.i1212.i.i = zext i1 %cmp.i1210.i.i to i32
  %spec.select14.i1213.i.i = add nuw nsw i32 %div.i1193.i.i, %inc7.i1212.i.i
  %arrayidx.i1201.1.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1213.i.i
  %531 = ptrtoint ptr %arrayidx.i1201.1.i.i to i32
  call void @__asan_load1_noabort(i32 %531)
  %532 = load i8, ptr %arrayidx.i1201.1.i.i, align 1
  %conv2.i1202.1.i.i = zext i8 %532 to i32
  %inc.i1203.1.i.i = add nuw nsw i32 %spec.select.i1211.i.i, 1
  %shr.i1204.1.i.i = lshr i32 %conv2.i1202.1.i.i, %spec.select.i1211.i.i
  %and.i1205.1.i.i = shl nuw nsw i32 %shr.i1204.1.i.i, 1
  %533 = and i32 %and.i1205.1.i.i, 2
  %or.i1209.11654.i.i = or i32 %533, %and.i1205.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1203.1.i.i, i32 %conv.i1154.i.i)
  %cmp.i1210.1.i.i = icmp eq i32 %inc.i1203.1.i.i, %conv.i1154.i.i
  %spec.select.i1211.1.i.i = select i1 %cmp.i1210.1.i.i, i32 0, i32 %inc.i1203.1.i.i
  %inc7.i1212.1.i.i = zext i1 %cmp.i1210.1.i.i to i32
  %spec.select14.i1213.1.i.i = add nuw nsw i32 %spec.select14.i1213.i.i, %inc7.i1212.1.i.i
  %arrayidx.i1201.2.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1213.1.i.i
  %534 = ptrtoint ptr %arrayidx.i1201.2.i.i to i32
  call void @__asan_load1_noabort(i32 %534)
  %535 = load i8, ptr %arrayidx.i1201.2.i.i, align 1
  %conv2.i1202.2.i.i = zext i8 %535 to i32
  %inc.i1203.2.i.i = add nuw nsw i32 %spec.select.i1211.1.i.i, 1
  %shr.i1204.2.i.i = lshr i32 %conv2.i1202.2.i.i, %spec.select.i1211.1.i.i
  %and.i1205.2.i.i = shl nuw nsw i32 %shr.i1204.2.i.i, 2
  %536 = and i32 %and.i1205.2.i.i, 4
  %or.i1209.21655.i.i = or i32 %or.i1209.11654.i.i, %536
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1203.2.i.i, i32 %conv.i1154.i.i)
  %cmp.i1210.2.i.i = icmp eq i32 %inc.i1203.2.i.i, %conv.i1154.i.i
  %spec.select.i1211.2.i.i = select i1 %cmp.i1210.2.i.i, i32 0, i32 %inc.i1203.2.i.i
  %inc7.i1212.2.i.i = zext i1 %cmp.i1210.2.i.i to i32
  %spec.select14.i1213.2.i.i = add nuw nsw i32 %spec.select14.i1213.1.i.i, %inc7.i1212.2.i.i
  %arrayidx.i1201.3.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1213.2.i.i
  %537 = ptrtoint ptr %arrayidx.i1201.3.i.i to i32
  call void @__asan_load1_noabort(i32 %537)
  %538 = load i8, ptr %arrayidx.i1201.3.i.i, align 1
  %conv2.i1202.3.i.i = zext i8 %538 to i32
  %shr.i1204.3.i.i = lshr i32 %conv2.i1202.3.i.i, %spec.select.i1211.2.i.i
  %and.i1205.3.i.i = shl nuw nsw i32 %shr.i1204.3.i.i, 3
  %539 = and i32 %and.i1205.3.i.i, 8
  %or.i1209.31656.i.i = or i32 %or.i1209.21655.i.i, %539
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %or.i1209.31656.i.i)
  %cmp196.i.i = icmp ugt i32 %or.i1209.31656.i.i, 8
  br i1 %cmp196.i.i, label %lor.lhs.false191.i.i.if.end95.i_crit_edge, label %if.end199.i.i

lor.lhs.false191.i.i.if.end95.i_crit_edge:        ; preds = %lor.lhs.false191.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95.i

if.end199.i.i:                                    ; preds = %lor.lhs.false191.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev200.i.i = getelementptr inbounds %struct.sw, ptr %1, i32 0, i32 1
  %540 = ptrtoint ptr %dev200.i.i to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %dev200.i.i, align 4
  %542 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %542)
  %543 = load i8, ptr %buf.i, align 1
  %544 = and i8 %543, 1
  %545 = zext i8 %544 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv.i1154.i.i)
  %cmp.i1234.i.i = icmp eq i32 %conv.i1154.i.i, 1
  %not.cmp.i1234.i.i = xor i1 %cmp.i1234.i.i, true
  %spec.select.i1235.i.i = zext i1 %not.cmp.i1234.i.i to i32
  %inc7.i1236.i.i = zext i1 %cmp.i1234.i.i to i32
  %arrayidx.i1225.1.i.i = getelementptr i8, ptr %buf.i, i32 %inc7.i1236.i.i
  %546 = ptrtoint ptr %arrayidx.i1225.1.i.i to i32
  call void @__asan_load1_noabort(i32 %546)
  %547 = load i8, ptr %arrayidx.i1225.1.i.i, align 1
  %conv2.i1226.1.i.i = zext i8 %547 to i32
  %inc.i1227.1.i.i = select i1 %cmp.i1234.i.i, i32 1, i32 2
  %shr.i1228.1.i.i = lshr i32 %conv2.i1226.1.i.i, %spec.select.i1235.i.i
  %and.i1229.1.i.i = shl nuw nsw i32 %shr.i1228.1.i.i, 1
  %548 = and i32 %and.i1229.1.i.i, 2
  %or.i1233.1.i.i = or i32 %548, %545
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1227.1.i.i, i32 %conv.i1154.i.i)
  %cmp.i1234.1.i.i = icmp eq i32 %inc.i1227.1.i.i, %conv.i1154.i.i
  %spec.select.i1235.1.i.i = select i1 %cmp.i1234.1.i.i, i32 0, i32 %inc.i1227.1.i.i
  %inc7.i1236.1.i.i = zext i1 %cmp.i1234.1.i.i to i32
  %spec.select14.i1237.1.i.i = add nuw nsw i32 %inc7.i1236.1.i.i, %inc7.i1236.i.i
  %arrayidx.i1225.2.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1237.1.i.i
  %549 = ptrtoint ptr %arrayidx.i1225.2.i.i to i32
  call void @__asan_load1_noabort(i32 %549)
  %550 = load i8, ptr %arrayidx.i1225.2.i.i, align 1
  %conv2.i1226.2.i.i = zext i8 %550 to i32
  %inc.i1227.2.i.i = add nuw nsw i32 %spec.select.i1235.1.i.i, 1
  %shr.i1228.2.i.i = lshr i32 %conv2.i1226.2.i.i, %spec.select.i1235.1.i.i
  %and.i1229.2.i.i = shl nuw nsw i32 %shr.i1228.2.i.i, 2
  %551 = and i32 %and.i1229.2.i.i, 4
  %or.i1233.2.i.i = or i32 %or.i1233.1.i.i, %551
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1227.2.i.i, i32 %conv.i1154.i.i)
  %cmp.i1234.2.i.i = icmp eq i32 %inc.i1227.2.i.i, %conv.i1154.i.i
  %spec.select.i1235.2.i.i = select i1 %cmp.i1234.2.i.i, i32 0, i32 %inc.i1227.2.i.i
  %inc7.i1236.2.i.i = zext i1 %cmp.i1234.2.i.i to i32
  %spec.select14.i1237.2.i.i = add nuw nsw i32 %spec.select14.i1237.1.i.i, %inc7.i1236.2.i.i
  %arrayidx.i1225.3.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1237.2.i.i
  %552 = ptrtoint ptr %arrayidx.i1225.3.i.i to i32
  call void @__asan_load1_noabort(i32 %552)
  %553 = load i8, ptr %arrayidx.i1225.3.i.i, align 1
  %conv2.i1226.3.i.i = zext i8 %553 to i32
  %inc.i1227.3.i.i = add nuw nsw i32 %spec.select.i1235.2.i.i, 1
  %shr.i1228.3.i.i = lshr i32 %conv2.i1226.3.i.i, %spec.select.i1235.2.i.i
  %and.i1229.3.i.i = shl nuw nsw i32 %shr.i1228.3.i.i, 3
  %554 = and i32 %and.i1229.3.i.i, 8
  %or.i1233.3.i.i = or i32 %or.i1233.2.i.i, %554
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1227.3.i.i, i32 %conv.i1154.i.i)
  %cmp.i1234.3.i.i = icmp eq i32 %inc.i1227.3.i.i, %conv.i1154.i.i
  %spec.select.i1235.3.i.i = select i1 %cmp.i1234.3.i.i, i32 0, i32 %inc.i1227.3.i.i
  %inc7.i1236.3.i.i = zext i1 %cmp.i1234.3.i.i to i32
  %spec.select14.i1237.3.i.i = add nuw nsw i32 %spec.select14.i1237.2.i.i, %inc7.i1236.3.i.i
  %arrayidx.i1225.4.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1237.3.i.i
  %555 = ptrtoint ptr %arrayidx.i1225.4.i.i to i32
  call void @__asan_load1_noabort(i32 %555)
  %556 = load i8, ptr %arrayidx.i1225.4.i.i, align 1
  %conv2.i1226.4.i.i = zext i8 %556 to i32
  %inc.i1227.4.i.i = add nuw nsw i32 %spec.select.i1235.3.i.i, 1
  %shr.i1228.4.i.i = lshr i32 %conv2.i1226.4.i.i, %spec.select.i1235.3.i.i
  %and.i1229.4.i.i = shl nuw nsw i32 %shr.i1228.4.i.i, 4
  %557 = and i32 %and.i1229.4.i.i, 16
  %or.i1233.4.i.i = or i32 %or.i1233.3.i.i, %557
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1227.4.i.i, i32 %conv.i1154.i.i)
  %cmp.i1234.4.i.i = icmp eq i32 %inc.i1227.4.i.i, %conv.i1154.i.i
  %spec.select.i1235.4.i.i = select i1 %cmp.i1234.4.i.i, i32 0, i32 %inc.i1227.4.i.i
  %inc7.i1236.4.i.i = zext i1 %cmp.i1234.4.i.i to i32
  %spec.select14.i1237.4.i.i = add nuw nsw i32 %spec.select14.i1237.3.i.i, %inc7.i1236.4.i.i
  %arrayidx.i1225.5.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1237.4.i.i
  %558 = ptrtoint ptr %arrayidx.i1225.5.i.i to i32
  call void @__asan_load1_noabort(i32 %558)
  %559 = load i8, ptr %arrayidx.i1225.5.i.i, align 1
  %conv2.i1226.5.i.i = zext i8 %559 to i32
  %inc.i1227.5.i.i = add nuw nsw i32 %spec.select.i1235.4.i.i, 1
  %shr.i1228.5.i.i = lshr i32 %conv2.i1226.5.i.i, %spec.select.i1235.4.i.i
  %and.i1229.5.i.i = shl nuw nsw i32 %shr.i1228.5.i.i, 5
  %560 = and i32 %and.i1229.5.i.i, 32
  %or.i1233.5.i.i = or i32 %or.i1233.4.i.i, %560
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1227.5.i.i, i32 %conv.i1154.i.i)
  %cmp.i1234.5.i.i = icmp eq i32 %inc.i1227.5.i.i, %conv.i1154.i.i
  %spec.select.i1235.5.i.i = select i1 %cmp.i1234.5.i.i, i32 0, i32 %inc.i1227.5.i.i
  %inc7.i1236.5.i.i = zext i1 %cmp.i1234.5.i.i to i32
  %spec.select14.i1237.5.i.i = add nuw nsw i32 %spec.select14.i1237.4.i.i, %inc7.i1236.5.i.i
  %arrayidx.i1225.6.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1237.5.i.i
  %561 = ptrtoint ptr %arrayidx.i1225.6.i.i to i32
  call void @__asan_load1_noabort(i32 %561)
  %562 = load i8, ptr %arrayidx.i1225.6.i.i, align 1
  %conv2.i1226.6.i.i = zext i8 %562 to i32
  %inc.i1227.6.i.i = add nuw nsw i32 %spec.select.i1235.5.i.i, 1
  %shr.i1228.6.i.i = lshr i32 %conv2.i1226.6.i.i, %spec.select.i1235.5.i.i
  %and.i1229.6.i.i = shl nuw nsw i32 %shr.i1228.6.i.i, 6
  %563 = and i32 %and.i1229.6.i.i, 64
  %or.i1233.6.i.i = or i32 %or.i1233.5.i.i, %563
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1227.6.i.i, i32 %conv.i1154.i.i)
  %cmp.i1234.6.i.i = icmp eq i32 %inc.i1227.6.i.i, %conv.i1154.i.i
  %spec.select.i1235.6.i.i = select i1 %cmp.i1234.6.i.i, i32 0, i32 %inc.i1227.6.i.i
  %inc7.i1236.6.i.i = zext i1 %cmp.i1234.6.i.i to i32
  %spec.select14.i1237.6.i.i = add nuw nsw i32 %spec.select14.i1237.5.i.i, %inc7.i1236.6.i.i
  %arrayidx.i1225.7.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1237.6.i.i
  %564 = ptrtoint ptr %arrayidx.i1225.7.i.i to i32
  call void @__asan_load1_noabort(i32 %564)
  %565 = load i8, ptr %arrayidx.i1225.7.i.i, align 1
  %conv2.i1226.7.i.i = zext i8 %565 to i32
  %inc.i1227.7.i.i = add nuw nsw i32 %spec.select.i1235.6.i.i, 1
  %shr.i1228.7.i.i = lshr i32 %conv2.i1226.7.i.i, %spec.select.i1235.6.i.i
  %and.i1229.7.i.i = shl nuw nsw i32 %shr.i1228.7.i.i, 7
  %566 = and i32 %and.i1229.7.i.i, 128
  %or.i1233.7.i.i = or i32 %or.i1233.6.i.i, %566
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1227.7.i.i, i32 %conv.i1154.i.i)
  %cmp.i1234.7.i.i = icmp eq i32 %inc.i1227.7.i.i, %conv.i1154.i.i
  %spec.select.i1235.7.i.i = select i1 %cmp.i1234.7.i.i, i32 0, i32 %inc.i1227.7.i.i
  %inc7.i1236.7.i.i = zext i1 %cmp.i1234.7.i.i to i32
  %spec.select14.i1237.7.i.i = add nuw nsw i32 %spec.select14.i1237.6.i.i, %inc7.i1236.7.i.i
  %arrayidx.i1225.8.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1237.7.i.i
  %567 = ptrtoint ptr %arrayidx.i1225.8.i.i to i32
  call void @__asan_load1_noabort(i32 %567)
  %568 = load i8, ptr %arrayidx.i1225.8.i.i, align 1
  %conv2.i1226.8.i.i = zext i8 %568 to i32
  %inc.i1227.8.i.i = add nuw nsw i32 %spec.select.i1235.7.i.i, 1
  %shr.i1228.8.i.i = lshr i32 %conv2.i1226.8.i.i, %spec.select.i1235.7.i.i
  %and.i1229.8.i.i = shl nuw nsw i32 %shr.i1228.8.i.i, 8
  %569 = and i32 %and.i1229.8.i.i, 256
  %or.i1233.8.i.i = or i32 %or.i1233.7.i.i, %569
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1227.8.i.i, i32 %conv.i1154.i.i)
  %cmp.i1234.8.i.i = icmp eq i32 %inc.i1227.8.i.i, %conv.i1154.i.i
  %spec.select.i1235.8.i.i = select i1 %cmp.i1234.8.i.i, i32 0, i32 %inc.i1227.8.i.i
  %inc7.i1236.8.i.i = zext i1 %cmp.i1234.8.i.i to i32
  %spec.select14.i1237.8.i.i = add nuw nsw i32 %spec.select14.i1237.7.i.i, %inc7.i1236.8.i.i
  %arrayidx.i1225.9.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1237.8.i.i
  %570 = ptrtoint ptr %arrayidx.i1225.9.i.i to i32
  call void @__asan_load1_noabort(i32 %570)
  %571 = load i8, ptr %arrayidx.i1225.9.i.i, align 1
  %conv2.i1226.9.i.i = zext i8 %571 to i32
  %shr.i1228.9.i.i = lshr i32 %conv2.i1226.9.i.i, %spec.select.i1235.8.i.i
  %and.i1229.9.i.i = shl nuw nsw i32 %shr.i1228.9.i.i, 9
  %572 = and i32 %and.i1229.9.i.i, 512
  %or.i1233.9.i.i = or i32 %or.i1233.8.i.i, %572
  tail call void @input_event(ptr noundef %541, i32 noundef 3, i32 noundef 0, i32 noundef %or.i1233.9.i.i) #7
  %573 = ptrtoint ptr %bits186.i.i to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load i32, ptr %bits186.i.i, align 4
  %conv.i1242.i.i = and i32 %574, 255
  %div.i12431600.rhs.trunc.i.i = trunc i32 %574 to i8
  %div.i12431600.rhs.trunc.i.i.frozen = freeze i8 %div.i12431600.rhs.trunc.i.i
  %div.i124316001601.i.i = udiv i8 16, %div.i12431600.rhs.trunc.i.i.frozen
  %div.i12431600.zext.i.i = zext i8 %div.i124316001601.i.i to i32
  %575 = mul i8 %div.i124316001601.i.i, %div.i12431600.rhs.trunc.i.i.frozen
  %rem.i124416021603.i.i.decomposed = sub i8 16, %575
  %rem.i12441602.zext.i.i = zext i8 %rem.i124416021603.i.i.decomposed to i32
  %arrayidx.i1251.i.i = getelementptr i8, ptr %buf.i, i32 %div.i12431600.zext.i.i
  %576 = ptrtoint ptr %arrayidx.i1251.i.i to i32
  call void @__asan_load1_noabort(i32 %576)
  %577 = load i8, ptr %arrayidx.i1251.i.i, align 1
  %conv2.i1252.i.i = zext i8 %577 to i32
  %inc.i1253.i.i = add nuw nsw i32 %rem.i12441602.zext.i.i, 1
  %shr.i1254.i.i = lshr i32 %conv2.i1252.i.i, %rem.i12441602.zext.i.i
  %and.i1255.i.i = and i32 %shr.i1254.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1253.i.i, i32 %conv.i1242.i.i)
  %cmp.i1260.i.i = icmp eq i32 %inc.i1253.i.i, %conv.i1242.i.i
  %spec.select.i1261.i.i = select i1 %cmp.i1260.i.i, i32 0, i32 %inc.i1253.i.i
  %inc7.i1262.i.i = zext i1 %cmp.i1260.i.i to i32
  %spec.select14.i1263.i.i = add nuw nsw i32 %inc7.i1262.i.i, %div.i12431600.zext.i.i
  %arrayidx.i1251.1.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1263.i.i
  %578 = ptrtoint ptr %arrayidx.i1251.1.i.i to i32
  call void @__asan_load1_noabort(i32 %578)
  %579 = load i8, ptr %arrayidx.i1251.1.i.i, align 1
  %conv2.i1252.1.i.i = zext i8 %579 to i32
  %inc.i1253.1.i.i = add nuw nsw i32 %spec.select.i1261.i.i, 1
  %shr.i1254.1.i.i = lshr i32 %conv2.i1252.1.i.i, %spec.select.i1261.i.i
  %and.i1255.1.i.i = shl nuw nsw i32 %shr.i1254.1.i.i, 1
  %580 = and i32 %and.i1255.1.i.i, 2
  %or.i1259.11657.i.i = or i32 %580, %and.i1255.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1253.1.i.i, i32 %conv.i1242.i.i)
  %cmp.i1260.1.i.i = icmp eq i32 %inc.i1253.1.i.i, %conv.i1242.i.i
  %spec.select.i1261.1.i.i = select i1 %cmp.i1260.1.i.i, i32 0, i32 %inc.i1253.1.i.i
  %inc7.i1262.1.i.i = zext i1 %cmp.i1260.1.i.i to i32
  %spec.select14.i1263.1.i.i = add nuw nsw i32 %spec.select14.i1263.i.i, %inc7.i1262.1.i.i
  %arrayidx.i1251.2.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1263.1.i.i
  %581 = ptrtoint ptr %arrayidx.i1251.2.i.i to i32
  call void @__asan_load1_noabort(i32 %581)
  %582 = load i8, ptr %arrayidx.i1251.2.i.i, align 1
  %conv2.i1252.2.i.i = zext i8 %582 to i32
  %inc.i1253.2.i.i = add nuw nsw i32 %spec.select.i1261.1.i.i, 1
  %shr.i1254.2.i.i = lshr i32 %conv2.i1252.2.i.i, %spec.select.i1261.1.i.i
  %and.i1255.2.i.i = shl nuw nsw i32 %shr.i1254.2.i.i, 2
  %583 = and i32 %and.i1255.2.i.i, 4
  %or.i1259.21658.i.i = or i32 %or.i1259.11657.i.i, %583
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1253.2.i.i, i32 %conv.i1242.i.i)
  %cmp.i1260.2.i.i = icmp eq i32 %inc.i1253.2.i.i, %conv.i1242.i.i
  %spec.select.i1261.2.i.i = select i1 %cmp.i1260.2.i.i, i32 0, i32 %inc.i1253.2.i.i
  %inc7.i1262.2.i.i = zext i1 %cmp.i1260.2.i.i to i32
  %spec.select14.i1263.2.i.i = add nuw nsw i32 %spec.select14.i1263.1.i.i, %inc7.i1262.2.i.i
  %arrayidx.i1251.3.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1263.2.i.i
  %584 = ptrtoint ptr %arrayidx.i1251.3.i.i to i32
  call void @__asan_load1_noabort(i32 %584)
  %585 = load i8, ptr %arrayidx.i1251.3.i.i, align 1
  %conv2.i1252.3.i.i = zext i8 %585 to i32
  %inc.i1253.3.i.i = add nuw nsw i32 %spec.select.i1261.2.i.i, 1
  %shr.i1254.3.i.i = lshr i32 %conv2.i1252.3.i.i, %spec.select.i1261.2.i.i
  %and.i1255.3.i.i = shl nuw nsw i32 %shr.i1254.3.i.i, 3
  %586 = and i32 %and.i1255.3.i.i, 8
  %or.i1259.31659.i.i = or i32 %or.i1259.21658.i.i, %586
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1253.3.i.i, i32 %conv.i1242.i.i)
  %cmp.i1260.3.i.i = icmp eq i32 %inc.i1253.3.i.i, %conv.i1242.i.i
  %spec.select.i1261.3.i.i = select i1 %cmp.i1260.3.i.i, i32 0, i32 %inc.i1253.3.i.i
  %inc7.i1262.3.i.i = zext i1 %cmp.i1260.3.i.i to i32
  %spec.select14.i1263.3.i.i = add nuw nsw i32 %spec.select14.i1263.2.i.i, %inc7.i1262.3.i.i
  %arrayidx.i1251.4.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1263.3.i.i
  %587 = ptrtoint ptr %arrayidx.i1251.4.i.i to i32
  call void @__asan_load1_noabort(i32 %587)
  %588 = load i8, ptr %arrayidx.i1251.4.i.i, align 1
  %conv2.i1252.4.i.i = zext i8 %588 to i32
  %inc.i1253.4.i.i = add nuw nsw i32 %spec.select.i1261.3.i.i, 1
  %shr.i1254.4.i.i = lshr i32 %conv2.i1252.4.i.i, %spec.select.i1261.3.i.i
  %and.i1255.4.i.i = shl nuw nsw i32 %shr.i1254.4.i.i, 4
  %589 = and i32 %and.i1255.4.i.i, 16
  %or.i1259.41660.i.i = or i32 %or.i1259.31659.i.i, %589
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1253.4.i.i, i32 %conv.i1242.i.i)
  %cmp.i1260.4.i.i = icmp eq i32 %inc.i1253.4.i.i, %conv.i1242.i.i
  %spec.select.i1261.4.i.i = select i1 %cmp.i1260.4.i.i, i32 0, i32 %inc.i1253.4.i.i
  %inc7.i1262.4.i.i = zext i1 %cmp.i1260.4.i.i to i32
  %spec.select14.i1263.4.i.i = add nuw nsw i32 %spec.select14.i1263.3.i.i, %inc7.i1262.4.i.i
  %arrayidx.i1251.5.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1263.4.i.i
  %590 = ptrtoint ptr %arrayidx.i1251.5.i.i to i32
  call void @__asan_load1_noabort(i32 %590)
  %591 = load i8, ptr %arrayidx.i1251.5.i.i, align 1
  %conv2.i1252.5.i.i = zext i8 %591 to i32
  %inc.i1253.5.i.i = add nuw nsw i32 %spec.select.i1261.4.i.i, 1
  %shr.i1254.5.i.i = lshr i32 %conv2.i1252.5.i.i, %spec.select.i1261.4.i.i
  %and.i1255.5.i.i = shl nuw nsw i32 %shr.i1254.5.i.i, 5
  %592 = and i32 %and.i1255.5.i.i, 32
  %or.i1259.51661.i.i = or i32 %or.i1259.41660.i.i, %592
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1253.5.i.i, i32 %conv.i1242.i.i)
  %cmp.i1260.5.i.i = icmp eq i32 %inc.i1253.5.i.i, %conv.i1242.i.i
  %spec.select.i1261.5.i.i = select i1 %cmp.i1260.5.i.i, i32 0, i32 %inc.i1253.5.i.i
  %inc7.i1262.5.i.i = zext i1 %cmp.i1260.5.i.i to i32
  %spec.select14.i1263.5.i.i = add nuw nsw i32 %spec.select14.i1263.4.i.i, %inc7.i1262.5.i.i
  %arrayidx.i1251.6.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1263.5.i.i
  %593 = ptrtoint ptr %arrayidx.i1251.6.i.i to i32
  call void @__asan_load1_noabort(i32 %593)
  %594 = load i8, ptr %arrayidx.i1251.6.i.i, align 1
  %conv2.i1252.6.i.i = zext i8 %594 to i32
  %inc.i1253.6.i.i = add nuw nsw i32 %spec.select.i1261.5.i.i, 1
  %shr.i1254.6.i.i = lshr i32 %conv2.i1252.6.i.i, %spec.select.i1261.5.i.i
  %and.i1255.6.i.i = shl nuw nsw i32 %shr.i1254.6.i.i, 6
  %595 = and i32 %and.i1255.6.i.i, 64
  %or.i1259.61662.i.i = or i32 %or.i1259.51661.i.i, %595
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1253.6.i.i, i32 %conv.i1242.i.i)
  %cmp.i1260.6.i.i = icmp eq i32 %inc.i1253.6.i.i, %conv.i1242.i.i
  %spec.select.i1261.6.i.i = select i1 %cmp.i1260.6.i.i, i32 0, i32 %inc.i1253.6.i.i
  %inc7.i1262.6.i.i = zext i1 %cmp.i1260.6.i.i to i32
  %spec.select14.i1263.6.i.i = add nuw nsw i32 %spec.select14.i1263.5.i.i, %inc7.i1262.6.i.i
  %arrayidx.i1251.7.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1263.6.i.i
  %596 = ptrtoint ptr %arrayidx.i1251.7.i.i to i32
  call void @__asan_load1_noabort(i32 %596)
  %597 = load i8, ptr %arrayidx.i1251.7.i.i, align 1
  %conv2.i1252.7.i.i = zext i8 %597 to i32
  %inc.i1253.7.i.i = add nuw nsw i32 %spec.select.i1261.6.i.i, 1
  %shr.i1254.7.i.i = lshr i32 %conv2.i1252.7.i.i, %spec.select.i1261.6.i.i
  %and.i1255.7.i.i = shl nuw nsw i32 %shr.i1254.7.i.i, 7
  %598 = and i32 %and.i1255.7.i.i, 128
  %or.i1259.71663.i.i = or i32 %or.i1259.61662.i.i, %598
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1253.7.i.i, i32 %conv.i1242.i.i)
  %cmp.i1260.7.i.i = icmp eq i32 %inc.i1253.7.i.i, %conv.i1242.i.i
  %spec.select.i1261.7.i.i = select i1 %cmp.i1260.7.i.i, i32 0, i32 %inc.i1253.7.i.i
  %inc7.i1262.7.i.i = zext i1 %cmp.i1260.7.i.i to i32
  %spec.select14.i1263.7.i.i = add nuw nsw i32 %spec.select14.i1263.6.i.i, %inc7.i1262.7.i.i
  %arrayidx.i1251.8.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1263.7.i.i
  %599 = ptrtoint ptr %arrayidx.i1251.8.i.i to i32
  call void @__asan_load1_noabort(i32 %599)
  %600 = load i8, ptr %arrayidx.i1251.8.i.i, align 1
  %conv2.i1252.8.i.i = zext i8 %600 to i32
  %inc.i1253.8.i.i = add nuw nsw i32 %spec.select.i1261.7.i.i, 1
  %shr.i1254.8.i.i = lshr i32 %conv2.i1252.8.i.i, %spec.select.i1261.7.i.i
  %and.i1255.8.i.i = shl nuw nsw i32 %shr.i1254.8.i.i, 8
  %601 = and i32 %and.i1255.8.i.i, 256
  %or.i1259.81664.i.i = or i32 %or.i1259.71663.i.i, %601
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1253.8.i.i, i32 %conv.i1242.i.i)
  %cmp.i1260.8.i.i = icmp eq i32 %inc.i1253.8.i.i, %conv.i1242.i.i
  %spec.select.i1261.8.i.i = select i1 %cmp.i1260.8.i.i, i32 0, i32 %inc.i1253.8.i.i
  %inc7.i1262.8.i.i = zext i1 %cmp.i1260.8.i.i to i32
  %spec.select14.i1263.8.i.i = add nuw nsw i32 %spec.select14.i1263.7.i.i, %inc7.i1262.8.i.i
  %arrayidx.i1251.9.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1263.8.i.i
  %602 = ptrtoint ptr %arrayidx.i1251.9.i.i to i32
  call void @__asan_load1_noabort(i32 %602)
  %603 = load i8, ptr %arrayidx.i1251.9.i.i, align 1
  %conv2.i1252.9.i.i = zext i8 %603 to i32
  %shr.i1254.9.i.i = lshr i32 %conv2.i1252.9.i.i, %spec.select.i1261.8.i.i
  %and.i1255.9.i.i = shl nuw nsw i32 %shr.i1254.9.i.i, 9
  %604 = and i32 %and.i1255.9.i.i, 512
  %or.i1259.91665.i.i = or i32 %or.i1259.81664.i.i, %604
  tail call void @input_event(ptr noundef %541, i32 noundef 3, i32 noundef 1, i32 noundef %or.i1259.91665.i.i) #7
  %605 = ptrtoint ptr %bits186.i.i to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load i32, ptr %bits186.i.i, align 4
  %conv.i1268.i.i = and i32 %606, 255
  %div.i12691604.rhs.trunc.i.i = trunc i32 %606 to i8
  %div.i12691604.rhs.trunc.i.i.frozen = freeze i8 %div.i12691604.rhs.trunc.i.i
  %div.i126916041605.i.i = udiv i8 32, %div.i12691604.rhs.trunc.i.i.frozen
  %div.i12691604.zext.i.i = zext i8 %div.i126916041605.i.i to i32
  %607 = mul i8 %div.i126916041605.i.i, %div.i12691604.rhs.trunc.i.i.frozen
  %rem.i127016061607.i.i.decomposed = sub i8 32, %607
  %rem.i12701606.zext.i.i = zext i8 %rem.i127016061607.i.i.decomposed to i32
  %arrayidx.i1277.i.i = getelementptr i8, ptr %buf.i, i32 %div.i12691604.zext.i.i
  %608 = ptrtoint ptr %arrayidx.i1277.i.i to i32
  call void @__asan_load1_noabort(i32 %608)
  %609 = load i8, ptr %arrayidx.i1277.i.i, align 1
  %conv2.i1278.i.i = zext i8 %609 to i32
  %inc.i1279.i.i = add nuw nsw i32 %rem.i12701606.zext.i.i, 1
  %shr.i1280.i.i = lshr i32 %conv2.i1278.i.i, %rem.i12701606.zext.i.i
  %and.i1281.i.i = and i32 %shr.i1280.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1279.i.i, i32 %conv.i1268.i.i)
  %cmp.i1286.i.i = icmp eq i32 %inc.i1279.i.i, %conv.i1268.i.i
  %spec.select.i1287.i.i = select i1 %cmp.i1286.i.i, i32 0, i32 %inc.i1279.i.i
  %inc7.i1288.i.i = zext i1 %cmp.i1286.i.i to i32
  %spec.select14.i1289.i.i = add nuw nsw i32 %inc7.i1288.i.i, %div.i12691604.zext.i.i
  %arrayidx.i1277.1.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1289.i.i
  %610 = ptrtoint ptr %arrayidx.i1277.1.i.i to i32
  call void @__asan_load1_noabort(i32 %610)
  %611 = load i8, ptr %arrayidx.i1277.1.i.i, align 1
  %conv2.i1278.1.i.i = zext i8 %611 to i32
  %inc.i1279.1.i.i = add nuw nsw i32 %spec.select.i1287.i.i, 1
  %shr.i1280.1.i.i = lshr i32 %conv2.i1278.1.i.i, %spec.select.i1287.i.i
  %and.i1281.1.i.i = shl nuw nsw i32 %shr.i1280.1.i.i, 1
  %612 = and i32 %and.i1281.1.i.i, 2
  %or.i1285.11666.i.i = or i32 %612, %and.i1281.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1279.1.i.i, i32 %conv.i1268.i.i)
  %cmp.i1286.1.i.i = icmp eq i32 %inc.i1279.1.i.i, %conv.i1268.i.i
  %spec.select.i1287.1.i.i = select i1 %cmp.i1286.1.i.i, i32 0, i32 %inc.i1279.1.i.i
  %inc7.i1288.1.i.i = zext i1 %cmp.i1286.1.i.i to i32
  %spec.select14.i1289.1.i.i = add nuw nsw i32 %spec.select14.i1289.i.i, %inc7.i1288.1.i.i
  %arrayidx.i1277.2.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1289.1.i.i
  %613 = ptrtoint ptr %arrayidx.i1277.2.i.i to i32
  call void @__asan_load1_noabort(i32 %613)
  %614 = load i8, ptr %arrayidx.i1277.2.i.i, align 1
  %conv2.i1278.2.i.i = zext i8 %614 to i32
  %inc.i1279.2.i.i = add nuw nsw i32 %spec.select.i1287.1.i.i, 1
  %shr.i1280.2.i.i = lshr i32 %conv2.i1278.2.i.i, %spec.select.i1287.1.i.i
  %and.i1281.2.i.i = shl nuw nsw i32 %shr.i1280.2.i.i, 2
  %615 = and i32 %and.i1281.2.i.i, 4
  %or.i1285.21667.i.i = or i32 %or.i1285.11666.i.i, %615
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1279.2.i.i, i32 %conv.i1268.i.i)
  %cmp.i1286.2.i.i = icmp eq i32 %inc.i1279.2.i.i, %conv.i1268.i.i
  %spec.select.i1287.2.i.i = select i1 %cmp.i1286.2.i.i, i32 0, i32 %inc.i1279.2.i.i
  %inc7.i1288.2.i.i = zext i1 %cmp.i1286.2.i.i to i32
  %spec.select14.i1289.2.i.i = add nuw nsw i32 %spec.select14.i1289.1.i.i, %inc7.i1288.2.i.i
  %arrayidx.i1277.3.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1289.2.i.i
  %616 = ptrtoint ptr %arrayidx.i1277.3.i.i to i32
  call void @__asan_load1_noabort(i32 %616)
  %617 = load i8, ptr %arrayidx.i1277.3.i.i, align 1
  %conv2.i1278.3.i.i = zext i8 %617 to i32
  %inc.i1279.3.i.i = add nuw nsw i32 %spec.select.i1287.2.i.i, 1
  %shr.i1280.3.i.i = lshr i32 %conv2.i1278.3.i.i, %spec.select.i1287.2.i.i
  %and.i1281.3.i.i = shl nuw nsw i32 %shr.i1280.3.i.i, 3
  %618 = and i32 %and.i1281.3.i.i, 8
  %or.i1285.31668.i.i = or i32 %or.i1285.21667.i.i, %618
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1279.3.i.i, i32 %conv.i1268.i.i)
  %cmp.i1286.3.i.i = icmp eq i32 %inc.i1279.3.i.i, %conv.i1268.i.i
  %spec.select.i1287.3.i.i = select i1 %cmp.i1286.3.i.i, i32 0, i32 %inc.i1279.3.i.i
  %inc7.i1288.3.i.i = zext i1 %cmp.i1286.3.i.i to i32
  %spec.select14.i1289.3.i.i = add nuw nsw i32 %spec.select14.i1289.2.i.i, %inc7.i1288.3.i.i
  %arrayidx.i1277.4.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1289.3.i.i
  %619 = ptrtoint ptr %arrayidx.i1277.4.i.i to i32
  call void @__asan_load1_noabort(i32 %619)
  %620 = load i8, ptr %arrayidx.i1277.4.i.i, align 1
  %conv2.i1278.4.i.i = zext i8 %620 to i32
  %inc.i1279.4.i.i = add nuw nsw i32 %spec.select.i1287.3.i.i, 1
  %shr.i1280.4.i.i = lshr i32 %conv2.i1278.4.i.i, %spec.select.i1287.3.i.i
  %and.i1281.4.i.i = shl nuw nsw i32 %shr.i1280.4.i.i, 4
  %621 = and i32 %and.i1281.4.i.i, 16
  %or.i1285.41669.i.i = or i32 %or.i1285.31668.i.i, %621
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1279.4.i.i, i32 %conv.i1268.i.i)
  %cmp.i1286.4.i.i = icmp eq i32 %inc.i1279.4.i.i, %conv.i1268.i.i
  %spec.select.i1287.4.i.i = select i1 %cmp.i1286.4.i.i, i32 0, i32 %inc.i1279.4.i.i
  %inc7.i1288.4.i.i = zext i1 %cmp.i1286.4.i.i to i32
  %spec.select14.i1289.4.i.i = add nuw nsw i32 %spec.select14.i1289.3.i.i, %inc7.i1288.4.i.i
  %arrayidx.i1277.5.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1289.4.i.i
  %622 = ptrtoint ptr %arrayidx.i1277.5.i.i to i32
  call void @__asan_load1_noabort(i32 %622)
  %623 = load i8, ptr %arrayidx.i1277.5.i.i, align 1
  %conv2.i1278.5.i.i = zext i8 %623 to i32
  %shr.i1280.5.i.i = lshr i32 %conv2.i1278.5.i.i, %spec.select.i1287.4.i.i
  %and.i1281.5.i.i = shl nuw nsw i32 %shr.i1280.5.i.i, 5
  %624 = and i32 %and.i1281.5.i.i, 32
  %or.i1285.51670.i.i = or i32 %or.i1285.41669.i.i, %624
  tail call void @input_event(ptr noundef %541, i32 noundef 3, i32 noundef 6, i32 noundef %or.i1285.51670.i.i) #7
  %arrayidx214.i.i = getelementptr [9 x %struct.anon.69], ptr @sw_hat_to_axis, i32 0, i32 %or.i1209.31656.i.i
  %625 = ptrtoint ptr %arrayidx214.i.i to i32
  call void @__asan_load4_noabort(i32 %625)
  %626 = load i32, ptr %arrayidx214.i.i, align 4
  tail call void @input_event(ptr noundef %541, i32 noundef 3, i32 noundef 16, i32 noundef %626) #7
  %y217.i.i = getelementptr [9 x %struct.anon.69], ptr @sw_hat_to_axis, i32 0, i32 %or.i1209.31656.i.i, i32 1
  %627 = ptrtoint ptr %y217.i.i to i32
  call void @__asan_load4_noabort(i32 %627)
  %628 = load i32, ptr %y217.i.i, align 4
  tail call void @input_event(ptr noundef %541, i32 noundef 3, i32 noundef 17, i32 noundef %628) #7
  %629 = ptrtoint ptr %bits186.i.i to i32
  call void @__asan_load4_noabort(i32 %629)
  %630 = load i32, ptr %bits186.i.i, align 4
  %div.i1295.udiv.i.rhs.trunc.i = trunc i32 %630 to i8
  %div.i1295.udiv.i.rhs.trunc.i.frozen = freeze i8 %div.i1295.udiv.i.rhs.trunc.i
  %div.i1295.udiv.i426.i = udiv i8 10, %div.i1295.udiv.i.rhs.trunc.i.frozen
  %div.i1295.udiv.i.zext.i = zext i8 %div.i1295.udiv.i426.i to i32
  %631 = mul i8 %div.i1295.udiv.i426.i, %div.i1295.udiv.i.rhs.trunc.i.frozen
  %rem.i1296.urem.i427.i.decomposed = sub i8 10, %631
  %rem.i1296.urem.i.zext.i = zext i8 %rem.i1296.urem.i427.i.decomposed to i32
  %arrayidx.i1303.i.i = getelementptr i8, ptr %buf.i, i32 %div.i1295.udiv.i.zext.i
  %632 = ptrtoint ptr %arrayidx.i1303.i.i to i32
  call void @__asan_load1_noabort(i32 %632)
  %633 = load i8, ptr %arrayidx.i1303.i.i, align 1
  %conv2.i1304.i.i = zext i8 %633 to i32
  %634 = xor i32 %conv2.i1304.i.i, -1
  %635 = lshr i32 %634, %rem.i1296.urem.i.zext.i
  %636 = and i32 %635, 1
  tail call void @input_event(ptr noundef %541, i32 noundef 1, i32 noundef 304, i32 noundef %636) #7
  %637 = ptrtoint ptr %bits186.i.i to i32
  call void @__asan_load4_noabort(i32 %637)
  %638 = load i32, ptr %bits186.i.i, align 4
  %div.i1295.udiv.i.1.rhs.trunc.i = trunc i32 %638 to i8
  %div.i1295.udiv.i.1.rhs.trunc.i.frozen = freeze i8 %div.i1295.udiv.i.1.rhs.trunc.i
  %div.i1295.udiv.i.1428.i = udiv i8 11, %div.i1295.udiv.i.1.rhs.trunc.i.frozen
  %div.i1295.udiv.i.1.zext.i = zext i8 %div.i1295.udiv.i.1428.i to i32
  %639 = mul i8 %div.i1295.udiv.i.1428.i, %div.i1295.udiv.i.1.rhs.trunc.i.frozen
  %rem.i1296.urem.i.1429.i.decomposed = sub i8 11, %639
  %rem.i1296.urem.i.1.zext.i = zext i8 %rem.i1296.urem.i.1429.i.decomposed to i32
  %arrayidx.i1303.i.1.i = getelementptr i8, ptr %buf.i, i32 %div.i1295.udiv.i.1.zext.i
  %640 = ptrtoint ptr %arrayidx.i1303.i.1.i to i32
  call void @__asan_load1_noabort(i32 %640)
  %641 = load i8, ptr %arrayidx.i1303.i.1.i, align 1
  %conv2.i1304.i.1.i = zext i8 %641 to i32
  %642 = xor i32 %conv2.i1304.i.1.i, -1
  %643 = lshr i32 %642, %rem.i1296.urem.i.1.zext.i
  %644 = and i32 %643, 1
  tail call void @input_event(ptr noundef %541, i32 noundef 1, i32 noundef 305, i32 noundef %644) #7
  %645 = ptrtoint ptr %bits186.i.i to i32
  call void @__asan_load4_noabort(i32 %645)
  %646 = load i32, ptr %bits186.i.i, align 4
  %div.i1295.udiv.i.2.rhs.trunc.i = trunc i32 %646 to i8
  %div.i1295.udiv.i.2.rhs.trunc.i.frozen = freeze i8 %div.i1295.udiv.i.2.rhs.trunc.i
  %div.i1295.udiv.i.2430.i = udiv i8 12, %div.i1295.udiv.i.2.rhs.trunc.i.frozen
  %div.i1295.udiv.i.2.zext.i = zext i8 %div.i1295.udiv.i.2430.i to i32
  %647 = mul i8 %div.i1295.udiv.i.2430.i, %div.i1295.udiv.i.2.rhs.trunc.i.frozen
  %rem.i1296.urem.i.2431.i.decomposed = sub i8 12, %647
  %rem.i1296.urem.i.2.zext.i = zext i8 %rem.i1296.urem.i.2431.i.decomposed to i32
  %arrayidx.i1303.i.2.i = getelementptr i8, ptr %buf.i, i32 %div.i1295.udiv.i.2.zext.i
  %648 = ptrtoint ptr %arrayidx.i1303.i.2.i to i32
  call void @__asan_load1_noabort(i32 %648)
  %649 = load i8, ptr %arrayidx.i1303.i.2.i, align 1
  %conv2.i1304.i.2.i = zext i8 %649 to i32
  %650 = xor i32 %conv2.i1304.i.2.i, -1
  %651 = lshr i32 %650, %rem.i1296.urem.i.2.zext.i
  %652 = and i32 %651, 1
  tail call void @input_event(ptr noundef %541, i32 noundef 1, i32 noundef 306, i32 noundef %652) #7
  %653 = ptrtoint ptr %bits186.i.i to i32
  call void @__asan_load4_noabort(i32 %653)
  %654 = load i32, ptr %bits186.i.i, align 4
  %div.i1295.udiv.i.3.rhs.trunc.i = trunc i32 %654 to i8
  %div.i1295.udiv.i.3.rhs.trunc.i.frozen = freeze i8 %div.i1295.udiv.i.3.rhs.trunc.i
  %div.i1295.udiv.i.3432.i = udiv i8 13, %div.i1295.udiv.i.3.rhs.trunc.i.frozen
  %div.i1295.udiv.i.3.zext.i = zext i8 %div.i1295.udiv.i.3432.i to i32
  %655 = mul i8 %div.i1295.udiv.i.3432.i, %div.i1295.udiv.i.3.rhs.trunc.i.frozen
  %rem.i1296.urem.i.3433.i.decomposed = sub i8 13, %655
  %rem.i1296.urem.i.3.zext.i = zext i8 %rem.i1296.urem.i.3433.i.decomposed to i32
  %arrayidx.i1303.i.3.i = getelementptr i8, ptr %buf.i, i32 %div.i1295.udiv.i.3.zext.i
  %656 = ptrtoint ptr %arrayidx.i1303.i.3.i to i32
  call void @__asan_load1_noabort(i32 %656)
  %657 = load i8, ptr %arrayidx.i1303.i.3.i, align 1
  %conv2.i1304.i.3.i = zext i8 %657 to i32
  %658 = xor i32 %conv2.i1304.i.3.i, -1
  %659 = lshr i32 %658, %rem.i1296.urem.i.3.zext.i
  %660 = and i32 %659, 1
  tail call void @input_event(ptr noundef %541, i32 noundef 1, i32 noundef 307, i32 noundef %660) #7
  %661 = ptrtoint ptr %bits186.i.i to i32
  call void @__asan_load4_noabort(i32 %661)
  %662 = load i32, ptr %bits186.i.i, align 4
  %div.i1295.udiv.i.4.rhs.trunc.i = trunc i32 %662 to i8
  %div.i1295.udiv.i.4.rhs.trunc.i.frozen = freeze i8 %div.i1295.udiv.i.4.rhs.trunc.i
  %div.i1295.udiv.i.4434.i = udiv i8 14, %div.i1295.udiv.i.4.rhs.trunc.i.frozen
  %div.i1295.udiv.i.4.zext.i = zext i8 %div.i1295.udiv.i.4434.i to i32
  %663 = mul i8 %div.i1295.udiv.i.4434.i, %div.i1295.udiv.i.4.rhs.trunc.i.frozen
  %rem.i1296.urem.i.4435.i.decomposed = sub i8 14, %663
  %rem.i1296.urem.i.4.zext.i = zext i8 %rem.i1296.urem.i.4435.i.decomposed to i32
  %arrayidx.i1303.i.4.i = getelementptr i8, ptr %buf.i, i32 %div.i1295.udiv.i.4.zext.i
  %664 = ptrtoint ptr %arrayidx.i1303.i.4.i to i32
  call void @__asan_load1_noabort(i32 %664)
  %665 = load i8, ptr %arrayidx.i1303.i.4.i, align 1
  %conv2.i1304.i.4.i = zext i8 %665 to i32
  %666 = xor i32 %conv2.i1304.i.4.i, -1
  %667 = lshr i32 %666, %rem.i1296.urem.i.4.zext.i
  %668 = and i32 %667, 1
  tail call void @input_event(ptr noundef %541, i32 noundef 1, i32 noundef 308, i32 noundef %668) #7
  %669 = ptrtoint ptr %bits186.i.i to i32
  call void @__asan_load4_noabort(i32 %669)
  %670 = load i32, ptr %bits186.i.i, align 4
  %div.i1295.udiv.i.5.rhs.trunc.i = trunc i32 %670 to i8
  %div.i1295.udiv.i.5.rhs.trunc.i.frozen = freeze i8 %div.i1295.udiv.i.5.rhs.trunc.i
  %div.i1295.udiv.i.5436.i = udiv i8 15, %div.i1295.udiv.i.5.rhs.trunc.i.frozen
  %div.i1295.udiv.i.5.zext.i = zext i8 %div.i1295.udiv.i.5436.i to i32
  %671 = mul i8 %div.i1295.udiv.i.5436.i, %div.i1295.udiv.i.5.rhs.trunc.i.frozen
  %rem.i1296.urem.i.5437.i.decomposed = sub i8 15, %671
  %rem.i1296.urem.i.5.zext.i = zext i8 %rem.i1296.urem.i.5437.i.decomposed to i32
  %arrayidx.i1303.i.5.i = getelementptr i8, ptr %buf.i, i32 %div.i1295.udiv.i.5.zext.i
  %672 = ptrtoint ptr %arrayidx.i1303.i.5.i to i32
  call void @__asan_load1_noabort(i32 %672)
  %673 = load i8, ptr %arrayidx.i1303.i.5.i, align 1
  %conv2.i1304.i.5.i = zext i8 %673 to i32
  %674 = xor i32 %conv2.i1304.i.5.i, -1
  %675 = lshr i32 %674, %rem.i1296.urem.i.5.zext.i
  %676 = and i32 %675, 1
  tail call void @input_event(ptr noundef %541, i32 noundef 1, i32 noundef 309, i32 noundef %676) #7
  %677 = ptrtoint ptr %bits186.i.i to i32
  call void @__asan_load4_noabort(i32 %677)
  %678 = load i32, ptr %bits186.i.i, align 4
  %div.i13221608.rhs.trunc.i.i = trunc i32 %678 to i8
  %div.i13221608.rhs.trunc.i.i.frozen = freeze i8 %div.i13221608.rhs.trunc.i.i
  %div.i132216081609.i.i = udiv i8 26, %div.i13221608.rhs.trunc.i.i.frozen
  %div.i13221608.zext.i.i = zext i8 %div.i132216081609.i.i to i32
  %679 = mul i8 %div.i132216081609.i.i, %div.i13221608.rhs.trunc.i.i.frozen
  %rem.i132316101611.i.i.decomposed = sub i8 26, %679
  %rem.i13231610.zext.i.i = zext i8 %rem.i132316101611.i.i.decomposed to i32
  %arrayidx.i1330.i.i = getelementptr i8, ptr %buf.i, i32 %div.i13221608.zext.i.i
  %680 = ptrtoint ptr %arrayidx.i1330.i.i to i32
  call void @__asan_load1_noabort(i32 %680)
  %681 = load i8, ptr %arrayidx.i1330.i.i, align 1
  %conv2.i1331.i.i = zext i8 %681 to i32
  %682 = xor i32 %conv2.i1331.i.i, -1
  %683 = lshr i32 %682, %rem.i13231610.zext.i.i
  %684 = and i32 %683, 1
  tail call void @input_event(ptr noundef %541, i32 noundef 1, i32 noundef 311, i32 noundef %684) #7
  %685 = ptrtoint ptr %bits186.i.i to i32
  call void @__asan_load4_noabort(i32 %685)
  %686 = load i32, ptr %bits186.i.i, align 4
  %div.i13491612.rhs.trunc.i.i = trunc i32 %686 to i8
  %div.i13491612.rhs.trunc.i.i.frozen = freeze i8 %div.i13491612.rhs.trunc.i.i
  %div.i134916121613.i.i = udiv i8 27, %div.i13491612.rhs.trunc.i.i.frozen
  %div.i13491612.zext.i.i = zext i8 %div.i134916121613.i.i to i32
  %687 = mul i8 %div.i134916121613.i.i, %div.i13491612.rhs.trunc.i.i.frozen
  %rem.i135016141615.i.i.decomposed = sub i8 27, %687
  %rem.i13501614.zext.i.i = zext i8 %rem.i135016141615.i.i.decomposed to i32
  %arrayidx.i1357.i.i = getelementptr i8, ptr %buf.i, i32 %div.i13491612.zext.i.i
  %688 = ptrtoint ptr %arrayidx.i1357.i.i to i32
  call void @__asan_load1_noabort(i32 %688)
  %689 = load i8, ptr %arrayidx.i1357.i.i, align 1
  %conv2.i1358.i.i = zext i8 %689 to i32
  %690 = xor i32 %conv2.i1358.i.i, -1
  %691 = lshr i32 %690, %rem.i13501614.zext.i.i
  %692 = and i32 %691, 1
  tail call void @input_event(ptr noundef %541, i32 noundef 1, i32 noundef 315, i32 noundef %692) #7
  %693 = ptrtoint ptr %bits186.i.i to i32
  call void @__asan_load4_noabort(i32 %693)
  %694 = load i32, ptr %bits186.i.i, align 4
  %div.i13761616.rhs.trunc.i.i = trunc i32 %694 to i8
  %div.i13761616.rhs.trunc.i.i.frozen = freeze i8 %div.i13761616.rhs.trunc.i.i
  %div.i137616161617.i.i = udiv i8 38, %div.i13761616.rhs.trunc.i.i.frozen
  %div.i13761616.zext.i.i = zext i8 %div.i137616161617.i.i to i32
  %695 = mul i8 %div.i137616161617.i.i, %div.i13761616.rhs.trunc.i.i.frozen
  %rem.i137716181619.i.i.decomposed = sub i8 38, %695
  %rem.i13771618.zext.i.i = zext i8 %rem.i137716181619.i.i.decomposed to i32
  %arrayidx.i1384.i.i = getelementptr i8, ptr %buf.i, i32 %div.i13761616.zext.i.i
  %696 = ptrtoint ptr %arrayidx.i1384.i.i to i32
  call void @__asan_load1_noabort(i32 %696)
  %697 = load i8, ptr %arrayidx.i1384.i.i, align 1
  %conv2.i1385.i.i = zext i8 %697 to i32
  %698 = xor i32 %conv2.i1385.i.i, -1
  %699 = lshr i32 %698, %rem.i13771618.zext.i.i
  %700 = and i32 %699, 1
  tail call void @input_event(ptr noundef %541, i32 noundef 1, i32 noundef 316, i32 noundef %700) #7
  %701 = ptrtoint ptr %bits186.i.i to i32
  call void @__asan_load4_noabort(i32 %701)
  %702 = load i32, ptr %bits186.i.i, align 4
  %div.i14031620.rhs.trunc.i.i = trunc i32 %702 to i8
  %div.i14031620.rhs.trunc.i.i.frozen = freeze i8 %div.i14031620.rhs.trunc.i.i
  %div.i140316201621.i.i = udiv i8 39, %div.i14031620.rhs.trunc.i.i.frozen
  %div.i14031620.zext.i.i = zext i8 %div.i140316201621.i.i to i32
  %703 = mul i8 %div.i140316201621.i.i, %div.i14031620.rhs.trunc.i.i.frozen
  %rem.i140416221623.i.i.decomposed = sub i8 39, %703
  %rem.i14041622.zext.i.i = zext i8 %rem.i140416221623.i.i.decomposed to i32
  %arrayidx.i1411.i.i = getelementptr i8, ptr %buf.i, i32 %div.i14031620.zext.i.i
  %704 = ptrtoint ptr %arrayidx.i1411.i.i to i32
  call void @__asan_load1_noabort(i32 %704)
  %705 = load i8, ptr %arrayidx.i1411.i.i, align 1
  %conv2.i1412.i.i = zext i8 %705 to i32
  %706 = xor i32 %conv2.i1412.i.i, -1
  %707 = lshr i32 %706, %rem.i14041622.zext.i.i
  %708 = and i32 %707, 1
  tail call void @input_event(ptr noundef %541, i32 noundef 1, i32 noundef 314, i32 noundef %708) #7
  br label %cleanup.sink.split.i.i

sw.bb258.i.i:                                     ; preds = %land.lhs.true67.i
  %bits259.i.i = getelementptr inbounds %struct.sw, ptr %1, i32 0, i32 6
  %709 = ptrtoint ptr %bits259.i.i to i32
  call void @__asan_load4_noabort(i32 %709)
  %710 = load i32, ptr %bits259.i.i, align 4
  %conv.i1429.i.i = and i32 %710, 255
  br label %while.body.i1450.i.i

while.body.i1450.i.i:                             ; preds = %while.body.i1450.i.i.while.body.i1450.i.i_crit_edge, %sw.bb258.i.i
  %bit.020.i1430.i.i = phi i32 [ %inc4.i1441.i.i, %while.body.i1450.i.i.while.body.i1450.i.i_crit_edge ], [ 0, %sw.bb258.i.i ]
  %i.019.i1431.i.i = phi i32 [ %spec.select14.i1448.i.i, %while.body.i1450.i.i.while.body.i1450.i.i_crit_edge ], [ 0, %sw.bb258.i.i ]
  %tri.018.i1432.i.i = phi i32 [ %spec.select.i1446.i.i, %while.body.i1450.i.i.while.body.i1450.i.i_crit_edge ], [ 0, %sw.bb258.i.i ]
  %data.017.i1433.i.i = phi i64 [ %or.i1444.i.i, %while.body.i1450.i.i.while.body.i1450.i.i_crit_edge ], [ 0, %sw.bb258.i.i ]
  %num.addr.016.i1434.i.i = phi i32 [ %dec.i1435.i.i, %while.body.i1450.i.i.while.body.i1450.i.i_crit_edge ], [ 33, %sw.bb258.i.i ]
  %dec.i1435.i.i = add nsw i32 %num.addr.016.i1434.i.i, -1
  %arrayidx.i1436.i.i = getelementptr i8, ptr %buf.i, i32 %i.019.i1431.i.i
  %711 = ptrtoint ptr %arrayidx.i1436.i.i to i32
  call void @__asan_load1_noabort(i32 %711)
  %712 = load i8, ptr %arrayidx.i1436.i.i, align 1
  %conv2.i1437.i.i = zext i8 %712 to i32
  %inc.i1438.i.i = add i32 %tri.018.i1432.i.i, 1
  %shr.i1439.i.i = lshr i32 %conv2.i1437.i.i, %tri.018.i1432.i.i
  %and.i1440.i.i = and i32 %shr.i1439.i.i, 1
  %713 = zext i32 %and.i1440.i.i to i64
  %inc4.i1441.i.i = add nuw nsw i32 %bit.020.i1430.i.i, 1
  %sh_prom.i1442.i.i = zext i32 %bit.020.i1430.i.i to i64
  %shl.i1443.i.i = shl nuw i64 %713, %sh_prom.i1442.i.i
  %or.i1444.i.i = or i64 %shl.i1443.i.i, %data.017.i1433.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1438.i.i, i32 %conv.i1429.i.i)
  %cmp.i1445.i.i = icmp eq i32 %inc.i1438.i.i, %conv.i1429.i.i
  %spec.select.i1446.i.i = select i1 %cmp.i1445.i.i, i32 0, i32 %inc.i1438.i.i
  %inc7.i1447.i.i = zext i1 %cmp.i1445.i.i to i32
  %spec.select14.i1448.i.i = add i32 %i.019.i1431.i.i, %inc7.i1447.i.i
  %tobool.not.i1449.i.i = icmp eq i32 %dec.i1435.i.i, 0
  br i1 %tobool.not.i1449.i.i, label %sw_get_bits.exit1452.i.i, label %while.body.i1450.i.i.while.body.i1450.i.i_crit_edge

while.body.i1450.i.i.while.body.i1450.i.i_crit_edge: ; preds = %while.body.i1450.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i1450.i.i

sw_get_bits.exit1452.i.i:                         ; preds = %while.body.i1450.i.i
  %shr.i1453.i.i = lshr i64 %or.i1444.i.i, 32
  %xor.i1454.i.i = xor i64 %shr.i1453.i.i, %or.i1444.i.i
  %conv.i1455.i.i = trunc i64 %xor.i1454.i.i to i32
  %shr1.i1456.i.i = ashr i32 %conv.i1455.i.i, 16
  %xor2.i1457.i.i = xor i32 %shr1.i1456.i.i, %conv.i1455.i.i
  %shr3.i1458.i.i = ashr i32 %xor2.i1457.i.i, 8
  %xor4.i1459.i.i = xor i32 %shr3.i1458.i.i, %xor2.i1457.i.i
  %shr5.i1460.i.i = ashr i32 %xor4.i1459.i.i, 4
  %xor6.i1461.i.i = xor i32 %shr5.i1460.i.i, %xor4.i1459.i.i
  %shr7.i1462.i.i = ashr i32 %xor6.i1461.i.i, 2
  %xor8.i1463.i.i = xor i32 %shr7.i1462.i.i, %xor6.i1461.i.i
  %shr922.i1464.i.i = lshr i32 %xor8.i1463.i.i, 1
  %xor10.i1465.i.i = xor i32 %shr922.i1464.i.i, %xor8.i1463.i.i
  %and.i1466.i.i = and i32 %xor10.i1465.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1466.i.i)
  %tobool263.not.i.i = icmp eq i32 %and.i1466.i.i, 0
  br i1 %tobool263.not.i.i, label %sw_get_bits.exit1452.i.i.if.end95.i_crit_edge, label %if.end265.i.i

sw_get_bits.exit1452.i.i.if.end95.i_crit_edge:    ; preds = %sw_get_bits.exit1452.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95.i

if.end265.i.i:                                    ; preds = %sw_get_bits.exit1452.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev266.i.i = getelementptr inbounds %struct.sw, ptr %1, i32 0, i32 1
  %714 = ptrtoint ptr %dev266.i.i to i32
  call void @__asan_load4_noabort(i32 %714)
  %715 = load ptr, ptr %dev266.i.i, align 4
  %716 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %716)
  %717 = load i8, ptr %buf.i, align 1
  %718 = and i8 %717, 1
  %719 = zext i8 %718 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv.i1429.i.i)
  %cmp.i1483.i.i = icmp eq i32 %conv.i1429.i.i, 1
  %not.cmp.i1483.i.i = xor i1 %cmp.i1483.i.i, true
  %spec.select.i1484.i.i = zext i1 %not.cmp.i1483.i.i to i32
  %inc7.i1485.i.i = zext i1 %cmp.i1483.i.i to i32
  %arrayidx.i1474.1.i.i = getelementptr i8, ptr %buf.i, i32 %inc7.i1485.i.i
  %720 = ptrtoint ptr %arrayidx.i1474.1.i.i to i32
  call void @__asan_load1_noabort(i32 %720)
  %721 = load i8, ptr %arrayidx.i1474.1.i.i, align 1
  %conv2.i1475.1.i.i = zext i8 %721 to i32
  %inc.i1476.1.i.i = select i1 %cmp.i1483.i.i, i32 1, i32 2
  %shr.i1477.1.i.i = lshr i32 %conv2.i1475.1.i.i, %spec.select.i1484.i.i
  %and.i1478.1.i.i = shl nuw nsw i32 %shr.i1477.1.i.i, 1
  %722 = and i32 %and.i1478.1.i.i, 2
  %or.i1482.1.i.i = or i32 %722, %719
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1476.1.i.i, i32 %conv.i1429.i.i)
  %cmp.i1483.1.i.i = icmp eq i32 %inc.i1476.1.i.i, %conv.i1429.i.i
  %spec.select.i1484.1.i.i = select i1 %cmp.i1483.1.i.i, i32 0, i32 %inc.i1476.1.i.i
  %inc7.i1485.1.i.i = zext i1 %cmp.i1483.1.i.i to i32
  %spec.select14.i1486.1.i.i = add nuw nsw i32 %inc7.i1485.1.i.i, %inc7.i1485.i.i
  %arrayidx.i1474.2.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1486.1.i.i
  %723 = ptrtoint ptr %arrayidx.i1474.2.i.i to i32
  call void @__asan_load1_noabort(i32 %723)
  %724 = load i8, ptr %arrayidx.i1474.2.i.i, align 1
  %conv2.i1475.2.i.i = zext i8 %724 to i32
  %inc.i1476.2.i.i = add nuw nsw i32 %spec.select.i1484.1.i.i, 1
  %shr.i1477.2.i.i = lshr i32 %conv2.i1475.2.i.i, %spec.select.i1484.1.i.i
  %and.i1478.2.i.i = shl nuw nsw i32 %shr.i1477.2.i.i, 2
  %725 = and i32 %and.i1478.2.i.i, 4
  %or.i1482.2.i.i = or i32 %or.i1482.1.i.i, %725
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1476.2.i.i, i32 %conv.i1429.i.i)
  %cmp.i1483.2.i.i = icmp eq i32 %inc.i1476.2.i.i, %conv.i1429.i.i
  %spec.select.i1484.2.i.i = select i1 %cmp.i1483.2.i.i, i32 0, i32 %inc.i1476.2.i.i
  %inc7.i1485.2.i.i = zext i1 %cmp.i1483.2.i.i to i32
  %spec.select14.i1486.2.i.i = add nuw nsw i32 %spec.select14.i1486.1.i.i, %inc7.i1485.2.i.i
  %arrayidx.i1474.3.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1486.2.i.i
  %726 = ptrtoint ptr %arrayidx.i1474.3.i.i to i32
  call void @__asan_load1_noabort(i32 %726)
  %727 = load i8, ptr %arrayidx.i1474.3.i.i, align 1
  %conv2.i1475.3.i.i = zext i8 %727 to i32
  %inc.i1476.3.i.i = add nuw nsw i32 %spec.select.i1484.2.i.i, 1
  %shr.i1477.3.i.i = lshr i32 %conv2.i1475.3.i.i, %spec.select.i1484.2.i.i
  %and.i1478.3.i.i = shl nuw nsw i32 %shr.i1477.3.i.i, 3
  %728 = and i32 %and.i1478.3.i.i, 8
  %or.i1482.3.i.i = or i32 %or.i1482.2.i.i, %728
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1476.3.i.i, i32 %conv.i1429.i.i)
  %cmp.i1483.3.i.i = icmp eq i32 %inc.i1476.3.i.i, %conv.i1429.i.i
  %spec.select.i1484.3.i.i = select i1 %cmp.i1483.3.i.i, i32 0, i32 %inc.i1476.3.i.i
  %inc7.i1485.3.i.i = zext i1 %cmp.i1483.3.i.i to i32
  %spec.select14.i1486.3.i.i = add nuw nsw i32 %spec.select14.i1486.2.i.i, %inc7.i1485.3.i.i
  %arrayidx.i1474.4.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1486.3.i.i
  %729 = ptrtoint ptr %arrayidx.i1474.4.i.i to i32
  call void @__asan_load1_noabort(i32 %729)
  %730 = load i8, ptr %arrayidx.i1474.4.i.i, align 1
  %conv2.i1475.4.i.i = zext i8 %730 to i32
  %inc.i1476.4.i.i = add nuw nsw i32 %spec.select.i1484.3.i.i, 1
  %shr.i1477.4.i.i = lshr i32 %conv2.i1475.4.i.i, %spec.select.i1484.3.i.i
  %and.i1478.4.i.i = shl nuw nsw i32 %shr.i1477.4.i.i, 4
  %731 = and i32 %and.i1478.4.i.i, 16
  %or.i1482.4.i.i = or i32 %or.i1482.3.i.i, %731
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1476.4.i.i, i32 %conv.i1429.i.i)
  %cmp.i1483.4.i.i = icmp eq i32 %inc.i1476.4.i.i, %conv.i1429.i.i
  %spec.select.i1484.4.i.i = select i1 %cmp.i1483.4.i.i, i32 0, i32 %inc.i1476.4.i.i
  %inc7.i1485.4.i.i = zext i1 %cmp.i1483.4.i.i to i32
  %spec.select14.i1486.4.i.i = add nuw nsw i32 %spec.select14.i1486.3.i.i, %inc7.i1485.4.i.i
  %arrayidx.i1474.5.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1486.4.i.i
  %732 = ptrtoint ptr %arrayidx.i1474.5.i.i to i32
  call void @__asan_load1_noabort(i32 %732)
  %733 = load i8, ptr %arrayidx.i1474.5.i.i, align 1
  %conv2.i1475.5.i.i = zext i8 %733 to i32
  %inc.i1476.5.i.i = add nuw nsw i32 %spec.select.i1484.4.i.i, 1
  %shr.i1477.5.i.i = lshr i32 %conv2.i1475.5.i.i, %spec.select.i1484.4.i.i
  %and.i1478.5.i.i = shl nuw nsw i32 %shr.i1477.5.i.i, 5
  %734 = and i32 %and.i1478.5.i.i, 32
  %or.i1482.5.i.i = or i32 %or.i1482.4.i.i, %734
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1476.5.i.i, i32 %conv.i1429.i.i)
  %cmp.i1483.5.i.i = icmp eq i32 %inc.i1476.5.i.i, %conv.i1429.i.i
  %spec.select.i1484.5.i.i = select i1 %cmp.i1483.5.i.i, i32 0, i32 %inc.i1476.5.i.i
  %inc7.i1485.5.i.i = zext i1 %cmp.i1483.5.i.i to i32
  %spec.select14.i1486.5.i.i = add nuw nsw i32 %spec.select14.i1486.4.i.i, %inc7.i1485.5.i.i
  %arrayidx.i1474.6.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1486.5.i.i
  %735 = ptrtoint ptr %arrayidx.i1474.6.i.i to i32
  call void @__asan_load1_noabort(i32 %735)
  %736 = load i8, ptr %arrayidx.i1474.6.i.i, align 1
  %conv2.i1475.6.i.i = zext i8 %736 to i32
  %inc.i1476.6.i.i = add nuw nsw i32 %spec.select.i1484.5.i.i, 1
  %shr.i1477.6.i.i = lshr i32 %conv2.i1475.6.i.i, %spec.select.i1484.5.i.i
  %and.i1478.6.i.i = shl nuw nsw i32 %shr.i1477.6.i.i, 6
  %737 = and i32 %and.i1478.6.i.i, 64
  %or.i1482.6.i.i = or i32 %or.i1482.5.i.i, %737
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1476.6.i.i, i32 %conv.i1429.i.i)
  %cmp.i1483.6.i.i = icmp eq i32 %inc.i1476.6.i.i, %conv.i1429.i.i
  %spec.select.i1484.6.i.i = select i1 %cmp.i1483.6.i.i, i32 0, i32 %inc.i1476.6.i.i
  %inc7.i1485.6.i.i = zext i1 %cmp.i1483.6.i.i to i32
  %spec.select14.i1486.6.i.i = add nuw nsw i32 %spec.select14.i1486.5.i.i, %inc7.i1485.6.i.i
  %arrayidx.i1474.7.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1486.6.i.i
  %738 = ptrtoint ptr %arrayidx.i1474.7.i.i to i32
  call void @__asan_load1_noabort(i32 %738)
  %739 = load i8, ptr %arrayidx.i1474.7.i.i, align 1
  %conv2.i1475.7.i.i = zext i8 %739 to i32
  %inc.i1476.7.i.i = add nuw nsw i32 %spec.select.i1484.6.i.i, 1
  %shr.i1477.7.i.i = lshr i32 %conv2.i1475.7.i.i, %spec.select.i1484.6.i.i
  %and.i1478.7.i.i = shl nuw nsw i32 %shr.i1477.7.i.i, 7
  %740 = and i32 %and.i1478.7.i.i, 128
  %or.i1482.7.i.i = or i32 %or.i1482.6.i.i, %740
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1476.7.i.i, i32 %conv.i1429.i.i)
  %cmp.i1483.7.i.i = icmp eq i32 %inc.i1476.7.i.i, %conv.i1429.i.i
  %spec.select.i1484.7.i.i = select i1 %cmp.i1483.7.i.i, i32 0, i32 %inc.i1476.7.i.i
  %inc7.i1485.7.i.i = zext i1 %cmp.i1483.7.i.i to i32
  %spec.select14.i1486.7.i.i = add nuw nsw i32 %spec.select14.i1486.6.i.i, %inc7.i1485.7.i.i
  %arrayidx.i1474.8.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1486.7.i.i
  %741 = ptrtoint ptr %arrayidx.i1474.8.i.i to i32
  call void @__asan_load1_noabort(i32 %741)
  %742 = load i8, ptr %arrayidx.i1474.8.i.i, align 1
  %conv2.i1475.8.i.i = zext i8 %742 to i32
  %inc.i1476.8.i.i = add nuw nsw i32 %spec.select.i1484.7.i.i, 1
  %shr.i1477.8.i.i = lshr i32 %conv2.i1475.8.i.i, %spec.select.i1484.7.i.i
  %and.i1478.8.i.i = shl nuw nsw i32 %shr.i1477.8.i.i, 8
  %743 = and i32 %and.i1478.8.i.i, 256
  %or.i1482.8.i.i = or i32 %or.i1482.7.i.i, %743
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1476.8.i.i, i32 %conv.i1429.i.i)
  %cmp.i1483.8.i.i = icmp eq i32 %inc.i1476.8.i.i, %conv.i1429.i.i
  %spec.select.i1484.8.i.i = select i1 %cmp.i1483.8.i.i, i32 0, i32 %inc.i1476.8.i.i
  %inc7.i1485.8.i.i = zext i1 %cmp.i1483.8.i.i to i32
  %spec.select14.i1486.8.i.i = add nuw nsw i32 %spec.select14.i1486.7.i.i, %inc7.i1485.8.i.i
  %arrayidx.i1474.9.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1486.8.i.i
  %744 = ptrtoint ptr %arrayidx.i1474.9.i.i to i32
  call void @__asan_load1_noabort(i32 %744)
  %745 = load i8, ptr %arrayidx.i1474.9.i.i, align 1
  %conv2.i1475.9.i.i = zext i8 %745 to i32
  %shr.i1477.9.i.i = lshr i32 %conv2.i1475.9.i.i, %spec.select.i1484.8.i.i
  %and.i1478.9.i.i = shl nuw nsw i32 %shr.i1477.9.i.i, 9
  %746 = and i32 %and.i1478.9.i.i, 512
  %or.i1482.9.i.i = or i32 %or.i1482.8.i.i, %746
  tail call void @input_event(ptr noundef %715, i32 noundef 3, i32 noundef 3, i32 noundef %or.i1482.9.i.i) #7
  %747 = ptrtoint ptr %bits259.i.i to i32
  call void @__asan_load4_noabort(i32 %747)
  %748 = load i32, ptr %bits259.i.i, align 4
  %conv.i1491.i.i = and i32 %748, 255
  %div.i14921624.rhs.trunc.i.i = trunc i32 %748 to i8
  %div.i14921624.rhs.trunc.i.i.frozen = freeze i8 %div.i14921624.rhs.trunc.i.i
  %div.i149216241625.i.i = udiv i8 10, %div.i14921624.rhs.trunc.i.i.frozen
  %div.i14921624.zext.i.i = zext i8 %div.i149216241625.i.i to i32
  %749 = mul i8 %div.i149216241625.i.i, %div.i14921624.rhs.trunc.i.i.frozen
  %rem.i149316261627.i.i.decomposed = sub i8 10, %749
  %rem.i14931626.zext.i.i = zext i8 %rem.i149316261627.i.i.decomposed to i32
  %arrayidx.i1500.i.i = getelementptr i8, ptr %buf.i, i32 %div.i14921624.zext.i.i
  %750 = ptrtoint ptr %arrayidx.i1500.i.i to i32
  call void @__asan_load1_noabort(i32 %750)
  %751 = load i8, ptr %arrayidx.i1500.i.i, align 1
  %conv2.i1501.i.i = zext i8 %751 to i32
  %inc.i1502.i.i = add nuw nsw i32 %rem.i14931626.zext.i.i, 1
  %shr.i1503.i.i = lshr i32 %conv2.i1501.i.i, %rem.i14931626.zext.i.i
  %and.i1504.i.i = and i32 %shr.i1503.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1502.i.i, i32 %conv.i1491.i.i)
  %cmp.i1509.i.i = icmp eq i32 %inc.i1502.i.i, %conv.i1491.i.i
  %spec.select.i1510.i.i = select i1 %cmp.i1509.i.i, i32 0, i32 %inc.i1502.i.i
  %inc7.i1511.i.i = zext i1 %cmp.i1509.i.i to i32
  %spec.select14.i1512.i.i = add nuw nsw i32 %inc7.i1511.i.i, %div.i14921624.zext.i.i
  %arrayidx.i1500.1.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1512.i.i
  %752 = ptrtoint ptr %arrayidx.i1500.1.i.i to i32
  call void @__asan_load1_noabort(i32 %752)
  %753 = load i8, ptr %arrayidx.i1500.1.i.i, align 1
  %conv2.i1501.1.i.i = zext i8 %753 to i32
  %inc.i1502.1.i.i = add nuw nsw i32 %spec.select.i1510.i.i, 1
  %shr.i1503.1.i.i = lshr i32 %conv2.i1501.1.i.i, %spec.select.i1510.i.i
  %and.i1504.1.i.i = shl nuw nsw i32 %shr.i1503.1.i.i, 1
  %754 = and i32 %and.i1504.1.i.i, 2
  %or.i1508.11644.i.i = or i32 %754, %and.i1504.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1502.1.i.i, i32 %conv.i1491.i.i)
  %cmp.i1509.1.i.i = icmp eq i32 %inc.i1502.1.i.i, %conv.i1491.i.i
  %spec.select.i1510.1.i.i = select i1 %cmp.i1509.1.i.i, i32 0, i32 %inc.i1502.1.i.i
  %inc7.i1511.1.i.i = zext i1 %cmp.i1509.1.i.i to i32
  %spec.select14.i1512.1.i.i = add nuw nsw i32 %spec.select14.i1512.i.i, %inc7.i1511.1.i.i
  %arrayidx.i1500.2.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1512.1.i.i
  %755 = ptrtoint ptr %arrayidx.i1500.2.i.i to i32
  call void @__asan_load1_noabort(i32 %755)
  %756 = load i8, ptr %arrayidx.i1500.2.i.i, align 1
  %conv2.i1501.2.i.i = zext i8 %756 to i32
  %inc.i1502.2.i.i = add nuw nsw i32 %spec.select.i1510.1.i.i, 1
  %shr.i1503.2.i.i = lshr i32 %conv2.i1501.2.i.i, %spec.select.i1510.1.i.i
  %and.i1504.2.i.i = shl nuw nsw i32 %shr.i1503.2.i.i, 2
  %757 = and i32 %and.i1504.2.i.i, 4
  %or.i1508.21645.i.i = or i32 %or.i1508.11644.i.i, %757
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1502.2.i.i, i32 %conv.i1491.i.i)
  %cmp.i1509.2.i.i = icmp eq i32 %inc.i1502.2.i.i, %conv.i1491.i.i
  %spec.select.i1510.2.i.i = select i1 %cmp.i1509.2.i.i, i32 0, i32 %inc.i1502.2.i.i
  %inc7.i1511.2.i.i = zext i1 %cmp.i1509.2.i.i to i32
  %spec.select14.i1512.2.i.i = add nuw nsw i32 %spec.select14.i1512.1.i.i, %inc7.i1511.2.i.i
  %arrayidx.i1500.3.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1512.2.i.i
  %758 = ptrtoint ptr %arrayidx.i1500.3.i.i to i32
  call void @__asan_load1_noabort(i32 %758)
  %759 = load i8, ptr %arrayidx.i1500.3.i.i, align 1
  %conv2.i1501.3.i.i = zext i8 %759 to i32
  %inc.i1502.3.i.i = add nuw nsw i32 %spec.select.i1510.2.i.i, 1
  %shr.i1503.3.i.i = lshr i32 %conv2.i1501.3.i.i, %spec.select.i1510.2.i.i
  %and.i1504.3.i.i = shl nuw nsw i32 %shr.i1503.3.i.i, 3
  %760 = and i32 %and.i1504.3.i.i, 8
  %or.i1508.31646.i.i = or i32 %or.i1508.21645.i.i, %760
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1502.3.i.i, i32 %conv.i1491.i.i)
  %cmp.i1509.3.i.i = icmp eq i32 %inc.i1502.3.i.i, %conv.i1491.i.i
  %spec.select.i1510.3.i.i = select i1 %cmp.i1509.3.i.i, i32 0, i32 %inc.i1502.3.i.i
  %inc7.i1511.3.i.i = zext i1 %cmp.i1509.3.i.i to i32
  %spec.select14.i1512.3.i.i = add nuw nsw i32 %spec.select14.i1512.2.i.i, %inc7.i1511.3.i.i
  %arrayidx.i1500.4.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1512.3.i.i
  %761 = ptrtoint ptr %arrayidx.i1500.4.i.i to i32
  call void @__asan_load1_noabort(i32 %761)
  %762 = load i8, ptr %arrayidx.i1500.4.i.i, align 1
  %conv2.i1501.4.i.i = zext i8 %762 to i32
  %inc.i1502.4.i.i = add nuw nsw i32 %spec.select.i1510.3.i.i, 1
  %shr.i1503.4.i.i = lshr i32 %conv2.i1501.4.i.i, %spec.select.i1510.3.i.i
  %and.i1504.4.i.i = shl nuw nsw i32 %shr.i1503.4.i.i, 4
  %763 = and i32 %and.i1504.4.i.i, 16
  %or.i1508.41647.i.i = or i32 %or.i1508.31646.i.i, %763
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1502.4.i.i, i32 %conv.i1491.i.i)
  %cmp.i1509.4.i.i = icmp eq i32 %inc.i1502.4.i.i, %conv.i1491.i.i
  %spec.select.i1510.4.i.i = select i1 %cmp.i1509.4.i.i, i32 0, i32 %inc.i1502.4.i.i
  %inc7.i1511.4.i.i = zext i1 %cmp.i1509.4.i.i to i32
  %spec.select14.i1512.4.i.i = add nuw nsw i32 %spec.select14.i1512.3.i.i, %inc7.i1511.4.i.i
  %arrayidx.i1500.5.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1512.4.i.i
  %764 = ptrtoint ptr %arrayidx.i1500.5.i.i to i32
  call void @__asan_load1_noabort(i32 %764)
  %765 = load i8, ptr %arrayidx.i1500.5.i.i, align 1
  %conv2.i1501.5.i.i = zext i8 %765 to i32
  %shr.i1503.5.i.i = lshr i32 %conv2.i1501.5.i.i, %spec.select.i1510.4.i.i
  %and.i1504.5.i.i = shl nuw nsw i32 %shr.i1503.5.i.i, 5
  %766 = and i32 %and.i1504.5.i.i, 32
  %or.i1508.51648.i.i = or i32 %or.i1508.41647.i.i, %766
  tail call void @input_event(ptr noundef %715, i32 noundef 3, i32 noundef 7, i32 noundef %or.i1508.51648.i.i) #7
  %767 = ptrtoint ptr %bits259.i.i to i32
  call void @__asan_load4_noabort(i32 %767)
  %768 = load i32, ptr %bits259.i.i, align 4
  %conv.i1517.i.i = and i32 %768, 255
  %div.i15181628.rhs.trunc.i.i = trunc i32 %768 to i8
  %div.i15181628.rhs.trunc.i.i.frozen = freeze i8 %div.i15181628.rhs.trunc.i.i
  %div.i151816281629.i.i = udiv i8 16, %div.i15181628.rhs.trunc.i.i.frozen
  %div.i15181628.zext.i.i = zext i8 %div.i151816281629.i.i to i32
  %769 = mul i8 %div.i151816281629.i.i, %div.i15181628.rhs.trunc.i.i.frozen
  %rem.i151916301631.i.i.decomposed = sub i8 16, %769
  %rem.i15191630.zext.i.i = zext i8 %rem.i151916301631.i.i.decomposed to i32
  %arrayidx.i1526.i.i = getelementptr i8, ptr %buf.i, i32 %div.i15181628.zext.i.i
  %770 = ptrtoint ptr %arrayidx.i1526.i.i to i32
  call void @__asan_load1_noabort(i32 %770)
  %771 = load i8, ptr %arrayidx.i1526.i.i, align 1
  %conv2.i1527.i.i = zext i8 %771 to i32
  %inc.i1528.i.i = add nuw nsw i32 %rem.i15191630.zext.i.i, 1
  %shr.i1529.i.i = lshr i32 %conv2.i1527.i.i, %rem.i15191630.zext.i.i
  %and.i1530.i.i = and i32 %shr.i1529.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1528.i.i, i32 %conv.i1517.i.i)
  %cmp.i1535.i.i = icmp eq i32 %inc.i1528.i.i, %conv.i1517.i.i
  %spec.select.i1536.i.i = select i1 %cmp.i1535.i.i, i32 0, i32 %inc.i1528.i.i
  %inc7.i1537.i.i = zext i1 %cmp.i1535.i.i to i32
  %spec.select14.i1538.i.i = add nuw nsw i32 %inc7.i1537.i.i, %div.i15181628.zext.i.i
  %arrayidx.i1526.1.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1538.i.i
  %772 = ptrtoint ptr %arrayidx.i1526.1.i.i to i32
  call void @__asan_load1_noabort(i32 %772)
  %773 = load i8, ptr %arrayidx.i1526.1.i.i, align 1
  %conv2.i1527.1.i.i = zext i8 %773 to i32
  %inc.i1528.1.i.i = add nuw nsw i32 %spec.select.i1536.i.i, 1
  %shr.i1529.1.i.i = lshr i32 %conv2.i1527.1.i.i, %spec.select.i1536.i.i
  %and.i1530.1.i.i = shl nuw nsw i32 %shr.i1529.1.i.i, 1
  %774 = and i32 %and.i1530.1.i.i, 2
  %or.i1534.11649.i.i = or i32 %774, %and.i1530.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1528.1.i.i, i32 %conv.i1517.i.i)
  %cmp.i1535.1.i.i = icmp eq i32 %inc.i1528.1.i.i, %conv.i1517.i.i
  %spec.select.i1536.1.i.i = select i1 %cmp.i1535.1.i.i, i32 0, i32 %inc.i1528.1.i.i
  %inc7.i1537.1.i.i = zext i1 %cmp.i1535.1.i.i to i32
  %spec.select14.i1538.1.i.i = add nuw nsw i32 %spec.select14.i1538.i.i, %inc7.i1537.1.i.i
  %arrayidx.i1526.2.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1538.1.i.i
  %775 = ptrtoint ptr %arrayidx.i1526.2.i.i to i32
  call void @__asan_load1_noabort(i32 %775)
  %776 = load i8, ptr %arrayidx.i1526.2.i.i, align 1
  %conv2.i1527.2.i.i = zext i8 %776 to i32
  %inc.i1528.2.i.i = add nuw nsw i32 %spec.select.i1536.1.i.i, 1
  %shr.i1529.2.i.i = lshr i32 %conv2.i1527.2.i.i, %spec.select.i1536.1.i.i
  %and.i1530.2.i.i = shl nuw nsw i32 %shr.i1529.2.i.i, 2
  %777 = and i32 %and.i1530.2.i.i, 4
  %or.i1534.21650.i.i = or i32 %or.i1534.11649.i.i, %777
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1528.2.i.i, i32 %conv.i1517.i.i)
  %cmp.i1535.2.i.i = icmp eq i32 %inc.i1528.2.i.i, %conv.i1517.i.i
  %spec.select.i1536.2.i.i = select i1 %cmp.i1535.2.i.i, i32 0, i32 %inc.i1528.2.i.i
  %inc7.i1537.2.i.i = zext i1 %cmp.i1535.2.i.i to i32
  %spec.select14.i1538.2.i.i = add nuw nsw i32 %spec.select14.i1538.1.i.i, %inc7.i1537.2.i.i
  %arrayidx.i1526.3.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1538.2.i.i
  %778 = ptrtoint ptr %arrayidx.i1526.3.i.i to i32
  call void @__asan_load1_noabort(i32 %778)
  %779 = load i8, ptr %arrayidx.i1526.3.i.i, align 1
  %conv2.i1527.3.i.i = zext i8 %779 to i32
  %inc.i1528.3.i.i = add nuw nsw i32 %spec.select.i1536.2.i.i, 1
  %shr.i1529.3.i.i = lshr i32 %conv2.i1527.3.i.i, %spec.select.i1536.2.i.i
  %and.i1530.3.i.i = shl nuw nsw i32 %shr.i1529.3.i.i, 3
  %780 = and i32 %and.i1530.3.i.i, 8
  %or.i1534.31651.i.i = or i32 %or.i1534.21650.i.i, %780
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1528.3.i.i, i32 %conv.i1517.i.i)
  %cmp.i1535.3.i.i = icmp eq i32 %inc.i1528.3.i.i, %conv.i1517.i.i
  %spec.select.i1536.3.i.i = select i1 %cmp.i1535.3.i.i, i32 0, i32 %inc.i1528.3.i.i
  %inc7.i1537.3.i.i = zext i1 %cmp.i1535.3.i.i to i32
  %spec.select14.i1538.3.i.i = add nuw nsw i32 %spec.select14.i1538.2.i.i, %inc7.i1537.3.i.i
  %arrayidx.i1526.4.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1538.3.i.i
  %781 = ptrtoint ptr %arrayidx.i1526.4.i.i to i32
  call void @__asan_load1_noabort(i32 %781)
  %782 = load i8, ptr %arrayidx.i1526.4.i.i, align 1
  %conv2.i1527.4.i.i = zext i8 %782 to i32
  %inc.i1528.4.i.i = add nuw nsw i32 %spec.select.i1536.3.i.i, 1
  %shr.i1529.4.i.i = lshr i32 %conv2.i1527.4.i.i, %spec.select.i1536.3.i.i
  %and.i1530.4.i.i = shl nuw nsw i32 %shr.i1529.4.i.i, 4
  %783 = and i32 %and.i1530.4.i.i, 16
  %or.i1534.41652.i.i = or i32 %or.i1534.31651.i.i, %783
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i1528.4.i.i, i32 %conv.i1517.i.i)
  %cmp.i1535.4.i.i = icmp eq i32 %inc.i1528.4.i.i, %conv.i1517.i.i
  %spec.select.i1536.4.i.i = select i1 %cmp.i1535.4.i.i, i32 0, i32 %inc.i1528.4.i.i
  %inc7.i1537.4.i.i = zext i1 %cmp.i1535.4.i.i to i32
  %spec.select14.i1538.4.i.i = add nuw nsw i32 %spec.select14.i1538.3.i.i, %inc7.i1537.4.i.i
  %arrayidx.i1526.5.i.i = getelementptr i8, ptr %buf.i, i32 %spec.select14.i1538.4.i.i
  %784 = ptrtoint ptr %arrayidx.i1526.5.i.i to i32
  call void @__asan_load1_noabort(i32 %784)
  %785 = load i8, ptr %arrayidx.i1526.5.i.i, align 1
  %conv2.i1527.5.i.i = zext i8 %785 to i32
  %shr.i1529.5.i.i = lshr i32 %conv2.i1527.5.i.i, %spec.select.i1536.4.i.i
  %and.i1530.5.i.i = shl nuw nsw i32 %shr.i1529.5.i.i, 5
  %786 = and i32 %and.i1530.5.i.i, 32
  %or.i1534.51653.i.i = or i32 %or.i1534.41652.i.i, %786
  tail call void @input_event(ptr noundef %715, i32 noundef 3, i32 noundef 6, i32 noundef %or.i1534.51653.i.i) #7
  %787 = ptrtoint ptr %bits259.i.i to i32
  call void @__asan_load4_noabort(i32 %787)
  %788 = load i32, ptr %bits259.i.i, align 4
  %div.i1544.udiv.i.rhs.trunc.i = trunc i32 %788 to i8
  %div.i1544.udiv.i.rhs.trunc.i.frozen = freeze i8 %div.i1544.udiv.i.rhs.trunc.i
  %div.i1544.udiv.i438.i = udiv i8 22, %div.i1544.udiv.i.rhs.trunc.i.frozen
  %div.i1544.udiv.i.zext.i = zext i8 %div.i1544.udiv.i438.i to i32
  %789 = mul i8 %div.i1544.udiv.i438.i, %div.i1544.udiv.i.rhs.trunc.i.frozen
  %rem.i1545.urem.i439.i.decomposed = sub i8 22, %789
  %rem.i1545.urem.i.zext.i = zext i8 %rem.i1545.urem.i439.i.decomposed to i32
  %arrayidx.i1552.i.i = getelementptr i8, ptr %buf.i, i32 %div.i1544.udiv.i.zext.i
  %790 = ptrtoint ptr %arrayidx.i1552.i.i to i32
  call void @__asan_load1_noabort(i32 %790)
  %791 = load i8, ptr %arrayidx.i1552.i.i, align 1
  %conv2.i1553.i.i = zext i8 %791 to i32
  %792 = xor i32 %conv2.i1553.i.i, -1
  %793 = lshr i32 %792, %rem.i1545.urem.i.zext.i
  %794 = and i32 %793, 1
  tail call void @input_event(ptr noundef %715, i32 noundef 1, i32 noundef 288, i32 noundef %794) #7
  %795 = ptrtoint ptr %bits259.i.i to i32
  call void @__asan_load4_noabort(i32 %795)
  %796 = load i32, ptr %bits259.i.i, align 4
  %div.i1544.udiv.i.1.rhs.trunc.i = trunc i32 %796 to i8
  %div.i1544.udiv.i.1.rhs.trunc.i.frozen = freeze i8 %div.i1544.udiv.i.1.rhs.trunc.i
  %div.i1544.udiv.i.1440.i = udiv i8 23, %div.i1544.udiv.i.1.rhs.trunc.i.frozen
  %div.i1544.udiv.i.1.zext.i = zext i8 %div.i1544.udiv.i.1440.i to i32
  %797 = mul i8 %div.i1544.udiv.i.1440.i, %div.i1544.udiv.i.1.rhs.trunc.i.frozen
  %rem.i1545.urem.i.1441.i.decomposed = sub i8 23, %797
  %rem.i1545.urem.i.1.zext.i = zext i8 %rem.i1545.urem.i.1441.i.decomposed to i32
  %arrayidx.i1552.i.1.i = getelementptr i8, ptr %buf.i, i32 %div.i1544.udiv.i.1.zext.i
  %798 = ptrtoint ptr %arrayidx.i1552.i.1.i to i32
  call void @__asan_load1_noabort(i32 %798)
  %799 = load i8, ptr %arrayidx.i1552.i.1.i, align 1
  %conv2.i1553.i.1.i = zext i8 %799 to i32
  %800 = xor i32 %conv2.i1553.i.1.i, -1
  %801 = lshr i32 %800, %rem.i1545.urem.i.1.zext.i
  %802 = and i32 %801, 1
  tail call void @input_event(ptr noundef %715, i32 noundef 1, i32 noundef 291, i32 noundef %802) #7
  %803 = ptrtoint ptr %bits259.i.i to i32
  call void @__asan_load4_noabort(i32 %803)
  %804 = load i32, ptr %bits259.i.i, align 4
  %div.i1544.udiv.i.2.rhs.trunc.i = trunc i32 %804 to i8
  %div.i1544.udiv.i.2.rhs.trunc.i.frozen = freeze i8 %div.i1544.udiv.i.2.rhs.trunc.i
  %div.i1544.udiv.i.2442.i = udiv i8 24, %div.i1544.udiv.i.2.rhs.trunc.i.frozen
  %div.i1544.udiv.i.2.zext.i = zext i8 %div.i1544.udiv.i.2442.i to i32
  %805 = mul i8 %div.i1544.udiv.i.2442.i, %div.i1544.udiv.i.2.rhs.trunc.i.frozen
  %rem.i1545.urem.i.2443.i.decomposed = sub i8 24, %805
  %rem.i1545.urem.i.2.zext.i = zext i8 %rem.i1545.urem.i.2443.i.decomposed to i32
  %arrayidx.i1552.i.2.i = getelementptr i8, ptr %buf.i, i32 %div.i1544.udiv.i.2.zext.i
  %806 = ptrtoint ptr %arrayidx.i1552.i.2.i to i32
  call void @__asan_load1_noabort(i32 %806)
  %807 = load i8, ptr %arrayidx.i1552.i.2.i, align 1
  %conv2.i1553.i.2.i = zext i8 %807 to i32
  %808 = xor i32 %conv2.i1553.i.2.i, -1
  %809 = lshr i32 %808, %rem.i1545.urem.i.2.zext.i
  %810 = and i32 %809, 1
  tail call void @input_event(ptr noundef %715, i32 noundef 1, i32 noundef 289, i32 noundef %810) #7
  %811 = ptrtoint ptr %bits259.i.i to i32
  call void @__asan_load4_noabort(i32 %811)
  %812 = load i32, ptr %bits259.i.i, align 4
  %div.i1544.udiv.i.3.rhs.trunc.i = trunc i32 %812 to i8
  %div.i1544.udiv.i.3.rhs.trunc.i.frozen = freeze i8 %div.i1544.udiv.i.3.rhs.trunc.i
  %div.i1544.udiv.i.3444.i = udiv i8 25, %div.i1544.udiv.i.3.rhs.trunc.i.frozen
  %div.i1544.udiv.i.3.zext.i = zext i8 %div.i1544.udiv.i.3444.i to i32
  %813 = mul i8 %div.i1544.udiv.i.3444.i, %div.i1544.udiv.i.3.rhs.trunc.i.frozen
  %rem.i1545.urem.i.3445.i.decomposed = sub i8 25, %813
  %rem.i1545.urem.i.3.zext.i = zext i8 %rem.i1545.urem.i.3445.i.decomposed to i32
  %arrayidx.i1552.i.3.i = getelementptr i8, ptr %buf.i, i32 %div.i1544.udiv.i.3.zext.i
  %814 = ptrtoint ptr %arrayidx.i1552.i.3.i to i32
  call void @__asan_load1_noabort(i32 %814)
  %815 = load i8, ptr %arrayidx.i1552.i.3.i, align 1
  %conv2.i1553.i.3.i = zext i8 %815 to i32
  %816 = xor i32 %conv2.i1553.i.3.i, -1
  %817 = lshr i32 %816, %rem.i1545.urem.i.3.zext.i
  %818 = and i32 %817, 1
  tail call void @input_event(ptr noundef %715, i32 noundef 1, i32 noundef 290, i32 noundef %818) #7
  %819 = ptrtoint ptr %bits259.i.i to i32
  call void @__asan_load4_noabort(i32 %819)
  %820 = load i32, ptr %bits259.i.i, align 4
  %div.i1544.udiv.i.4.rhs.trunc.i = trunc i32 %820 to i8
  %div.i1544.udiv.i.4.rhs.trunc.i.frozen = freeze i8 %div.i1544.udiv.i.4.rhs.trunc.i
  %div.i1544.udiv.i.4446.i = udiv i8 26, %div.i1544.udiv.i.4.rhs.trunc.i.frozen
  %div.i1544.udiv.i.4.zext.i = zext i8 %div.i1544.udiv.i.4446.i to i32
  %821 = mul i8 %div.i1544.udiv.i.4446.i, %div.i1544.udiv.i.4.rhs.trunc.i.frozen
  %rem.i1545.urem.i.4447.i.decomposed = sub i8 26, %821
  %rem.i1545.urem.i.4.zext.i = zext i8 %rem.i1545.urem.i.4447.i.decomposed to i32
  %arrayidx.i1552.i.4.i = getelementptr i8, ptr %buf.i, i32 %div.i1544.udiv.i.4.zext.i
  %822 = ptrtoint ptr %arrayidx.i1552.i.4.i to i32
  call void @__asan_load1_noabort(i32 %822)
  %823 = load i8, ptr %arrayidx.i1552.i.4.i, align 1
  %conv2.i1553.i.4.i = zext i8 %823 to i32
  %824 = xor i32 %conv2.i1553.i.4.i, -1
  %825 = lshr i32 %824, %rem.i1545.urem.i.4.zext.i
  %826 = and i32 %825, 1
  tail call void @input_event(ptr noundef %715, i32 noundef 1, i32 noundef 294, i32 noundef %826) #7
  %827 = ptrtoint ptr %bits259.i.i to i32
  call void @__asan_load4_noabort(i32 %827)
  %828 = load i32, ptr %bits259.i.i, align 4
  %div.i1544.udiv.i.5.rhs.trunc.i = trunc i32 %828 to i8
  %div.i1544.udiv.i.5.rhs.trunc.i.frozen = freeze i8 %div.i1544.udiv.i.5.rhs.trunc.i
  %div.i1544.udiv.i.5448.i = udiv i8 27, %div.i1544.udiv.i.5.rhs.trunc.i.frozen
  %div.i1544.udiv.i.5.zext.i = zext i8 %div.i1544.udiv.i.5448.i to i32
  %829 = mul i8 %div.i1544.udiv.i.5448.i, %div.i1544.udiv.i.5.rhs.trunc.i.frozen
  %rem.i1545.urem.i.5449.i.decomposed = sub i8 27, %829
  %rem.i1545.urem.i.5.zext.i = zext i8 %rem.i1545.urem.i.5449.i.decomposed to i32
  %arrayidx.i1552.i.5.i = getelementptr i8, ptr %buf.i, i32 %div.i1544.udiv.i.5.zext.i
  %830 = ptrtoint ptr %arrayidx.i1552.i.5.i to i32
  call void @__asan_load1_noabort(i32 %830)
  %831 = load i8, ptr %arrayidx.i1552.i.5.i, align 1
  %conv2.i1553.i.5.i = zext i8 %831 to i32
  %832 = xor i32 %conv2.i1553.i.5.i, -1
  %833 = lshr i32 %832, %rem.i1545.urem.i.5.zext.i
  %834 = and i32 %833, 1
  tail call void @input_event(ptr noundef %715, i32 noundef 1, i32 noundef 295, i32 noundef %834) #7
  %835 = ptrtoint ptr %bits259.i.i to i32
  call void @__asan_load4_noabort(i32 %835)
  %836 = load i32, ptr %bits259.i.i, align 4
  %div.i1544.udiv.i.6.rhs.trunc.i = trunc i32 %836 to i8
  %div.i1544.udiv.i.6.rhs.trunc.i.frozen = freeze i8 %div.i1544.udiv.i.6.rhs.trunc.i
  %div.i1544.udiv.i.6450.i = udiv i8 28, %div.i1544.udiv.i.6.rhs.trunc.i.frozen
  %div.i1544.udiv.i.6.zext.i = zext i8 %div.i1544.udiv.i.6450.i to i32
  %837 = mul i8 %div.i1544.udiv.i.6450.i, %div.i1544.udiv.i.6.rhs.trunc.i.frozen
  %rem.i1545.urem.i.6451.i.decomposed = sub i8 28, %837
  %rem.i1545.urem.i.6.zext.i = zext i8 %rem.i1545.urem.i.6451.i.decomposed to i32
  %arrayidx.i1552.i.6.i = getelementptr i8, ptr %buf.i, i32 %div.i1544.udiv.i.6.zext.i
  %838 = ptrtoint ptr %arrayidx.i1552.i.6.i to i32
  call void @__asan_load1_noabort(i32 %838)
  %839 = load i8, ptr %arrayidx.i1552.i.6.i, align 1
  %conv2.i1553.i.6.i = zext i8 %839 to i32
  %840 = xor i32 %conv2.i1553.i.6.i, -1
  %841 = lshr i32 %840, %rem.i1545.urem.i.6.zext.i
  %842 = and i32 %841, 1
  tail call void @input_event(ptr noundef %715, i32 noundef 1, i32 noundef 296, i32 noundef %842) #7
  %843 = ptrtoint ptr %bits259.i.i to i32
  call void @__asan_load4_noabort(i32 %843)
  %844 = load i32, ptr %bits259.i.i, align 4
  %div.i1544.udiv.i.7.rhs.trunc.i = trunc i32 %844 to i8
  %div.i1544.udiv.i.7.rhs.trunc.i.frozen = freeze i8 %div.i1544.udiv.i.7.rhs.trunc.i
  %div.i1544.udiv.i.7452.i = udiv i8 29, %div.i1544.udiv.i.7.rhs.trunc.i.frozen
  %div.i1544.udiv.i.7.zext.i = zext i8 %div.i1544.udiv.i.7452.i to i32
  %845 = mul i8 %div.i1544.udiv.i.7452.i, %div.i1544.udiv.i.7.rhs.trunc.i.frozen
  %rem.i1545.urem.i.7453.i.decomposed = sub i8 29, %845
  %rem.i1545.urem.i.7.zext.i = zext i8 %rem.i1545.urem.i.7453.i.decomposed to i32
  %arrayidx.i1552.i.7.i = getelementptr i8, ptr %buf.i, i32 %div.i1544.udiv.i.7.zext.i
  %846 = ptrtoint ptr %arrayidx.i1552.i.7.i to i32
  call void @__asan_load1_noabort(i32 %846)
  %847 = load i8, ptr %arrayidx.i1552.i.7.i, align 1
  %conv2.i1553.i.7.i = zext i8 %847 to i32
  %848 = xor i32 %conv2.i1553.i.7.i, -1
  %849 = lshr i32 %848, %rem.i1545.urem.i.7.zext.i
  %850 = and i32 %849, 1
  tail call void @input_event(ptr noundef %715, i32 noundef 1, i32 noundef 297, i32 noundef %850) #7
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %if.end265.i.i, %if.end199.i.i, %if.end147.i.i, %if.end.i.i
  %.sink.i.i = phi ptr [ %541, %if.end199.i.i ], [ %81, %if.end.i.i ], [ %343, %if.end147.i.i ], [ %715, %if.end265.i.i ]
  tail call void @input_event(ptr noundef %.sink.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  br label %if.then71.i

if.then71.i:                                      ; preds = %cleanup.sink.split.i.i, %for.end127.i.i.if.then71.i_crit_edge
  %851 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %851)
  %.pr393.i = load i32, ptr %type.i, align 4
  %fail72.i = getelementptr inbounds %struct.sw, ptr %1, i32 0, i32 8
  %852 = ptrtoint ptr %fail72.i to i32
  call void @__asan_store4_noabort(i32 %852)
  store i32 0, ptr %fail72.i, align 4
  %ok.i = getelementptr inbounds %struct.sw, ptr %1, i32 0, i32 9
  %853 = ptrtoint ptr %ok.i to i32
  call void @__asan_load4_noabort(i32 %853)
  %854 = load i32, ptr %ok.i, align 4
  %inc.i = add i32 %854, 1
  store i32 %inc.i, ptr %ok.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr393.i)
  %cmp74.i = icmp eq i32 %.pr393.i, 0
  br i1 %cmp74.i, label %land.lhs.true76.i, label %if.then71.i.sw_read.exit.thread_crit_edge

if.then71.i.sw_read.exit.thread_crit_edge:        ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw_read.exit.thread

land.lhs.true76.i:                                ; preds = %if.then71.i
  %855 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %855)
  %856 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 66, i32 %856)
  %cmp78.i = icmp eq i32 %856, 66
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %inc.i)
  %cmp82.i = icmp sgt i32 %inc.i, 64
  %or.cond.i = select i1 %cmp78.i, i1 %cmp82.i, i1 false
  br i1 %or.cond.i, label %do.end87.i, label %land.lhs.true76.i.sw_read.exit.thread_crit_edge

land.lhs.true76.i.sw_read.exit.thread_crit_edge:  ; preds = %land.lhs.true76.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw_read.exit.thread

do.end87.i:                                       ; preds = %land.lhs.true76.i
  call void @__sanitizer_cov_trace_pc() #9
  %857 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %857)
  %858 = load ptr, ptr %1, align 4
  %phys90.i = getelementptr inbounds %struct.gameport, ptr %858, i32 0, i32 2
  %call92.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %phys90.i) #11
  %859 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %859)
  store i32 22, ptr %length.i, align 4
  br label %sw_read.exit.thread

if.end95.i:                                       ; preds = %sw_get_bits.exit1452.i.i.if.end95.i_crit_edge, %lor.lhs.false191.i.i.if.end95.i_crit_edge, %sw_get_bits.exit1177.i.i.if.end95.i_crit_edge, %lor.lhs.false139.i.i.if.end95.i_crit_edge, %sw_get_bits.exit982.i.i.if.end95.i_crit_edge, %sw_get_bits.exit824.i.i.if.end95.i_crit_edge, %lor.lhs.false.i.i.if.end95.i_crit_edge, %sw_check.exit.i.i.if.end95.i_crit_edge, %sw_get_bits.exit.i.i.if.end95.i_crit_edge, %if.end63.i.if.end95.i_crit_edge
  %860 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %860)
  %.pr382.i = load i32, ptr %type.i, align 4
  %ok96.i = getelementptr inbounds %struct.sw, ptr %1, i32 0, i32 9
  %861 = ptrtoint ptr %ok96.i to i32
  call void @__asan_store4_noabort(i32 %861)
  store i32 0, ptr %ok96.i, align 4
  %fail97.i = getelementptr inbounds %struct.sw, ptr %1, i32 0, i32 8
  %862 = ptrtoint ptr %fail97.i to i32
  call void @__asan_load4_noabort(i32 %862)
  %863 = load i32, ptr %fail97.i, align 4
  %inc98.i = add i32 %863, 1
  store i32 %inc98.i, ptr %fail97.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr382.i)
  %cmp100.i = icmp eq i32 %.pr382.i, 0
  br i1 %cmp100.i, label %land.lhs.true102.i, label %if.end95.i.if.end120.i_crit_edge

if.end95.i.if.end120.i_crit_edge:                 ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120.i

land.lhs.true102.i:                               ; preds = %if.end95.i
  %864 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %864)
  %865 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %865)
  %cmp104.i = icmp eq i32 %865, 22
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc98.i)
  %cmp108.i = icmp sgt i32 %inc98.i, 2
  %or.cond209.i = select i1 %cmp104.i, i1 %cmp108.i, i1 false
  br i1 %or.cond209.i, label %do.end113.i, label %land.lhs.true102.i.if.end120thread-pre-split.i_crit_edge

land.lhs.true102.i.if.end120thread-pre-split.i_crit_edge: ; preds = %land.lhs.true102.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120thread-pre-split.i

do.end113.i:                                      ; preds = %land.lhs.true102.i
  call void @__sanitizer_cov_trace_pc() #9
  %866 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %866)
  %867 = load ptr, ptr %1, align 4
  %phys116.i = getelementptr inbounds %struct.gameport, ptr %867, i32 0, i32 2
  %call118.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %phys116.i) #11
  %868 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %868)
  store i32 66, ptr %length.i, align 4
  br label %if.end120thread-pre-split.i

if.end120thread-pre-split.i:                      ; preds = %do.end113.i, %land.lhs.true102.i.if.end120thread-pre-split.i_crit_edge
  %869 = ptrtoint ptr %fail97.i to i32
  call void @__asan_load4_noabort(i32 %869)
  %.pr.i = load i32, ptr %fail97.i, align 4
  br label %if.end120.i

if.end120.i:                                      ; preds = %if.end120thread-pre-split.i, %if.end95.i.if.end120.i_crit_edge, %if.end95.thread.i
  %fail97387.i = phi ptr [ %fail97.i, %if.end120thread-pre-split.i ], [ %fail97.i, %if.end95.i.if.end120.i_crit_edge ], [ %fail97384.i, %if.end95.thread.i ]
  %870 = phi i32 [ %.pr.i, %if.end120thread-pre-split.i ], [ %inc98.i, %if.end95.i.if.end120.i_crit_edge ], [ %inc98385.i, %if.end95.thread.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %870)
  %cmp122.i = icmp slt i32 %870, 16
  br i1 %cmp122.i, label %if.end120.i.if.then_crit_edge, label %do.end128.i

if.end120.i.if.then_crit_edge:                    ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

do.end128.i:                                      ; preds = %if.end120.i
  %871 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %871)
  %872 = load ptr, ptr %1, align 4
  %phys131.i = getelementptr inbounds %struct.gameport, ptr %872, i32 0, i32 2
  %call133.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %phys131.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.3.i)
  %tobool134.not.i = icmp eq i32 %i.3.i, 0
  br i1 %tobool134.not.i, label %land.lhs.true135.i, label %do.end128.i.if.end142.i_crit_edge

do.end128.i.if.end142.i_crit_edge:                ; preds = %do.end128.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end142.i

land.lhs.true135.i:                               ; preds = %do.end128.i
  %873 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %873)
  %874 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %874)
  %cmp137.i = icmp eq i32 %874, 0
  br i1 %cmp137.i, label %while.body.preheader.i, label %land.lhs.true135.i.if.end142.i_crit_edge

land.lhs.true135.i.if.end142.i_crit_edge:         ; preds = %land.lhs.true135.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end142.i

while.body.preheader.i:                           ; preds = %land.lhs.true135.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %875 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %875(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %876 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %876(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %877 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %877(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %878 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %878(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %879 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %879(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %880 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %880(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %881 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %881(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %882 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %882(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %883 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %883(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %884 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %884(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %885 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %885(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %886 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %886(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %887 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %887(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %888 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %888(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %889 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %889(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %890 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %890(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %891 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %891(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %892 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %892(i32 noundef 214748000) #7
  %893 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %893)
  %894 = load ptr, ptr %1, align 4
  tail call fastcc void @sw_init_digital(ptr noundef %894) #7
  br label %if.end142.i

if.end142.i:                                      ; preds = %while.body.preheader.i, %land.lhs.true135.i.if.end142.i_crit_edge, %do.end128.i.if.end142.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %895 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %895(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %896 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %896(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %897 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %897(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %898 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %898(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %899 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %899(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %900 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %900(i32 noundef 214748000) #7
  %901 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %901)
  %902 = load ptr, ptr %1, align 4
  %call151.i = call fastcc i32 @sw_read_packet(ptr noundef %902, ptr noundef nonnull %buf.i, i32 noundef 512, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %903 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %903(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %904 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %904(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %905 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %905(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %906 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %906(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %907 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %907(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %908 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %908(i32 noundef 214748000) #7
  %909 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %909)
  %910 = load ptr, ptr %1, align 4
  %call160.i = call fastcc i32 @sw_read_packet(ptr noundef %910, ptr noundef nonnull %buf.i, i32 noundef 512, i32 noundef %call151.i) #7
  %911 = ptrtoint ptr %fail97387.i to i32
  call void @__asan_store4_noabort(i32 %911)
  store i32 16, ptr %fail97387.i, align 4
  br label %if.then

sw_read.exit.thread:                              ; preds = %do.end87.i, %land.lhs.true76.i.sw_read.exit.thread_crit_edge, %if.then71.i.sw_read.exit.thread_crit_edge, %if.then71.thread.i
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %buf.i) #7
  br label %if.end

if.then:                                          ; preds = %if.end142.i, %if.end120.i.if.then_crit_edge
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %buf.i) #7
  %bads = getelementptr inbounds %struct.sw, ptr %1, i32 0, i32 11
  %912 = ptrtoint ptr %bads to i32
  call void @__asan_load4_noabort(i32 %912)
  %913 = load i32, ptr %bads, align 4
  %inc2 = add i32 %913, 1
  store i32 %inc2, ptr %bads, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw_read.exit.thread
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sw_open(ptr nocapture noundef readonly %dev) #2 align 64 {
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
define internal void @sw_close(ptr nocapture noundef readonly %dev) #2 align 64 {
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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_start_polling(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_stop_polling(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !29, !31, !33, !35, !37, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96, !97, !98}
!llvm.ident = !{!99}

!0 = !{ptr @__UNIQUE_ID_author223, !1, !"__UNIQUE_ID_author223", i1 false, i1 false}
!1 = !{!"../drivers/input/joystick/sidewinder.c", i32 23, i32 1}
!2 = !{ptr @__UNIQUE_ID_description224, !3, !"__UNIQUE_ID_description224", i1 false, i1 false}
!3 = !{!"../drivers/input/joystick/sidewinder.c", i32 24, i32 1}
!4 = !{ptr @__UNIQUE_ID_file225, !5, !"__UNIQUE_ID_file225", i1 false, i1 false}
!5 = !{!"../drivers/input/joystick/sidewinder.c", i32 25, i32 1}
!6 = !{ptr @__UNIQUE_ID_license226, !5, !"__UNIQUE_ID_license226", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_sidewinder__227_812_sw_drv_init6, !8, !"__initcall__kmod_sidewinder__227_812_sw_drv_init6", i1 false, i1 false}
!8 = !{!"../drivers/input/joystick/sidewinder.c", i32 812, i32 1}
!9 = !{ptr @__exitcall_sw_drv_exit, !8, !"__exitcall_sw_drv_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/input/joystick/sidewinder.c", i32 807, i32 17}
!13 = !{ptr @sw_drv, !14, !"sw_drv", i1 false, i1 false}
!14 = !{!"../drivers/input/joystick/sidewinder.c", i32 802, i32 31}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/input/joystick/sidewinder.c", i32 683, i32 24}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/input/joystick/sidewinder.c", i32 683, i32 64}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/input/joystick/sidewinder.c", i32 683, i32 72}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/input/joystick/sidewinder.c", i32 704, i32 3}
!23 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @sw_connect._entry, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @sw_connect._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/input/joystick/sidewinder.c", i32 706, i32 19}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/input/joystick/sidewinder.c", i32 707, i32 19}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/joystick/sidewinder.c", i32 727, i32 5}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/input/joystick/sidewinder.c", i32 729, i32 5}
!35 = !{ptr @sw_init_digital.seq, !36, !"seq", i1 false, i1 false}
!36 = !{!"../drivers/input/joystick/sidewinder.c", i32 226, i32 19}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/input/joystick/sidewinder.c", i32 540, i32 26}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/input/joystick/sidewinder.c", i32 516, i32 2}
!41 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @sw_print_packet._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @sw_print_packet._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/input/joystick/sidewinder.c", i32 518, i32 3}
!46 = !{ptr @sw_print_packet._entry.15, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @sw_print_packet._entry_ptr.17, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/input/joystick/sidewinder.c", i32 519, i32 2}
!50 = !{ptr @sw_print_packet._entry.18, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @sw_print_packet._entry_ptr.20, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/input/joystick/sidewinder.c", i32 419, i32 4}
!54 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @sw_read._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @sw_read._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/input/joystick/sidewinder.c", i32 445, i32 4}
!59 = !{ptr @sw_read._entry.23, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @sw_read._entry_ptr.25, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/input/joystick/sidewinder.c", i32 458, i32 3}
!63 = !{ptr @sw_read._entry.26, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @sw_read._entry_ptr.28, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/input/joystick/sidewinder.c", i32 466, i32 2}
!67 = !{ptr @sw_read._entry.29, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @sw_read._entry_ptr.31, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @sw_hat_to_axis, !70, !"sw_hat_to_axis", i1 false, i1 false}
!70 = !{!"../drivers/input/joystick/sidewinder.c", i32 96, i32 3}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/input/joystick/sidewinder.c", i32 66, i32 28}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/input/joystick/sidewinder.c", i32 66, i32 38}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/input/joystick/sidewinder.c", i32 66, i32 49}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/input/joystick/sidewinder.c", i32 66, i32 66}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/input/joystick/sidewinder.c", i32 66, i32 88}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/input/joystick/sidewinder.c", i32 67, i32 5}
!83 = !{ptr @sw_name, !84, !"sw_name", i1 false, i1 false}
!84 = !{!"../drivers/input/joystick/sidewinder.c", i32 66, i32 14}
!85 = !{ptr @sw_bit, !86, !"sw_bit", i1 false, i1 false}
!86 = !{!"../drivers/input/joystick/sidewinder.c", i32 77, i32 13}
!87 = !{ptr @sw_abs, !88, !"sw_abs", i1 false, i1 false}
!88 = !{!"../drivers/input/joystick/sidewinder.c", i32 69, i32 13}
!89 = !{ptr @sw_btn, !90, !"sw_btn", i1 false, i1 false}
!90 = !{!"../drivers/input/joystick/sidewinder.c", i32 85, i32 14}
!91 = !{i32 1, !"wchar_size", i32 2}
!92 = !{i32 1, !"min_enum_size", i32 4}
!93 = !{i32 8, !"branch-target-enforcement", i32 0}
!94 = !{i32 8, !"sign-return-address", i32 0}
!95 = !{i32 8, !"sign-return-address-all", i32 0}
!96 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!97 = !{i32 7, !"uwtable", i32 1}
!98 = !{i32 7, !"frame-pointer", i32 2}
!99 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!100 = !{i64 600362, i64 600423}
!101 = !{i64 2153589185}
!102 = !{i64 6029439}
!103 = !{i64 6029834}
!104 = !{i64 2153589760}
!105 = !{i64 603094}
!106 = !{!"branch_weights", i32 1, i32 2000}
!107 = !{i64 603379}
