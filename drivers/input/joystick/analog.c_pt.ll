; ModuleID = '/llk/IR_all_yes/drivers/input/joystick/analog.c_pt.bc'
source_filename = "../drivers/input/joystick/analog.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.gameport_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.analog_types = type { ptr, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
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
%struct.analog_port = type { ptr, [2 x %struct.analog], i8, i8, i8, i32, i32, i32, i32, [4 x i32], i32, [4 x i32], i32 }
%struct.analog = type { ptr, i32, ptr, [128 x i8], [32 x i8] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__UNIQUE_ID_author225 = internal constant [46 x i8] c"analog.author=Vojtech Pavlik <vojtech@ucw.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description226 = internal constant [54 x i8] c"analog.description=Analog joystick and gamepad driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file227 = internal constant [42 x i8] c"analog.file=drivers/input/joystick/analog\00", section ".modinfo", align 1
@__UNIQUE_ID_license228 = internal constant [19 x i8] c"analog.license=GPL\00", section ".modinfo", align 1
@__param_str_map = internal constant [11 x i8] c"analog.map\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_map = internal constant %struct.kparam_array { i32 16, i32 4, ptr @js_nargs, ptr @param_ops_charp, ptr @js }, align 4
@__param_map = internal constant %struct.kernel_param { ptr @__param_str_map, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @__param_arr_map } }, section "__param", align 4
@__UNIQUE_ID_maptype229 = internal constant [35 x i8] c"analog.parmtype=map:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_map230 = internal constant [61 x i8] c"analog.parm=map:Describes analog joysticks type/capabilities\00", section ".modinfo", align 1
@analog_drv = internal global { %struct.gameport_driver, [32 x i8] } { %struct.gameport_driver { ptr @.str, ptr @analog_connect, ptr null, ptr @analog_disconnect, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i8 0 }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_analog__231_706_analog_init6 = internal global ptr @analog_init, section ".initcall6.init", align 4
@__exitcall_analog_exit = internal global ptr @analog_exit, section ".exitcall.exit", align 4
@js_nargs = internal global { i32, [28 x i8] } zeroinitializer, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@js = internal global { [16 x ptr], [32 x i8] } zeroinitializer, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Analog joystick and gamepad driver\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"analog\00", [25 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@analog_options = internal global { [16 x i32], [32 x i8] } zeroinitializer, align 32
@analog_init_masks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 470, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"\014analog.c: Unknown joystick device found  (data=%#x, %s), probably not analog joystick.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"analog_init_masks\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/input/joystick/analog.c\00", [32 x i8] zeroinitializer }, align 32
@analog_init_masks._entry_ptr = internal global ptr @analog_init_masks._entry, section ".printk_index", align 4
@analog_chf = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\0F\00\01\09\02\04\0C\08\03\05\0B\07\0D\0E\0A\06", [16 x i8] zeroinitializer }, align 32
@analog_axes = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 0, i16 1, i16 7, i16 6], [24 x i8] zeroinitializer }, align 32
@analog_hats = internal constant { [6 x i16], [20 x i8] } { [6 x i16] [i16 16, i16 17, i16 18, i16 19, i16 20, i16 21], [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s/input%d\00", [21 x i8] zeroinitializer }, align 32
@analog_pad_btn = internal global { [10 x i16], [44 x i8] } { [10 x i16] [i16 304, i16 305, i16 306, i16 307, i16 312, i16 313, i16 314, i16 315, i16 316, i16 294], [44 x i8] zeroinitializer }, align 32
@analog_joy_btn = internal global { [10 x i16], [44 x i8] } { [10 x i16] [i16 288, i16 289, i16 291, i16 292, i16 294, i16 295, i16 296, i16 297, i16 298, i16 299], [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Analog %d-axis %d-button\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" %d-hat\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" FCS\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" Saitek\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" CHF\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" gamepad\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" joystick\00", [22 x i8] zeroinitializer }, align 32
@analog_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 632, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016analog.c: %d out of %d reads (%d%%) on %s failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"analog_disconnect\00", [46 x i8] zeroinitializer }, align 32
@analog_disconnect._entry_ptr = internal global ptr @analog_disconnect._entry, section ".printk_index", align 4
@analog_types = internal constant { [11 x %struct.analog_types], [40 x i8] } { [11 x %struct.analog_types] [%struct.analog_types { ptr @.str.17, i32 0 }, %struct.analog_types { ptr @.str.18, i32 255 }, %struct.analog_types { ptr @.str.19, i32 63 }, %struct.analog_types { ptr @.str.20, i32 213909555 }, %struct.analog_types { ptr @.str.21, i32 -1933049805 }, %struct.analog_types { ptr @.str.22, i32 2295 }, %struct.analog_types { ptr @.str.23, i32 767 }, %struct.analog_types { ptr @.str.24, i32 2047 }, %struct.analog_types { ptr @.str.25, i32 536819 }, %struct.analog_types { ptr @.str.26, i32 585971 }, %struct.analog_types zeroinitializer], [40 x i8] zeroinitializer }, align 32
@analog_parse_options._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.4, i32 675, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014analog.c: Bad config for port %d - \22%s\22\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"analog_parse_options\00", [43 x i8] zeroinitializer }, align 32
@analog_parse_options._entry_ptr = internal global ptr @analog_parse_options._entry, section ".printk_index", align 4
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"auto\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"2btn\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"y-joy\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"y-pad\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fcs\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"chf\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fullchf\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gamepad\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gamepad8\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.27 = private unnamed_addr constant [11 x i8] c"analog_drv\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 686, i32 31 }
@___asan_gen_.30 = private unnamed_addr constant [9 x i8] c"js_nargs\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 39, i32 21 }
@___asan_gen_.33 = private unnamed_addr constant [3 x i8] c"js\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 38, i32 14 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 690, i32 17 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 688, i32 11 }
@___asan_gen_.42 = private unnamed_addr constant [15 x i8] c"analog_options\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 40, i32 12 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 468, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [11 x i8] c"analog_chf\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 92, i32 22 }
@___asan_gen_.60 = private unnamed_addr constant [12 x i8] c"analog_axes\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 84, i32 14 }
@___asan_gen_.63 = private unnamed_addr constant [12 x i8] c"analog_hats\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 85, i32 14 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 374, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant [15 x i8] c"analog_pad_btn\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 88, i32 14 }
@___asan_gen_.72 = private unnamed_addr constant [15 x i8] c"analog_joy_btn\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 89, i32 14 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 345, i32 21 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 351, i32 22 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 355, i32 22 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 357, i32 55 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 357, i32 67 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 359, i32 55 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 359, i32 68 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 630, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant [13 x i8] c"analog_types\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 641, i32 28 }
@___asan_gen_.108 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 675, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 642, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 643, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 644, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 645, i32 4 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 646, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 647, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 648, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 649, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 650, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.145 = private constant [35 x i8] c"../drivers/input/joystick/analog.c\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 651, i32 4 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @__UNIQUE_ID_author225, ptr @__UNIQUE_ID_description226, ptr @__UNIQUE_ID_file227, ptr @__UNIQUE_ID_license228, ptr @__UNIQUE_ID_map230, ptr @__UNIQUE_ID_maptype229, ptr @__exitcall_analog_exit, ptr @__initcall__kmod_analog__231_706_analog_init6, ptr @__param_map, ptr @analog_disconnect._entry, ptr @analog_disconnect._entry_ptr, ptr @analog_exit, ptr @analog_init_masks._entry, ptr @analog_init_masks._entry_ptr, ptr @analog_parse_options._entry, ptr @analog_parse_options._entry_ptr, ptr @analog_drv, ptr @js_nargs, ptr @js, ptr @.str, ptr @.str.1, ptr @analog_options, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @analog_chf, ptr @analog_axes, ptr @analog_hats, ptr @.str.5, ptr @analog_pad_btn, ptr @analog_joy_btn, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @analog_types, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @analog_drv to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @js_nargs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @js to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @analog_options to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @analog_init_masks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @analog_chf to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @analog_axes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @analog_hats to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @analog_pad_btn to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @analog_joy_btn to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @analog_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @analog_types to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @analog_parse_options._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @analog_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gameport_unregister_driver(ptr noundef nonnull @analog_drv) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @analog_init() #0 section ".init.text" align 64 {
entry:
  %end.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end.i) #9
  %0 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %end.i, align 4, !annotation !107
  %1 = load i32, ptr @js_nargs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp58.not.i = icmp eq i32 %1, 0
  br i1 %cmp58.not.i, label %entry.for.body34.i.preheader_crit_edge, label %entry.for.cond1.preheader.i_crit_edge

entry.for.cond1.preheader.i_crit_edge:            ; preds = %entry
  br label %for.cond1.preheader.i

entry.for.body34.i.preheader_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body34.i.preheader

for.body34.i.preheader:                           ; preds = %for.cond32.preheader.i.for.body34.i.preheader_crit_edge, %entry.for.body34.i.preheader_crit_edge
  %i.162.i.ph = phi i32 [ 0, %entry.for.body34.i.preheader_crit_edge ], [ %inc30.i, %for.cond32.preheader.i.for.body34.i.preheader_crit_edge ]
  br label %for.body34.i

for.cond1.preheader.i:                            ; preds = %for.inc29.i.for.cond1.preheader.i_crit_edge, %entry.for.cond1.preheader.i_crit_edge
  %i.059.i = phi i32 [ %inc30.i, %for.inc29.i.for.cond1.preheader.i_crit_edge ], [ 0, %entry.for.cond1.preheader.i_crit_edge ]
  %arrayidx5.i = getelementptr [16 x ptr], ptr @js, i32 0, i32 %i.059.i
  %2 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx5.i, align 4
  %call.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.17, ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %for.cond1.preheader.i.for.end.i_crit_edge, label %for.inc.i

for.cond1.preheader.i.for.end.i_crit_edge:        ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.cond32.preheader.i:                           ; preds = %for.inc29.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %inc30.i)
  %cmp3361.i = icmp slt i32 %inc30.i, 16
  br i1 %cmp3361.i, label %for.cond32.preheader.i.for.body34.i.preheader_crit_edge, label %for.cond32.preheader.i.analog_parse_options.exit_crit_edge

for.cond32.preheader.i.analog_parse_options.exit_crit_edge: ; preds = %for.cond32.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %analog_parse_options.exit

for.cond32.preheader.i.for.body34.i.preheader_crit_edge: ; preds = %for.cond32.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body34.i.preheader

for.inc.i:                                        ; preds = %for.cond1.preheader.i
  %call.1.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.18, ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool6.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool6.not.1.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.1.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %call.2.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.19, ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool6.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool6.not.2.i, label %for.inc.1.i.for.end.i_crit_edge, label %for.inc.2.i

for.inc.1.i.for.end.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %call.3.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.20, ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %tobool6.not.3.i = icmp eq i32 %call.3.i, 0
  br i1 %tobool6.not.3.i, label %for.inc.2.i.for.end.i_crit_edge, label %for.inc.3.i

for.inc.2.i.for.end.i_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %call.4.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.21, ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4.i)
  %tobool6.not.4.i = icmp eq i32 %call.4.i, 0
  br i1 %tobool6.not.4.i, label %for.inc.3.i.for.end.i_crit_edge, label %for.inc.4.i

for.inc.3.i.for.end.i_crit_edge:                  ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %call.5.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.22, ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5.i)
  %tobool6.not.5.i = icmp eq i32 %call.5.i, 0
  br i1 %tobool6.not.5.i, label %for.inc.4.i.for.end.i_crit_edge, label %for.inc.5.i

for.inc.4.i.for.end.i_crit_edge:                  ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %call.6.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.23, ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6.i)
  %tobool6.not.6.i = icmp eq i32 %call.6.i, 0
  br i1 %tobool6.not.6.i, label %for.inc.5.i.for.end.i_crit_edge, label %for.inc.6.i

for.inc.5.i.for.end.i_crit_edge:                  ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %call.7.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.24, ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7.i)
  %tobool6.not.7.i = icmp eq i32 %call.7.i, 0
  br i1 %tobool6.not.7.i, label %for.inc.6.i.for.end.i_crit_edge, label %for.inc.7.i

for.inc.6.i.for.end.i_crit_edge:                  ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.inc.7.i:                                      ; preds = %for.inc.6.i
  %call.8.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.25, ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.8.i)
  %tobool6.not.8.i = icmp eq i32 %call.8.i, 0
  br i1 %tobool6.not.8.i, label %for.inc.7.i.for.end.i_crit_edge, label %for.inc.8.i

for.inc.7.i.for.end.i_crit_edge:                  ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.inc.8.i:                                      ; preds = %for.inc.7.i
  %call.9.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(9) @.str.26, ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.9.i)
  %tobool6.not.9.i = icmp eq i32 %call.9.i, 0
  br i1 %tobool6.not.9.i, label %for.inc.8.i.for.end.i_crit_edge, label %for.inc.9.i

for.inc.8.i.for.end.i_crit_edge:                  ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.inc.9.i:                                      ; preds = %for.inc.8.i
  %call15.i = call i32 @simple_strtoul(ptr noundef %3, ptr noundef nonnull %end.i, i32 noundef 0) #9
  %arrayidx16.i = getelementptr [16 x i32], ptr @analog_options, i32 0, i32 %i.059.i
  %4 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call15.i, ptr %arrayidx16.i, align 4
  %5 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %end.i, align 4
  %7 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx5.i, align 4
  %cmp18.not.i = icmp eq ptr %6, %8
  br i1 %cmp18.not.i, label %if.end20.i, label %for.inc.9.i.for.inc29.i_crit_edge

for.inc.9.i.for.inc29.i_crit_edge:                ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc29.i

for.end.i:                                        ; preds = %for.inc.8.i.for.end.i_crit_edge, %for.inc.7.i.for.end.i_crit_edge, %for.inc.6.i.for.end.i_crit_edge, %for.inc.5.i.for.end.i_crit_edge, %for.inc.4.i.for.end.i_crit_edge, %for.inc.3.i.for.end.i_crit_edge, %for.inc.2.i.for.end.i_crit_edge, %for.inc.1.i.for.end.i_crit_edge, %for.inc.i.for.end.i_crit_edge, %for.cond1.preheader.i.for.end.i_crit_edge
  %j.057.lcssa.i = phi i32 [ 0, %for.cond1.preheader.i.for.end.i_crit_edge ], [ 1, %for.inc.i.for.end.i_crit_edge ], [ 2, %for.inc.1.i.for.end.i_crit_edge ], [ 3, %for.inc.2.i.for.end.i_crit_edge ], [ 4, %for.inc.3.i.for.end.i_crit_edge ], [ 5, %for.inc.4.i.for.end.i_crit_edge ], [ 6, %for.inc.5.i.for.end.i_crit_edge ], [ 7, %for.inc.6.i.for.end.i_crit_edge ], [ 8, %for.inc.7.i.for.end.i_crit_edge ], [ 9, %for.inc.8.i.for.end.i_crit_edge ]
  %value.i = getelementptr [11 x %struct.analog_types], ptr @analog_types, i32 0, i32 %j.057.lcssa.i, i32 1
  %9 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value.i, align 4
  %arrayidx8.i = getelementptr [16 x i32], ptr @analog_options, i32 0, i32 %i.059.i
  %11 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx8.i, align 4
  br label %for.inc29.i

if.end20.i:                                       ; preds = %for.inc.9.i
  %12 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 255, ptr %arrayidx16.i, align 4
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %13)
  %char0.i = load i8, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0.i)
  %tobool24.not.i = icmp eq i8 %char0.i, 0
  br i1 %tobool24.not.i, label %if.end20.i.for.inc29.i_crit_edge, label %do.end.i

if.end20.i.for.inc29.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc29.i

do.end.i:                                         ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  %call28.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %i.059.i, ptr noundef %6) #13
  br label %for.inc29.i

for.inc29.i:                                      ; preds = %do.end.i, %if.end20.i.for.inc29.i_crit_edge, %for.end.i, %for.inc.9.i.for.inc29.i_crit_edge
  %inc30.i = add nuw i32 %i.059.i, 1
  %14 = load i32, ptr @js_nargs, align 4
  %cmp.i = icmp ult i32 %inc30.i, %14
  br i1 %cmp.i, label %for.inc29.i.for.cond1.preheader.i_crit_edge, label %for.cond32.preheader.i

for.inc29.i.for.cond1.preheader.i_crit_edge:      ; preds = %for.inc29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond1.preheader.i

for.body34.i:                                     ; preds = %for.body34.i.for.body34.i_crit_edge, %for.body34.i.preheader
  %i.162.i = phi i32 [ %inc37.i, %for.body34.i.for.body34.i_crit_edge ], [ %i.162.i.ph, %for.body34.i.preheader ]
  %arrayidx35.i = getelementptr [16 x i32], ptr @analog_options, i32 0, i32 %i.162.i
  %15 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 255, ptr %arrayidx35.i, align 4
  %inc37.i = add i32 %i.162.i, 1
  %exitcond.not.i = icmp eq i32 %inc37.i, 16
  br i1 %exitcond.not.i, label %for.body34.i.analog_parse_options.exit_crit_edge, label %for.body34.i.for.body34.i_crit_edge

for.body34.i.for.body34.i_crit_edge:              ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body34.i

for.body34.i.analog_parse_options.exit_crit_edge: ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %analog_parse_options.exit

analog_parse_options.exit:                        ; preds = %for.body34.i.analog_parse_options.exit_crit_edge, %for.cond32.preheader.i.analog_parse_options.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end.i) #9
  %call = call i32 @__gameport_register_driver(ptr noundef nonnull @analog_drv, ptr noundef null, ptr noundef nonnull @.str.1) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @analog_connect(ptr noundef %gameport, ptr noundef %drv) #2 align 64 {
entry:
  %s.i.i = alloca %struct.seq_buf, align 8
  %max.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 408) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %gameport, ptr %call7.i.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 21, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %driver_data.i.i.i, align 4
  %call.i = tail call i32 @gameport_open(ptr noundef %gameport, ptr noundef %drv, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.if.end43.i_crit_edge

if.end.if.end43.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.i

if.then.i:                                        ; preds = %if.end
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call7.i.i, align 8
  %read.i.i.i = getelementptr inbounds %struct.gameport, ptr %4, i32 0, i32 7
  %io.i.i.i = getelementptr inbounds %struct.gameport, ptr %4, i32 0, i32 3
  br label %do.body2.i.i

do.body2.i.i:                                     ; preds = %do.end47.i.i.do.body2.i.i_crit_edge, %if.then.i
  %i.084.i.i = phi i32 [ 0, %if.then.i ], [ %inc65.i.i, %do.end47.i.i.do.body2.i.i_crit_edge ]
  %tx.083.i.i = phi i32 [ -1, %if.then.i ], [ %15, %do.end47.i.i.do.body2.i.i_crit_edge ]
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !108
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body2.i.i.do.end12.i.i_crit_edge

do.body2.i.i.do.end12.i.i_crit_edge:              ; preds = %do.body2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12.i.i

if.then.i.i:                                      ; preds = %do.body2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_off() #9
  br label %do.end12.i.i

do.end12.i.i:                                     ; preds = %if.then.i.i, %do.body2.i.i.do.end12.i.i_crit_edge
  %call13.i.i = tail call i64 @ktime_get() #9
  br label %for.body17.i.i

for.body17.i.i:                                   ; preds = %gameport_read.exit.i.i.for.body17.i.i_crit_edge, %do.end12.i.i
  %t.082.i.i = phi i32 [ 0, %do.end12.i.i ], [ %inc.i.i, %gameport_read.exit.i.i.for.body17.i.i_crit_edge ]
  %6 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.body17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call zeroext i8 %7(ptr noundef %4) #9
  br label %gameport_read.exit.i.i

if.else.i.i.i:                                    ; preds = %for.body17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %io.i.i.i, align 4
  %and.i80.i.i = and i32 %9, 1048575
  %add.i.i.i = or i32 %and.i80.i.i, -18874368
  %10 = inttoptr i32 %add.i.i.i to ptr
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #9, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  br label %gameport_read.exit.i.i

gameport_read.exit.i.i:                           ; preds = %if.else.i.i.i, %if.then.i.i.i
  %call19.i.i = tail call i64 @ktime_get() #9
  %inc.i.i = add nuw nsw i32 %t.082.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 50
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %gameport_read.exit.i.i.for.body17.i.i_crit_edge

gameport_read.exit.i.i.for.body17.i.i_crit_edge:  ; preds = %gameport_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body17.i.i

for.end.i.i:                                      ; preds = %gameport_read.exit.i.i
  %call20.i.i = tail call i64 @ktime_get() #9
  br i1 %tobool.not.i.i, label %if.then30.i.i, label %for.end.i.i.do.body32.i.i_crit_edge

for.end.i.i.do.body32.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body32.i.i

if.then30.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_on() #9
  br label %do.body32.i.i

do.body32.i.i:                                    ; preds = %if.then30.i.i, %for.end.i.i.do.body32.i.i_crit_edge
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !111
  %and.i.i.i.i = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool40.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool40.not.i.i, label %if.then44.i.i, label %do.body32.i.i.do.end47.i.i_crit_edge, !prof !112

do.body32.i.i.do.end47.i.i_crit_edge:             ; preds = %do.body32.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end47.i.i

if.then44.i.i:                                    ; preds = %do.body32.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end47.i.i

do.end47.i.i:                                     ; preds = %if.then44.i.i, %do.body32.i.i.do.end47.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %5) #9, !srcloc !113
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %13(i32 noundef %i.084.i.i) #9
  %factor.i.i = shl i64 %call19.i.i, 1
  %14 = add i64 %call13.i.i, %call20.i.i
  %sub58.i.i = sub i64 %factor.i.i, %14
  %conv59.i.i = trunc i64 %sub58.i.i to i32
  %15 = tail call i32 @llvm.umin.i32(i32 %tx.083.i.i, i32 %conv59.i.i) #9
  %inc65.i.i = add nuw nsw i32 %i.084.i.i, 1
  %exitcond86.not.i.i = icmp eq i32 %inc65.i.i, 50
  br i1 %exitcond86.not.i.i, label %analog_calibrate_timer.exit.i, label %do.end47.i.i.do.body2.i.i_crit_edge

do.end47.i.i.do.body2.i.i_crit_edge:              ; preds = %do.end47.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2.i.i

analog_calibrate_timer.exit.i:                    ; preds = %do.end47.i.i
  %div.i.i = udiv i32 %15, 50
  %loop.i.i = getelementptr inbounds %struct.analog_port, ptr %call7.i.i, i32 0, i32 7
  %16 = ptrtoint ptr %loop.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %div.i.i, ptr %loop.i.i, align 8
  %trigger.i.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 6
  %17 = ptrtoint ptr %trigger.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %trigger.i.i, align 8
  %tobool.not.i132.i = icmp eq ptr %18, null
  br i1 %tobool.not.i132.i, label %do.body.i.i, label %if.then.i133.i

if.then.i133.i:                                   ; preds = %analog_calibrate_timer.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %18(ptr noundef %gameport) #9
  br label %gameport_trigger.exit.i

do.body.i.i:                                      ; preds = %analog_calibrate_timer.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !114
  tail call void @arm_heavy_mb() #9
  %io.i.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 3
  %19 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %io.i.i, align 4
  %and.i.i = and i32 %20, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %21 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 -1) #9, !srcloc !115
  br label %gameport_trigger.exit.i

gameport_trigger.exit.i:                          ; preds = %do.body.i.i, %if.then.i133.i
  %read.i.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 7
  %22 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read.i.i, align 4
  %tobool.not.i134.i = icmp eq ptr %23, null
  br i1 %tobool.not.i134.i, label %if.else.i.i, label %if.then.i135.i

if.then.i135.i:                                   ; preds = %gameport_trigger.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call zeroext i8 %23(ptr noundef %gameport) #9
  br label %gameport_read.exit.i

if.else.i.i:                                      ; preds = %gameport_trigger.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %io.i136.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 3
  %24 = ptrtoint ptr %io.i136.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %io.i136.i, align 4
  %and.i137.i = and i32 %25, 1048575
  %add.i138.i = or i32 %and.i137.i, -18874368
  %26 = inttoptr i32 %add.i138.i to ptr
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %26) #9, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  br label %gameport_read.exit.i

gameport_read.exit.i:                             ; preds = %if.else.i.i, %if.then.i135.i
  %retval.0.i.i = phi i8 [ %call.i.i, %if.then.i135.i ], [ %27, %if.else.i.i ]
  tail call void @msleep(i32 noundef 3) #9
  %28 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read.i.i, align 4
  %tobool.not.i140.i = icmp eq ptr %29, null
  br i1 %tobool.not.i140.i, label %if.else.i146.i, label %if.then.i142.i

if.then.i142.i:                                   ; preds = %gameport_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i141.i = tail call zeroext i8 %29(ptr noundef %gameport) #9
  br label %gameport_read.exit148.i

if.else.i146.i:                                   ; preds = %gameport_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %io.i143.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 3
  %30 = ptrtoint ptr %io.i143.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %io.i143.i, align 4
  %and.i144.i = and i32 %31, 1048575
  %add.i145.i = or i32 %and.i144.i, -18874368
  %32 = inttoptr i32 %add.i145.i to ptr
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %32) #9, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  br label %gameport_read.exit148.i

gameport_read.exit148.i:                          ; preds = %if.else.i146.i, %if.then.i142.i
  %retval.0.i147.i = phi i8 [ %call.i141.i, %if.then.i142.i ], [ %33, %if.else.i146.i ]
  %34 = xor i8 %retval.0.i147.i, -1
  %and128.i = and i8 %retval.0.i.i, 15
  %35 = and i8 %and128.i, %34
  %mask.i = getelementptr inbounds %struct.analog_port, ptr %call7.i.i, i32 0, i32 2
  %36 = ptrtoint ptr %mask.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %mask.i, align 4
  %37 = ptrtoint ptr %loop.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %loop.i.i, align 8
  %div.i = sdiv i32 36000000, %38
  %div7.i = sdiv i32 %div.i, 1000
  %add.i = add nsw i32 %div7.i, 2
  %fuzz.i = getelementptr inbounds %struct.analog_port, ptr %call7.i.i, i32 0, i32 8
  %39 = ptrtoint ptr %fuzz.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add.i, ptr %fuzz.i, align 4
  %call9.i = tail call fastcc i32 @analog_cooked_read(ptr noundef %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %gameport_read.exit148.i.for.end.i_crit_edge, label %if.end.i

gameport_read.exit148.i.for.end.i_crit_edge:      ; preds = %gameport_read.exit148.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.end.i:                                         ; preds = %gameport_read.exit148.i
  tail call void @msleep(i32 noundef 3) #9
  %call9.1.i = tail call fastcc i32 @analog_cooked_read(ptr noundef %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.1.i)
  %tobool10.not.1.i = icmp eq i32 %call9.1.i, 0
  br i1 %tobool10.not.1.i, label %if.end.i.for.end.i_crit_edge, label %if.end.1.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.end.1.i:                                       ; preds = %if.end.i
  tail call void @msleep(i32 noundef 3) #9
  %call9.2.i = tail call fastcc i32 @analog_cooked_read(ptr noundef %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.2.i)
  %tobool10.not.2.i = icmp eq i32 %call9.2.i, 0
  br i1 %tobool10.not.2.i, label %if.end.1.i.for.end.i_crit_edge, label %if.end.2.i

if.end.1.i.for.end.i_crit_edge:                   ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.end.2.i:                                       ; preds = %if.end.1.i
  tail call void @msleep(i32 noundef 3) #9
  %call9.3.i = tail call fastcc i32 @analog_cooked_read(ptr noundef %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.3.i)
  %tobool10.not.3.i = icmp eq i32 %call9.3.i, 0
  br i1 %tobool10.not.3.i, label %if.end.2.i.for.end.i_crit_edge, label %if.end.3.i

if.end.2.i.for.end.i_crit_edge:                   ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.end.3.i:                                       ; preds = %if.end.2.i
  tail call void @msleep(i32 noundef 3) #9
  %call9.4.i = tail call fastcc i32 @analog_cooked_read(ptr noundef %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.4.i)
  %tobool10.not.4.i = icmp eq i32 %call9.4.i, 0
  br i1 %tobool10.not.4.i, label %if.end.3.i.for.end.i_crit_edge, label %if.end.4.i

if.end.3.i.for.end.i_crit_edge:                   ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.end.4.i:                                       ; preds = %if.end.3.i
  tail call void @msleep(i32 noundef 3) #9
  %call9.5.i = tail call fastcc i32 @analog_cooked_read(ptr noundef %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.5.i)
  %tobool10.not.5.i = icmp eq i32 %call9.5.i, 0
  br i1 %tobool10.not.5.i, label %if.end.4.i.for.end.i_crit_edge, label %if.end.5.i

if.end.4.i.for.end.i_crit_edge:                   ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.end.5.i:                                       ; preds = %if.end.4.i
  tail call void @msleep(i32 noundef 3) #9
  %call9.6.i = tail call fastcc i32 @analog_cooked_read(ptr noundef %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.6.i)
  %tobool10.not.6.i = icmp eq i32 %call9.6.i, 0
  br i1 %tobool10.not.6.i, label %if.end.5.i.for.end.i_crit_edge, label %if.end.6.i

if.end.5.i.for.end.i_crit_edge:                   ; preds = %if.end.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.end.6.i:                                       ; preds = %if.end.5.i
  tail call void @msleep(i32 noundef 3) #9
  %call9.7.i = tail call fastcc i32 @analog_cooked_read(ptr noundef %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.7.i)
  %tobool10.not.7.i = icmp eq i32 %call9.7.i, 0
  br i1 %tobool10.not.7.i, label %if.end.6.i.for.end.i_crit_edge, label %if.end.7.i

if.end.6.i.for.end.i_crit_edge:                   ; preds = %if.end.6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.end.7.i:                                       ; preds = %if.end.6.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @msleep(i32 noundef 3) #9
  br label %for.end.i

for.end.i:                                        ; preds = %if.end.7.i, %if.end.6.i.for.end.i_crit_edge, %if.end.5.i.for.end.i_crit_edge, %if.end.4.i.for.end.i_crit_edge, %if.end.3.i.for.end.i_crit_edge, %if.end.2.i.for.end.i_crit_edge, %if.end.1.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge, %gameport_read.exit148.i.for.end.i_crit_edge
  tail call void @msleep(i32 noundef 3) #9
  %speed.i.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 4
  %40 = ptrtoint ptr %speed.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %speed.i.i, align 8
  %mul.i149.i = mul i32 %41, 3000
  %div.i150.i = sdiv i32 %mul.i149.i, 1000
  %42 = ptrtoint ptr %trigger.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %trigger.i.i, align 8
  %tobool.not.i152.i = icmp eq ptr %43, null
  br i1 %tobool.not.i152.i, label %do.body.i157.i, label %if.then.i153.i

if.then.i153.i:                                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %43(ptr noundef %gameport) #9
  br label %while.cond.i.preheader

do.body.i157.i:                                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !114
  tail call void @arm_heavy_mb() #9
  %io.i154.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 3
  %44 = ptrtoint ptr %io.i154.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %io.i154.i, align 4
  %and.i155.i = and i32 %45, 1048575
  %add.i156.i = or i32 %and.i155.i, -18874368
  %46 = inttoptr i32 %add.i156.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %46, i8 -1) #9, !srcloc !115
  br label %while.cond.i.preheader

while.cond.i.preheader:                           ; preds = %do.body.i157.i, %if.then.i153.i
  br label %while.cond.i

while.cond.i:                                     ; preds = %gameport_read.exit168.i.while.cond.i_crit_edge, %while.cond.i.preheader
  %u.0.i = phi i32 [ %inc22.i, %gameport_read.exit168.i.while.cond.i_crit_edge ], [ 0, %while.cond.i.preheader ]
  %47 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call7.i.i, align 8
  %read.i159.i = getelementptr inbounds %struct.gameport, ptr %48, i32 0, i32 7
  %49 = ptrtoint ptr %read.i159.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %read.i159.i, align 4
  %tobool.not.i160.i = icmp eq ptr %50, null
  br i1 %tobool.not.i160.i, label %if.else.i166.i, label %if.then.i162.i

if.then.i162.i:                                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i161.i = tail call zeroext i8 %50(ptr noundef %48) #9
  br label %gameport_read.exit168.i

if.else.i166.i:                                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  %io.i163.i = getelementptr inbounds %struct.gameport, ptr %48, i32 0, i32 3
  %51 = ptrtoint ptr %io.i163.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %io.i163.i, align 4
  %and.i164.i = and i32 %52, 1048575
  %add.i165.i = or i32 %and.i164.i, -18874368
  %53 = inttoptr i32 %add.i165.i to ptr
  %54 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %53) #9, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  br label %gameport_read.exit168.i

gameport_read.exit168.i:                          ; preds = %if.else.i166.i, %if.then.i162.i
  %retval.0.i167.i = phi i8 [ %call.i161.i, %if.then.i162.i ], [ %54, %if.else.i166.i ]
  %55 = ptrtoint ptr %mask.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %mask.i, align 4
  %and18129.i = and i8 %56, %retval.0.i167.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and18129.i)
  %tobool19.not.i = icmp ne i8 %and18129.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %u.0.i, i32 %div.i150.i)
  %cmp20.i = icmp slt i32 %u.0.i, %div.i150.i
  %or.cond.i = select i1 %tobool19.not.i, i1 %cmp20.i, i1 false
  %inc22.i = add nuw nsw i32 %u.0.i, 1
  br i1 %or.cond.i, label %gameport_read.exit168.i.while.cond.i_crit_edge, label %while.end.i

gameport_read.exit168.i.while.cond.i_crit_edge:   ; preds = %gameport_read.exit168.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

while.end.i:                                      ; preds = %gameport_read.exit168.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 42949600) #9
  %58 = ptrtoint ptr %speed.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %speed.i.i, align 8
  %mul.i170.i = mul i32 %59, 2000
  %div.i171.i = sdiv i32 %mul.i170.i, 1000
  %60 = ptrtoint ptr %trigger.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %trigger.i.i, align 8
  %tobool.not.i173.i = icmp eq ptr %61, null
  br i1 %tobool.not.i173.i, label %do.body.i178.i, label %if.then.i174.i

if.then.i174.i:                                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %61(ptr noundef %gameport) #9
  br label %while.cond24.i.preheader

do.body.i178.i:                                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !114
  tail call void @arm_heavy_mb() #9
  %io.i175.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 3
  %62 = ptrtoint ptr %io.i175.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %io.i175.i, align 4
  %and.i176.i = and i32 %63, 1048575
  %add.i177.i = or i32 %and.i176.i, -18874368
  %64 = inttoptr i32 %add.i177.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %64, i8 -1) #9, !srcloc !115
  br label %while.cond24.i.preheader

while.cond24.i.preheader:                         ; preds = %do.body.i178.i, %if.then.i174.i
  br label %while.cond24.i

while.cond24.i:                                   ; preds = %gameport_read.exit189.i.while.cond24.i_crit_edge, %while.cond24.i.preheader
  %v.0.i = phi i32 [ %inc37.i, %gameport_read.exit189.i.while.cond24.i_crit_edge ], [ 0, %while.cond24.i.preheader ]
  %65 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %call7.i.i, align 8
  %read.i180.i = getelementptr inbounds %struct.gameport, ptr %66, i32 0, i32 7
  %67 = ptrtoint ptr %read.i180.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %read.i180.i, align 4
  %tobool.not.i181.i = icmp eq ptr %68, null
  br i1 %tobool.not.i181.i, label %if.else.i187.i, label %if.then.i183.i

if.then.i183.i:                                   ; preds = %while.cond24.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i182.i = tail call zeroext i8 %68(ptr noundef %66) #9
  br label %gameport_read.exit189.i

if.else.i187.i:                                   ; preds = %while.cond24.i
  call void @__sanitizer_cov_trace_pc() #11
  %io.i184.i = getelementptr inbounds %struct.gameport, ptr %66, i32 0, i32 3
  %69 = ptrtoint ptr %io.i184.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %io.i184.i, align 4
  %and.i185.i = and i32 %70, 1048575
  %add.i186.i = or i32 %and.i185.i, -18874368
  %71 = inttoptr i32 %add.i186.i to ptr
  %72 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %71) #9, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  br label %gameport_read.exit189.i

gameport_read.exit189.i:                          ; preds = %if.else.i187.i, %if.then.i183.i
  %retval.0.i188.i = phi i8 [ %call.i182.i, %if.then.i183.i ], [ %72, %if.else.i187.i ]
  %73 = ptrtoint ptr %mask.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %mask.i, align 4
  %and30130.i = and i8 %74, %retval.0.i188.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and30130.i)
  %tobool31.not.i = icmp ne i8 %and30130.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %v.0.i, i32 %div.i171.i)
  %cmp33.i = icmp slt i32 %v.0.i, %div.i171.i
  %or.cond131.i = select i1 %tobool31.not.i, i1 %cmp33.i, i1 false
  %inc37.i = add nuw nsw i32 %v.0.i, 1
  br i1 %or.cond131.i, label %gameport_read.exit189.i.while.cond24.i_crit_edge, label %while.end38.i

gameport_read.exit189.i.while.cond24.i_crit_edge: ; preds = %gameport_read.exit189.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond24.i

while.end38.i:                                    ; preds = %gameport_read.exit189.i
  %75 = lshr i32 %u.0.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %v.0.i, i32 %75)
  %cmp39.i = icmp ult i32 %v.0.i, %75
  br i1 %cmp39.i, label %if.then41.i, label %if.end42.i

if.then41.i:                                      ; preds = %while.end38.i
  call void @__sanitizer_cov_trace_pc() #11
  %76 = load i32, ptr @analog_options, align 4
  %or.i = or i32 %76, 197376
  store i32 %or.i, ptr @analog_options, align 4
  br label %if.end4

if.end42.i:                                       ; preds = %while.end38.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gameport_close(ptr noundef %gameport) #9
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.end42.i, %if.end.if.end43.i_crit_edge
  %call44.i = tail call i32 @gameport_open(ptr noundef %gameport, ptr noundef %drv, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %for.cond47.preheader.i, label %analog_init_port.exit

for.cond47.preheader.i:                           ; preds = %if.end43.i
  %buttons.i = getelementptr inbounds %struct.analog_port, ptr %call7.i.i, i32 0, i32 10
  %axes.i = getelementptr %struct.analog_port, ptr %call7.i.i, i32 0, i32 9
  %cooked_read.i.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 8
  br label %for.body50.i

for.body50.i:                                     ; preds = %for.body50.backedge.i, %for.cond47.preheader.i
  %i.1197.i = phi i32 [ 0, %for.cond47.preheader.i ], [ %i.1197.be.i, %for.body50.backedge.i ]
  %77 = ptrtoint ptr %cooked_read.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cooked_read.i.i, align 8
  %tobool.not.i190.i = icmp eq ptr %78, null
  br i1 %tobool.not.i190.i, label %for.inc55.i, label %gameport_cooked_read.exit.i

gameport_cooked_read.exit.i:                      ; preds = %for.body50.i
  %call.i191.i = tail call i32 %78(ptr noundef %gameport, ptr noundef %axes.i, ptr noundef %buttons.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i191.i)
  %tobool52.not.i = icmp ne i32 %call.i191.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.1197.i)
  %cmp48.i = icmp ult i32 %i.1197.i, 7
  %or.cond200.i = select i1 %tobool52.not.i, i1 %cmp48.i, i1 false
  br i1 %or.cond200.i, label %gameport_cooked_read.exit.i.for.body50.backedge.i_crit_edge, label %gameport_cooked_read.exit.i.for.end57.i_crit_edge

gameport_cooked_read.exit.i.for.end57.i_crit_edge: ; preds = %gameport_cooked_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end57.i

gameport_cooked_read.exit.i.for.body50.backedge.i_crit_edge: ; preds = %gameport_cooked_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body50.backedge.i

for.inc55.i:                                      ; preds = %for.body50.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.1197.i)
  %cmp48.old.i = icmp ult i32 %i.1197.i, 7
  br i1 %cmp48.old.i, label %for.inc55.i.for.body50.backedge.i_crit_edge, label %for.inc55.i.for.end57.i_crit_edge

for.inc55.i.for.end57.i_crit_edge:                ; preds = %for.inc55.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end57.i

for.inc55.i.for.body50.backedge.i_crit_edge:      ; preds = %for.inc55.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body50.backedge.i

for.body50.backedge.i:                            ; preds = %for.inc55.i.for.body50.backedge.i_crit_edge, %gameport_cooked_read.exit.i.for.body50.backedge.i_crit_edge
  %i.1197.be.i = add nuw nsw i32 %i.1197.i, 1
  br label %for.body50.i

for.end57.i:                                      ; preds = %for.inc55.i.for.end57.i_crit_edge, %gameport_cooked_read.exit.i.for.end57.i_crit_edge
  %mask66.i = getelementptr inbounds %struct.analog_port, ptr %call7.i.i, i32 0, i32 2
  %79 = ptrtoint ptr %axes.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %axes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %80)
  %cmp63.not.i = icmp eq i32 %80, -1
  br i1 %cmp63.not.i, label %for.end57.i.for.inc71.i_crit_edge, label %if.then65.i

for.end57.i.for.inc71.i_crit_edge:                ; preds = %for.end57.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc71.i

if.then65.i:                                      ; preds = %for.end57.i
  call void @__sanitizer_cov_trace_pc() #11
  %81 = ptrtoint ptr %mask66.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %mask66.i, align 4
  %conv69.i = or i8 %82, 1
  store i8 %conv69.i, ptr %mask66.i, align 4
  br label %for.inc71.i

for.inc71.i:                                      ; preds = %if.then65.i, %for.end57.i.for.inc71.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.analog_port, ptr %call7.i.i, i32 0, i32 9, i32 1
  %83 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %84)
  %cmp63.not.1.i = icmp eq i32 %84, -1
  br i1 %cmp63.not.1.i, label %for.inc71.i.for.inc71.1.i_crit_edge, label %if.then65.1.i

for.inc71.i.for.inc71.1.i_crit_edge:              ; preds = %for.inc71.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc71.1.i

if.then65.1.i:                                    ; preds = %for.inc71.i
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %mask66.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %mask66.i, align 4
  %conv69.1.i = or i8 %86, 2
  store i8 %conv69.1.i, ptr %mask66.i, align 4
  br label %for.inc71.1.i

for.inc71.1.i:                                    ; preds = %if.then65.1.i, %for.inc71.i.for.inc71.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.analog_port, ptr %call7.i.i, i32 0, i32 9, i32 2
  %87 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx.2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %88)
  %cmp63.not.2.i = icmp eq i32 %88, -1
  br i1 %cmp63.not.2.i, label %for.inc71.1.i.for.inc71.2.i_crit_edge, label %if.then65.2.i

for.inc71.1.i.for.inc71.2.i_crit_edge:            ; preds = %for.inc71.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc71.2.i

if.then65.2.i:                                    ; preds = %for.inc71.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %89 = ptrtoint ptr %mask66.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %mask66.i, align 4
  %conv69.2.i = or i8 %90, 4
  store i8 %conv69.2.i, ptr %mask66.i, align 4
  br label %for.inc71.2.i

for.inc71.2.i:                                    ; preds = %if.then65.2.i, %for.inc71.1.i.for.inc71.2.i_crit_edge
  %arrayidx.3.i = getelementptr %struct.analog_port, ptr %call7.i.i, i32 0, i32 9, i32 3
  %91 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %92)
  %cmp63.not.3.i = icmp eq i32 %92, -1
  br i1 %cmp63.not.3.i, label %for.inc71.2.i.for.inc71.3.i_crit_edge, label %if.then65.3.i

for.inc71.2.i.for.inc71.3.i_crit_edge:            ; preds = %for.inc71.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc71.3.i

if.then65.3.i:                                    ; preds = %for.inc71.2.i
  call void @__sanitizer_cov_trace_pc() #11
  %93 = ptrtoint ptr %mask66.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %mask66.i, align 4
  %conv69.3.i = or i8 %94, 8
  store i8 %conv69.3.i, ptr %mask66.i, align 4
  br label %for.inc71.3.i

for.inc71.3.i:                                    ; preds = %if.then65.3.i, %for.inc71.2.i.for.inc71.3.i_crit_edge
  %fuzz74.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 5
  %95 = ptrtoint ptr %fuzz74.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %fuzz74.i, align 4
  %fuzz75.i = getelementptr inbounds %struct.analog_port, ptr %call7.i.i, i32 0, i32 8
  %97 = ptrtoint ptr %fuzz75.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %fuzz75.i, align 4
  %cooked.i = getelementptr inbounds %struct.analog_port, ptr %call7.i.i, i32 0, i32 4
  %98 = ptrtoint ptr %cooked.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 1, ptr %cooked.i, align 2
  br label %if.end4

analog_init_port.exit:                            ; preds = %if.end43.i
  %call77.i = tail call i32 @gameport_open(ptr noundef %gameport, ptr noundef %drv, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.i)
  %tobool2.not = icmp eq i32 %call77.i, 0
  br i1 %tobool2.not, label %analog_init_port.exit.if.end4_crit_edge, label %analog_init_port.exit.fail1_crit_edge

analog_init_port.exit.fail1_crit_edge:            ; preds = %analog_init_port.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail1

analog_init_port.exit.if.end4_crit_edge:          ; preds = %analog_init_port.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.end4:                                          ; preds = %analog_init_port.exit.if.end4_crit_edge, %for.inc71.3.i, %if.then41.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %max.i) #9
  %99 = getelementptr inbounds [4 x i32], ptr %max.i, i32 0, i32 1
  %100 = getelementptr inbounds [4 x i32], ptr %max.i, i32 0, i32 2
  %101 = getelementptr inbounds [4 x i32], ptr %max.i, i32 0, i32 3
  %mask.i49 = getelementptr inbounds %struct.analog_port, ptr %call7.i.i, i32 0, i32 2
  %102 = ptrtoint ptr %mask.i49 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %mask.i49, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool.not.i50 = icmp eq i8 %103, 0
  br i1 %tobool.not.i50, label %if.end4.analog_init_masks.exit.thread_crit_edge, label %if.end.i52

if.end4.analog_init_masks.exit.thread_crit_edge:  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %analog_init_masks.exit.thread

if.end.i52:                                       ; preds = %if.end4
  %conv.i = zext i8 %103 to i32
  %and.i = and i32 %conv.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %103)
  %cmp6.not.i = icmp eq i8 %103, 12
  %or.cond.i51 = select i1 %cmp.not.i, i1 true, i1 %cmp6.not.i
  br i1 %or.cond.i51, label %if.end12.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #11
  %104 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %call7.i.i, align 8
  %phys.i = getelementptr inbounds %struct.gameport, ptr %105, i32 0, i32 2
  %call.i53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %conv.i, ptr noundef %phys.i) #13
  br label %analog_init_masks.exit.thread

if.end12.i:                                       ; preds = %if.end.i52
  %106 = load i32, ptr @analog_options, align 4
  %mask14.i = getelementptr inbounds %struct.analog_port, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %and19.i = and i32 %shl.i, 2048
  %shl23.i = shl nuw nsw i32 %conv.i, 10
  %and24.i = and i32 %shl23.i, 12288
  %shl28.i = shl nuw nsw i32 %conv.i, 12
  %and29.i = and i32 %shl28.i, 49152
  %or.i54 = or i32 %and19.i, %conv.i
  %or20.i = or i32 %or.i54, %and24.i
  %or25.i = or i32 %or20.i, %and29.i
  %or30.i = or i32 %or25.i, 985072
  %and33.i = and i32 %106, %or30.i
  %and36.i = lshr i32 %106, 6
  %107 = xor i32 %and36.i, -1
  %or38.i = or i32 %107, -1025
  %and41.i = and i32 %or38.i, %and33.i
  %neg.i = and i32 %and33.i, 2048
  %and44.i = xor i32 %neg.i, 2048
  %108 = lshr exact i32 %and44.i, 8
  %shl50.i = shl nuw nsw i32 %and44.i, 2
  %or45.i = or i32 %108, %shl50.i
  %shl56.i = shl nuw nsw i32 %and44.i, 4
  %or51.i = or i32 %or45.i, %shl56.i
  %or57.i = or i32 %or51.i, -40969
  %and60.i = and i32 %and41.i, %or57.i
  %neg63.i = xor i32 %and60.i, -1
  %and64.i = lshr i32 %neg63.i, 10
  %and69.i = lshr i32 %neg63.i, 12
  %and71.i = and i32 %and64.i, %and69.i
  %or72.i = or i32 %and71.i, -13
  %and75.i = and i32 %or72.i, %and60.i
  %109 = ptrtoint ptr %mask14.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %and75.i, ptr %mask14.i, align 8
  %110 = lshr i32 %106, 20
  %and77.i = and i32 %110, 255
  %111 = lshr i32 %106, 12
  %and79.i = and i32 %111, 983040
  %or80.i = or i32 %and77.i, %and79.i
  %mask82.i = getelementptr %struct.analog_port, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 1
  %and85.i = and i32 %and60.i, 524032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85.i)
  %tobool86.not.i = icmp eq i32 %and85.i, 0
  br i1 %tobool86.not.i, label %cond.false.i, label %if.end12.i.cond.end.i_crit_edge

if.end12.i.cond.end.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  %112 = or i8 %103, -16
  %or89.i = zext i8 %112 to i32
  %neg92.i = xor i32 %and75.i, -1
  %and93.i = and i32 %neg92.i, %or89.i
  %or94.i = or i32 %and93.i, 524288
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end12.i.cond.end.i_crit_edge
  %cond95.i = phi i32 [ %or94.i, %cond.false.i ], [ 524288, %if.end12.i.cond.end.i_crit_edge ]
  %and98.i = and i32 %cond95.i, %or80.i
  %113 = ptrtoint ptr %mask82.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %and98.i, ptr %mask82.i, align 4
  %cooked.i55 = getelementptr inbounds %struct.analog_port, ptr %call7.i.i, i32 0, i32 4
  %114 = ptrtoint ptr %cooked.i55 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %cooked.i55, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool99.not.i = icmp eq i8 %115, 0
  br i1 %tobool99.not.i, label %cond.end.i.if.end168.i_crit_edge, label %for.body.preheader.i

cond.end.i.if.end168.i_crit_edge:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end168.i

for.body.preheader.i:                             ; preds = %cond.end.i
  %arrayidx103.i = getelementptr %struct.analog_port, ptr %call7.i.i, i32 0, i32 9, i32 0
  %116 = ptrtoint ptr %arrayidx103.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx103.i, align 8
  %shl104.i = shl i32 %117, 1
  %118 = ptrtoint ptr %max.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %shl104.i, ptr %max.i, align 4
  %arrayidx103.1.i = getelementptr %struct.analog_port, ptr %call7.i.i, i32 0, i32 9, i32 1
  %119 = ptrtoint ptr %arrayidx103.1.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx103.1.i, align 4
  %shl104.1.i = shl i32 %120, 1
  %121 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %shl104.1.i, ptr %99, align 4
  %arrayidx103.2.i = getelementptr %struct.analog_port, ptr %call7.i.i, i32 0, i32 9, i32 2
  %122 = ptrtoint ptr %arrayidx103.2.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx103.2.i, align 8
  %shl104.2.i = shl i32 %123, 1
  %124 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %shl104.2.i, ptr %100, align 4
  %arrayidx103.3.i = getelementptr %struct.analog_port, ptr %call7.i.i, i32 0, i32 9, i32 3
  %125 = ptrtoint ptr %arrayidx103.3.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx103.3.i, align 4
  %shl104.3.i = shl i32 %126, 1
  %127 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %shl104.3.i, ptr %101, align 4
  %and108.i = and i32 %and75.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and108.i)
  %cmp109.i = icmp eq i32 %and108.i, 7
  br i1 %cmp109.i, label %if.then111.i, label %for.body.preheader.i.if.end116.i_crit_edge

for.body.preheader.i.if.end116.i_crit_edge:       ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end116.i

if.then111.i:                                     ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.i56 = add i32 %shl104.1.i, %shl104.i
  %shr114.i = ashr exact i32 %add.i56, 1
  %128 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %shr114.i, ptr %100, align 4
  br label %if.end116.i

if.end116.i:                                      ; preds = %if.then111.i, %for.body.preheader.i.if.end116.i_crit_edge
  %and119.i = and i32 %and75.i, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %and119.i)
  %cmp120.i = icmp eq i32 %and119.i, 11
  br i1 %cmp120.i, label %if.then122.i, label %if.end116.i.if.end128.i_crit_edge

if.end116.i.if.end128.i_crit_edge:                ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end128.i

if.then122.i:                                     ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #11
  %add125.i = add i32 %shl104.1.i, %shl104.i
  %shr126.i = ashr exact i32 %add125.i, 1
  %129 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %shr126.i, ptr %101, align 4
  br label %if.end128.i

if.end128.i:                                      ; preds = %if.then122.i, %if.end116.i.if.end128.i_crit_edge
  %130 = and i32 %and33.i, 20480
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %130)
  %131 = icmp eq i32 %130, 4096
  br i1 %131, label %if.then138.i, label %if.end128.i.if.end141.i_crit_edge

if.end128.i.if.end141.i_crit_edge:                ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end141.i

if.then138.i:                                     ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #11
  %132 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %100, align 4
  %shr140.i = ashr i32 %133, 1
  store i32 %shr140.i, ptr %100, align 4
  br label %if.end141.i

if.end141.i:                                      ; preds = %if.then138.i, %if.end128.i.if.end141.i_crit_edge
  %134 = and i32 %and60.i, 40960
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %134)
  %135 = icmp eq i32 %134, 8192
  br i1 %135, label %if.then151.i, label %if.end141.i.if.end154.i_crit_edge

if.end141.i.if.end154.i_crit_edge:                ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end154.i

if.then151.i:                                     ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #11
  %136 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %101, align 4
  %shr153.i = ashr i32 %137, 1
  store i32 %shr153.i, ptr %101, align 4
  br label %if.end154.i

if.end154.i:                                      ; preds = %if.then151.i, %if.end141.i.if.end154.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %neg.i)
  %tobool158.not.i = icmp eq i32 %neg.i, 0
  br i1 %tobool158.not.i, label %if.end154.i.if.end162.i_crit_edge, label %if.then159.i

if.end154.i.if.end162.i_crit_edge:                ; preds = %if.end154.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end162.i

if.then159.i:                                     ; preds = %if.end154.i
  call void @__sanitizer_cov_trace_pc() #11
  %138 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %101, align 4
  %shr161.i = ashr i32 %139, 1
  store i32 %shr161.i, ptr %101, align 4
  br label %if.end162.i

if.end162.i:                                      ; preds = %if.then159.i, %if.end154.i.if.end162.i_crit_edge
  %140 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %call7.i.i, align 8
  %calibrate.i.i = getelementptr inbounds %struct.gameport, ptr %141, i32 0, i32 9
  %142 = ptrtoint ptr %calibrate.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %calibrate.i.i, align 4
  %tobool.not.i.i57 = icmp eq ptr %143, null
  br i1 %tobool.not.i.i57, label %if.end162.i.if.end168.i_crit_edge, label %if.then.i.i59

if.end162.i.if.end168.i_crit_edge:                ; preds = %if.end162.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end168.i

if.then.i.i59:                                    ; preds = %if.end162.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i58 = call i32 %143(ptr noundef %141, ptr noundef %arrayidx103.i, ptr noundef nonnull %max.i) #9
  br label %if.end168.i

if.end168.i:                                      ; preds = %if.then.i.i59, %if.end162.i.if.end168.i_crit_edge, %cond.end.i.if.end168.i_crit_edge
  %arrayidx174.i = getelementptr %struct.analog_port, ptr %call7.i.i, i32 0, i32 9, i32 0
  %144 = ptrtoint ptr %arrayidx174.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx174.i, align 8
  %arrayidx175.i = getelementptr %struct.analog_port, ptr %call7.i.i, i32 0, i32 11, i32 0
  %146 = ptrtoint ptr %arrayidx175.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %145, ptr %arrayidx175.i, align 4
  %arrayidx174.1.i = getelementptr %struct.analog_port, ptr %call7.i.i, i32 0, i32 9, i32 1
  %147 = ptrtoint ptr %arrayidx174.1.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx174.1.i, align 4
  %arrayidx175.1.i = getelementptr %struct.analog_port, ptr %call7.i.i, i32 0, i32 11, i32 1
  %149 = ptrtoint ptr %arrayidx175.1.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %148, ptr %arrayidx175.1.i, align 8
  %arrayidx174.2.i = getelementptr %struct.analog_port, ptr %call7.i.i, i32 0, i32 9, i32 2
  %150 = ptrtoint ptr %arrayidx174.2.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx174.2.i, align 8
  %arrayidx175.2.i = getelementptr %struct.analog_port, ptr %call7.i.i, i32 0, i32 11, i32 2
  %152 = ptrtoint ptr %arrayidx175.2.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %151, ptr %arrayidx175.2.i, align 4
  %arrayidx174.3.i = getelementptr %struct.analog_port, ptr %call7.i.i, i32 0, i32 9, i32 3
  %153 = ptrtoint ptr %arrayidx174.3.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx174.3.i, align 4
  %arrayidx175.3.i = getelementptr %struct.analog_port, ptr %call7.i.i, i32 0, i32 11, i32 3
  %155 = ptrtoint ptr %arrayidx175.3.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %arrayidx175.3.i, align 8
  %156 = ptrtoint ptr %mask14.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %mask14.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %tobool181.not.i = icmp eq i32 %157, 0
  br i1 %tobool181.not.i, label %analog_init_masks.exit, label %analog_init_masks.exit.thread86

analog_init_masks.exit.thread86:                  ; preds = %if.end168.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %max.i) #9
  br label %if.end8

analog_init_masks.exit.thread:                    ; preds = %do.end.i, %if.end4.analog_init_masks.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %max.i) #9
  br label %fail2

analog_init_masks.exit:                           ; preds = %if.end168.i
  %158 = ptrtoint ptr %mask82.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %mask82.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %tobool184.i.not = icmp eq i32 %159, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %max.i) #9
  br i1 %tobool184.i.not, label %analog_init_masks.exit.fail2_crit_edge, label %analog_init_masks.exit.if.end8_crit_edge

analog_init_masks.exit.if.end8_crit_edge:         ; preds = %analog_init_masks.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

analog_init_masks.exit.fail2_crit_edge:           ; preds = %analog_init_masks.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail2

if.end8:                                          ; preds = %analog_init_masks.exit.if.end8_crit_edge, %analog_init_masks.exit.thread86
  %poll_handler.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 16
  %160 = ptrtoint ptr %poll_handler.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr @analog_poll, ptr %poll_handler.i, align 4
  %poll_interval.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 13
  %161 = ptrtoint ptr %poll_interval.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 10, ptr %poll_interval.i, align 8
  %analog = getelementptr inbounds %struct.analog_port, ptr %call7.i.i, i32 0, i32 1
  %162 = getelementptr inbounds i8, ptr %s.i.i, i32 8
  %size1.i.i.i = getelementptr inbounds %struct.seq_buf, ptr %s.i.i, i32 0, i32 1
  %readpos.i.i.i.i = getelementptr inbounds %struct.seq_buf, ptr %s.i.i, i32 0, i32 3
  %fuzz.i75 = getelementptr inbounds %struct.analog_port, ptr %call7.i.i, i32 0, i32 8
  %buttons169.i = getelementptr inbounds %struct.analog_port, ptr %call7.i.i, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end8
  %i.097 = phi i32 [ 0, %if.end8 ], [ %inc, %for.inc.for.body_crit_edge ]
  %mask = getelementptr %struct.analog_port, ptr %call7.i.i, i32 0, i32 1, i32 %i.097, i32 1
  %163 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %tobool9.not = icmp eq i32 %164, 0
  br i1 %tobool9.not, label %for.body.for.inc_crit_edge, label %if.then10

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then10:                                        ; preds = %for.body
  %add.ptr = getelementptr %struct.analog, ptr %analog, i32 %i.097
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %s.i.i) #9
  %165 = ptrtoint ptr %162 to i32
  call void @__asan_store8_noabort(i32 %165)
  store i64 4294967295, ptr %162, align 8
  %name.i.i = getelementptr %struct.analog, ptr %analog, i32 %i.097, i32 3
  %166 = ptrtoint ptr %s.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %name.i.i, ptr %s.i.i, align 8
  %167 = ptrtoint ptr %size1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 128, ptr %size1.i.i.i, align 4
  %168 = ptrtoint ptr %readpos.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %168)
  store i64 0, ptr %readpos.i.i.i.i, align 8
  %mask.i.i = getelementptr %struct.analog, ptr %analog, i32 %i.097, i32 1
  %169 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %mask.i.i, align 4
  %and.i.i61 = and i32 %170, 15
  %call.i.i.i63 = call i32 @__sw_hweight8(i32 noundef %and.i.i61) #9
  %171 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %mask.i.i, align 4
  %and77.i.i = and i32 %172, 240
  %call.i623.i.i = call i32 @__sw_hweight8(i32 noundef %and77.i.i) #9
  %173 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %mask.i.i, align 4
  %175 = lshr i32 %174, 7
  %mul.i.i65 = and i32 %175, 2
  %add171.i.i = add i32 %mul.i.i65, %call.i623.i.i
  %and173.i.i = and i32 %174, 61440
  %call.i624.i.i = call i32 @__sw_hweight16(i32 noundef %and173.i.i) #9
  %add347.i.i = add i32 %add171.i.i, %call.i624.i.i
  %176 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %mask.i.i, align 4
  %178 = lshr i32 %177, 14
  %mul355.i.i = and i32 %178, 4
  %add356.i.i = add i32 %add347.i.i, %mul355.i.i
  %call357.i.i = call i32 (ptr, ptr, ...) @seq_buf_printf(ptr noundef nonnull %s.i.i, ptr noundef nonnull @.str.6, i32 noundef %call.i.i.i63, i32 noundef %add356.i.i) #9
  %179 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %mask.i.i, align 4
  %and359.i.i = and i32 %180, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and359.i.i)
  %tobool360.not.i.i = icmp eq i32 %and359.i.i, 0
  br i1 %tobool360.not.i.i, label %if.then10.if.end.i.i_crit_edge, label %cond.false531.i.i

if.then10.if.end.i.i_crit_edge:                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

cond.false531.i.i:                                ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %call.i625.i.i = call i32 @__sw_hweight16(i32 noundef %and359.i.i) #9
  %call537.i.i = call i32 (ptr, ptr, ...) @seq_buf_printf(ptr noundef nonnull %s.i.i, ptr noundef nonnull @.str.7, i32 noundef %call.i625.i.i) #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %cond.false531.i.i, %if.then10.if.end.i.i_crit_edge
  %181 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %mask.i.i, align 4
  %and539.i.i = and i32 %182, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and539.i.i)
  %tobool540.not.i.i = icmp eq i32 %and539.i.i, 0
  br i1 %tobool540.not.i.i, label %if.end.i.i.if.end543.i.i_crit_edge, label %if.then541.i.i

if.end.i.i.if.end543.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end543.i.i

if.then541.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call542.i.i = call i32 (ptr, ptr, ...) @seq_buf_printf(ptr noundef nonnull %s.i.i, ptr noundef nonnull @.str.8) #9
  br label %if.end543.i.i

if.end543.i.i:                                    ; preds = %if.then541.i.i, %if.end.i.i.if.end543.i.i_crit_edge
  %183 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %mask.i.i, align 4
  %and545.i.i = and i32 %184, 67328
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and545.i.i)
  %tobool546.not.i.i = icmp eq i32 %and545.i.i, 0
  br i1 %tobool546.not.i.i, label %if.end543.i.i.analog_name.exit.i_crit_edge, label %if.then547.i.i

if.end543.i.i.analog_name.exit.i_crit_edge:       ; preds = %if.end543.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %analog_name.exit.i

if.then547.i.i:                                   ; preds = %if.end543.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and549.i.i = and i32 %184, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and549.i.i)
  %tobool550.not.i.i = icmp eq i32 %and549.i.i, 0
  %cond551.i.i = select i1 %tobool550.not.i.i, ptr @.str.10, ptr @.str.9
  %call552.i.i = call i32 (ptr, ptr, ...) @seq_buf_printf(ptr noundef nonnull %s.i.i, ptr noundef nonnull %cond551.i.i) #9
  br label %analog_name.exit.i

analog_name.exit.i:                               ; preds = %if.then547.i.i, %if.end543.i.i.analog_name.exit.i_crit_edge
  %185 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %mask.i.i, align 4
  %and555.i.i = and i32 %186, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and555.i.i)
  %tobool556.not.i.i = icmp eq i32 %and555.i.i, 0
  %cond557.i.i = select i1 %tobool556.not.i.i, ptr @.str.12, ptr @.str.11
  %call558.i.i = call i32 (ptr, ptr, ...) @seq_buf_printf(ptr noundef nonnull %s.i.i, ptr noundef nonnull %cond557.i.i) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %s.i.i) #9
  %phys.i67 = getelementptr %struct.analog, ptr %analog, i32 %i.097, i32 4
  %187 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %call7.i.i, align 8
  %phys1.i = getelementptr inbounds %struct.gameport, ptr %188, i32 0, i32 2
  %call.i68 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys.i67, i32 noundef 32, ptr noundef nonnull @.str.5, ptr noundef %phys1.i, i32 noundef %i.097) #9
  %189 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %mask.i.i, align 4
  %and.i69 = and i32 %190, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i69)
  %tobool.not.i70 = icmp eq i32 %and.i69, 0
  %cond.i = select i1 %tobool.not.i70, ptr @analog_joy_btn, ptr @analog_pad_btn
  %buttons.i71 = getelementptr %struct.analog, ptr %analog, i32 %i.097, i32 2
  %191 = ptrtoint ptr %buttons.i71 to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %cond.i, ptr %buttons.i71, align 4
  %call3.i = call ptr @input_allocate_device() #9
  %192 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr %call3.i, ptr %add.ptr, align 4
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %analog_name.exit.i.analog_init_device.exit_crit_edge, label %if.end.i76

analog_name.exit.i.analog_init_device.exit_crit_edge: ; preds = %analog_name.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %analog_init_device.exit

if.end.i76:                                       ; preds = %analog_name.exit.i
  %193 = ptrtoint ptr %call3.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %name.i.i, ptr %call3.i, align 8
  %phys9.i = getelementptr inbounds %struct.input_dev, ptr %call3.i, i32 0, i32 1
  %194 = ptrtoint ptr %phys9.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %phys.i67, ptr %phys9.i, align 4
  %id.i = getelementptr inbounds %struct.input_dev, ptr %call3.i, i32 0, i32 3
  %195 = ptrtoint ptr %id.i to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 20, ptr %id.i, align 4
  %vendor.i = getelementptr inbounds %struct.input_dev, ptr %call3.i, i32 0, i32 3, i32 1
  %196 = ptrtoint ptr %vendor.i to i32
  call void @__asan_store2_noabort(i32 %196)
  store i16 1, ptr %vendor.i, align 2
  %197 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %mask.i.i, align 4
  %199 = lshr i32 %198, 4
  %conv.i72 = trunc i32 %199 to i16
  %product.i = getelementptr inbounds %struct.input_dev, ptr %call3.i, i32 0, i32 3, i32 2
  %200 = ptrtoint ptr %product.i to i32
  call void @__asan_store2_noabort(i32 %200)
  store i16 %conv.i72, ptr %product.i, align 4
  %version.i = getelementptr inbounds %struct.input_dev, ptr %call3.i, i32 0, i32 3, i32 3
  %201 = ptrtoint ptr %version.i to i32
  call void @__asan_store2_noabort(i32 %201)
  store i16 256, ptr %version.i, align 2
  %202 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %call7.i.i, align 8
  %dev15.i = getelementptr inbounds %struct.gameport, ptr %203, i32 0, i32 21
  %parent.i = getelementptr inbounds %struct.input_dev, ptr %call3.i, i32 0, i32 40, i32 1
  %204 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %dev15.i, ptr %parent.i, align 8
  %driver_data.i.i.i73 = getelementptr inbounds %struct.input_dev, ptr %call3.i, i32 0, i32 40, i32 8
  %205 = ptrtoint ptr %driver_data.i.i.i73 to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr %call7.i.i, ptr %driver_data.i.i.i73, align 4
  %open.i = getelementptr inbounds %struct.input_dev, ptr %call3.i, i32 0, i32 31
  %206 = ptrtoint ptr %open.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr @analog_open, ptr %open.i, align 8
  %close.i = getelementptr inbounds %struct.input_dev, ptr %call3.i, i32 0, i32 32
  %207 = ptrtoint ptr %close.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr @analog_close, ptr %close.i, align 4
  %evbit.i = getelementptr inbounds %struct.input_dev, ptr %call3.i, i32 0, i32 5
  %208 = ptrtoint ptr %evbit.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 10, ptr %evbit.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i76
  %j.0281.i = phi i32 [ 0, %if.end.i76 ], [ %j.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.0279.i = phi i32 [ 0, %if.end.i76 ], [ %inc70.i, %for.inc.i.for.body.i_crit_edge ]
  %209 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %mask.i.i, align 4
  %shl.i77 = shl nuw nsw i32 1, %i.0279.i
  %and19.i78 = and i32 %210, %shl.i77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i78)
  %tobool20.not.i = icmp eq i32 %and19.i78, 0
  br i1 %tobool20.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then21.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then21.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx22.i = getelementptr [4 x i16], ptr @analog_axes, i32 0, i32 %j.0281.i
  %211 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %arrayidx22.i, align 2
  %conv23.i = sext i16 %212 to i32
  %arrayidx24.i = getelementptr %struct.analog_port, ptr %call7.i.i, i32 0, i32 9, i32 %i.0279.i
  %213 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %arrayidx24.i, align 4
  %215 = ptrtoint ptr %arrayidx174.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %arrayidx174.i, align 8
  %217 = ptrtoint ptr %arrayidx174.1.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %arrayidx174.1.i, align 4
  %add.i79 = add i32 %218, %216
  %shr29.i = ashr i32 %add.i79, 1
  %sub.i = sub i32 %shr29.i, %214
  %219 = call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #9
  %shr36.i = ashr i32 %214, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0279.i)
  %cmp38.i = icmp eq i32 %i.0279.i, 2
  %220 = and i32 %i.0279.i, 2147483646
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %220)
  %221 = icmp eq i32 %220, 2
  %222 = and i32 %j.0281.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %222)
  %switch.i = icmp eq i32 %222, 2
  %or.cond277.i = select i1 %221, i1 %switch.i, i1 false
  %shr48.i = ashr i32 %add.i79, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %219, i32 %shr48.i)
  %cmp49.i = icmp sgt i32 %219, %shr48.i
  %223 = select i1 %or.cond277.i, i1 %cmp49.i, i1 false
  %x.0.i = select i1 %223, i32 %shr29.i, i32 %214
  %and54.i = and i32 %210, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i)
  %tobool55.not.i = icmp eq i32 %and54.i, 0
  %spec.select278.i = select i1 %cmp38.i, i32 %214, i32 %x.0.i
  %shr63.i = ashr i32 %spec.select278.i, 2
  %sub64.i = sub i32 %spec.select278.i, %shr63.i
  %shr65.i = ashr i32 %spec.select278.i, 4
  %v.0.i80 = select i1 %tobool55.not.i, i32 %shr36.i, i32 %sub64.i
  %w.0.i = select i1 %tobool55.not.i, i32 %shr36.i, i32 %shr65.i
  %x.2.i = select i1 %tobool55.not.i, i32 %x.0.i, i32 %spec.select278.i
  %shl67.i = shl i32 %x.2.i, 1
  %sub68.i = sub i32 %shl67.i, %v.0.i80
  %224 = ptrtoint ptr %fuzz.i75 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %fuzz.i75, align 4
  call void @input_set_abs_params(ptr noundef nonnull %call3.i, i32 noundef %conv23.i, i32 noundef %v.0.i80, i32 noundef %sub68.i, i32 noundef %225, i32 noundef %w.0.i) #9
  %inc.i = add i32 %j.0281.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then21.i, %for.body.i.for.inc.i_crit_edge
  %j.1.i = phi i32 [ %inc.i, %if.then21.i ], [ %j.0281.i, %for.body.i.for.inc.i_crit_edge ]
  %inc70.i = add nuw nsw i32 %i.0279.i, 1
  %exitcond.not.i = icmp eq i32 %inc70.i, 4
  br i1 %exitcond.not.i, label %for.body74.preheader.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body74.preheader.i:                           ; preds = %for.inc.i
  %226 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %mask.i.i, align 4
  %and78.i = and i32 %227, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78.i)
  %tobool79.not.i = icmp eq i32 %and78.i, 0
  br i1 %tobool79.not.i, label %for.body74.preheader.i.for.inc92.i_crit_edge, label %for.body84.preheader.i

for.body74.preheader.i.for.inc92.i_crit_edge:     ; preds = %for.body74.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc92.i

for.body84.preheader.i:                           ; preds = %for.body74.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @input_set_abs_params(ptr noundef nonnull %call3.i, i32 noundef 16, i32 noundef -1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  call void @input_set_abs_params(ptr noundef nonnull %call3.i, i32 noundef 17, i32 noundef -1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  br label %for.inc92.i

for.inc92.i:                                      ; preds = %for.body84.preheader.i, %for.body74.preheader.i.for.inc92.i_crit_edge
  %j.4.i = phi i32 [ 0, %for.body74.preheader.i.for.inc92.i_crit_edge ], [ 2, %for.body84.preheader.i ]
  %228 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %mask.i.i, align 4
  %and78.1.i = and i32 %229, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78.1.i)
  %tobool79.not.1.i = icmp eq i32 %and78.1.i, 0
  br i1 %tobool79.not.1.i, label %for.inc92.i.for.inc92.1.i_crit_edge, label %for.body84.preheader.1.i

for.inc92.i.for.inc92.1.i_crit_edge:              ; preds = %for.inc92.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc92.1.i

for.body84.preheader.1.i:                         ; preds = %for.inc92.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc85.1295.i = or i32 %j.4.i, 1
  %arrayidx86.1296.i = getelementptr [6 x i16], ptr @analog_hats, i32 0, i32 %j.4.i
  %230 = ptrtoint ptr %arrayidx86.1296.i to i32
  call void @__asan_load2_noabort(i32 %230)
  %231 = load i16, ptr %arrayidx86.1296.i, align 2
  %conv87.1297.i = sext i16 %231 to i32
  call void @input_set_abs_params(ptr noundef nonnull %call3.i, i32 noundef %conv87.1297.i, i32 noundef -1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %inc85.1.1.i = add nuw nsw i32 %j.4.i, 2
  %arrayidx86.1.1.i = getelementptr [6 x i16], ptr @analog_hats, i32 0, i32 %inc85.1295.i
  %232 = ptrtoint ptr %arrayidx86.1.1.i to i32
  call void @__asan_load2_noabort(i32 %232)
  %233 = load i16, ptr %arrayidx86.1.1.i, align 2
  %conv87.1.1.i = sext i16 %233 to i32
  call void @input_set_abs_params(ptr noundef nonnull %call3.i, i32 noundef %conv87.1.1.i, i32 noundef -1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  br label %for.inc92.1.i

for.inc92.1.i:                                    ; preds = %for.body84.preheader.1.i, %for.inc92.i.for.inc92.1.i_crit_edge
  %j.4.1.i = phi i32 [ %j.4.i, %for.inc92.i.for.inc92.1.i_crit_edge ], [ %inc85.1.1.i, %for.body84.preheader.1.i ]
  %234 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %mask.i.i, align 4
  %and78.2.i = and i32 %235, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78.2.i)
  %tobool79.not.2.i = icmp eq i32 %and78.2.i, 0
  br i1 %tobool79.not.2.i, label %for.inc92.1.i.for.inc92.2.i_crit_edge, label %for.body84.preheader.2.i

for.inc92.1.i.for.inc92.2.i_crit_edge:            ; preds = %for.inc92.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc92.2.i

for.body84.preheader.2.i:                         ; preds = %for.inc92.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc85.2.i = add nuw nsw i32 %j.4.1.i, 1
  %arrayidx86.2.i = getelementptr [6 x i16], ptr @analog_hats, i32 0, i32 %j.4.1.i
  %236 = ptrtoint ptr %arrayidx86.2.i to i32
  call void @__asan_load2_noabort(i32 %236)
  %237 = load i16, ptr %arrayidx86.2.i, align 2
  %conv87.2.i = sext i16 %237 to i32
  call void @input_set_abs_params(ptr noundef nonnull %call3.i, i32 noundef %conv87.2.i, i32 noundef -1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %arrayidx86.1.2.i = getelementptr [6 x i16], ptr @analog_hats, i32 0, i32 %inc85.2.i
  %238 = ptrtoint ptr %arrayidx86.1.2.i to i32
  call void @__asan_load2_noabort(i32 %238)
  %239 = load i16, ptr %arrayidx86.1.2.i, align 2
  %conv87.1.2.i = sext i16 %239 to i32
  call void @input_set_abs_params(ptr noundef nonnull %call3.i, i32 noundef %conv87.1.2.i, i32 noundef -1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  br label %for.inc92.2.i

for.inc92.2.i:                                    ; preds = %for.body84.preheader.2.i, %for.inc92.1.i.for.inc92.2.i_crit_edge
  %keybit.i = getelementptr inbounds %struct.input_dev, ptr %call3.i, i32 0, i32 6
  %240 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %mask.i.i, align 4
  %and101.i = and i32 %241, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101.i)
  %tobool102.not.i = icmp eq i32 %and101.i, 0
  br i1 %tobool102.not.i, label %for.inc92.2.i.for.inc110.i_crit_edge, label %if.then103.i

for.inc92.2.i.for.inc110.i_crit_edge:             ; preds = %for.inc92.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc110.i

if.then103.i:                                     ; preds = %for.inc92.2.i
  call void @__sanitizer_cov_trace_pc() #11
  %242 = ptrtoint ptr %buttons.i71 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %buttons.i71, align 4
  %244 = ptrtoint ptr %243 to i32
  call void @__asan_load2_noabort(i32 %244)
  %245 = load i16, ptr %243, align 2
  %conv107.i = sext i16 %245 to i32
  call void @_set_bit(i32 noundef %conv107.i, ptr noundef %keybit.i) #9
  br label %for.inc110.i

for.inc110.i:                                     ; preds = %if.then103.i, %for.inc92.2.i.for.inc110.i_crit_edge
  %j.6.i = phi i32 [ 1, %if.then103.i ], [ 0, %for.inc92.2.i.for.inc110.i_crit_edge ]
  %246 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %mask.i.i, align 4
  %and101.1.i = and i32 %247, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101.1.i)
  %tobool102.not.1.i = icmp eq i32 %and101.1.i, 0
  br i1 %tobool102.not.1.i, label %for.inc110.i.for.inc110.1.i_crit_edge, label %if.then103.1.i

for.inc110.i.for.inc110.1.i_crit_edge:            ; preds = %for.inc110.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc110.1.i

if.then103.1.i:                                   ; preds = %for.inc110.i
  call void @__sanitizer_cov_trace_pc() #11
  %248 = ptrtoint ptr %buttons.i71 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %buttons.i71, align 4
  %inc105.1.i = add nuw nsw i32 %j.6.i, 1
  %arrayidx106.1.i = getelementptr i16, ptr %249, i32 %j.6.i
  %250 = ptrtoint ptr %arrayidx106.1.i to i32
  call void @__asan_load2_noabort(i32 %250)
  %251 = load i16, ptr %arrayidx106.1.i, align 2
  %conv107.1.i = sext i16 %251 to i32
  call void @_set_bit(i32 noundef %conv107.1.i, ptr noundef %keybit.i) #9
  br label %for.inc110.1.i

for.inc110.1.i:                                   ; preds = %if.then103.1.i, %for.inc110.i.for.inc110.1.i_crit_edge
  %j.6.1.i = phi i32 [ %inc105.1.i, %if.then103.1.i ], [ %j.6.i, %for.inc110.i.for.inc110.1.i_crit_edge ]
  %252 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %mask.i.i, align 4
  %and101.2.i = and i32 %253, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101.2.i)
  %tobool102.not.2.i = icmp eq i32 %and101.2.i, 0
  br i1 %tobool102.not.2.i, label %for.inc110.1.i.for.inc110.2.i_crit_edge, label %if.then103.2.i

for.inc110.1.i.for.inc110.2.i_crit_edge:          ; preds = %for.inc110.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc110.2.i

if.then103.2.i:                                   ; preds = %for.inc110.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %254 = ptrtoint ptr %buttons.i71 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %buttons.i71, align 4
  %inc105.2.i = add nuw nsw i32 %j.6.1.i, 1
  %arrayidx106.2.i = getelementptr i16, ptr %255, i32 %j.6.1.i
  %256 = ptrtoint ptr %arrayidx106.2.i to i32
  call void @__asan_load2_noabort(i32 %256)
  %257 = load i16, ptr %arrayidx106.2.i, align 2
  %conv107.2.i = sext i16 %257 to i32
  call void @_set_bit(i32 noundef %conv107.2.i, ptr noundef %keybit.i) #9
  br label %for.inc110.2.i

for.inc110.2.i:                                   ; preds = %if.then103.2.i, %for.inc110.1.i.for.inc110.2.i_crit_edge
  %j.6.2.i = phi i32 [ %inc105.2.i, %if.then103.2.i ], [ %j.6.1.i, %for.inc110.1.i.for.inc110.2.i_crit_edge ]
  %258 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %mask.i.i, align 4
  %and101.3.i = and i32 %259, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101.3.i)
  %tobool102.not.3.i = icmp eq i32 %and101.3.i, 0
  br i1 %tobool102.not.3.i, label %for.inc110.2.i.for.inc110.3.i_crit_edge, label %if.then103.3.i

for.inc110.2.i.for.inc110.3.i_crit_edge:          ; preds = %for.inc110.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc110.3.i

if.then103.3.i:                                   ; preds = %for.inc110.2.i
  call void @__sanitizer_cov_trace_pc() #11
  %260 = ptrtoint ptr %buttons.i71 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %buttons.i71, align 4
  %inc105.3.i = add nuw nsw i32 %j.6.2.i, 1
  %arrayidx106.3.i = getelementptr i16, ptr %261, i32 %j.6.2.i
  %262 = ptrtoint ptr %arrayidx106.3.i to i32
  call void @__asan_load2_noabort(i32 %262)
  %263 = load i16, ptr %arrayidx106.3.i, align 2
  %conv107.3.i = sext i16 %263 to i32
  call void @_set_bit(i32 noundef %conv107.3.i, ptr noundef %keybit.i) #9
  br label %for.inc110.3.i

for.inc110.3.i:                                   ; preds = %if.then103.3.i, %for.inc110.2.i.for.inc110.3.i_crit_edge
  %j.6.3.i = phi i32 [ %inc105.3.i, %if.then103.3.i ], [ %j.6.2.i, %for.inc110.2.i.for.inc110.3.i_crit_edge ]
  %264 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %mask.i.i, align 4
  %and114.i = and i32 %265, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114.i)
  %tobool115.not.i = icmp eq i32 %and114.i, 0
  br i1 %tobool115.not.i, label %for.inc110.3.i.if.end130.i_crit_edge, label %for.cond117.preheader.i

for.inc110.3.i.if.end130.i_crit_edge:             ; preds = %for.inc110.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end130.i

for.cond117.preheader.i:                          ; preds = %for.inc110.3.i
  call void @__sanitizer_cov_trace_pc() #11
  %266 = ptrtoint ptr %buttons.i71 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %buttons.i71, align 4
  %inc122.i = add nuw nsw i32 %j.6.3.i, 1
  %arrayidx123.i = getelementptr i16, ptr %267, i32 %j.6.3.i
  %268 = ptrtoint ptr %arrayidx123.i to i32
  call void @__asan_load2_noabort(i32 %268)
  %269 = load i16, ptr %arrayidx123.i, align 2
  %conv124.i = sext i16 %269 to i32
  call void @_set_bit(i32 noundef %conv124.i, ptr noundef %keybit.i) #9
  %270 = ptrtoint ptr %buttons.i71 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %buttons.i71, align 4
  %inc122.1.i = add nuw nsw i32 %j.6.3.i, 2
  %arrayidx123.1.i = getelementptr i16, ptr %271, i32 %inc122.i
  %272 = ptrtoint ptr %arrayidx123.1.i to i32
  call void @__asan_load2_noabort(i32 %272)
  %273 = load i16, ptr %arrayidx123.1.i, align 2
  %conv124.1.i = sext i16 %273 to i32
  call void @_set_bit(i32 noundef %conv124.1.i, ptr noundef %keybit.i) #9
  br label %if.end130.i

if.end130.i:                                      ; preds = %for.cond117.preheader.i, %for.inc110.3.i.if.end130.i_crit_edge
  %j.8.i = phi i32 [ %j.6.3.i, %for.inc110.3.i.if.end130.i_crit_edge ], [ %inc122.1.i, %for.cond117.preheader.i ]
  %274 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %mask.i.i, align 4
  %and132.i = and i32 %275, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132.i)
  %tobool133.not.i = icmp eq i32 %and132.i, 0
  br i1 %tobool133.not.i, label %if.end130.i.if.end148.i_crit_edge, label %for.cond135.preheader.i

if.end130.i.if.end148.i_crit_edge:                ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end148.i

for.cond135.preheader.i:                          ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #11
  %276 = ptrtoint ptr %buttons.i71 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %buttons.i71, align 4
  %inc140.i = add nuw nsw i32 %j.8.i, 1
  %arrayidx141.i = getelementptr i16, ptr %277, i32 %j.8.i
  %278 = ptrtoint ptr %arrayidx141.i to i32
  call void @__asan_load2_noabort(i32 %278)
  %279 = load i16, ptr %arrayidx141.i, align 2
  %conv142.i = sext i16 %279 to i32
  call void @_set_bit(i32 noundef %conv142.i, ptr noundef %keybit.i) #9
  %280 = ptrtoint ptr %buttons.i71 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %buttons.i71, align 4
  %inc140.1.i = add nuw nsw i32 %j.8.i, 2
  %arrayidx141.1.i = getelementptr i16, ptr %281, i32 %inc140.i
  %282 = ptrtoint ptr %arrayidx141.1.i to i32
  call void @__asan_load2_noabort(i32 %282)
  %283 = load i16, ptr %arrayidx141.1.i, align 2
  %conv142.1.i = sext i16 %283 to i32
  call void @_set_bit(i32 noundef %conv142.1.i, ptr noundef %keybit.i) #9
  %284 = ptrtoint ptr %buttons.i71 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %buttons.i71, align 4
  %inc140.2.i = add nuw nsw i32 %j.8.i, 3
  %arrayidx141.2.i = getelementptr i16, ptr %285, i32 %inc140.1.i
  %286 = ptrtoint ptr %arrayidx141.2.i to i32
  call void @__asan_load2_noabort(i32 %286)
  %287 = load i16, ptr %arrayidx141.2.i, align 2
  %conv142.2.i = sext i16 %287 to i32
  call void @_set_bit(i32 noundef %conv142.2.i, ptr noundef %keybit.i) #9
  %288 = ptrtoint ptr %buttons.i71 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %buttons.i71, align 4
  %arrayidx141.3.i = getelementptr i16, ptr %289, i32 %inc140.2.i
  %290 = ptrtoint ptr %arrayidx141.3.i to i32
  call void @__asan_load2_noabort(i32 %290)
  %291 = load i16, ptr %arrayidx141.3.i, align 2
  %conv142.3.i = sext i16 %291 to i32
  call void @_set_bit(i32 noundef %conv142.3.i, ptr noundef %keybit.i) #9
  br label %if.end148.i

if.end148.i:                                      ; preds = %for.cond135.preheader.i, %if.end130.i.if.end148.i_crit_edge
  %292 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %mask.i.i, align 4
  %and155.i = and i32 %293, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and155.i)
  %tobool156.not.i = icmp eq i32 %and155.i, 0
  br i1 %tobool156.not.i, label %if.end148.i.for.inc163.i_crit_edge, label %if.then157.i

if.end148.i.for.inc163.i_crit_edge:               ; preds = %if.end148.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc163.i

if.then157.i:                                     ; preds = %if.end148.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_set_bit(i32 noundef 308, ptr noundef %keybit.i) #9
  br label %for.inc163.i

for.inc163.i:                                     ; preds = %if.then157.i, %if.end148.i.for.inc163.i_crit_edge
  %294 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %mask.i.i, align 4
  %and155.1.i = and i32 %295, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and155.1.i)
  %tobool156.not.1.i = icmp eq i32 %and155.1.i, 0
  br i1 %tobool156.not.1.i, label %for.inc163.i.for.inc163.1.i_crit_edge, label %if.then157.1.i

for.inc163.i.for.inc163.1.i_crit_edge:            ; preds = %for.inc163.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc163.1.i

if.then157.1.i:                                   ; preds = %for.inc163.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_set_bit(i32 noundef 309, ptr noundef %keybit.i) #9
  br label %for.inc163.1.i

for.inc163.1.i:                                   ; preds = %if.then157.1.i, %for.inc163.i.for.inc163.1.i_crit_edge
  %296 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %mask.i.i, align 4
  %and155.2.i = and i32 %297, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and155.2.i)
  %tobool156.not.2.i = icmp eq i32 %and155.2.i, 0
  br i1 %tobool156.not.2.i, label %for.inc163.1.i.for.inc163.2.i_crit_edge, label %if.then157.2.i

for.inc163.1.i.for.inc163.2.i_crit_edge:          ; preds = %for.inc163.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc163.2.i

if.then157.2.i:                                   ; preds = %for.inc163.1.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_set_bit(i32 noundef 310, ptr noundef %keybit.i) #9
  br label %for.inc163.2.i

for.inc163.2.i:                                   ; preds = %if.then157.2.i, %for.inc163.1.i.for.inc163.2.i_crit_edge
  %298 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %mask.i.i, align 4
  %and155.3.i = and i32 %299, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and155.3.i)
  %tobool156.not.3.i = icmp eq i32 %and155.3.i, 0
  br i1 %tobool156.not.3.i, label %for.inc163.2.i.for.inc163.3.i_crit_edge, label %if.then157.3.i

for.inc163.2.i.for.inc163.3.i_crit_edge:          ; preds = %for.inc163.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc163.3.i

if.then157.3.i:                                   ; preds = %for.inc163.2.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_set_bit(i32 noundef 311, ptr noundef %keybit.i) #9
  br label %for.inc163.3.i

for.inc163.3.i:                                   ; preds = %if.then157.3.i, %for.inc163.2.i.for.inc163.3.i_crit_edge
  %300 = ptrtoint ptr %buttons169.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %buttons169.i, align 8
  call fastcc void @analog_decode(ptr noundef %add.ptr, ptr noundef %arrayidx174.i, ptr noundef %arrayidx175.i, i32 noundef %301) #9
  %302 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %add.ptr, align 4
  %call171.i = call i32 @input_register_device(ptr noundef %303) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call171.i)
  %tobool172.not.i = icmp eq i32 %call171.i, 0
  br i1 %tobool172.not.i, label %for.inc163.3.i.for.inc_crit_edge, label %if.then173.i

for.inc163.3.i.for.inc_crit_edge:                 ; preds = %for.inc163.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then173.i:                                     ; preds = %for.inc163.3.i
  call void @__sanitizer_cov_trace_pc() #11
  %304 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %add.ptr, align 4
  call void @input_free_device(ptr noundef %305) #9
  br label %analog_init_device.exit

analog_init_device.exit:                          ; preds = %if.then173.i, %analog_name.exit.i.analog_init_device.exit_crit_edge
  %retval.0.i81 = phi i32 [ %call171.i, %if.then173.i ], [ -12, %analog_name.exit.i.analog_init_device.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.097)
  %cmp17100.not = icmp eq i32 %i.097, 0
  br i1 %cmp17100.not, label %analog_init_device.exit.fail2_crit_edge, label %while.body.lr.ph

analog_init_device.exit.fail2_crit_edge:          ; preds = %analog_init_device.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail2

while.body.lr.ph:                                 ; preds = %analog_init_device.exit
  %306 = ptrtoint ptr %mask14.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %mask14.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %307)
  %tobool21.not = icmp eq i32 %307, 0
  br i1 %tobool21.not, label %while.body.lr.ph.fail2_crit_edge, label %if.then22

while.body.lr.ph.fail2_crit_edge:                 ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail2

for.inc:                                          ; preds = %for.inc163.3.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.097, 1
  %exitcond.not = icmp eq i32 %inc, 2
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then22:                                        ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #11
  %308 = ptrtoint ptr %analog to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %analog, align 4
  call void @input_unregister_device(ptr noundef %309) #9
  br label %fail2

fail2:                                            ; preds = %if.then22, %while.body.lr.ph.fail2_crit_edge, %analog_init_device.exit.fail2_crit_edge, %analog_init_masks.exit.fail2_crit_edge, %analog_init_masks.exit.thread
  %err.0 = phi i32 [ -1, %analog_init_masks.exit.fail2_crit_edge ], [ -1, %analog_init_masks.exit.thread ], [ %retval.0.i81, %if.then22 ], [ %retval.0.i81, %while.body.lr.ph.fail2_crit_edge ], [ %retval.0.i81, %analog_init_device.exit.fail2_crit_edge ]
  call void @gameport_close(ptr noundef %gameport) #9
  br label %fail1

fail1:                                            ; preds = %fail2, %analog_init_port.exit.fail1_crit_edge
  %err.1 = phi i32 [ %call77.i, %analog_init_port.exit.fail1_crit_edge ], [ %err.0, %fail2 ]
  %310 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %310)
  store ptr null, ptr %driver_data.i.i.i, align 4
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %fail1, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %fail1 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @analog_disconnect(ptr noundef %gameport) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 21, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mask = getelementptr %struct.analog_port, ptr %1, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.analog_port, ptr %1, i32 0, i32 1, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @input_unregister_device(ptr noundef %5) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %mask.1 = getelementptr %struct.analog_port, ptr %1, i32 0, i32 1, i32 1, i32 1
  %6 = ptrtoint ptr %mask.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mask.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.1 = icmp eq i32 %7, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.1 = getelementptr %struct.analog_port, ptr %1, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1, align 4
  tail call void @input_unregister_device(ptr noundef %9) #9
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  tail call void @gameport_close(ptr noundef %gameport) #9
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %driver_data.i.i, align 4
  %bads = getelementptr inbounds %struct.analog_port, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %bads to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bads, align 4
  %reads = getelementptr inbounds %struct.analog_port, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %reads to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reads, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool4.not = icmp eq i32 %14, 0
  br i1 %tobool4.not, label %for.inc.1.cond.end_crit_edge, label %cond.true

for.inc.1.cond.end_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  %mul = mul i32 %12, 100
  %div = sdiv i32 %mul, %14
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %for.inc.1.cond.end_crit_edge
  %cond = phi i32 [ %div, %cond.true ], [ 0, %for.inc.1.cond.end_crit_edge ]
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %phys = getelementptr inbounds %struct.gameport, ptr %16, i32 0, i32 2
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %12, i32 noundef %14, i32 noundef %cond, ptr noundef %phys) #13
  tail call void @kfree(ptr noundef %1) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @analog_poll(ptr nocapture noundef readonly %gameport) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 21, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %analog = getelementptr inbounds %struct.analog_port, ptr %1, i32 0, i32 1
  %mask = getelementptr %struct.analog_port, ptr %1, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mask, align 4
  %and = lshr i32 %3, 17
  %4 = trunc i32 %and to i8
  %5 = and i8 %4, 1
  %and5 = and i32 %3, 67328
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6 = icmp ne i32 %and5, 0
  %conv11 = zext i1 %tobool6 to i8
  %cooked = getelementptr inbounds %struct.analog_port, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %cooked to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cooked, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool12.not = icmp eq i8 %7, 0
  br i1 %tobool12.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %buttons = getelementptr inbounds %struct.analog_port, ptr %1, i32 0, i32 10
  %cooked_read.i = getelementptr inbounds %struct.gameport, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %cooked_read.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cooked_read.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then.gameport_cooked_read.exit_crit_edge, label %if.then.i

if.then.gameport_cooked_read.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %gameport_cooked_read.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %axes = getelementptr inbounds %struct.analog_port, ptr %1, i32 0, i32 9
  %call.i = tail call i32 %11(ptr noundef %9, ptr noundef %axes, ptr noundef %buttons) #9
  br label %gameport_cooked_read.exit

gameport_cooked_read.exit:                        ; preds = %if.then.i, %if.then.gameport_cooked_read.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ -1, %if.then.gameport_cooked_read.exit_crit_edge ]
  %bads = getelementptr inbounds %struct.analog_port, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %bads to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bads, align 4
  %sub = sub i32 %13, %retval.0.i
  store i32 %sub, ptr %bads, align 4
  br i1 %tobool6, label %if.then16, label %gameport_cooked_read.exit.if.end_crit_edge

gameport_cooked_read.exit.if.end_crit_edge:       ; preds = %gameport_cooked_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then16:                                        ; preds = %gameport_cooked_read.exit
  %14 = ptrtoint ptr %buttons to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %buttons, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool18.not = icmp eq i32 %15, 0
  br i1 %tobool18.not, label %if.then16.cond.end_crit_edge, label %cond.true

if.then16.cond.end_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx20 = getelementptr [16 x i8], ptr @analog_chf, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %17 to i32
  %shl = shl nuw i32 1, %conv21
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then16.cond.end_crit_edge
  %cond = phi i32 [ %shl, %cond.true ], [ 0, %if.then16.cond.end_crit_edge ]
  %18 = ptrtoint ptr %buttons to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %cond, ptr %buttons, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end, %gameport_cooked_read.exit.if.end_crit_edge
  %reads = getelementptr inbounds %struct.analog_port, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %reads to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reads, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr %reads, align 4
  br label %if.end40

if.else:                                          ; preds = %entry
  %axtime = getelementptr inbounds %struct.analog_port, ptr %1, i32 0, i32 12
  %21 = ptrtoint ptr %axtime to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %axtime, align 4
  %dec = add i32 %22, -1
  store i32 %dec, ptr %axtime, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool23.not = icmp eq i32 %22, 0
  br i1 %tobool23.not, label %if.then24, label %if.else34

if.then24:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call25 = tail call fastcc i32 @analog_cooked_read(ptr noundef %1)
  %bads26 = getelementptr inbounds %struct.analog_port, ptr %1, i32 0, i32 5
  %23 = ptrtoint ptr %bads26 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bads26, align 4
  %sub27 = sub i32 %24, %call25
  store i32 %sub27, ptr %bads26, align 4
  %call28 = tail call fastcc i32 @analog_button_read(ptr noundef %1, i8 noundef zeroext %5, i8 noundef zeroext %conv11)
  %25 = ptrtoint ptr %bads26 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bads26, align 4
  %sub30 = sub i32 %26, %call28
  store i32 %sub30, ptr %bads26, align 4
  %reads31 = getelementptr inbounds %struct.analog_port, ptr %1, i32 0, i32 6
  %27 = ptrtoint ptr %reads31 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %reads31, align 4
  %inc32 = add i32 %28, 1
  store i32 %inc32, ptr %reads31, align 4
  %29 = ptrtoint ptr %axtime to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %axtime, align 4
  br label %if.end40

if.else34:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool35.not = icmp eq i8 %5, 0
  br i1 %tobool35.not, label %if.then36, label %if.else34.if.end40_crit_edge

if.else34.if.end40_crit_edge:                     ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then36:                                        ; preds = %if.else34
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %read.i.i = getelementptr inbounds %struct.gameport, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call zeroext i8 %33(ptr noundef %31) #9
  br label %gameport_read.exit.i

if.else.i.i:                                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  %io.i.i = getelementptr inbounds %struct.gameport, ptr %31, i32 0, i32 3
  %34 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %io.i.i, align 4
  %and.i.i = and i32 %35, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %36 = inttoptr i32 %add.i.i to ptr
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %36) #9, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  br label %gameport_read.exit.i

gameport_read.exit.i:                             ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i8 [ %call.i.i, %if.then.i.i ], [ %37, %if.else.i.i ]
  br i1 %tobool6, label %if.end.i, label %if.then.i86

if.then.i86:                                      ; preds = %gameport_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %38 = xor i8 %retval.0.i.i, -1
  %39 = lshr i8 %38, 4
  %and.i = zext i8 %39 to i32
  %buttons.i = getelementptr inbounds %struct.analog_port, ptr %1, i32 0, i32 10
  %40 = ptrtoint ptr %buttons.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %and.i, ptr %buttons.i, align 4
  br label %if.end40

if.end.i:                                         ; preds = %gameport_read.exit.i
  %buttons3.i = getelementptr inbounds %struct.analog_port, ptr %1, i32 0, i32 10
  %41 = ptrtoint ptr %buttons3.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %buttons3.i, align 4
  %conv473.i = zext i8 %retval.0.i.i to i32
  %neg574.i = xor i32 %conv473.i, -1
  %and675.i = and i32 %neg574.i, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and675.i)
  %tobool7.not76.i = icmp eq i32 %and675.i, 0
  br i1 %tobool7.not76.i, label %if.end.i.if.end40_crit_edge, label %while.body.lr.ph.i

if.end.i.if.end40_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

while.body.lr.ph.i:                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %42 = lshr i32 %neg574.i, 4
  %and13.i = and i32 %42, 15
  %arrayidx.i = getelementptr [16 x i8], ptr @analog_chf, i32 0, i32 %and13.i
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.i, align 1
  %conv14.i = zext i8 %44 to i32
  %shl.i = shl nuw i32 1, %conv14.i
  %45 = ptrtoint ptr %buttons3.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %shl.i, ptr %buttons3.i, align 4
  br label %if.end40

if.end40:                                         ; preds = %while.body.lr.ph.i, %if.end.i.if.end40_crit_edge, %if.then.i86, %if.else34.if.end40_crit_edge, %if.then24, %if.end
  %axes49 = getelementptr inbounds %struct.analog_port, ptr %1, i32 0, i32 9
  %initial = getelementptr inbounds %struct.analog_port, ptr %1, i32 0, i32 11
  %buttons52 = getelementptr inbounds %struct.analog_port, ptr %1, i32 0, i32 10
  %46 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool45.not = icmp eq i32 %47, 0
  br i1 %tobool45.not, label %if.end40.for.inc_crit_edge, label %if.then46

if.end40.for.inc_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then46:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %buttons52 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %buttons52, align 4
  tail call fastcc void @analog_decode(ptr noundef %analog, ptr noundef %axes49, ptr noundef %initial, i32 noundef %49)
  br label %for.inc

for.inc:                                          ; preds = %if.then46, %if.end40.for.inc_crit_edge
  %mask44.1 = getelementptr %struct.analog_port, ptr %1, i32 0, i32 1, i32 1, i32 1
  %50 = ptrtoint ptr %mask44.1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mask44.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool45.not.1 = icmp eq i32 %51, 0
  br i1 %tobool45.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then46.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.then46.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.1 = getelementptr %struct.analog_port, ptr %1, i32 0, i32 1, i32 1
  %52 = ptrtoint ptr %buttons52 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %buttons52, align 4
  tail call fastcc void @analog_decode(ptr noundef %add.ptr.1, ptr noundef %axes49, ptr noundef %initial, i32 noundef %53)
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then46.1, %for.inc.for.inc.1_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gameport_open(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @analog_cooked_read(ptr nocapture noundef %port) unnamed_addr #2 align 64 {
entry:
  %time = alloca [4 x i64], align 8
  %data = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %time) #9
  %2 = call ptr @memset(ptr %time, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #9
  %loop2 = getelementptr inbounds %struct.analog_port, ptr %port, i32 0, i32 7
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %data, align 4
  %4 = ptrtoint ptr %loop2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %loop2, align 4
  %mul = mul i32 %5, 2000
  %div = sdiv i32 %mul, 1000
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !108
  %and.i = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end12_crit_edge

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_off() #9
  br label %do.end12

do.end12:                                         ; preds = %if.then, %entry.do.end12_crit_edge
  %trigger.i = getelementptr inbounds %struct.gameport, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %trigger.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %trigger.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %8(ptr noundef %1) #9
  br label %gameport_trigger.exit

do.body.i:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !114
  tail call void @arm_heavy_mb() #9
  %io.i = getelementptr inbounds %struct.gameport, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %io.i, align 4
  %and.i196 = and i32 %10, 1048575
  %add.i = or i32 %and.i196, -18874368
  %11 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 -1) #9, !srcloc !115
  br label %gameport_trigger.exit

gameport_trigger.exit:                            ; preds = %do.body.i, %if.then.i
  %call13 = tail call i64 @ktime_get() #9
  br i1 %tobool.not, label %if.then23, label %gameport_trigger.exit.do.body25_crit_edge

gameport_trigger.exit.do.body25_crit_edge:        ; preds = %gameport_trigger.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body25

if.then23:                                        ; preds = %gameport_trigger.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_on() #9
  br label %do.body25

do.body25:                                        ; preds = %if.then23, %gameport_trigger.exit.do.body25_crit_edge
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !111
  %and.i.i = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool33.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool33.not, label %if.then37, label %do.body25.do.end40_crit_edge, !prof !112

do.body25.do.end40_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end40

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end40

do.end40:                                         ; preds = %if.then37, %do.body25.do.end40_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #9, !srcloc !113
  %mask = getelementptr inbounds %struct.analog_port, ptr %port, i32 0, i32 2
  %13 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mask, align 4
  %read.i = getelementptr inbounds %struct.gameport, ptr %1, i32 0, i32 7
  %io.i201 = getelementptr inbounds %struct.gameport, ptr %1, i32 0, i32 3
  %conv99 = zext i32 %div to i64
  br label %do.body45

do.body45:                                        ; preds = %do.cond109.do.body45_crit_edge, %do.end40
  %i.0 = phi i32 [ 0, %do.end40 ], [ %i.1, %do.cond109.do.body45_crit_edge ]
  %this.0 = phi i8 [ %14, %do.end40 ], [ %and192, %do.cond109.do.body45_crit_edge ]
  %now.0 = phi i64 [ %call13, %do.end40 ], [ %call59, %do.cond109.do.body45_crit_edge ]
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !111
  %and.i.i198 = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i198)
  %tobool48.not = icmp eq i32 %and.i.i198, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #9, !srcloc !116
  br i1 %tobool48.not, label %if.then50, label %do.body45.if.end51_crit_edge

do.body45.if.end51_crit_edge:                     ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then50:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_off() #9
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %do.body45.if.end51_crit_edge
  %16 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read.i, align 4
  %tobool.not.i199 = icmp eq ptr %17, null
  br i1 %tobool.not.i199, label %if.else.i, label %if.then.i200

if.then.i200:                                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call zeroext i8 %17(ptr noundef %1) #9
  br label %gameport_read.exit

if.else.i:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %io.i201 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %io.i201, align 4
  %and.i202 = and i32 %19, 1048575
  %add.i203 = or i32 %and.i202, -18874368
  %20 = inttoptr i32 %add.i203 to ptr
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #9, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  br label %gameport_read.exit

gameport_read.exit:                               ; preds = %if.else.i, %if.then.i200
  %retval.0.i = phi i8 [ %call.i, %if.then.i200 ], [ %21, %if.else.i ]
  %22 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %mask, align 4
  %and192 = and i8 %23, %retval.0.i
  %call59 = tail call i64 @ktime_get() #9
  br i1 %tobool.not, label %if.then69, label %gameport_read.exit.do.body71_crit_edge

gameport_read.exit.do.body71_crit_edge:           ; preds = %gameport_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body71

if.then69:                                        ; preds = %gameport_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_on() #9
  br label %do.body71

do.body71:                                        ; preds = %if.then69, %gameport_read.exit.do.body71_crit_edge
  %24 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !111
  %and.i.i205 = and i32 %24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i205)
  %tobool79.not = icmp eq i32 %and.i.i205, 0
  br i1 %tobool79.not, label %if.then88, label %do.body71.do.end91_crit_edge, !prof !112

do.body71.do.end91_crit_edge:                     ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end91

if.then88:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end91

do.end91:                                         ; preds = %if.then88, %do.body71.do.end91_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #9, !srcloc !113
  %xor193 = xor i8 %and192, %this.0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor193)
  %tobool98.not = icmp ne i8 %xor193, 0
  %sub = sub i64 %call59, %now.0
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv99)
  %cmp100 = icmp slt i64 %sub, %conv99
  %or.cond212 = select i1 %tobool98.not, i1 %cmp100, i1 false
  br i1 %or.cond212, label %if.then102, label %do.end91.do.cond109_crit_edge

do.end91.do.cond109_crit_edge:                    ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond109

if.then102:                                       ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr [4 x i8], ptr %data, i32 0, i32 %i.0
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %xor193, ptr %arrayidx, align 1
  %arrayidx107 = getelementptr [4 x i64], ptr %time, i32 0, i32 %i.0
  %26 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %call59, ptr %arrayidx107, align 8
  %inc = add nsw i32 %i.0, 1
  br label %do.cond109

do.cond109:                                       ; preds = %if.then102, %do.end91.do.cond109_crit_edge
  %i.1 = phi i32 [ %inc, %if.then102 ], [ %i.0, %do.end91.do.cond109_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and192)
  %tobool111.not = icmp ne i8 %and192, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.1)
  %cmp113 = icmp slt i32 %i.1, 4
  %or.cond = select i1 %tobool111.not, i1 %cmp113, i1 false
  %sub115 = sub i64 %call59, %call13
  call void @__sanitizer_cov_trace_const_cmp8(i64 3000000, i64 %sub115)
  %cmp117 = icmp slt i64 %sub115, 3000000
  %or.cond195 = select i1 %or.cond, i1 %cmp117, i1 false
  br i1 %or.cond195, label %do.cond109.do.body45_crit_edge, label %do.end119

do.cond109.do.body45_crit_edge:                   ; preds = %do.cond109
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body45

do.end119:                                        ; preds = %do.cond109
  %shl = shl i8 %and192, 4
  %i.2208 = add i32 %i.1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.2208)
  %cmp122209 = icmp sgt i32 %i.2208, -1
  br i1 %cmp122209, label %for.body.preheader, label %do.end119.for.end149_crit_edge

do.end119.for.end149_crit_edge:                   ; preds = %do.end119
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end149

for.body.preheader:                               ; preds = %do.end119
  %arrayidx144 = getelementptr %struct.analog_port, ptr %port, i32 0, i32 9, i32 0
  %arrayidx144.1 = getelementptr %struct.analog_port, ptr %port, i32 0, i32 9, i32 1
  %arrayidx144.2 = getelementptr %struct.analog_port, ptr %port, i32 0, i32 9, i32 2
  %arrayidx144.3 = getelementptr %struct.analog_port, ptr %port, i32 0, i32 9, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.3.for.body_crit_edge, %for.body.preheader
  %i.2211 = phi i32 [ %i.2, %for.inc.3.for.body_crit_edge ], [ %i.2208, %for.body.preheader ]
  %this.1210 = phi i8 [ %or194, %for.inc.3.for.body_crit_edge ], [ %shl, %for.body.preheader ]
  %arrayidx124 = getelementptr [4 x i8], ptr %data, i32 0, i32 %i.2211
  %27 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx124, align 1
  %conv133 = zext i8 %28 to i32
  %arrayidx138 = getelementptr [4 x i64], ptr %time, i32 0, i32 %i.2211
  %and135 = and i32 %conv133, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135)
  %tobool136.not = icmp eq i32 %and135, 0
  br i1 %tobool136.not, label %for.body.for.inc_crit_edge, label %if.then137

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then137:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %arrayidx138, align 8
  %sub139 = sub i64 %30, %call13
  %conv140 = trunc i64 %sub139 to i32
  %shl141 = shl i32 %conv140, 2
  %31 = ptrtoint ptr %loop2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %loop2, align 4
  %div143 = udiv i32 %shl141, %32
  %33 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %div143, ptr %arrayidx144, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then137, %for.body.for.inc_crit_edge
  %and135.1 = and i32 %conv133, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135.1)
  %tobool136.not.1 = icmp eq i32 %and135.1, 0
  br i1 %tobool136.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then137.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.then137.1:                                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %arrayidx138, align 8
  %sub139.1 = sub i64 %35, %call13
  %conv140.1 = trunc i64 %sub139.1 to i32
  %shl141.1 = shl i32 %conv140.1, 2
  %36 = ptrtoint ptr %loop2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %loop2, align 4
  %div143.1 = udiv i32 %shl141.1, %37
  %38 = ptrtoint ptr %arrayidx144.1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %div143.1, ptr %arrayidx144.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then137.1, %for.inc.for.inc.1_crit_edge
  %and135.2 = and i32 %conv133, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135.2)
  %tobool136.not.2 = icmp eq i32 %and135.2, 0
  br i1 %tobool136.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then137.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

if.then137.2:                                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %arrayidx138, align 8
  %sub139.2 = sub i64 %40, %call13
  %conv140.2 = trunc i64 %sub139.2 to i32
  %shl141.2 = shl i32 %conv140.2, 2
  %41 = ptrtoint ptr %loop2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %loop2, align 4
  %div143.2 = udiv i32 %shl141.2, %42
  %43 = ptrtoint ptr %arrayidx144.2 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %div143.2, ptr %arrayidx144.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then137.2, %for.inc.1.for.inc.2_crit_edge
  %and135.3 = and i32 %conv133, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135.3)
  %tobool136.not.3 = icmp eq i32 %and135.3, 0
  br i1 %tobool136.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then137.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

if.then137.3:                                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %arrayidx138, align 8
  %sub139.3 = sub i64 %45, %call13
  %conv140.3 = trunc i64 %sub139.3 to i32
  %shl141.3 = shl i32 %conv140.3, 2
  %46 = ptrtoint ptr %loop2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %loop2, align 4
  %div143.3 = udiv i32 %shl141.3, %47
  %48 = ptrtoint ptr %arrayidx144.3 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %div143.3, ptr %arrayidx144.3, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then137.3, %for.inc.2.for.inc.3_crit_edge
  %or194 = or i8 %28, %this.1210
  %i.2 = add i32 %i.2211, -1
  %cmp122 = icmp sgt i32 %i.2, -1
  br i1 %cmp122, label %for.inc.3.for.body_crit_edge, label %for.inc.3.for.end149_crit_edge

for.inc.3.for.end149_crit_edge:                   ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end149

for.inc.3.for.body_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end149:                                       ; preds = %for.inc.3.for.end149_crit_edge, %do.end119.for.end149_crit_edge
  %this.1.lcssa = phi i8 [ %shl, %do.end119.for.end149_crit_edge ], [ %or194, %for.inc.3.for.end149_crit_edge ]
  %49 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %mask, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %this.1.lcssa, i8 %50)
  %cmp153 = icmp ne i8 %this.1.lcssa, %50
  %conv154.neg = sext i1 %cmp153 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %time) #9
  ret i32 %conv154.neg
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @analog_button_read(ptr nocapture noundef %port, i8 noundef zeroext %saitek, i8 noundef zeroext %chf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %speed.i = getelementptr inbounds %struct.gameport, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed.i, align 8
  %mul.i = mul i32 %3, 2000
  %div.i = sdiv i32 %mul.i, 1000
  %read.i = getelementptr inbounds %struct.gameport, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call zeroext i8 %5(ptr noundef %1) #9
  br label %gameport_read.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %io.i = getelementptr inbounds %struct.gameport, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %io.i, align 4
  %and.i = and i32 %7, 1048575
  %add.i = or i32 %and.i, -18874368
  %8 = inttoptr i32 %add.i to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #9, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  br label %gameport_read.exit

gameport_read.exit:                               ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i8 [ %call.i, %if.then.i ], [ %9, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %chf)
  %tobool.not = icmp eq i8 %chf, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %gameport_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  %10 = xor i8 %retval.0.i, -1
  %11 = lshr i8 %10, 4
  %and = zext i8 %11 to i32
  %buttons = getelementptr inbounds %struct.analog_port, ptr %port, i32 0, i32 10
  %12 = ptrtoint ptr %buttons to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and, ptr %buttons, align 4
  br label %cleanup

if.end:                                           ; preds = %gameport_read.exit
  %buttons3 = getelementptr inbounds %struct.analog_port, ptr %port, i32 0, i32 10
  %13 = ptrtoint ptr %buttons3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %buttons3, align 4
  %conv473 = zext i8 %retval.0.i to i32
  %neg574 = xor i32 %conv473, -1
  %and675 = and i32 %neg574, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and675)
  %tobool7.not76 = icmp eq i32 %and675, 0
  br i1 %tobool7.not76, label %if.end.cleanup_crit_edge, label %while.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %saitek)
  %tobool16.not = icmp eq i8 %saitek, 0
  %mask = getelementptr inbounds %struct.analog_port, ptr %port, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %while.end.while.body_crit_edge, %while.body.lr.ph
  %neg578 = phi i32 [ %neg574, %while.body.lr.ph ], [ %neg5, %while.end.while.body_crit_edge ]
  %i.077 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %while.end.while.body_crit_edge ]
  %14 = lshr i32 %neg578, 4
  %and13 = and i32 %14, 15
  %arrayidx = getelementptr [16 x i8], ptr @analog_chf, i32 0, i32 %and13
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  %conv14 = zext i8 %16 to i32
  %shl = shl nuw i32 1, %conv14
  %17 = ptrtoint ptr %buttons3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %buttons3, align 4
  %or = or i32 %shl, %18
  store i32 %or, ptr %buttons3, align 4
  br i1 %tobool16.not, label %while.body.cleanup_crit_edge, label %if.end18

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18:                                         ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 42949600) #9
  %20 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %port, align 4
  %trigger.i = getelementptr inbounds %struct.gameport, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %trigger.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %trigger.i, align 8
  %tobool.not.i56 = icmp eq ptr %23, null
  br i1 %tobool.not.i56, label %do.body.i, label %if.then.i57

if.then.i57:                                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %23(ptr noundef %21) #9
  br label %while.cond20.preheader

do.body.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !114
  tail call void @arm_heavy_mb() #9
  %io.i58 = getelementptr inbounds %struct.gameport, ptr %21, i32 0, i32 3
  %24 = ptrtoint ptr %io.i58 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %io.i58, align 4
  %and.i59 = and i32 %25, 1048575
  %add.i60 = or i32 %and.i59, -18874368
  %26 = inttoptr i32 %add.i60 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 -1) #9, !srcloc !115
  br label %while.cond20.preheader

while.cond20.preheader:                           ; preds = %do.body.i, %if.then.i57
  br label %while.cond20

while.cond20:                                     ; preds = %gameport_read.exit70.while.cond20_crit_edge, %while.cond20.preheader
  %t.1 = phi i32 [ %dec, %gameport_read.exit70.while.cond20_crit_edge ], [ %div.i, %while.cond20.preheader ]
  %27 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %port, align 4
  %read.i61 = getelementptr inbounds %struct.gameport, ptr %28, i32 0, i32 7
  %29 = ptrtoint ptr %read.i61 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read.i61, align 4
  %tobool.not.i62 = icmp eq ptr %30, null
  br i1 %tobool.not.i62, label %if.else.i68, label %if.then.i64

if.then.i64:                                      ; preds = %while.cond20
  call void @__sanitizer_cov_trace_pc() #11
  %call.i63 = tail call zeroext i8 %30(ptr noundef %28) #9
  br label %gameport_read.exit70

if.else.i68:                                      ; preds = %while.cond20
  call void @__sanitizer_cov_trace_pc() #11
  %io.i65 = getelementptr inbounds %struct.gameport, ptr %28, i32 0, i32 3
  %31 = ptrtoint ptr %io.i65 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %io.i65, align 4
  %and.i66 = and i32 %32, 1048575
  %add.i67 = or i32 %and.i66, -18874368
  %33 = inttoptr i32 %add.i67 to ptr
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %33) #9, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  br label %gameport_read.exit70

gameport_read.exit70:                             ; preds = %if.else.i68, %if.then.i64
  %retval.0.i69 = phi i8 [ %call.i63, %if.then.i64 ], [ %34, %if.else.i68 ]
  %35 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %mask, align 4
  %and2553 = and i8 %36, %retval.0.i69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and2553)
  %tobool26.not = icmp eq i8 %and2553, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t.1)
  %tobool28.not = icmp eq i32 %t.1, 0
  %or.cond55 = select i1 %tobool26.not, i1 true, i1 %tobool28.not
  %dec = add i32 %t.1, -1
  br i1 %or.cond55, label %while.end, label %gameport_read.exit70.while.cond20_crit_edge

gameport_read.exit70.while.cond20_crit_edge:      ; preds = %gameport_read.exit70
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond20

while.end:                                        ; preds = %gameport_read.exit70
  %inc = add nuw nsw i32 %i.077, 1
  %conv4 = zext i8 %retval.0.i69 to i32
  %neg5 = xor i32 %conv4, -1
  %and6 = and i32 %neg5, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %i.077)
  %cmp = icmp ugt i32 %i.077, 14
  %or.cond = select i1 %tobool7.not, i1 true, i1 %cmp
  %or.cond54 = select i1 %or.cond, i1 true, i1 %tobool28.not
  br i1 %or.cond54, label %while.end31.loopexit, label %while.end.while.body_crit_edge

while.end.while.body_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end31.loopexit:                             ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %inc)
  %phi.cmp = icmp eq i32 %inc, 16
  %phi.sel = select i1 %tobool28.not, i1 true, i1 %phi.cmp
  %phi.cast = sext i1 %phi.sel to i32
  br label %cleanup

cleanup:                                          ; preds = %while.end31.loopexit, %while.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.end.cleanup_crit_edge ], [ %phi.cast, %while.end31.loopexit ], [ 0, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @analog_decode(ptr nocapture noundef readonly %analog, ptr nocapture noundef readonly %axes, ptr nocapture noundef readonly %initial, i32 noundef %buttons) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %analog to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %analog, align 4
  %mask = getelementptr inbounds %struct.analog, ptr %analog, i32 0, i32 1
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mask, align 4
  %and = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %for.cond.preheader

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

for.cond.preheader:                               ; preds = %entry
  %arrayidx = getelementptr i32, ptr %axes, i32 3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr i32, ptr %initial, i32 3
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2, align 4
  %shr = ashr i32 %7, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %shr)
  %cmp3 = icmp slt i32 %5, %shr
  br i1 %cmp3, label %for.cond.preheader.if.then4_crit_edge, label %for.inc

for.cond.preheader.if.then4_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

if.then4:                                         ; preds = %for.inc.2.if.then4_crit_edge, %for.inc.1.if.then4_crit_edge, %for.inc.if.then4_crit_edge, %for.cond.preheader.if.then4_crit_edge
  %i.0221.lcssa = phi i32 [ 0, %for.cond.preheader.if.then4_crit_edge ], [ 1, %for.inc.if.then4_crit_edge ], [ 2, %for.inc.1.if.then4_crit_edge ], [ 3, %for.inc.2.if.then4_crit_edge ]
  %shl6 = shl nuw nsw i32 16384, %i.0221.lcssa
  %or = or i32 %shl6, %buttons
  br label %if.end7

for.inc:                                          ; preds = %for.cond.preheader
  %mul.1 = mul i32 %7, 3
  %shr.1 = ashr i32 %mul.1, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %shr.1)
  %cmp3.1 = icmp slt i32 %5, %shr.1
  br i1 %cmp3.1, label %for.inc.if.then4_crit_edge, label %for.inc.1

for.inc.if.then4_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

for.inc.1:                                        ; preds = %for.inc
  %mul.2 = mul i32 %7, 5
  %shr.2 = ashr i32 %mul.2, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %shr.2)
  %cmp3.2 = icmp slt i32 %5, %shr.2
  br i1 %cmp3.2, label %for.inc.1.if.then4_crit_edge, label %for.inc.2

for.inc.1.if.then4_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

for.inc.2:                                        ; preds = %for.inc.1
  %mul.3 = mul i32 %7, 7
  %shr.3 = ashr i32 %mul.3, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %shr.3)
  %cmp3.3 = icmp slt i32 %5, %shr.3
  br i1 %cmp3.3, label %for.inc.2.if.then4_crit_edge, label %for.inc.2.if.end7_crit_edge

for.inc.2.if.end7_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

for.inc.2.if.then4_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

if.end7:                                          ; preds = %for.inc.2.if.end7_crit_edge, %if.then4, %entry.if.end7_crit_edge
  %buttons.addr.0 = phi i32 [ %or, %if.then4 ], [ %buttons, %entry.if.end7_crit_edge ], [ %buttons, %for.inc.2.if.end7_crit_edge ]
  %buttons16 = getelementptr inbounds %struct.analog, ptr %analog, i32 0, i32 2
  %8 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask, align 4
  %and13 = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end7.for.inc22_crit_edge, label %if.then15

if.end7.for.inc22_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc22

if.then15:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %buttons16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buttons16, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %11, align 2
  %conv = sext i16 %13 to i32
  %14 = and i32 %buttons.addr.0, 1
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef %conv, i32 noundef %14) #9
  br label %for.inc22

for.inc22:                                        ; preds = %if.then15, %if.end7.for.inc22_crit_edge
  %j.1 = phi i32 [ 1, %if.then15 ], [ 0, %if.end7.for.inc22_crit_edge ]
  %15 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mask, align 4
  %and13.1 = and i32 %16, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.1)
  %tobool14.not.1 = icmp eq i32 %and13.1, 0
  br i1 %tobool14.not.1, label %for.inc22.for.inc22.1_crit_edge, label %if.then15.1

for.inc22.for.inc22.1_crit_edge:                  ; preds = %for.inc22
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc22.1

if.then15.1:                                      ; preds = %for.inc22
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %buttons16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buttons16, align 4
  %inc17.1 = add nuw nsw i32 %j.1, 1
  %arrayidx18.1 = getelementptr i16, ptr %18, i32 %j.1
  %19 = ptrtoint ptr %arrayidx18.1 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx18.1, align 2
  %conv.1 = sext i16 %20 to i32
  %21 = lshr i32 %buttons.addr.0, 1
  %22 = and i32 %21, 1
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef %conv.1, i32 noundef %22) #9
  br label %for.inc22.1

for.inc22.1:                                      ; preds = %if.then15.1, %for.inc22.for.inc22.1_crit_edge
  %j.1.1 = phi i32 [ %inc17.1, %if.then15.1 ], [ %j.1, %for.inc22.for.inc22.1_crit_edge ]
  %23 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mask, align 4
  %and13.2 = and i32 %24, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.2)
  %tobool14.not.2 = icmp eq i32 %and13.2, 0
  br i1 %tobool14.not.2, label %for.inc22.1.for.inc22.2_crit_edge, label %if.then15.2

for.inc22.1.for.inc22.2_crit_edge:                ; preds = %for.inc22.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc22.2

if.then15.2:                                      ; preds = %for.inc22.1
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %buttons16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %buttons16, align 4
  %inc17.2 = add nuw nsw i32 %j.1.1, 1
  %arrayidx18.2 = getelementptr i16, ptr %26, i32 %j.1.1
  %27 = ptrtoint ptr %arrayidx18.2 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx18.2, align 2
  %conv.2 = sext i16 %28 to i32
  %29 = lshr i32 %buttons.addr.0, 2
  %30 = and i32 %29, 1
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef %conv.2, i32 noundef %30) #9
  br label %for.inc22.2

for.inc22.2:                                      ; preds = %if.then15.2, %for.inc22.1.for.inc22.2_crit_edge
  %j.1.2 = phi i32 [ %inc17.2, %if.then15.2 ], [ %j.1.1, %for.inc22.1.for.inc22.2_crit_edge ]
  %31 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mask, align 4
  %and13.3 = and i32 %32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.3)
  %tobool14.not.3 = icmp eq i32 %and13.3, 0
  br i1 %tobool14.not.3, label %for.inc22.2.for.inc22.3_crit_edge, label %if.then15.3

for.inc22.2.for.inc22.3_crit_edge:                ; preds = %for.inc22.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc22.3

if.then15.3:                                      ; preds = %for.inc22.2
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %buttons16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %buttons16, align 4
  %inc17.3 = add nuw nsw i32 %j.1.2, 1
  %arrayidx18.3 = getelementptr i16, ptr %34, i32 %j.1.2
  %35 = ptrtoint ptr %arrayidx18.3 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx18.3, align 2
  %conv.3 = sext i16 %36 to i32
  %37 = lshr i32 %buttons.addr.0, 3
  %38 = and i32 %37, 1
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef %conv.3, i32 noundef %38) #9
  br label %for.inc22.3

for.inc22.3:                                      ; preds = %if.then15.3, %for.inc22.2.for.inc22.3_crit_edge
  %j.1.3 = phi i32 [ %inc17.3, %if.then15.3 ], [ %j.1.2, %for.inc22.2.for.inc22.3_crit_edge ]
  %39 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mask, align 4
  %and13.4 = and i32 %40, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.4)
  %tobool14.not.4 = icmp eq i32 %and13.4, 0
  br i1 %tobool14.not.4, label %for.inc22.3.for.inc22.4_crit_edge, label %if.then15.4

for.inc22.3.for.inc22.4_crit_edge:                ; preds = %for.inc22.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc22.4

if.then15.4:                                      ; preds = %for.inc22.3
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %buttons16 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %buttons16, align 4
  %inc17.4 = add nuw nsw i32 %j.1.3, 1
  %arrayidx18.4 = getelementptr i16, ptr %42, i32 %j.1.3
  %43 = ptrtoint ptr %arrayidx18.4 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx18.4, align 2
  %conv.4 = sext i16 %44 to i32
  %45 = lshr i32 %buttons.addr.0, 4
  %46 = and i32 %45, 1
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef %conv.4, i32 noundef %46) #9
  br label %for.inc22.4

for.inc22.4:                                      ; preds = %if.then15.4, %for.inc22.3.for.inc22.4_crit_edge
  %j.1.4 = phi i32 [ %inc17.4, %if.then15.4 ], [ %j.1.3, %for.inc22.3.for.inc22.4_crit_edge ]
  %47 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mask, align 4
  %and13.5 = and i32 %48, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.5)
  %tobool14.not.5 = icmp eq i32 %and13.5, 0
  br i1 %tobool14.not.5, label %for.inc22.4.for.inc22.5_crit_edge, label %if.then15.5

for.inc22.4.for.inc22.5_crit_edge:                ; preds = %for.inc22.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc22.5

if.then15.5:                                      ; preds = %for.inc22.4
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %buttons16 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %buttons16, align 4
  %inc17.5 = add nuw nsw i32 %j.1.4, 1
  %arrayidx18.5 = getelementptr i16, ptr %50, i32 %j.1.4
  %51 = ptrtoint ptr %arrayidx18.5 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx18.5, align 2
  %conv.5 = sext i16 %52 to i32
  %53 = lshr i32 %buttons.addr.0, 5
  %54 = and i32 %53, 1
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef %conv.5, i32 noundef %54) #9
  br label %for.inc22.5

for.inc22.5:                                      ; preds = %if.then15.5, %for.inc22.4.for.inc22.5_crit_edge
  %j.1.5 = phi i32 [ %inc17.5, %if.then15.5 ], [ %j.1.4, %for.inc22.4.for.inc22.5_crit_edge ]
  %55 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %mask, align 4
  %and26 = and i32 %56, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %for.inc22.5.if.end43_crit_edge, label %for.cond29.preheader

for.inc22.5.if.end43_crit_edge:                   ; preds = %for.inc22.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

for.cond29.preheader:                             ; preds = %for.inc22.5
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %buttons16 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %buttons16, align 4
  %inc34 = add nuw nsw i32 %j.1.5, 1
  %arrayidx35 = getelementptr i16, ptr %58, i32 %j.1.5
  %59 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %arrayidx35, align 2
  %conv36 = sext i16 %60 to i32
  %61 = lshr i32 %buttons.addr.0, 10
  %.lobit = and i32 %61, 1
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef %conv36, i32 noundef %.lobit) #9
  %62 = ptrtoint ptr %buttons16 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %buttons16, align 4
  %inc34.1 = add nuw nsw i32 %j.1.5, 2
  %arrayidx35.1 = getelementptr i16, ptr %63, i32 %inc34
  %64 = ptrtoint ptr %arrayidx35.1 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %arrayidx35.1, align 2
  %conv36.1 = sext i16 %65 to i32
  %66 = lshr i32 %buttons.addr.0, 11
  %.lobit234 = and i32 %66, 1
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef %conv36.1, i32 noundef %.lobit234) #9
  %67 = ptrtoint ptr %buttons16 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %buttons16, align 4
  %inc34.2 = add nuw nsw i32 %j.1.5, 3
  %arrayidx35.2 = getelementptr i16, ptr %68, i32 %inc34.1
  %69 = ptrtoint ptr %arrayidx35.2 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %arrayidx35.2, align 2
  %conv36.2 = sext i16 %70 to i32
  %71 = lshr i32 %buttons.addr.0, 12
  %.lobit235 = and i32 %71, 1
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef %conv36.2, i32 noundef %.lobit235) #9
  %72 = ptrtoint ptr %buttons16 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %buttons16, align 4
  %arrayidx35.3 = getelementptr i16, ptr %73, i32 %inc34.2
  %74 = ptrtoint ptr %arrayidx35.3 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %arrayidx35.3, align 2
  %conv36.3 = sext i16 %75 to i32
  %76 = lshr i32 %buttons.addr.0, 13
  %.lobit236 = and i32 %76, 1
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef %conv36.3, i32 noundef %.lobit236) #9
  br label %if.end43

if.end43:                                         ; preds = %for.cond29.preheader, %for.inc22.5.if.end43_crit_edge
  %77 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %mask, align 4
  %and45 = and i32 %78, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end43.if.end54_crit_edge, label %if.then47

if.end43.if.end54_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.then47:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx49 = getelementptr i32, ptr %axes, i32 2
  %79 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx49, align 4
  %arrayidx50 = getelementptr i32, ptr %initial, i32 2
  %81 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx50, align 4
  %shr51 = ashr i32 %82, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %shr51)
  %cmp52 = icmp slt i32 %80, %shr51
  %lnot.ext.i216 = zext i1 %cmp52 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 308, i32 noundef %lnot.ext.i216) #9
  br label %if.end54

if.end54:                                         ; preds = %if.then47, %if.end43.if.end54_crit_edge
  %83 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %mask, align 4
  %and56 = and i32 %84, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end54.if.end65_crit_edge, label %if.then58

if.end54.if.end65_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.then58:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx60 = getelementptr i32, ptr %axes, i32 3
  %85 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx60, align 4
  %arrayidx61 = getelementptr i32, ptr %initial, i32 3
  %87 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx61, align 4
  %shr62 = ashr i32 %88, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %shr62)
  %cmp63 = icmp slt i32 %86, %shr62
  %lnot.ext.i217 = zext i1 %cmp63 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 309, i32 noundef %lnot.ext.i217) #9
  br label %if.end65

if.end65:                                         ; preds = %if.then58, %if.end54.if.end65_crit_edge
  %89 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %mask, align 4
  %and67 = and i32 %90, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end65.if.end78_crit_edge, label %if.then69

if.end65.if.end78_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78

if.then69:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx71 = getelementptr i32, ptr %axes, i32 2
  %91 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx71, align 4
  %arrayidx72 = getelementptr i32, ptr %initial, i32 2
  %93 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx72, align 4
  %shr74 = ashr i32 %94, 1
  %add75 = add i32 %shr74, %94
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %add75)
  %cmp76 = icmp sgt i32 %92, %add75
  %lnot.ext.i218 = zext i1 %cmp76 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 310, i32 noundef %lnot.ext.i218) #9
  br label %if.end78

if.end78:                                         ; preds = %if.then69, %if.end65.if.end78_crit_edge
  %95 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %mask, align 4
  %and80 = and i32 %96, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.end78.if.end91_crit_edge, label %if.then82

if.end78.if.end91_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91

if.then82:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx84 = getelementptr i32, ptr %axes, i32 3
  %97 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx84, align 4
  %arrayidx85 = getelementptr i32, ptr %initial, i32 3
  %99 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx85, align 4
  %shr87 = ashr i32 %100, 1
  %add88 = add i32 %shr87, %100
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %add88)
  %cmp89 = icmp sgt i32 %98, %add88
  %lnot.ext.i219 = zext i1 %cmp89 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 311, i32 noundef %lnot.ext.i219) #9
  br label %if.end91

if.end91:                                         ; preds = %if.then82, %if.end78.if.end91_crit_edge
  %101 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %mask, align 4
  %and98 = and i32 %102, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %if.end91.for.inc106_crit_edge, label %if.then100

if.end91.for.inc106_crit_edge:                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc106

if.then100:                                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  %103 = ptrtoint ptr %axes to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %axes, align 4
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 0, i32 noundef %104) #9
  br label %for.inc106

for.inc106:                                       ; preds = %if.then100, %if.end91.for.inc106_crit_edge
  %j.4 = phi i32 [ 1, %if.then100 ], [ 0, %if.end91.for.inc106_crit_edge ]
  %105 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %mask, align 4
  %and98.1 = and i32 %106, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98.1)
  %tobool99.not.1 = icmp eq i32 %and98.1, 0
  br i1 %tobool99.not.1, label %for.inc106.for.inc106.1_crit_edge, label %if.then100.1

for.inc106.for.inc106.1_crit_edge:                ; preds = %for.inc106
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc106.1

if.then100.1:                                     ; preds = %for.inc106
  call void @__sanitizer_cov_trace_pc() #11
  %inc101.1 = add nuw nsw i32 %j.4, 1
  %arrayidx102.1 = getelementptr [4 x i16], ptr @analog_axes, i32 0, i32 %j.4
  %107 = ptrtoint ptr %arrayidx102.1 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %arrayidx102.1, align 2
  %conv103.1 = sext i16 %108 to i32
  %arrayidx104.1 = getelementptr i32, ptr %axes, i32 1
  %109 = ptrtoint ptr %arrayidx104.1 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx104.1, align 4
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef %conv103.1, i32 noundef %110) #9
  br label %for.inc106.1

for.inc106.1:                                     ; preds = %if.then100.1, %for.inc106.for.inc106.1_crit_edge
  %j.4.1 = phi i32 [ %inc101.1, %if.then100.1 ], [ %j.4, %for.inc106.for.inc106.1_crit_edge ]
  %111 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %mask, align 4
  %and98.2 = and i32 %112, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98.2)
  %tobool99.not.2 = icmp eq i32 %and98.2, 0
  br i1 %tobool99.not.2, label %for.inc106.1.for.inc106.2_crit_edge, label %if.then100.2

for.inc106.1.for.inc106.2_crit_edge:              ; preds = %for.inc106.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc106.2

if.then100.2:                                     ; preds = %for.inc106.1
  call void @__sanitizer_cov_trace_pc() #11
  %inc101.2 = add nuw nsw i32 %j.4.1, 1
  %arrayidx102.2 = getelementptr [4 x i16], ptr @analog_axes, i32 0, i32 %j.4.1
  %113 = ptrtoint ptr %arrayidx102.2 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %arrayidx102.2, align 2
  %conv103.2 = sext i16 %114 to i32
  %arrayidx104.2 = getelementptr i32, ptr %axes, i32 2
  %115 = ptrtoint ptr %arrayidx104.2 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx104.2, align 4
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef %conv103.2, i32 noundef %116) #9
  br label %for.inc106.2

for.inc106.2:                                     ; preds = %if.then100.2, %for.inc106.1.for.inc106.2_crit_edge
  %j.4.2 = phi i32 [ %inc101.2, %if.then100.2 ], [ %j.4.1, %for.inc106.1.for.inc106.2_crit_edge ]
  %117 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %mask, align 4
  %and98.3 = and i32 %118, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98.3)
  %tobool99.not.3 = icmp eq i32 %and98.3, 0
  br i1 %tobool99.not.3, label %for.inc106.2.for.inc106.3_crit_edge, label %if.then100.3

for.inc106.2.for.inc106.3_crit_edge:              ; preds = %for.inc106.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc106.3

if.then100.3:                                     ; preds = %for.inc106.2
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx102.3 = getelementptr [4 x i16], ptr @analog_axes, i32 0, i32 %j.4.2
  %119 = ptrtoint ptr %arrayidx102.3 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %arrayidx102.3, align 2
  %conv103.3 = sext i16 %120 to i32
  %arrayidx104.3 = getelementptr i32, ptr %axes, i32 3
  %121 = ptrtoint ptr %arrayidx104.3 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx104.3, align 4
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef %conv103.3, i32 noundef %122) #9
  br label %for.inc106.3

for.inc106.3:                                     ; preds = %if.then100.3, %for.inc106.2.for.inc106.3_crit_edge
  %123 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %mask, align 4
  %and116 = and i32 %124, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %for.inc106.3.for.inc143_crit_edge, label %if.then118

for.inc106.3.for.inc143_crit_edge:                ; preds = %for.inc106.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc143

if.then118:                                       ; preds = %for.inc106.3
  call void @__sanitizer_cov_trace_pc() #11
  %shr124208 = lshr i32 %buttons.addr.0, 7
  %and125 = and i32 %shr124208, 1
  %125 = shl i32 %buttons.addr.0, 22
  %126 = ashr i32 %125, 31
  %sub = add nsw i32 %126, %and125
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 16, i32 noundef %sub) #9
  %shr135210 = lshr i32 %buttons.addr.0, 8
  %and136 = and i32 %shr135210, 1
  %127 = shl i32 %buttons.addr.0, 25
  %128 = ashr i32 %127, 31
  %sub141 = add nsw i32 %128, %and136
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 17, i32 noundef %sub141) #9
  br label %for.inc143

for.inc143:                                       ; preds = %if.then118, %for.inc106.3.for.inc143_crit_edge
  %j.6 = phi i32 [ 2, %if.then118 ], [ 0, %for.inc106.3.for.inc143_crit_edge ]
  %129 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %mask, align 4
  %and116.1 = and i32 %130, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116.1)
  %tobool117.not.1 = icmp eq i32 %and116.1, 0
  br i1 %tobool117.not.1, label %for.inc143.for.inc143.1_crit_edge, label %if.then118.1

for.inc143.for.inc143.1_crit_edge:                ; preds = %for.inc143
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc143.1

if.then118.1:                                     ; preds = %for.inc143
  call void @__sanitizer_cov_trace_pc() #11
  %inc119.1 = or i32 %j.6, 1
  %arrayidx120.1 = getelementptr [6 x i16], ptr @analog_hats, i32 0, i32 %j.6
  %131 = ptrtoint ptr %arrayidx120.1 to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %arrayidx120.1, align 2
  %conv121.1 = sext i16 %132 to i32
  %shr124208.1 = lshr i32 %buttons.addr.0, 11
  %and125.1 = and i32 %shr124208.1, 1
  %133 = shl i32 %buttons.addr.0, 18
  %134 = ashr i32 %133, 31
  %sub.1 = add nsw i32 %134, %and125.1
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef %conv121.1, i32 noundef %sub.1) #9
  %inc130.1 = add nuw nsw i32 %j.6, 2
  %arrayidx131.1 = getelementptr [6 x i16], ptr @analog_hats, i32 0, i32 %inc119.1
  %135 = ptrtoint ptr %arrayidx131.1 to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %arrayidx131.1, align 2
  %conv132.1 = sext i16 %136 to i32
  %shr135210.1 = lshr i32 %buttons.addr.0, 12
  %and136.1 = and i32 %shr135210.1, 1
  %137 = shl i32 %buttons.addr.0, 21
  %138 = ashr i32 %137, 31
  %sub141.1 = add nsw i32 %138, %and136.1
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef %conv132.1, i32 noundef %sub141.1) #9
  br label %for.inc143.1

for.inc143.1:                                     ; preds = %if.then118.1, %for.inc143.for.inc143.1_crit_edge
  %j.6.1 = phi i32 [ %inc130.1, %if.then118.1 ], [ %j.6, %for.inc143.for.inc143.1_crit_edge ]
  %139 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %mask, align 4
  %and116.2 = and i32 %140, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116.2)
  %tobool117.not.2 = icmp eq i32 %and116.2, 0
  br i1 %tobool117.not.2, label %for.inc143.1.for.inc143.2_crit_edge, label %if.then118.2

for.inc143.1.for.inc143.2_crit_edge:              ; preds = %for.inc143.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc143.2

if.then118.2:                                     ; preds = %for.inc143.1
  call void @__sanitizer_cov_trace_pc() #11
  %inc119.2 = add nuw nsw i32 %j.6.1, 1
  %arrayidx120.2 = getelementptr [6 x i16], ptr @analog_hats, i32 0, i32 %j.6.1
  %141 = ptrtoint ptr %arrayidx120.2 to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %arrayidx120.2, align 2
  %conv121.2 = sext i16 %142 to i32
  %shr124208.2 = lshr i32 %buttons.addr.0, 15
  %and125.2 = and i32 %shr124208.2, 1
  %143 = shl i32 %buttons.addr.0, 14
  %144 = ashr i32 %143, 31
  %sub.2 = add nsw i32 %144, %and125.2
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef %conv121.2, i32 noundef %sub.2) #9
  %arrayidx131.2 = getelementptr [6 x i16], ptr @analog_hats, i32 0, i32 %inc119.2
  %145 = ptrtoint ptr %arrayidx131.2 to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %arrayidx131.2, align 2
  %conv132.2 = sext i16 %146 to i32
  %shr135210.2 = lshr i32 %buttons.addr.0, 16
  %and136.2 = and i32 %shr135210.2, 1
  %147 = shl i32 %buttons.addr.0, 17
  %148 = ashr i32 %147, 31
  %sub141.2 = add nsw i32 %148, %and136.2
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef %conv132.2, i32 noundef %sub141.2) #9
  br label %for.inc143.2

for.inc143.2:                                     ; preds = %if.then118.2, %for.inc143.1.for.inc143.2_crit_edge
  tail call void @input_event(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @analog_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @gameport_start_polling(ptr noundef %3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @analog_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @gameport_stop_polling(ptr noundef %3) #9
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
declare dso_local i32 @seq_buf_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight16(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_start_polling(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_stop_polling(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__gameport_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !16, !17, !18, !20, !22, !24, !26, !28, !30, !32, !33, !34, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !69, !70, !71, !73, !74, !75, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !{ptr @__UNIQUE_ID_author225, !1, !"__UNIQUE_ID_author225", i1 false, i1 false}
!1 = !{!"../drivers/input/joystick/analog.c", i32 28, i32 1}
!2 = !{ptr @__UNIQUE_ID_description226, !3, !"__UNIQUE_ID_description226", i1 false, i1 false}
!3 = !{!"../drivers/input/joystick/analog.c", i32 29, i32 1}
!4 = !{ptr @__UNIQUE_ID_file227, !5, !"__UNIQUE_ID_file227", i1 false, i1 false}
!5 = !{!"../drivers/input/joystick/analog.c", i32 30, i32 1}
!6 = !{ptr @__UNIQUE_ID_license228, !5, !"__UNIQUE_ID_license228", i1 false, i1 false}
!7 = !{ptr @__param_map, !8, !"__param_map", i1 false, i1 false}
!8 = !{!"../drivers/input/joystick/analog.c", i32 41, i32 1}
!9 = !{ptr @__UNIQUE_ID_maptype229, !8, !"__UNIQUE_ID_maptype229", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_map230, !11, !"__UNIQUE_ID_map230", i1 false, i1 false}
!11 = !{!"../drivers/input/joystick/analog.c", i32 42, i32 1}
!12 = !{ptr @__initcall__kmod_analog__231_706_analog_init6, !13, !"__initcall__kmod_analog__231_706_analog_init6", i1 false, i1 false}
!13 = !{!"../drivers/input/joystick/analog.c", i32 706, i32 1}
!14 = !{ptr @__exitcall_analog_exit, !15, !"__exitcall_analog_exit", i1 false, i1 false}
!15 = !{!"../drivers/input/joystick/analog.c", i32 707, i32 1}
!16 = !{ptr @__param_str_map, !8, !"__param_str_map", i1 false, i1 false}
!17 = !{ptr @__param_arr_map, !8, !"__param_arr_map", i1 false, i1 false}
!18 = !{ptr @js_nargs, !19, !"js_nargs", i1 false, i1 false}
!19 = !{!"../drivers/input/joystick/analog.c", i32 39, i32 21}
!20 = !{ptr @js, !21, !"js", i1 false, i1 false}
!21 = !{!"../drivers/input/joystick/analog.c", i32 38, i32 14}
!22 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/joystick/analog.c", i32 690, i32 17}
!24 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/joystick/analog.c", i32 688, i32 11}
!26 = !{ptr @analog_drv, !27, !"analog_drv", i1 false, i1 false}
!27 = !{!"../drivers/input/joystick/analog.c", i32 686, i32 31}
!28 = !{ptr @analog_options, !29, !"analog_options", i1 false, i1 false}
!29 = !{!"../drivers/input/joystick/analog.c", i32 40, i32 12}
!30 = !{ptr @.str.2, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/joystick/analog.c", i32 468, i32 3}
!32 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.4, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @analog_init_masks._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @analog_init_masks._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @analog_chf, !37, !"analog_chf", i1 false, i1 false}
!37 = !{!"../drivers/input/joystick/analog.c", i32 92, i32 22}
!38 = distinct !{null, !39, !"analog_pads", i1 false, i1 false}
!39 = !{!"../drivers/input/joystick/analog.c", i32 86, i32 14}
!40 = !{ptr @analog_axes, !41, !"analog_axes", i1 false, i1 false}
!41 = !{!"../drivers/input/joystick/analog.c", i32 84, i32 14}
!42 = distinct !{null, !43, !"analog_exts", i1 false, i1 false}
!43 = !{!"../drivers/input/joystick/analog.c", i32 87, i32 14}
!44 = !{ptr @analog_hats, !45, !"analog_hats", i1 false, i1 false}
!45 = !{!"../drivers/input/joystick/analog.c", i32 85, i32 14}
!46 = !{ptr @.str.5, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/input/joystick/analog.c", i32 374, i32 4}
!48 = !{ptr @.str.6, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/input/joystick/analog.c", i32 345, i32 21}
!50 = !{ptr @.str.7, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/input/joystick/analog.c", i32 351, i32 22}
!52 = !{ptr @.str.8, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/input/joystick/analog.c", i32 355, i32 22}
!54 = !{ptr @.str.9, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/input/joystick/analog.c", i32 357, i32 55}
!56 = !{ptr @.str.10, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/input/joystick/analog.c", i32 357, i32 67}
!58 = !{ptr @.str.11, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/input/joystick/analog.c", i32 359, i32 55}
!60 = !{ptr @.str.12, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/input/joystick/analog.c", i32 359, i32 68}
!62 = !{ptr @analog_pad_btn, !63, !"analog_pad_btn", i1 false, i1 false}
!63 = !{!"../drivers/input/joystick/analog.c", i32 88, i32 14}
!64 = !{ptr @analog_joy_btn, !65, !"analog_joy_btn", i1 false, i1 false}
!65 = !{!"../drivers/input/joystick/analog.c", i32 89, i32 14}
!66 = !{ptr @.str.13, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/input/joystick/analog.c", i32 630, i32 2}
!68 = !{ptr @.str.14, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @analog_disconnect._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @analog_disconnect._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.15, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/input/joystick/analog.c", i32 675, i32 3}
!73 = !{ptr @.str.16, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @analog_parse_options._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @analog_parse_options._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.17, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/input/joystick/analog.c", i32 642, i32 4}
!78 = !{ptr @.str.18, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/input/joystick/analog.c", i32 643, i32 4}
!80 = !{ptr @.str.19, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/input/joystick/analog.c", i32 644, i32 4}
!82 = !{ptr @.str.20, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/input/joystick/analog.c", i32 645, i32 4}
!84 = !{ptr @.str.21, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/input/joystick/analog.c", i32 646, i32 4}
!86 = !{ptr @.str.22, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/input/joystick/analog.c", i32 647, i32 4}
!88 = !{ptr @.str.23, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/input/joystick/analog.c", i32 648, i32 4}
!90 = !{ptr @.str.24, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/input/joystick/analog.c", i32 649, i32 4}
!92 = !{ptr @.str.25, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/input/joystick/analog.c", i32 650, i32 4}
!94 = !{ptr @.str.26, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/input/joystick/analog.c", i32 651, i32 4}
!96 = !{ptr @analog_types, !97, !"analog_types", i1 false, i1 false}
!97 = !{!"../drivers/input/joystick/analog.c", i32 641, i32 28}
!98 = !{i32 1, !"wchar_size", i32 2}
!99 = !{i32 1, !"min_enum_size", i32 4}
!100 = !{i32 8, !"branch-target-enforcement", i32 0}
!101 = !{i32 8, !"sign-return-address", i32 0}
!102 = !{i32 8, !"sign-return-address-all", i32 0}
!103 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!104 = !{i32 7, !"uwtable", i32 1}
!105 = !{i32 7, !"frame-pointer", i32 2}
!106 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!107 = !{!"auto-init"}
!108 = !{i64 597626, i64 597687}
!109 = !{i64 6027098}
!110 = !{i64 2153587024}
!111 = !{i64 600358}
!112 = !{!"branch_weights", i32 1, i32 2000}
!113 = !{i64 600643}
!114 = !{i64 2153586449}
!115 = !{i64 6026703}
!116 = !{i64 598061}
