; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-apple.c_pt.bc'
source_filename = "../drivers/hid/hid-apple.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.hid_driver = type { ptr, ptr, %struct.list_head, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hid_device_id = type { i16, i16, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.apple_key_translation = type { i16, i16, i8 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.apple_sc = type { ptr, i32, i32, i32, [24 x i32], %struct.timer_list }
%struct.hid_report = type { %struct.list_head, %struct.list_head, i32, i32, i32, [256 x ptr], i32, i32, ptr }
%struct.hid_field = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i16 }
%struct.hid_usage = type { i32, i32, i32, i8, i8, i16, i8, i8, i8, i8, i16 }
%struct.hid_input = type { %struct.list_head, ptr, ptr, ptr, i8, %struct.list_head, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__param_str_fnmode = internal constant [17 x i8] c"hid_apple.fnmode\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@fnmode = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_fnmode = internal constant %struct.kernel_param { ptr @__param_str_fnmode, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @fnmode } }, section "__param", align 4
@__UNIQUE_ID_fnmodetype223 = internal constant [31 x i8] c"hid_apple.parmtype=fnmode:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_fnmode224 = internal constant [104 x i8] c"hid_apple.parm=fnmode:Mode of fn key on Apple keyboards (0 = disabled, [1] = fkeyslast, 2 = fkeysfirst)\00", section ".modinfo", align 1
@__param_str_iso_layout = internal constant [21 x i8] c"hid_apple.iso_layout\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@iso_layout = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_iso_layout = internal constant %struct.kernel_param { ptr @__param_str_iso_layout, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @iso_layout } }, section "__param", align 4
@__UNIQUE_ID_iso_layouttype225 = internal constant [34 x i8] c"hid_apple.parmtype=iso_layout:int\00", section ".modinfo", align 1
@__UNIQUE_ID_iso_layout226 = internal constant [124 x i8] c"hid_apple.parm=iso_layout:Swap the backtick/tilde and greater-than/less-than keys. ([-1] = auto, 0 = disabled, 1 = enabled)\00", section ".modinfo", align 1
@__param_str_swap_opt_cmd = internal constant [23 x i8] c"hid_apple.swap_opt_cmd\00", align 1
@swap_opt_cmd = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_swap_opt_cmd = internal constant %struct.kernel_param { ptr @__param_str_swap_opt_cmd, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @swap_opt_cmd } }, section "__param", align 4
@__UNIQUE_ID_swap_opt_cmdtype227 = internal constant [37 x i8] c"hid_apple.parmtype=swap_opt_cmd:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_swap_opt_cmd228 = internal constant [198 x i8] c"hid_apple.parm=swap_opt_cmd:Swap the Option (\22Alt\22) and Command (\22Flag\22) keys. (For people who want to keep Windows PC keyboard muscle memory. [0] = as-is, Mac layout. 1 = swapped, Windows layout.)\00", section ".modinfo", align 1
@__param_str_swap_fn_leftctrl = internal constant [27 x i8] c"hid_apple.swap_fn_leftctrl\00", align 1
@swap_fn_leftctrl = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_swap_fn_leftctrl = internal constant %struct.kernel_param { ptr @__param_str_swap_fn_leftctrl, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @swap_fn_leftctrl } }, section "__param", align 4
@__UNIQUE_ID_swap_fn_leftctrltype229 = internal constant [41 x i8] c"hid_apple.parmtype=swap_fn_leftctrl:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_swap_fn_leftctrl230 = internal constant [172 x i8] c"hid_apple.parm=swap_fn_leftctrl:Swap the Fn and left Control keys. (For people who want to keep PC keyboard muscle memory. [0] = as-is, Mac layout, 1 = swapped, PC layout)\00", section ".modinfo", align 1
@__initcall__kmod_hid_apple__231_778_apple_driver_init6 = internal global ptr @apple_driver_init, section ".initcall6.init", align 4
@apple_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.1, ptr @apple_devices, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @apple_probe, ptr @apple_remove, ptr null, ptr null, ptr null, ptr @apple_event, ptr null, ptr @apple_report_fixup, ptr @apple_input_mapping, ptr @apple_input_mapped, ptr @apple_input_configured, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_apple_driver_exit = internal global ptr @apple_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file232 = internal constant [37 x i8] c"hid_apple.file=drivers/hid/hid-apple\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [22 x i8] c"hid_apple.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hid_apple\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"apple\00", [26 x i8] zeroinitializer }, align 32
@apple_devices = internal constant { [87 x %struct.hid_device_id], [336 x i8] } { [87 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 1452, i32 772, i32 96 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 526, i32 260 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 527, i32 260 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 532, i32 260 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 533, i32 260 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 534, i32 260 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 535, i32 260 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 536, i32 260 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 537, i32 261 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 538, i32 260 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 539, i32 260 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 540, i32 261 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 541, i32 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 542, i32 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 543, i32 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 544, i32 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 545, i32 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 546, i32 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 553, i32 260 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 554, i32 260 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 555, i32 261 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 591, i32 4 }, %struct.hid_device_id { i16 5, i16 0, i32 1452, i32 591, i32 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 592, i32 4 }, %struct.hid_device_id { i16 5, i16 0, i32 1452, i32 592, i32 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 593, i32 4 }, %struct.hid_device_id { i16 5, i16 0, i32 1452, i32 556, i32 260 }, %struct.hid_device_id { i16 5, i16 0, i32 1452, i32 557, i32 276 }, %struct.hid_device_id { i16 5, i16 0, i32 1452, i32 598, i32 276 }, %struct.hid_device_id { i16 5, i16 0, i32 1452, i32 597, i32 260 }, %struct.hid_device_id { i16 5, i16 0, i32 1452, i32 599, i32 260 }, %struct.hid_device_id { i16 5, i16 0, i32 1452, i32 558, i32 260 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 615, i32 532 }, %struct.hid_device_id { i16 5, i16 0, i32 76, i32 615, i32 20 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 620, i32 532 }, %struct.hid_device_id { i16 5, i16 0, i32 76, i32 620, i32 20 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 547, i32 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 548, i32 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 549, i32 5 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 560, i32 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 561, i32 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 562, i32 5 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 566, i32 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 567, i32 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 568, i32 5 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 575, i32 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 576, i32 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 577, i32 5 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 578, i32 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 579, i32 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 580, i32 5 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 581, i32 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 582, i32 20 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 583, i32 5 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 588, i32 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 589, i32 20 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 590, i32 5 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 585, i32 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 586, i32 20 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 587, i32 5 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 594, i32 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 595, i32 20 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 596, i32 5 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 610, i32 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 611, i32 20 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 612, i32 5 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 601, i32 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 602, i32 20 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 603, i32 5 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 656, i32 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 657, i32 20 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 658, i32 5 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 626, i32 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 627, i32 20 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 628, i32 5 }, %struct.hid_device_id { i16 5, i16 0, i32 1452, i32 569, i32 260 }, %struct.hid_device_id { i16 5, i16 0, i32 1452, i32 570, i32 276 }, %struct.hid_device_id { i16 5, i16 0, i32 1452, i32 571, i32 260 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 778, i32 260 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 779, i32 260 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 668, i32 20 }, %struct.hid_device_id { i16 5, i16 0, i32 76, i32 668, i32 20 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 666, i32 20 }, %struct.hid_device_id { i16 5, i16 0, i32 76, i32 666, i32 20 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 671, i32 20 }, %struct.hid_device_id { i16 5, i16 0, i32 76, i32 671, i32 20 }, %struct.hid_device_id zeroinitializer], [336 x i8] zeroinitializer }, align 32
@apple_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 542, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"can't alloc apple descriptor\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"apple_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/hid/hid-apple.c\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@apple_probe._entry_ptr = internal global ptr @apple_probe._entry, section ".printk_index", align 4
@apple_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 553, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"parse failed\0A\00", [18 x i8] zeroinitializer }, align 32
@apple_probe._entry_ptr.9 = internal global ptr @apple_probe._entry.7, section ".printk_index", align 4
@apple_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 559, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hw start failed\0A\00", [47 x i8] zeroinitializer }, align 32
@apple_probe._entry_ptr.12 = internal global ptr @apple_probe._entry.10, section ".printk_index", align 4
@apple_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"(&asc->battery_timer)\00", [42 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@apple2021_fn_keys = internal constant { [19 x %struct.apple_key_translation], [46 x i8] } { [19 x %struct.apple_key_translation] [%struct.apple_key_translation { i16 14, i16 111, i8 0 }, %struct.apple_key_translation { i16 28, i16 110, i8 0 }, %struct.apple_key_translation { i16 59, i16 224, i8 1 }, %struct.apple_key_translation { i16 60, i16 225, i8 1 }, %struct.apple_key_translation { i16 61, i16 120, i8 1 }, %struct.apple_key_translation { i16 62, i16 217, i8 1 }, %struct.apple_key_translation { i16 63, i16 248, i8 1 }, %struct.apple_key_translation { i16 64, i16 142, i8 1 }, %struct.apple_key_translation { i16 65, i16 165, i8 1 }, %struct.apple_key_translation { i16 66, i16 164, i8 1 }, %struct.apple_key_translation { i16 67, i16 163, i8 1 }, %struct.apple_key_translation { i16 68, i16 113, i8 1 }, %struct.apple_key_translation { i16 87, i16 114, i8 1 }, %struct.apple_key_translation { i16 88, i16 115, i8 1 }, %struct.apple_key_translation { i16 103, i16 104, i8 0 }, %struct.apple_key_translation { i16 108, i16 109, i8 0 }, %struct.apple_key_translation { i16 105, i16 102, i8 0 }, %struct.apple_key_translation { i16 106, i16 107, i8 0 }, %struct.apple_key_translation zeroinitializer], [46 x i8] zeroinitializer }, align 32
@macbookair_fn_keys = internal constant { [18 x %struct.apple_key_translation], [52 x i8] } { [18 x %struct.apple_key_translation] [%struct.apple_key_translation { i16 14, i16 111, i8 0 }, %struct.apple_key_translation { i16 28, i16 110, i8 0 }, %struct.apple_key_translation { i16 59, i16 224, i8 1 }, %struct.apple_key_translation { i16 60, i16 225, i8 1 }, %struct.apple_key_translation { i16 61, i16 120, i8 1 }, %struct.apple_key_translation { i16 62, i16 204, i8 1 }, %struct.apple_key_translation { i16 64, i16 165, i8 1 }, %struct.apple_key_translation { i16 65, i16 164, i8 1 }, %struct.apple_key_translation { i16 66, i16 163, i8 1 }, %struct.apple_key_translation { i16 67, i16 113, i8 1 }, %struct.apple_key_translation { i16 68, i16 114, i8 1 }, %struct.apple_key_translation { i16 87, i16 115, i8 1 }, %struct.apple_key_translation { i16 88, i16 161, i8 1 }, %struct.apple_key_translation { i16 103, i16 104, i8 0 }, %struct.apple_key_translation { i16 108, i16 109, i8 0 }, %struct.apple_key_translation { i16 105, i16 102, i8 0 }, %struct.apple_key_translation { i16 106, i16 107, i8 0 }, %struct.apple_key_translation zeroinitializer], [52 x i8] zeroinitializer }, align 32
@powerbook_fn_keys = internal constant { [16 x %struct.apple_key_translation], [32 x i8] } { [16 x %struct.apple_key_translation] [%struct.apple_key_translation { i16 14, i16 111, i8 0 }, %struct.apple_key_translation { i16 59, i16 224, i8 1 }, %struct.apple_key_translation { i16 60, i16 225, i8 1 }, %struct.apple_key_translation { i16 61, i16 113, i8 1 }, %struct.apple_key_translation { i16 62, i16 114, i8 1 }, %struct.apple_key_translation { i16 63, i16 115, i8 1 }, %struct.apple_key_translation { i16 64, i16 69, i8 1 }, %struct.apple_key_translation { i16 65, i16 227, i8 1 }, %struct.apple_key_translation { i16 66, i16 228, i8 1 }, %struct.apple_key_translation { i16 67, i16 229, i8 1 }, %struct.apple_key_translation { i16 68, i16 230, i8 1 }, %struct.apple_key_translation { i16 103, i16 104, i8 0 }, %struct.apple_key_translation { i16 108, i16 109, i8 0 }, %struct.apple_key_translation { i16 105, i16 102, i8 0 }, %struct.apple_key_translation { i16 106, i16 107, i8 0 }, %struct.apple_key_translation zeroinitializer], [32 x i8] zeroinitializer }, align 32
@apple_fn_keys = internal constant { [19 x %struct.apple_key_translation], [46 x i8] } { [19 x %struct.apple_key_translation] [%struct.apple_key_translation { i16 14, i16 111, i8 0 }, %struct.apple_key_translation { i16 28, i16 110, i8 0 }, %struct.apple_key_translation { i16 59, i16 224, i8 1 }, %struct.apple_key_translation { i16 60, i16 225, i8 1 }, %struct.apple_key_translation { i16 61, i16 120, i8 1 }, %struct.apple_key_translation { i16 62, i16 204, i8 1 }, %struct.apple_key_translation { i16 63, i16 229, i8 1 }, %struct.apple_key_translation { i16 64, i16 230, i8 1 }, %struct.apple_key_translation { i16 65, i16 165, i8 1 }, %struct.apple_key_translation { i16 66, i16 164, i8 1 }, %struct.apple_key_translation { i16 67, i16 163, i8 1 }, %struct.apple_key_translation { i16 68, i16 113, i8 1 }, %struct.apple_key_translation { i16 87, i16 114, i8 1 }, %struct.apple_key_translation { i16 88, i16 115, i8 1 }, %struct.apple_key_translation { i16 103, i16 104, i8 0 }, %struct.apple_key_translation { i16 108, i16 109, i8 0 }, %struct.apple_key_translation { i16 105, i16 102, i8 0 }, %struct.apple_key_translation { i16 106, i16 107, i8 0 }, %struct.apple_key_translation zeroinitializer], [46 x i8] zeroinitializer }, align 32
@powerbook_numlock_keys = internal constant { [20 x %struct.apple_key_translation], [40 x i8] } { [20 x %struct.apple_key_translation] [%struct.apple_key_translation { i16 36, i16 79, i8 0 }, %struct.apple_key_translation { i16 37, i16 80, i8 0 }, %struct.apple_key_translation { i16 38, i16 81, i8 0 }, %struct.apple_key_translation { i16 22, i16 75, i8 0 }, %struct.apple_key_translation { i16 23, i16 76, i8 0 }, %struct.apple_key_translation { i16 24, i16 77, i8 0 }, %struct.apple_key_translation { i16 8, i16 71, i8 0 }, %struct.apple_key_translation { i16 9, i16 72, i8 0 }, %struct.apple_key_translation { i16 10, i16 73, i8 0 }, %struct.apple_key_translation { i16 50, i16 82, i8 0 }, %struct.apple_key_translation { i16 52, i16 83, i8 0 }, %struct.apple_key_translation { i16 53, i16 78, i8 0 }, %struct.apple_key_translation { i16 39, i16 74, i8 0 }, %struct.apple_key_translation { i16 25, i16 55, i8 0 }, %struct.apple_key_translation { i16 12, i16 117, i8 0 }, %struct.apple_key_translation { i16 11, i16 98, i8 0 }, %struct.apple_key_translation { i16 64, i16 69, i8 0 }, %struct.apple_key_translation { i16 96, i16 96, i8 0 }, %struct.apple_key_translation { i16 14, i16 14, i8 0 }, %struct.apple_key_translation zeroinitializer], [40 x i8] zeroinitializer }, align 32
@apple_iso_keyboard = internal constant { [3 x %struct.apple_key_translation], [46 x i8] } { [3 x %struct.apple_key_translation] [%struct.apple_key_translation { i16 41, i16 86, i8 0 }, %struct.apple_key_translation { i16 86, i16 41, i8 0 }, %struct.apple_key_translation zeroinitializer], [46 x i8] zeroinitializer }, align 32
@swapped_option_cmd_keys = internal constant { [5 x %struct.apple_key_translation], [34 x i8] } { [5 x %struct.apple_key_translation] [%struct.apple_key_translation { i16 56, i16 125, i8 0 }, %struct.apple_key_translation { i16 125, i16 56, i8 0 }, %struct.apple_key_translation { i16 100, i16 126, i8 0 }, %struct.apple_key_translation { i16 126, i16 100, i8 0 }, %struct.apple_key_translation zeroinitializer], [34 x i8] zeroinitializer }, align 32
@apple_report_fixup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 416, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"fixing up Magic Keyboard JIS report descriptor\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"apple_report_fixup\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@apple_report_fixup._entry_ptr = internal global ptr @apple_report_fixup._entry, section ".printk_index", align 4
@apple_report_fixup._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.15, ptr @.str.4, i32 423, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"fixing up MacBook JIS keyboard report descriptor\0A\00", [46 x i8] zeroinitializer }, align 32
@apple_report_fixup._entry_ptr.19 = internal global ptr @apple_report_fixup._entry.17, section ".printk_index", align 4
@apple_report_fixup._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.15, ptr @.str.4, i32 438, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"fixing up Magic Keyboard battery report descriptor\0A\00", [44 x i8] zeroinitializer }, align 32
@apple_report_fixup._entry_ptr.22 = internal global ptr @apple_report_fixup._entry.20, section ".printk_index", align 4
@hid_map_usage._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.hid_map_usage = private unnamed_addr constant [14 x i8] c"hid_map_usage\00", align 1
@hid_map_usage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @__func__.hid_map_usage, ptr @.str.25, i32 1037, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014hid_apple: %s: Invalid code %d type %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/hid.h\00", [44 x i8] zeroinitializer }, align 32
@hid_map_usage._entry_ptr = internal global ptr @hid_map_usage._entry, section ".printk_index", align 4
@apple_input_configured._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.4, i32 526, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"Fn key not found (Apple Wireless Keyboard clone?), disabling Fn key handling\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"apple_input_configured\00", [41 x i8] zeroinitializer }, align 32
@apple_input_configured._entry_ptr = internal global ptr @apple_input_configured._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 666, i64 668, i64 671]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.29 = internal global [21 x i64] [i64 19, i64 16, i64 8, i64 9, i64 10, i64 11, i64 12, i64 14, i64 22, i64 23, i64 24, i64 25, i64 36, i64 37, i64 38, i64 39, i64 50, i64 52, i64 53, i64 64, i64 96]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 16, i64 41, i64 86]
@__sancov_gen_cov_switch_values.31 = internal global [6 x i64] [i64 4, i64 16, i64 56, i64 100, i64 125, i64 126]
@__sancov_gen_cov_switch_values.32 = internal global [5 x i64] [i64 3, i64 32, i64 16711683, i64 4278190083, i64 4278255619]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 16, i64 257, i64 258]
@___asan_gen_.34 = private unnamed_addr constant [7 x i8] c"fnmode\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 42, i32 21 }
@___asan_gen_.37 = private unnamed_addr constant [11 x i8] c"iso_layout\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 47, i32 12 }
@___asan_gen_.40 = private unnamed_addr constant [13 x i8] c"swap_opt_cmd\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 52, i32 21 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"swap_fn_leftctrl\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 58, i32 21 }
@___asan_gen_.46 = private unnamed_addr constant [13 x i8] c"apple_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 767, i32 26 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 778, i32 1 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 768, i32 10 }
@___asan_gen_.55 = private unnamed_addr constant [14 x i8] c"apple_devices\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 580, i32 35 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 542, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 553, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 559, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 563, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [18 x i8] c"apple2021_fn_keys\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 79, i32 43 }
@___asan_gen_.97 = private unnamed_addr constant [19 x i8] c"macbookair_fn_keys\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 101, i32 43 }
@___asan_gen_.100 = private unnamed_addr constant [18 x i8] c"powerbook_fn_keys\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 144, i32 43 }
@___asan_gen_.103 = private unnamed_addr constant [14 x i8] c"apple_fn_keys\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 122, i32 43 }
@___asan_gen_.106 = private unnamed_addr constant [23 x i8] c"powerbook_numlock_keys\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 163, i32 43 }
@___asan_gen_.109 = private unnamed_addr constant [19 x i8] c"apple_iso_keyboard\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 186, i32 43 }
@___asan_gen_.112 = private unnamed_addr constant [24 x i8] c"swapped_option_cmd_keys\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 192, i32 43 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 415, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 422, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 437, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [23 x i8] c"../include/linux/hid.h\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 1036, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.160 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.161 = private constant [27 x i8] c"../drivers/hid/hid-apple.c\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 526, i32 3 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_fnmode224, ptr @__UNIQUE_ID_fnmodetype223, ptr @__UNIQUE_ID_iso_layout226, ptr @__UNIQUE_ID_iso_layouttype225, ptr @__UNIQUE_ID_license233, ptr @__UNIQUE_ID_swap_fn_leftctrl230, ptr @__UNIQUE_ID_swap_fn_leftctrltype229, ptr @__UNIQUE_ID_swap_opt_cmd228, ptr @__UNIQUE_ID_swap_opt_cmdtype227, ptr @__exitcall_apple_driver_exit, ptr @__initcall__kmod_hid_apple__231_778_apple_driver_init6, ptr @__param_fnmode, ptr @__param_iso_layout, ptr @__param_swap_fn_leftctrl, ptr @__param_swap_opt_cmd, ptr @apple_driver_exit, ptr @apple_input_configured._entry, ptr @apple_input_configured._entry_ptr, ptr @apple_probe._entry, ptr @apple_probe._entry.10, ptr @apple_probe._entry.7, ptr @apple_probe._entry_ptr, ptr @apple_probe._entry_ptr.12, ptr @apple_probe._entry_ptr.9, ptr @apple_report_fixup._entry, ptr @apple_report_fixup._entry.17, ptr @apple_report_fixup._entry.20, ptr @apple_report_fixup._entry_ptr, ptr @apple_report_fixup._entry_ptr.19, ptr @apple_report_fixup._entry_ptr.22, ptr @hid_map_usage._entry, ptr @hid_map_usage._entry_ptr, ptr @fnmode, ptr @iso_layout, ptr @swap_opt_cmd, ptr @swap_fn_leftctrl, ptr @apple_driver, ptr @.str, ptr @.str.1, ptr @apple_devices, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @apple_probe.__key, ptr @.str.13, ptr @apple2021_fn_keys, ptr @macbookair_fn_keys, ptr @powerbook_fn_keys, ptr @apple_fn_keys, ptr @powerbook_numlock_keys, ptr @apple_iso_keyboard, ptr @swapped_option_cmd_keys, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @hid_map_usage._rs, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fnmode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iso_layout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swap_opt_cmd to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swap_fn_leftctrl to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apple_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apple_devices to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apple_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apple_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apple_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apple_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apple2021_fn_keys to i32), i32 114, i32 160, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @macbookair_fn_keys to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @powerbook_fn_keys to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apple_fn_keys to i32), i32 114, i32 160, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @powerbook_numlock_keys to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apple_iso_keyboard to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swapped_option_cmd_keys to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apple_report_fixup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apple_report_fixup._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apple_report_fixup._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_map_usage._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_map_usage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apple_input_configured._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @apple_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @apple_driver, ptr noundef null, ptr noundef nonnull @.str) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @apple_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @hid_unregister_driver(ptr noundef nonnull @apple_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apple_probe(ptr noundef %hdev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.hid_device_id, ptr %id, i32 0, i32 4
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 160, i32 noundef 3520) #4
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %hdev, ptr %call.i, align 4
  %quirks3 = getelementptr inbounds %struct.apple_sc, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %quirks3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %1, ptr %quirks3, align 4
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call.i44 = tail call i32 @hid_open_report(ptr noundef %hdev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %tobool.not = icmp eq i32 %call.i44, 0
  br i1 %tobool.not, label %if.end10, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #7
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef 45) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %do.body19, label %do.end16

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #7
  br label %cleanup

do.body19:                                        ; preds = %if.end10
  %battery_timer = getelementptr inbounds %struct.apple_sc, ptr %call.i, i32 0, i32 5
  tail call void @init_timer_key(ptr noundef %battery_timer, ptr noundef nonnull @apple_battery_timer_tick, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @apple_probe.__key) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %5, 6000
  %call24 = tail call i32 @mod_timer(ptr noundef %battery_timer, i32 noundef %add) #4
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %quirks.i = getelementptr inbounds %struct.apple_sc, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body19.cleanup_crit_edge, label %lor.lhs.false.i

do.body19.cleanup_crit_edge:                      ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %do.body19
  %battery.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 23
  %10 = ptrtoint ptr %battery.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %battery.i, align 8
  %tobool1.not.i = icmp eq ptr %11, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %battery_report_type.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 27
  %12 = ptrtoint ptr %battery_report_type.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %battery_report_type.i, align 8
  %battery_report_id.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 28
  %14 = ptrtoint ptr %battery_report_id.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %battery_report_id.i, align 4
  %arrayidx3.i = getelementptr %struct.hid_device, ptr %hdev, i32 0, i32 15, i32 %13, i32 2, i32 %15
  %16 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx3.i, align 4
  %tobool4.not.i = icmp eq ptr %17, null
  br i1 %tobool4.not.i, label %if.end.i.cleanup_crit_edge, label %lor.lhs.false5.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false5.i:                                 ; preds = %if.end.i
  %maxfield.i = getelementptr inbounds %struct.hid_report, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %maxfield.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %maxfield.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i = icmp eq i32 %19, 0
  br i1 %cmp.i, label %lor.lhs.false5.i.cleanup_crit_edge, label %if.end7.i

lor.lhs.false5.i.cleanup_crit_edge:               ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7.i:                                        ; preds = %lor.lhs.false5.i
  %battery_capacity.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 24
  %20 = ptrtoint ptr %battery_capacity.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %battery_capacity.i, align 4
  %battery_max.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 26
  %22 = ptrtoint ptr %battery_max.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %battery_max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp8.i = icmp eq i32 %21, %23
  br i1 %cmp8.i, label %if.end7.i.cleanup_crit_edge, label %if.end10.i

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end10.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @hid_hw_request(ptr noundef %hdev, ptr noundef nonnull %17, i32 noundef 1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end10.i, %if.end7.i.cleanup_crit_edge, %lor.lhs.false5.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %do.body19.cleanup_crit_edge, %do.end16, %do.end8, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ %call.i44, %do.end8 ], [ %call11, %do.end16 ], [ 0, %do.body19.cleanup_crit_edge ], [ 0, %lor.lhs.false.i.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %lor.lhs.false5.i.cleanup_crit_edge ], [ 0, %if.end7.i.cleanup_crit_edge ], [ 0, %if.end10.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @apple_remove(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %battery_timer = getelementptr inbounds %struct.apple_sc, ptr %1, i32 0, i32 5
  %call1 = tail call i32 @del_timer_sync(ptr noundef %battery_timer) #4
  tail call void @hid_hw_stop(ptr noundef %hdev) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apple_event(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readonly %field, ptr nocapture noundef readonly %usage, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %claimed = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 33
  %2 = ptrtoint ptr %claimed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %claimed, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %hidinput = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 19
  %4 = ptrtoint ptr %hidinput to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hidinput, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %type = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %lor.lhs.false2.cleanup_crit_edge, label %if.end

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %quirks = getelementptr inbounds %struct.apple_sc, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %quirks, align 4
  %and4 = and i32 %9, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end11_crit_edge, label %land.lhs.true

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %code = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %10 = ptrtoint ptr %code to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %code, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %11)
  %cmp = icmp eq i16 %11, 6
  br i1 %cmp, label %if.then7, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then7:                                         ; preds = %land.lhs.true
  %input = getelementptr inbounds %struct.hid_input, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %input, align 4
  %14 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %usage, align 4
  %sub = sub i32 0, %value
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp.i = icmp eq i8 %7, 1
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then7.input_event_with_scancode.exit_crit_edge

if.then7.input_event_with_scancode.exit_crit_edge: ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  br label %input_event_with_scancode.exit

land.lhs.true.i:                                  ; preds = %if.then7
  %key.i = getelementptr inbounds %struct.input_dev, ptr %13, i32 0, i32 27
  %16 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %key.i, align 4
  %18 = xor i32 %17, -1
  %19 = lshr i32 %18, 6
  %20 = and i32 %19, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %sub)
  %cmp3.i = icmp eq i32 %20, %sub
  br i1 %cmp3.i, label %if.then.i, label %land.lhs.true.i.input_event_with_scancode.exit_crit_edge

land.lhs.true.i.input_event_with_scancode.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %input_event_with_scancode.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @input_event(ptr noundef %13, i32 noundef 4, i32 noundef 4, i32 noundef %15) #4
  br label %input_event_with_scancode.exit

input_event_with_scancode.exit:                   ; preds = %if.then.i, %land.lhs.true.i.input_event_with_scancode.exit_crit_edge, %if.then7.input_event_with_scancode.exit_crit_edge
  %conv.i = zext i8 %7 to i32
  tail call void @input_event(ptr noundef %13, i32 noundef %conv.i, i32 noundef 6, i32 noundef %sub) #4
  br label %cleanup

if.end11:                                         ; preds = %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %and13 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end11.cleanup_crit_edge, label %land.lhs.true15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true15:                                  ; preds = %if.end11
  %input17 = getelementptr inbounds %struct.hid_input, ptr %5, i32 0, i32 2
  %21 = ptrtoint ptr %input17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %input17, align 4
  %23 = load i32, ptr @swap_fn_leftctrl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i = icmp eq i32 %23, 0
  %code1.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %24 = ptrtoint ptr %code1.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %code1.i, align 2
  %conv2.i34 = zext i16 %25 to i32
  %conv3.i = select i1 %tobool.not.i, i32 464, i32 29
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3.i, i32 %conv2.i34)
  %cmp.i35 = icmp eq i32 %conv3.i, %conv2.i34
  br i1 %cmp.i35, label %if.then.i36, label %if.end.i

if.then.i36:                                      ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool5.i = icmp ne i32 %value, 0
  %lnot.ext.i = zext i1 %tobool5.i to i32
  %fn_on.i = getelementptr inbounds %struct.apple_sc, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %fn_on.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %lnot.ext.i, ptr %fn_on.i, align 4
  %27 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %28)
  %cmp.i.i = icmp eq i8 %28, 1
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.then.i36.cleanup.sink.split.i_crit_edge

if.then.i36.cleanup.sink.split.i_crit_edge:       ; preds = %if.then.i36
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

land.lhs.true.i.i:                                ; preds = %if.then.i36
  %29 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %usage, align 4
  %arrayidx.i.i.i = getelementptr %struct.input_dev, ptr %22, i32 0, i32 27, i32 14
  %31 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %33 = xor i32 %32, -1
  %34 = lshr i32 %33, 16
  %35 = and i32 %34, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %value)
  %cmp3.i.i = icmp eq i32 %35, %value
  br i1 %cmp3.i.i, label %land.lhs.true.i.i.cleanup.sink.split.sink.split.i_crit_edge, label %land.lhs.true.i.i.cleanup.sink.split.i_crit_edge

land.lhs.true.i.i.cleanup.sink.split.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

land.lhs.true.i.i.cleanup.sink.split.sink.split.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.sink.split.i

if.end.i:                                         ; preds = %land.lhs.true15
  %36 = load i32, ptr @fnmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool8.not.i = icmp eq i32 %36, 0
  br i1 %tobool8.not.i, label %if.end.i.if.end123.i_crit_edge, label %if.then9.i

if.end.i.if.end123.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end123.i

if.then9.i:                                       ; preds = %if.end.i
  %product.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 11
  %37 = ptrtoint ptr %product.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %product.i, align 8
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values)
  switch i32 %38, label %if.else.i [
    i32 668, label %if.then9.i.if.end39.i_crit_edge
    i32 666, label %if.then9.i.if.end39.i_crit_edge50
    i32 671, label %if.then9.i.if.end39.i_crit_edge51
  ]

if.then9.i.if.end39.i_crit_edge51:                ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39.i

if.then9.i.if.end39.i_crit_edge50:                ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39.i

if.then9.i.if.end39.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39.i

if.else.i:                                        ; preds = %if.then9.i
  %40 = add i32 %38, -575
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %40)
  %41 = icmp ult i32 %40, 6
  br i1 %41, label %if.else.i.if.end39.i_crit_edge, label %if.else27.i

if.else.i.if.end39.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39.i

if.else27.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  %42 = add i32 %38, -768
  call void @__sanitizer_cov_trace_const_cmp4(i32 -227, i32 %42)
  %43 = icmp ult i32 %42, -227
  %spec.select.i = select i1 %43, ptr @powerbook_fn_keys, ptr @apple_fn_keys
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.else27.i, %if.else.i.if.end39.i_crit_edge, %if.then9.i.if.end39.i_crit_edge, %if.then9.i.if.end39.i_crit_edge50, %if.then9.i.if.end39.i_crit_edge51
  %table.0.i = phi ptr [ @apple2021_fn_keys, %if.then9.i.if.end39.i_crit_edge ], [ @apple2021_fn_keys, %if.then9.i.if.end39.i_crit_edge50 ], [ @apple2021_fn_keys, %if.then9.i.if.end39.i_crit_edge51 ], [ @macbookair_fn_keys, %if.else.i.if.end39.i_crit_edge ], [ %spec.select.i, %if.else27.i ]
  %44 = ptrtoint ptr %table.0.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %table.0.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool.not8.i.i = icmp eq i16 %45, 0
  br i1 %tobool.not8.i.i, label %if.end39.i.if.end88.i_crit_edge, label %if.end39.i.for.body.i.i_crit_edge

if.end39.i.for.body.i.i_crit_edge:                ; preds = %if.end39.i
  br label %for.body.i.i

if.end39.i.if.end88.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end88.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end39.i.for.body.i.i_crit_edge
  %46 = phi i16 [ %48, %for.inc.i.i.for.body.i.i_crit_edge ], [ %45, %if.end39.i.for.body.i.i_crit_edge ]
  %trans.09.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %table.0.i, %if.end39.i.for.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %46, i16 %25)
  %cmp.i256.i = icmp eq i16 %46, %25
  br i1 %cmp.i256.i, label %apple_find_translation.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.apple_key_translation, ptr %trans.09.i.i, i32 1
  %47 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %incdec.ptr.i.i, align 2
  %tobool.not.i.i = icmp eq i16 %48, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i.if.end88.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

for.inc.i.i.if.end88.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end88.i

apple_find_translation.exit.i:                    ; preds = %for.body.i.i
  %tobool42.not.i = icmp eq ptr %trans.09.i.i, null
  br i1 %tobool42.not.i, label %apple_find_translation.exit.i.if.end88.i_crit_edge, label %if.then43.i

apple_find_translation.exit.i.if.end88.i_crit_edge: ; preds = %apple_find_translation.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end88.i

if.then43.i:                                      ; preds = %apple_find_translation.exit.i
  %49 = ptrtoint ptr %trans.09.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %trans.09.i.i, align 2
  %conv44.i = zext i16 %50 to i32
  %key.i37 = getelementptr inbounds %struct.input_dev, ptr %22, i32 0, i32 27
  %div3.i.i38 = lshr i32 %conv44.i, 5
  %arrayidx.i.i39 = getelementptr i32, ptr %key.i37, i32 %div3.i.i38
  %51 = ptrtoint ptr %arrayidx.i.i39 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %arrayidx.i.i39, align 4
  %and.i.i40 = and i32 %conv44.i, 31
  %53 = shl nuw i32 1, %and.i.i40
  %54 = and i32 %53, %52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool46.not.i = icmp eq i32 %54, 0
  br i1 %tobool46.not.i, label %if.else49.i, label %if.then43.i.if.end58.i_crit_edge

if.then43.i.if.end58.i_crit_edge:                 ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end58.i

if.else49.i:                                      ; preds = %if.then43.i
  %to.i = getelementptr inbounds %struct.apple_key_translation, ptr %trans.09.i.i, i32 0, i32 1
  %55 = ptrtoint ptr %to.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %to.i, align 2
  %conv50.i = zext i16 %56 to i32
  %div3.i245.i = lshr i32 %conv50.i, 5
  %arrayidx.i246.i = getelementptr i32, ptr %key.i37, i32 %div3.i245.i
  %57 = ptrtoint ptr %arrayidx.i246.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %arrayidx.i246.i, align 4
  %and.i247.i = and i32 %conv50.i, 31
  %59 = shl nuw i32 1, %and.i247.i
  %60 = and i32 %59, %58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool54.not.i = icmp eq i32 %60, 0
  br i1 %tobool54.not.i, label %if.else49.i.if.then60.i_crit_edge, label %if.else49.i.if.end58.i_crit_edge

if.else49.i.if.end58.i_crit_edge:                 ; preds = %if.else49.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end58.i

if.else49.i.if.then60.i_crit_edge:                ; preds = %if.else49.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then60.i

if.end58.i:                                       ; preds = %if.else49.i.if.end58.i_crit_edge, %if.then43.i.if.end58.i_crit_edge
  %code.0.i = phi i16 [ %50, %if.then43.i.if.end58.i_crit_edge ], [ %56, %if.else49.i.if.end58.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %code.0.i)
  %tobool59.not.i = icmp eq i16 %code.0.i, 0
  br i1 %tobool59.not.i, label %if.end58.i.if.then60.i_crit_edge, label %if.end58.i.if.end85.i_crit_edge

if.end58.i.if.end85.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end85.i

if.end58.i.if.then60.i_crit_edge:                 ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then60.i

if.then60.i:                                      ; preds = %if.end58.i.if.then60.i_crit_edge, %if.else49.i.if.then60.i_crit_edge
  %flags.i = getelementptr inbounds %struct.apple_key_translation, ptr %trans.09.i.i, i32 0, i32 2
  %61 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %flags.i, align 2
  %63 = and i8 %62, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool62.not.i = icmp eq i8 %63, 0
  br i1 %tobool62.not.i, label %if.else72.i, label %if.then63.i

if.then63.i:                                      ; preds = %if.then60.i
  %64 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %36, label %if.then63.i.cond.end.i_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb68.i
  ]

if.then63.i.cond.end.i_crit_edge:                 ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end.i

sw.bb.i:                                          ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #6
  %fn_on64.i = getelementptr inbounds %struct.apple_sc, ptr %1, i32 0, i32 2
  %65 = ptrtoint ptr %fn_on64.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %fn_on64.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool65.not.i = icmp eq i32 %66, 0
  br label %if.end76.i

sw.bb68.i:                                        ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #6
  %fn_on69.i = getelementptr inbounds %struct.apple_sc, ptr %1, i32 0, i32 2
  %67 = ptrtoint ptr %fn_on69.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %fn_on69.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool70.i = icmp ne i32 %68, 0
  br label %if.end76.i

if.else72.i:                                      ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #6
  %fn_on73.i = getelementptr inbounds %struct.apple_sc, ptr %1, i32 0, i32 2
  %69 = ptrtoint ptr %fn_on73.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %fn_on73.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool74.i = icmp ne i32 %70, 0
  br label %if.end76.i

if.end76.i:                                       ; preds = %if.else72.i, %sw.bb68.i, %sw.bb.i
  %do_translate.0.shrunk.i = phi i1 [ %tobool70.i, %sw.bb68.i ], [ %tobool65.not.i, %sw.bb.i ], [ %tobool74.i, %if.else72.i ]
  %to79.i = getelementptr inbounds %struct.apple_key_translation, ptr %trans.09.i.i, i32 0, i32 1
  %spec.select244.i = select i1 %do_translate.0.shrunk.i, ptr %to79.i, ptr %trans.09.i.i
  br label %cond.end.i

cond.end.i:                                       ; preds = %if.end76.i, %if.then63.i.cond.end.i_crit_edge
  %cond83.in.in.i = phi ptr [ %trans.09.i.i, %if.then63.i.cond.end.i_crit_edge ], [ %spec.select244.i, %if.end76.i ]
  %71 = ptrtoint ptr %cond83.in.in.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %cond83.in242.i = load i16, ptr %cond83.in.in.i, align 2
  br label %if.end85.i

if.end85.i:                                       ; preds = %cond.end.i, %if.end58.i.if.end85.i_crit_edge
  %code.1.i = phi i16 [ %code.0.i, %if.end58.i.if.end85.i_crit_edge ], [ %cond83.in242.i, %cond.end.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp.i257.i = icmp eq i8 %7, 1
  %conv2.i.i = zext i16 %code.1.i to i32
  br i1 %cmp.i257.i, label %land.lhs.true.i261.i, label %if.end85.i.cleanup.sink.split.i_crit_edge

if.end85.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

land.lhs.true.i261.i:                             ; preds = %if.end85.i
  %72 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %usage, align 4
  %div3.i.i.i = lshr i32 %conv2.i.i, 5
  %arrayidx.i.i259.i = getelementptr i32, ptr %key.i37, i32 %div3.i.i.i
  %74 = ptrtoint ptr %arrayidx.i.i259.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %arrayidx.i.i259.i, align 4
  %and.i.i.i = and i32 %conv2.i.i, 31
  %76 = xor i32 %75, -1
  %77 = lshr i32 %76, %and.i.i.i
  %78 = and i32 %77, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %value)
  %cmp3.i260.i = icmp eq i32 %78, %value
  br i1 %cmp3.i260.i, label %land.lhs.true.i261.i.cleanup.sink.split.sink.split.i_crit_edge, label %land.lhs.true.i261.i.cleanup.sink.split.i_crit_edge

land.lhs.true.i261.i.cleanup.sink.split.i_crit_edge: ; preds = %land.lhs.true.i261.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

land.lhs.true.i261.i.cleanup.sink.split.sink.split.i_crit_edge: ; preds = %land.lhs.true.i261.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.sink.split.i

if.end88.i:                                       ; preds = %apple_find_translation.exit.i.if.end88.i_crit_edge, %for.inc.i.i.if.end88.i_crit_edge, %if.end39.i.if.end88.i_crit_edge
  %and89.i = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89.i)
  %tobool90.not.i = icmp eq i32 %and89.i, 0
  br i1 %tobool90.not.i, label %if.end88.i.if.end123.i_crit_edge, label %land.lhs.true91.i

if.end88.i.if.end123.i_crit_edge:                 ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end123.i

land.lhs.true91.i:                                ; preds = %if.end88.i
  %pressed_numlock.i = getelementptr inbounds %struct.apple_sc, ptr %1, i32 0, i32 4
  %div3.i250.i = lshr i32 %conv2.i34, 5
  %arrayidx.i251.i = getelementptr i32, ptr %pressed_numlock.i, i32 %div3.i250.i
  %79 = ptrtoint ptr %arrayidx.i251.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %arrayidx.i251.i, align 4
  %and.i252.i = and i32 %conv2.i34, 31
  %81 = shl nuw i32 1, %and.i252.i
  %82 = and i32 %80, %81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool96.not.i = icmp eq i32 %82, 0
  br i1 %tobool96.not.i, label %lor.lhs.false97.i, label %land.lhs.true91.i.if.then101.i_crit_edge

land.lhs.true91.i.if.then101.i_crit_edge:         ; preds = %land.lhs.true91.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then101.i

lor.lhs.false97.i:                                ; preds = %land.lhs.true91.i
  %led.i = getelementptr inbounds %struct.input_dev, ptr %22, i32 0, i32 28
  %83 = ptrtoint ptr %led.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %led.i, align 4
  %and1.i255.i = and i32 %84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i255.i)
  %tobool100.not.i = icmp eq i32 %and1.i255.i, 0
  br i1 %tobool100.not.i, label %lor.lhs.false97.i.if.end123.i_crit_edge, label %lor.lhs.false97.i.if.then101.i_crit_edge

lor.lhs.false97.i.if.then101.i_crit_edge:         ; preds = %lor.lhs.false97.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then101.i

lor.lhs.false97.i.if.end123.i_crit_edge:          ; preds = %lor.lhs.false97.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end123.i

if.then101.i:                                     ; preds = %lor.lhs.false97.i.if.then101.i_crit_edge, %land.lhs.true91.i.if.then101.i_crit_edge
  %85 = zext i16 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.29)
  switch i16 %25, label %if.then101.i.cleanup_crit_edge [
    i16 36, label %if.then101.i.if.then105.i_crit_edge
    i16 37, label %if.then105.fold.split.i
    i16 38, label %if.then105.fold.split367.i
    i16 22, label %if.then105.fold.split368.i
    i16 23, label %if.then105.fold.split369.i
    i16 24, label %if.then105.fold.split370.i
    i16 8, label %if.then105.fold.split371.i
    i16 9, label %if.then105.fold.split372.i
    i16 10, label %if.then105.fold.split373.i
    i16 50, label %if.then105.fold.split374.i
    i16 52, label %if.then105.fold.split375.i
    i16 53, label %if.then105.fold.split376.i
    i16 39, label %if.then105.fold.split377.i
    i16 25, label %if.then105.fold.split378.i
    i16 12, label %if.then105.fold.split379.i
    i16 11, label %if.then105.fold.split380.i
    i16 64, label %if.then105.fold.split381.i
    i16 96, label %if.then105.fold.split382.i
    i16 14, label %if.then105.fold.split383.i
  ]

if.then101.i.if.then105.i_crit_edge:              ; preds = %if.then101.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then105.i

if.then101.i.cleanup_crit_edge:                   ; preds = %if.then101.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then105.fold.split.i:                          ; preds = %if.then101.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then105.i

if.then105.fold.split367.i:                       ; preds = %if.then101.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then105.i

if.then105.fold.split368.i:                       ; preds = %if.then101.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then105.i

if.then105.fold.split369.i:                       ; preds = %if.then101.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then105.i

if.then105.fold.split370.i:                       ; preds = %if.then101.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then105.i

if.then105.fold.split371.i:                       ; preds = %if.then101.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then105.i

if.then105.fold.split372.i:                       ; preds = %if.then101.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then105.i

if.then105.fold.split373.i:                       ; preds = %if.then101.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then105.i

if.then105.fold.split374.i:                       ; preds = %if.then101.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then105.i

if.then105.fold.split375.i:                       ; preds = %if.then101.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then105.i

if.then105.fold.split376.i:                       ; preds = %if.then101.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then105.i

if.then105.fold.split377.i:                       ; preds = %if.then101.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then105.i

if.then105.fold.split378.i:                       ; preds = %if.then101.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then105.i

if.then105.fold.split379.i:                       ; preds = %if.then101.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then105.i

if.then105.fold.split380.i:                       ; preds = %if.then101.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then105.i

if.then105.fold.split381.i:                       ; preds = %if.then101.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then105.i

if.then105.fold.split382.i:                       ; preds = %if.then101.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then105.i

if.then105.fold.split383.i:                       ; preds = %if.then101.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then105.i

if.then105.i:                                     ; preds = %if.then105.fold.split383.i, %if.then105.fold.split382.i, %if.then105.fold.split381.i, %if.then105.fold.split380.i, %if.then105.fold.split379.i, %if.then105.fold.split378.i, %if.then105.fold.split377.i, %if.then105.fold.split376.i, %if.then105.fold.split375.i, %if.then105.fold.split374.i, %if.then105.fold.split373.i, %if.then105.fold.split372.i, %if.then105.fold.split371.i, %if.then105.fold.split370.i, %if.then105.fold.split369.i, %if.then105.fold.split368.i, %if.then105.fold.split367.i, %if.then105.fold.split.i, %if.then101.i.if.then105.i_crit_edge
  %trans.09.i265.lcssa.i = phi ptr [ @powerbook_numlock_keys, %if.then101.i.if.then105.i_crit_edge ], [ getelementptr inbounds ([20 x %struct.apple_key_translation], ptr @powerbook_numlock_keys, i32 0, i32 1), %if.then105.fold.split.i ], [ getelementptr inbounds ([20 x %struct.apple_key_translation], ptr @powerbook_numlock_keys, i32 0, i32 2), %if.then105.fold.split367.i ], [ getelementptr inbounds ([20 x %struct.apple_key_translation], ptr @powerbook_numlock_keys, i32 0, i32 3), %if.then105.fold.split368.i ], [ getelementptr inbounds ([20 x %struct.apple_key_translation], ptr @powerbook_numlock_keys, i32 0, i32 4), %if.then105.fold.split369.i ], [ getelementptr inbounds ([20 x %struct.apple_key_translation], ptr @powerbook_numlock_keys, i32 0, i32 5), %if.then105.fold.split370.i ], [ getelementptr inbounds ([20 x %struct.apple_key_translation], ptr @powerbook_numlock_keys, i32 0, i32 6), %if.then105.fold.split371.i ], [ getelementptr inbounds ([20 x %struct.apple_key_translation], ptr @powerbook_numlock_keys, i32 0, i32 7), %if.then105.fold.split372.i ], [ getelementptr inbounds ([20 x %struct.apple_key_translation], ptr @powerbook_numlock_keys, i32 0, i32 8), %if.then105.fold.split373.i ], [ getelementptr inbounds ([20 x %struct.apple_key_translation], ptr @powerbook_numlock_keys, i32 0, i32 9), %if.then105.fold.split374.i ], [ getelementptr inbounds ([20 x %struct.apple_key_translation], ptr @powerbook_numlock_keys, i32 0, i32 10), %if.then105.fold.split375.i ], [ getelementptr inbounds ([20 x %struct.apple_key_translation], ptr @powerbook_numlock_keys, i32 0, i32 11), %if.then105.fold.split376.i ], [ getelementptr inbounds ([20 x %struct.apple_key_translation], ptr @powerbook_numlock_keys, i32 0, i32 12), %if.then105.fold.split377.i ], [ getelementptr inbounds ([20 x %struct.apple_key_translation], ptr @powerbook_numlock_keys, i32 0, i32 13), %if.then105.fold.split378.i ], [ getelementptr inbounds ([20 x %struct.apple_key_translation], ptr @powerbook_numlock_keys, i32 0, i32 14), %if.then105.fold.split379.i ], [ getelementptr inbounds ([20 x %struct.apple_key_translation], ptr @powerbook_numlock_keys, i32 0, i32 15), %if.then105.fold.split380.i ], [ getelementptr inbounds ([20 x %struct.apple_key_translation], ptr @powerbook_numlock_keys, i32 0, i32 16), %if.then105.fold.split381.i ], [ getelementptr inbounds ([20 x %struct.apple_key_translation], ptr @powerbook_numlock_keys, i32 0, i32 17), %if.then105.fold.split382.i ], [ getelementptr inbounds ([20 x %struct.apple_key_translation], ptr @powerbook_numlock_keys, i32 0, i32 18), %if.then105.fold.split383.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool106.not.i = icmp eq i32 %value, 0
  br i1 %tobool106.not.i, label %if.else112.i, label %if.then107.i

if.then107.i:                                     ; preds = %if.then105.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_set_bit(i32 noundef %conv2.i34, ptr noundef %pressed_numlock.i) #4
  br label %if.end117.i

if.else112.i:                                     ; preds = %if.then105.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_clear_bit(i32 noundef %conv2.i34, ptr noundef %pressed_numlock.i) #4
  br label %if.end117.i

if.end117.i:                                      ; preds = %if.else112.i, %if.then107.i
  %86 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %type, align 4
  %to119.i = getelementptr inbounds %struct.apple_key_translation, ptr %trans.09.i265.lcssa.i, i32 0, i32 1
  %88 = ptrtoint ptr %to119.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %to119.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %87)
  %cmp.i273.i = icmp eq i8 %87, 1
  %conv2.i274.i = zext i16 %89 to i32
  br i1 %cmp.i273.i, label %land.lhs.true.i280.i, label %if.end117.i.cleanup.sink.split.i_crit_edge

if.end117.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

land.lhs.true.i280.i:                             ; preds = %if.end117.i
  %90 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %usage, align 4
  %key.i275.i = getelementptr inbounds %struct.input_dev, ptr %22, i32 0, i32 27
  %div3.i.i276.i = lshr i32 %conv2.i274.i, 5
  %arrayidx.i.i277.i = getelementptr i32, ptr %key.i275.i, i32 %div3.i.i276.i
  %92 = ptrtoint ptr %arrayidx.i.i277.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %arrayidx.i.i277.i, align 4
  %and.i.i278.i = and i32 %conv2.i274.i, 31
  %94 = xor i32 %93, -1
  %95 = lshr i32 %94, %and.i.i278.i
  %96 = and i32 %95, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %96, i32 %value)
  %cmp3.i279.i = icmp eq i32 %96, %value
  br i1 %cmp3.i279.i, label %land.lhs.true.i280.i.cleanup.sink.split.sink.split.i_crit_edge, label %land.lhs.true.i280.i.cleanup.sink.split.i_crit_edge

land.lhs.true.i280.i.cleanup.sink.split.i_crit_edge: ; preds = %land.lhs.true.i280.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

land.lhs.true.i280.i.cleanup.sink.split.sink.split.i_crit_edge: ; preds = %land.lhs.true.i280.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.sink.split.i

if.end123.i:                                      ; preds = %lor.lhs.false97.i.if.end123.i_crit_edge, %if.end88.i.if.end123.i_crit_edge, %if.end.i.if.end123.i_crit_edge
  %97 = load i32, ptr @iso_layout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp124.i = icmp sgt i32 %97, 0
  br i1 %cmp124.i, label %if.end123.i.if.then136.i_crit_edge, label %lor.lhs.false126.i

if.end123.i.if.then136.i_crit_edge:               ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then136.i

lor.lhs.false126.i:                               ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp127.i = icmp eq i32 %97, 0
  %and131.i = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131.i)
  %tobool132.not.i = icmp eq i32 %and131.i, 0
  %or.cond = select i1 %cmp127.i, i1 true, i1 %tobool132.not.i
  br i1 %or.cond, label %lor.lhs.false126.i.if.end145.i_crit_edge, label %land.lhs.true133.i

lor.lhs.false126.i.if.end145.i_crit_edge:         ; preds = %lor.lhs.false126.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end145.i

land.lhs.true133.i:                               ; preds = %lor.lhs.false126.i
  %country.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 14
  %98 = ptrtoint ptr %country.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %country.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %99)
  %cmp134.i = icmp eq i32 %99, 13
  br i1 %cmp134.i, label %land.lhs.true133.i.if.then136.i_crit_edge, label %land.lhs.true133.i.if.end145.i_crit_edge

land.lhs.true133.i.if.end145.i_crit_edge:         ; preds = %land.lhs.true133.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end145.i

land.lhs.true133.i.if.then136.i_crit_edge:        ; preds = %land.lhs.true133.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then136.i

if.then136.i:                                     ; preds = %land.lhs.true133.i.if.then136.i_crit_edge, %if.end123.i.if.then136.i_crit_edge
  %100 = zext i16 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.30)
  switch i16 %25, label %if.then136.i.if.end145.i_crit_edge [
    i16 41, label %if.then136.i.if.then140.i_crit_edge
    i16 86, label %if.then140.fold.split.i
  ]

if.then136.i.if.then140.i_crit_edge:              ; preds = %if.then136.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then140.i

if.then136.i.if.end145.i_crit_edge:               ; preds = %if.then136.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end145.i

if.then140.fold.split.i:                          ; preds = %if.then136.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then140.i

if.then140.i:                                     ; preds = %if.then140.fold.split.i, %if.then136.i.if.then140.i_crit_edge
  %trans.09.i284.lcssa.i = phi ptr [ @apple_iso_keyboard, %if.then136.i.if.then140.i_crit_edge ], [ getelementptr inbounds ([3 x %struct.apple_key_translation], ptr @apple_iso_keyboard, i32 0, i32 1), %if.then140.fold.split.i ]
  %to142.i = getelementptr inbounds %struct.apple_key_translation, ptr %trans.09.i284.lcssa.i, i32 0, i32 1
  %101 = ptrtoint ptr %to142.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %to142.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp.i292.i = icmp eq i8 %7, 1
  %conv2.i293.i = zext i16 %102 to i32
  br i1 %cmp.i292.i, label %land.lhs.true.i299.i, label %if.then140.i.cleanup.sink.split.i_crit_edge

if.then140.i.cleanup.sink.split.i_crit_edge:      ; preds = %if.then140.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

land.lhs.true.i299.i:                             ; preds = %if.then140.i
  %103 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %usage, align 4
  %key.i294.i = getelementptr inbounds %struct.input_dev, ptr %22, i32 0, i32 27
  %div3.i.i295.i = lshr i32 %conv2.i293.i, 5
  %arrayidx.i.i296.i = getelementptr i32, ptr %key.i294.i, i32 %div3.i.i295.i
  %105 = ptrtoint ptr %arrayidx.i.i296.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %arrayidx.i.i296.i, align 4
  %and.i.i297.i = and i32 %conv2.i293.i, 31
  %107 = xor i32 %106, -1
  %108 = lshr i32 %107, %and.i.i297.i
  %109 = and i32 %108, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %109, i32 %value)
  %cmp3.i298.i = icmp eq i32 %109, %value
  br i1 %cmp3.i298.i, label %land.lhs.true.i299.i.cleanup.sink.split.sink.split.i_crit_edge, label %land.lhs.true.i299.i.cleanup.sink.split.i_crit_edge

land.lhs.true.i299.i.cleanup.sink.split.i_crit_edge: ; preds = %land.lhs.true.i299.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

land.lhs.true.i299.i.cleanup.sink.split.sink.split.i_crit_edge: ; preds = %land.lhs.true.i299.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.sink.split.i

if.end145.i:                                      ; preds = %if.then136.i.if.end145.i_crit_edge, %land.lhs.true133.i.if.end145.i_crit_edge, %lor.lhs.false126.i.if.end145.i_crit_edge
  %110 = load i32, ptr @swap_opt_cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool146.not.i = icmp eq i32 %110, 0
  br i1 %tobool146.not.i, label %if.end145.i.if.end156.i_crit_edge, label %for.body.i305.preheader.i

if.end145.i.if.end156.i_crit_edge:                ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end156.i

for.body.i305.preheader.i:                        ; preds = %if.end145.i
  %111 = zext i16 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %111, ptr @__sancov_gen_cov_switch_values.31)
  switch i16 %25, label %for.body.i305.preheader.i.if.end156.i_crit_edge [
    i16 56, label %for.body.i305.preheader.i.if.then151.i_crit_edge
    i16 125, label %if.then151.fold.split.i
    i16 100, label %if.then151.fold.split384.i
    i16 126, label %if.then151.fold.split385.i
  ]

for.body.i305.preheader.i.if.then151.i_crit_edge: ; preds = %for.body.i305.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then151.i

for.body.i305.preheader.i.if.end156.i_crit_edge:  ; preds = %for.body.i305.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end156.i

if.then151.fold.split.i:                          ; preds = %for.body.i305.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then151.i

if.then151.fold.split384.i:                       ; preds = %for.body.i305.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then151.i

if.then151.fold.split385.i:                       ; preds = %for.body.i305.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then151.i

if.then151.i:                                     ; preds = %if.then151.fold.split385.i, %if.then151.fold.split384.i, %if.then151.fold.split.i, %for.body.i305.preheader.i.if.then151.i_crit_edge
  %trans.09.i303.lcssa.i = phi ptr [ @swapped_option_cmd_keys, %for.body.i305.preheader.i.if.then151.i_crit_edge ], [ getelementptr inbounds ([5 x %struct.apple_key_translation], ptr @swapped_option_cmd_keys, i32 0, i32 1), %if.then151.fold.split.i ], [ getelementptr inbounds ([5 x %struct.apple_key_translation], ptr @swapped_option_cmd_keys, i32 0, i32 2), %if.then151.fold.split384.i ], [ getelementptr inbounds ([5 x %struct.apple_key_translation], ptr @swapped_option_cmd_keys, i32 0, i32 3), %if.then151.fold.split385.i ]
  %to153.i = getelementptr inbounds %struct.apple_key_translation, ptr %trans.09.i303.lcssa.i, i32 0, i32 1
  %112 = ptrtoint ptr %to153.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %to153.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp.i311.i = icmp eq i8 %7, 1
  %conv2.i312.i = zext i16 %113 to i32
  br i1 %cmp.i311.i, label %land.lhs.true.i318.i, label %if.then151.i.cleanup.sink.split.i_crit_edge

if.then151.i.cleanup.sink.split.i_crit_edge:      ; preds = %if.then151.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

land.lhs.true.i318.i:                             ; preds = %if.then151.i
  %114 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %usage, align 4
  %key.i313.i = getelementptr inbounds %struct.input_dev, ptr %22, i32 0, i32 27
  %div3.i.i314.i = lshr i32 %conv2.i312.i, 5
  %arrayidx.i.i315.i = getelementptr i32, ptr %key.i313.i, i32 %div3.i.i314.i
  %116 = ptrtoint ptr %arrayidx.i.i315.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %arrayidx.i.i315.i, align 4
  %and.i.i316.i = and i32 %conv2.i312.i, 31
  %118 = xor i32 %117, -1
  %119 = lshr i32 %118, %and.i.i316.i
  %120 = and i32 %119, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %120, i32 %value)
  %cmp3.i317.i = icmp eq i32 %120, %value
  br i1 %cmp3.i317.i, label %land.lhs.true.i318.i.cleanup.sink.split.sink.split.i_crit_edge, label %land.lhs.true.i318.i.cleanup.sink.split.i_crit_edge

land.lhs.true.i318.i.cleanup.sink.split.i_crit_edge: ; preds = %land.lhs.true.i318.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

land.lhs.true.i318.i.cleanup.sink.split.sink.split.i_crit_edge: ; preds = %land.lhs.true.i318.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.sink.split.i

if.end156.i:                                      ; preds = %for.body.i305.preheader.i.if.end156.i_crit_edge, %if.end145.i.if.end156.i_crit_edge
  %tobool.not.not.i = xor i1 %tobool.not.i, true
  call void @__sanitizer_cov_trace_const_cmp2(i16 464, i16 %25)
  %cmp.i323.i = icmp eq i16 %25, 464
  %or.cond.i = select i1 %tobool.not.not.i, i1 %cmp.i323.i, i1 false
  br i1 %or.cond.i, label %if.then162.i, label %if.end156.i.cleanup_crit_edge

if.end156.i.cleanup_crit_edge:                    ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then162.i:                                     ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp.i330.i = icmp eq i8 %7, 1
  br i1 %cmp.i330.i, label %land.lhs.true.i337.i, label %if.then162.i.cleanup.sink.split.i_crit_edge

if.then162.i.cleanup.sink.split.i_crit_edge:      ; preds = %if.then162.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

land.lhs.true.i337.i:                             ; preds = %if.then162.i
  %121 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %usage, align 4
  %key.i332.i = getelementptr inbounds %struct.input_dev, ptr %22, i32 0, i32 27
  %123 = ptrtoint ptr %key.i332.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load volatile i32, ptr %key.i332.i, align 4
  %125 = xor i32 %124, -1
  %126 = lshr i32 %125, 29
  %127 = and i32 %126, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %127, i32 %value)
  %cmp3.i336.i = icmp eq i32 %127, %value
  br i1 %cmp3.i336.i, label %land.lhs.true.i337.i.cleanup.sink.split.sink.split.i_crit_edge, label %land.lhs.true.i337.i.cleanup.sink.split.i_crit_edge

land.lhs.true.i337.i.cleanup.sink.split.i_crit_edge: ; preds = %land.lhs.true.i337.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

land.lhs.true.i337.i.cleanup.sink.split.sink.split.i_crit_edge: ; preds = %land.lhs.true.i337.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.sink.split.i

cleanup.sink.split.sink.split.i:                  ; preds = %land.lhs.true.i337.i.cleanup.sink.split.sink.split.i_crit_edge, %land.lhs.true.i318.i.cleanup.sink.split.sink.split.i_crit_edge, %land.lhs.true.i299.i.cleanup.sink.split.sink.split.i_crit_edge, %land.lhs.true.i280.i.cleanup.sink.split.sink.split.i_crit_edge, %land.lhs.true.i261.i.cleanup.sink.split.sink.split.i_crit_edge, %land.lhs.true.i.i.cleanup.sink.split.sink.split.i_crit_edge
  %.sink386.i = phi i32 [ %30, %land.lhs.true.i.i.cleanup.sink.split.sink.split.i_crit_edge ], [ %73, %land.lhs.true.i261.i.cleanup.sink.split.sink.split.i_crit_edge ], [ %91, %land.lhs.true.i280.i.cleanup.sink.split.sink.split.i_crit_edge ], [ %104, %land.lhs.true.i299.i.cleanup.sink.split.sink.split.i_crit_edge ], [ %115, %land.lhs.true.i318.i.cleanup.sink.split.sink.split.i_crit_edge ], [ %122, %land.lhs.true.i337.i.cleanup.sink.split.sink.split.i_crit_edge ]
  %conv2.i274.sink.ph.i = phi i32 [ 464, %land.lhs.true.i.i.cleanup.sink.split.sink.split.i_crit_edge ], [ %conv2.i.i, %land.lhs.true.i261.i.cleanup.sink.split.sink.split.i_crit_edge ], [ %conv2.i274.i, %land.lhs.true.i280.i.cleanup.sink.split.sink.split.i_crit_edge ], [ %conv2.i293.i, %land.lhs.true.i299.i.cleanup.sink.split.sink.split.i_crit_edge ], [ %conv2.i312.i, %land.lhs.true.i318.i.cleanup.sink.split.sink.split.i_crit_edge ], [ 29, %land.lhs.true.i337.i.cleanup.sink.split.sink.split.i_crit_edge ]
  tail call void @input_event(ptr noundef %22, i32 noundef 4, i32 noundef 4, i32 noundef %.sink386.i) #4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %cleanup.sink.split.sink.split.i, %land.lhs.true.i337.i.cleanup.sink.split.i_crit_edge, %if.then162.i.cleanup.sink.split.i_crit_edge, %land.lhs.true.i318.i.cleanup.sink.split.i_crit_edge, %if.then151.i.cleanup.sink.split.i_crit_edge, %land.lhs.true.i299.i.cleanup.sink.split.i_crit_edge, %if.then140.i.cleanup.sink.split.i_crit_edge, %land.lhs.true.i280.i.cleanup.sink.split.i_crit_edge, %if.end117.i.cleanup.sink.split.i_crit_edge, %land.lhs.true.i261.i.cleanup.sink.split.i_crit_edge, %if.end85.i.cleanup.sink.split.i_crit_edge, %land.lhs.true.i.i.cleanup.sink.split.i_crit_edge, %if.then.i36.cleanup.sink.split.i_crit_edge
  %.sink.i = phi i8 [ %28, %if.then.i36.cleanup.sink.split.i_crit_edge ], [ 1, %land.lhs.true.i.i.cleanup.sink.split.i_crit_edge ], [ %7, %if.end85.i.cleanup.sink.split.i_crit_edge ], [ 1, %land.lhs.true.i261.i.cleanup.sink.split.i_crit_edge ], [ %87, %if.end117.i.cleanup.sink.split.i_crit_edge ], [ 1, %land.lhs.true.i280.i.cleanup.sink.split.i_crit_edge ], [ %7, %if.then140.i.cleanup.sink.split.i_crit_edge ], [ 1, %land.lhs.true.i299.i.cleanup.sink.split.i_crit_edge ], [ %7, %if.then151.i.cleanup.sink.split.i_crit_edge ], [ 1, %land.lhs.true.i318.i.cleanup.sink.split.i_crit_edge ], [ %7, %if.then162.i.cleanup.sink.split.i_crit_edge ], [ 1, %land.lhs.true.i337.i.cleanup.sink.split.i_crit_edge ], [ 1, %cleanup.sink.split.sink.split.i ]
  %conv2.i274.sink.i = phi i32 [ 464, %if.then.i36.cleanup.sink.split.i_crit_edge ], [ 464, %land.lhs.true.i.i.cleanup.sink.split.i_crit_edge ], [ %conv2.i.i, %if.end85.i.cleanup.sink.split.i_crit_edge ], [ %conv2.i.i, %land.lhs.true.i261.i.cleanup.sink.split.i_crit_edge ], [ %conv2.i274.i, %if.end117.i.cleanup.sink.split.i_crit_edge ], [ %conv2.i274.i, %land.lhs.true.i280.i.cleanup.sink.split.i_crit_edge ], [ %conv2.i293.i, %if.then140.i.cleanup.sink.split.i_crit_edge ], [ %conv2.i293.i, %land.lhs.true.i299.i.cleanup.sink.split.i_crit_edge ], [ %conv2.i312.i, %if.then151.i.cleanup.sink.split.i_crit_edge ], [ %conv2.i312.i, %land.lhs.true.i318.i.cleanup.sink.split.i_crit_edge ], [ 29, %if.then162.i.cleanup.sink.split.i_crit_edge ], [ 29, %land.lhs.true.i337.i.cleanup.sink.split.i_crit_edge ], [ %conv2.i274.sink.ph.i, %cleanup.sink.split.sink.split.i ]
  %conv.i282.i = zext i8 %.sink.i to i32
  tail call void @input_event(ptr noundef %22, i32 noundef %conv.i282.i, i32 noundef %conv2.i274.sink.i, i32 noundef %value) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split.i, %if.end156.i.cleanup_crit_edge, %if.then101.i.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %input_event_with_scancode.exit, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %input_event_with_scancode.exit ], [ 0, %lor.lhs.false2.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end156.i.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ], [ 1, %if.then101.i.cleanup_crit_edge ], [ 1, %cleanup.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @apple_report_fixup(ptr noundef %hdev, ptr noundef %rdesc, ptr nocapture noundef %rsize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 70, i32 %3)
  %cmp = icmp ugt i32 %3, 70
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %arrayidx = getelementptr i8, ptr %rdesc, i32 70
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 101, i8 %5)
  %cmp1 = icmp eq i8 %5, 101
  br i1 %cmp1, label %land.lhs.true3, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %arrayidx4 = getelementptr i8, ptr %rdesc, i32 64
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 101, i8 %7)
  %cmp6 = icmp eq i8 %7, 101
  br i1 %cmp6, label %do.end, label %land.lhs.true3.if.end_crit_edge

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.14) #7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -25, ptr %arrayidx, align 1
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -25, ptr %arrayidx4, align 1
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %quirks = getelementptr inbounds %struct.apple_sc, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %quirks, align 4
  %and = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end30_crit_edge, label %land.lhs.true10

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30

land.lhs.true10:                                  ; preds = %if.end
  %12 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %13)
  %cmp11 = icmp ugt i32 %13, 59
  br i1 %cmp11, label %land.lhs.true13, label %land.lhs.true10.if.end30_crit_edge

land.lhs.true10.if.end30_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30

land.lhs.true13:                                  ; preds = %land.lhs.true10
  %arrayidx14 = getelementptr i8, ptr %rdesc, i32 53
  %14 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 101, i8 %15)
  %cmp16 = icmp eq i8 %15, 101
  br i1 %cmp16, label %land.lhs.true18, label %land.lhs.true13.if.end30_crit_edge

land.lhs.true13.if.end30_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30

land.lhs.true18:                                  ; preds = %land.lhs.true13
  %arrayidx19 = getelementptr i8, ptr %rdesc, i32 59
  %16 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 101, i8 %17)
  %cmp21 = icmp eq i8 %17, 101
  br i1 %cmp21, label %do.end26, label %land.lhs.true18.if.end30_crit_edge

land.lhs.true18.if.end30_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30

do.end26:                                         ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #6
  %dev27 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev27, ptr noundef nonnull @.str.18) #7
  %18 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -25, ptr %arrayidx19, align 1
  %19 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -25, ptr %arrayidx14, align 1
  br label %if.end30

if.end30:                                         ; preds = %do.end26, %land.lhs.true18.if.end30_crit_edge, %land.lhs.true13.if.end30_crit_edge, %land.lhs.true10.if.end30_crit_edge, %if.end.if.end30_crit_edge
  %20 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %quirks, align 4
  %and32 = and i32 %21, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end30.cleanup_crit_edge, label %land.lhs.true34

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true34:                                  ; preds = %if.end30
  %22 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 83, i32 %23)
  %cmp35 = icmp eq i32 %23, 83
  br i1 %cmp35, label %land.lhs.true37, label %land.lhs.true34.cleanup_crit_edge

land.lhs.true34.cleanup_crit_edge:                ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true37:                                  ; preds = %land.lhs.true34
  %arrayidx38 = getelementptr i8, ptr %rdesc, i32 46
  %24 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx38, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %25)
  %cmp40 = icmp eq i8 %25, -124
  br i1 %cmp40, label %land.lhs.true42, label %land.lhs.true37.cleanup_crit_edge

land.lhs.true37.cleanup_crit_edge:                ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true42:                                  ; preds = %land.lhs.true37
  %arrayidx43 = getelementptr i8, ptr %rdesc, i32 58
  %26 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx43, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -123, i8 %27)
  %cmp45 = icmp eq i8 %27, -123
  br i1 %cmp45, label %do.end50, label %land.lhs.true42.cleanup_crit_edge

land.lhs.true42.cleanup_crit_edge:                ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end50:                                         ; preds = %land.lhs.true42
  %dev51 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev51, ptr noundef nonnull @.str.21) #7
  %28 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rsize, align 4
  %sub = add i32 %29, -1
  store i32 %sub, ptr %rsize, align 4
  %add.ptr = getelementptr i8, ptr %rdesc, i32 1
  %call52 = tail call ptr @kmemdup(ptr noundef %add.ptr, i32 noundef %sub, i32 noundef 3264) #4
  %tobool53.not = icmp eq ptr %call52, null
  br i1 %tobool53.not, label %do.end50.cleanup_crit_edge, label %if.end55

do.end50.cleanup_crit_edge:                       ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end55:                                         ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #6
  %30 = ptrtoint ptr %call52 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 5, ptr %call52, align 1
  %arrayidx57 = getelementptr i8, ptr %call52, i32 1
  %31 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %arrayidx57, align 1
  %arrayidx58 = getelementptr i8, ptr %call52, i32 2
  %32 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 9, ptr %arrayidx58, align 1
  %arrayidx59 = getelementptr i8, ptr %call52, i32 3
  %33 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 6, ptr %arrayidx59, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %do.end50.cleanup_crit_edge, %land.lhs.true42.cleanup_crit_edge, %land.lhs.true37.cleanup_crit_edge, %land.lhs.true34.cleanup_crit_edge, %if.end30.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end50.cleanup_crit_edge ], [ %call52, %if.end55 ], [ %rdesc, %land.lhs.true42.cleanup_crit_edge ], [ %rdesc, %land.lhs.true37.cleanup_crit_edge ], [ %rdesc, %land.lhs.true34.cleanup_crit_edge ], [ %rdesc, %if.end30.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apple_input_mapping(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readonly %hi, ptr nocapture noundef readnone %field, ptr nocapture noundef %usage, ptr nocapture noundef writeonly %bit, ptr nocapture noundef writeonly %max) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usage, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 16711683, label %entry.if.then_crit_edge
    i32 -16777213, label %entry.if.then_crit_edge12
    i32 -16711677, label %entry.if.then_crit_edge13
  ]

entry.if.then_crit_edge13:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

entry.if.then_crit_edge12:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge12, %entry.if.then_crit_edge13
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  %input = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %5 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %input, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %6, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 20, ptr noundef %evbit) #4
  %7 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %input, align 4
  %keybit.i.i = getelementptr inbounds %struct.input_dev, ptr %8, i32 0, i32 6
  %type19.i.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %9 = ptrtoint ptr %type19.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %type19.i.i, align 4
  %code.i.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %10 = ptrtoint ptr %code.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 464, ptr %code.i.i, align 2
  %11 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 767, ptr %max, align 4
  %12 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %keybit.i.i, ptr %bit, align 4
  %13 = load i16, ptr %code.i.i, align 2
  %conv1.i = zext i16 %13 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i, ptr noundef nonnull %keybit.i.i) #4
  %fn_found = getelementptr inbounds %struct.apple_sc, ptr %4, i32 0, i32 3
  %14 = ptrtoint ptr %fn_found to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %fn_found, align 4
  %15 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %input, align 4
  %keybit.i = getelementptr inbounds %struct.input_dev, ptr %16, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 69, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 111, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 110, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 224, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 225, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 120, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 204, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 229, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 230, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 165, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 164, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 163, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 113, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 114, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 115, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 104, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 109, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 102, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 107, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 111, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 224, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 225, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 113, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 114, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 115, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 69, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 227, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 228, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 229, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 230, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 104, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 109, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 102, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 107, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 79, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 80, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 81, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 75, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 76, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 77, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 71, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 72, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 73, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 82, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 83, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 78, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 74, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 55, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 117, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 98, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 69, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 96, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 14, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 86, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 41, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 111, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 110, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 224, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 225, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 120, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 217, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 248, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 142, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 165, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 164, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 163, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 113, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 114, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 115, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 104, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 109, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 102, ptr noundef %keybit.i) #4
  tail call void @_set_bit(i32 noundef 107, ptr noundef %keybit.i) #4
  %17 = load i32, ptr @swap_fn_leftctrl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool47.not.i = icmp eq i32 %17, 0
  br i1 %tobool47.not.i, label %if.then.cleanup_crit_edge, label %for.body51.preheader.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body51.preheader.i:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_set_bit(i32 noundef 29, ptr noundef %keybit.i) #4
  br label %cleanup

cleanup:                                          ; preds = %for.body51.preheader.i, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then.cleanup_crit_edge ], [ 1, %for.body51.preheader.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apple_input_mapped(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readonly %hi, ptr nocapture noundef readnone %field, ptr nocapture noundef %usage, ptr nocapture noundef writeonly %bit, ptr nocapture noundef writeonly %max) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %quirks = getelementptr inbounds %struct.apple_sc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %quirks, align 4
  %and = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %usage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65586, i32 %5)
  %cmp = icmp eq i32 %5, 65586
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  %input1.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %6 = ptrtoint ptr %input1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %input1.i, align 4
  %relbit.i = getelementptr inbounds %struct.input_dev, ptr %7, i32 0, i32 7
  %tobool.not.i = icmp eq ptr %relbit.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end18.i, !prof !116

if.then.i:                                        ; preds = %if.then1
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @hid_map_usage._rs, ptr noundef nonnull @__func__.hid_map_usage) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool14.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool14.not.i, label %if.then.i.if.end13.sink.split_crit_edge, label %do.end.i

if.then.i.if.end13.sink.split_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13.sink.split

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %9, i32 noundef 6, i32 noundef 2) #7
  br label %if.end13.sink.split

if.end18.i:                                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #6
  %type19.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %10 = ptrtoint ptr %type19.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %type19.i, align 4
  %code.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %11 = ptrtoint ptr %code.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 6, ptr %code.i, align 2
  %12 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 15, ptr %max, align 4
  br label %if.end13.sink.split

if.else:                                          ; preds = %if.then
  %code = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %13 = ptrtoint ptr %code to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %code, align 2
  %15 = zext i16 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.33)
  switch i16 %14, label %if.else.if.end13_crit_edge [
    i16 257, label %if.then4
    i16 258, label %if.then10
  ]

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.then4:                                         ; preds = %if.else
  %input1.i25 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %16 = ptrtoint ptr %input1.i25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %input1.i25, align 4
  %keybit.i = getelementptr inbounds %struct.input_dev, ptr %17, i32 0, i32 6
  %tobool.not.i26 = icmp eq ptr %keybit.i, null
  br i1 %tobool.not.i26, label %if.then.i29, label %if.end18.i34, !prof !116

if.then.i29:                                      ; preds = %if.then4
  %call.i27 = tail call i32 @___ratelimit(ptr noundef nonnull @hid_map_usage._rs, ptr noundef nonnull @__func__.hid_map_usage) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %tobool14.not.i28 = icmp eq i32 %call.i27, 0
  br i1 %tobool14.not.i28, label %if.then.i29.if.end13.sink.split_crit_edge, label %do.end.i31

if.then.i29.if.end13.sink.split_crit_edge:        ; preds = %if.then.i29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13.sink.split

do.end.i31:                                       ; preds = %if.then.i29
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %call17.i30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %19, i32 noundef 258, i32 noundef 1) #7
  br label %if.end13.sink.split

if.end18.i34:                                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  %type19.i32 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %20 = ptrtoint ptr %type19.i32 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %type19.i32, align 4
  %21 = ptrtoint ptr %code to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 258, ptr %code, align 2
  %22 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 767, ptr %max, align 4
  br label %if.end13.sink.split

if.then10:                                        ; preds = %if.else
  %input1.i37 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %23 = ptrtoint ptr %input1.i37 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %input1.i37, align 4
  %keybit.i38 = getelementptr inbounds %struct.input_dev, ptr %24, i32 0, i32 6
  %tobool.not.i39 = icmp eq ptr %keybit.i38, null
  br i1 %tobool.not.i39, label %if.then.i42, label %if.end18.i47, !prof !116

if.then.i42:                                      ; preds = %if.then10
  %call.i40 = tail call i32 @___ratelimit(ptr noundef nonnull @hid_map_usage._rs, ptr noundef nonnull @__func__.hid_map_usage) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %tobool14.not.i41 = icmp eq i32 %call.i40, 0
  br i1 %tobool14.not.i41, label %if.then.i42.if.end13.sink.split_crit_edge, label %do.end.i44

if.then.i42.if.end13.sink.split_crit_edge:        ; preds = %if.then.i42
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13.sink.split

do.end.i44:                                       ; preds = %if.then.i42
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 8
  %call17.i43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %26, i32 noundef 257, i32 noundef 1) #7
  br label %if.end13.sink.split

if.end18.i47:                                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  %type19.i45 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %27 = ptrtoint ptr %type19.i45 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %type19.i45, align 4
  %28 = ptrtoint ptr %code to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 257, ptr %code, align 2
  %29 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 767, ptr %max, align 4
  br label %if.end13.sink.split

if.end13.sink.split:                              ; preds = %if.end18.i47, %do.end.i44, %if.then.i42.if.end13.sink.split_crit_edge, %if.end18.i34, %do.end.i31, %if.then.i29.if.end13.sink.split_crit_edge, %if.end18.i, %do.end.i, %if.then.i.if.end13.sink.split_crit_edge
  %relbit.i.sink = phi ptr [ %relbit.i, %if.then.i.if.end13.sink.split_crit_edge ], [ %relbit.i, %do.end.i ], [ %relbit.i, %if.end18.i ], [ %keybit.i, %if.then.i29.if.end13.sink.split_crit_edge ], [ %keybit.i, %do.end.i31 ], [ %keybit.i, %if.end18.i34 ], [ %keybit.i38, %if.then.i42.if.end13.sink.split_crit_edge ], [ %keybit.i38, %do.end.i44 ], [ %keybit.i38, %if.end18.i47 ]
  %30 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %relbit.i.sink, ptr %bit, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end13.sink.split, %if.else.if.end13_crit_edge, %entry.if.end13_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apple_input_configured(ptr noundef %hdev, ptr nocapture noundef readnone %hidinput) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %quirks = getelementptr inbounds %struct.apple_sc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %quirks, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %fn_found = getelementptr inbounds %struct.apple_sc, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %fn_found to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fn_found, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %do.end, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.26) #7
  %6 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %quirks, align 4
  %and3 = and i32 %7, -5
  store i32 %and3, ptr %quirks, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @apple_battery_timer_tick(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -112
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %quirks.i = getelementptr inbounds %struct.apple_sc, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %lor.lhs.false.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

lor.lhs.false.i:                                  ; preds = %entry
  %battery.i = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 23
  %6 = ptrtoint ptr %battery.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %battery.i, align 8
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.end_crit_edge, label %if.end.i

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end.i:                                         ; preds = %lor.lhs.false.i
  %battery_report_type.i = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 27
  %8 = ptrtoint ptr %battery_report_type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %battery_report_type.i, align 8
  %battery_report_id.i = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 28
  %10 = ptrtoint ptr %battery_report_id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %battery_report_id.i, align 4
  %arrayidx3.i = getelementptr %struct.hid_device, ptr %1, i32 0, i32 15, i32 %9, i32 2, i32 %11
  %12 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx3.i, align 4
  %tobool4.not.i = icmp eq ptr %13, null
  br i1 %tobool4.not.i, label %if.end.i.if.end_crit_edge, label %lor.lhs.false5.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

lor.lhs.false5.i:                                 ; preds = %if.end.i
  %maxfield.i = getelementptr inbounds %struct.hid_report, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %maxfield.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %maxfield.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i = icmp eq i32 %15, 0
  br i1 %cmp.i, label %lor.lhs.false5.i.if.end_crit_edge, label %if.end7.i

lor.lhs.false5.i.if.end_crit_edge:                ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end7.i:                                        ; preds = %lor.lhs.false5.i
  %battery_capacity.i = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 24
  %16 = ptrtoint ptr %battery_capacity.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %battery_capacity.i, align 4
  %battery_max.i = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 26
  %18 = ptrtoint ptr %battery_max.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %battery_max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp8.i = icmp eq i32 %17, %19
  br i1 %cmp8.i, label %if.end7.i.if.end_crit_edge, label %if.then

if.end7.i.if.end_crit_edge:                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @hid_hw_request(ptr noundef %1, ptr noundef nonnull %13, i32 noundef 1) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %20, 6000
  %call3 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %if.end7.i.if.end_crit_edge, %lor.lhs.false5.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !26, !28, !30, !31, !33, !34, !36, !37, !38, !39, !41, !43, !45, !47, !48, !49, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !83, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !99, !100, !101, !102, !104, !105, !106}
!llvm.module.flags = !{!107, !108, !109, !110, !111, !112, !113, !114}
!llvm.ident = !{!115}

!0 = !{ptr @__param_fnmode, !1, !"__param_fnmode", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-apple.c", i32 43, i32 1}
!2 = !{ptr @__UNIQUE_ID_fnmodetype223, !1, !"__UNIQUE_ID_fnmodetype223", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_fnmode224, !4, !"__UNIQUE_ID_fnmode224", i1 false, i1 false}
!4 = !{!"../drivers/hid/hid-apple.c", i32 44, i32 1}
!5 = !{ptr @__param_iso_layout, !6, !"__param_iso_layout", i1 false, i1 false}
!6 = !{!"../drivers/hid/hid-apple.c", i32 48, i32 1}
!7 = !{ptr @__UNIQUE_ID_iso_layouttype225, !6, !"__UNIQUE_ID_iso_layouttype225", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_iso_layout226, !9, !"__UNIQUE_ID_iso_layout226", i1 false, i1 false}
!9 = !{!"../drivers/hid/hid-apple.c", i32 49, i32 1}
!10 = !{ptr @__param_swap_opt_cmd, !11, !"__param_swap_opt_cmd", i1 false, i1 false}
!11 = !{!"../drivers/hid/hid-apple.c", i32 53, i32 1}
!12 = !{ptr @__UNIQUE_ID_swap_opt_cmdtype227, !11, !"__UNIQUE_ID_swap_opt_cmdtype227", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_swap_opt_cmd228, !14, !"__UNIQUE_ID_swap_opt_cmd228", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-apple.c", i32 54, i32 1}
!15 = !{ptr @__param_swap_fn_leftctrl, !16, !"__param_swap_fn_leftctrl", i1 false, i1 false}
!16 = !{!"../drivers/hid/hid-apple.c", i32 59, i32 1}
!17 = !{ptr @__UNIQUE_ID_swap_fn_leftctrltype229, !16, !"__UNIQUE_ID_swap_fn_leftctrltype229", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_swap_fn_leftctrl230, !19, !"__UNIQUE_ID_swap_fn_leftctrl230", i1 false, i1 false}
!19 = !{!"../drivers/hid/hid-apple.c", i32 60, i32 1}
!20 = !{ptr @__initcall__kmod_hid_apple__231_778_apple_driver_init6, !21, !"__initcall__kmod_hid_apple__231_778_apple_driver_init6", i1 false, i1 false}
!21 = !{!"../drivers/hid/hid-apple.c", i32 778, i32 1}
!22 = !{ptr @__exitcall_apple_driver_exit, !21, !"__exitcall_apple_driver_exit", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_file232, !24, !"__UNIQUE_ID_file232", i1 false, i1 false}
!24 = !{!"../drivers/hid/hid-apple.c", i32 780, i32 1}
!25 = !{ptr @__UNIQUE_ID_license233, !24, !"__UNIQUE_ID_license233", i1 false, i1 false}
!26 = !{ptr @swap_opt_cmd, !27, !"swap_opt_cmd", i1 false, i1 false}
!27 = !{!"../drivers/hid/hid-apple.c", i32 52, i32 21}
!28 = !{ptr @swap_fn_leftctrl, !29, !"swap_fn_leftctrl", i1 false, i1 false}
!29 = !{!"../drivers/hid/hid-apple.c", i32 58, i32 21}
!30 = !{ptr @__param_str_fnmode, !1, !"__param_str_fnmode", i1 false, i1 false}
!31 = !{ptr @fnmode, !32, !"fnmode", i1 false, i1 false}
!32 = !{!"../drivers/hid/hid-apple.c", i32 42, i32 21}
!33 = !{ptr @__param_str_iso_layout, !6, !"__param_str_iso_layout", i1 false, i1 false}
!34 = !{ptr @iso_layout, !35, !"iso_layout", i1 false, i1 false}
!35 = !{!"../drivers/hid/hid-apple.c", i32 47, i32 12}
!36 = !{ptr @__param_str_swap_opt_cmd, !11, !"__param_str_swap_opt_cmd", i1 false, i1 false}
!37 = !{ptr @__param_str_swap_fn_leftctrl, !16, !"__param_str_swap_fn_leftctrl", i1 false, i1 false}
!38 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.1, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/hid/hid-apple.c", i32 768, i32 10}
!41 = !{ptr @apple_driver, !42, !"apple_driver", i1 false, i1 false}
!42 = !{!"../drivers/hid/hid-apple.c", i32 767, i32 26}
!43 = !{ptr @apple_devices, !44, !"apple_devices", i1 false, i1 false}
!44 = !{!"../drivers/hid/hid-apple.c", i32 580, i32 35}
!45 = !{ptr @.str.2, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/hid/hid-apple.c", i32 542, i32 3}
!47 = !{ptr @.str.3, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.4, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.5, !46, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.6, !46, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @apple_probe._entry, !46, !"_entry", i1 false, i1 false}
!52 = !{ptr @apple_probe._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.8, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/hid/hid-apple.c", i32 553, i32 3}
!55 = !{ptr @apple_probe._entry.7, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @apple_probe._entry_ptr.9, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.11, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/hid/hid-apple.c", i32 559, i32 3}
!59 = !{ptr @apple_probe._entry.10, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @apple_probe._entry_ptr.12, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @apple_probe.__key, !62, !"__key", i1 false, i1 false}
!62 = !{!"../drivers/hid/hid-apple.c", i32 563, i32 2}
!63 = !{ptr @.str.13, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @apple2021_fn_keys, !65, !"apple2021_fn_keys", i1 false, i1 false}
!65 = !{!"../drivers/hid/hid-apple.c", i32 79, i32 43}
!66 = !{ptr @macbookair_fn_keys, !67, !"macbookair_fn_keys", i1 false, i1 false}
!67 = !{!"../drivers/hid/hid-apple.c", i32 101, i32 43}
!68 = !{ptr @powerbook_fn_keys, !69, !"powerbook_fn_keys", i1 false, i1 false}
!69 = !{!"../drivers/hid/hid-apple.c", i32 144, i32 43}
!70 = !{ptr @apple_fn_keys, !71, !"apple_fn_keys", i1 false, i1 false}
!71 = !{!"../drivers/hid/hid-apple.c", i32 122, i32 43}
!72 = !{ptr @powerbook_numlock_keys, !73, !"powerbook_numlock_keys", i1 false, i1 false}
!73 = !{!"../drivers/hid/hid-apple.c", i32 163, i32 43}
!74 = !{ptr @apple_iso_keyboard, !75, !"apple_iso_keyboard", i1 false, i1 false}
!75 = !{!"../drivers/hid/hid-apple.c", i32 186, i32 43}
!76 = !{ptr @swapped_option_cmd_keys, !77, !"swapped_option_cmd_keys", i1 false, i1 false}
!77 = !{!"../drivers/hid/hid-apple.c", i32 192, i32 43}
!78 = distinct !{null, !79, !"swapped_fn_leftctrl_keys", i1 false, i1 false}
!79 = !{!"../drivers/hid/hid-apple.c", i32 200, i32 43}
!80 = !{ptr @.str.14, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/hid/hid-apple.c", i32 415, i32 3}
!82 = !{ptr @.str.15, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.16, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @apple_report_fixup._entry, !81, !"_entry", i1 false, i1 false}
!85 = !{ptr @apple_report_fixup._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.18, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/hid/hid-apple.c", i32 422, i32 3}
!88 = !{ptr @apple_report_fixup._entry.17, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @apple_report_fixup._entry_ptr.19, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.21, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/hid/hid-apple.c", i32 437, i32 3}
!92 = !{ptr @apple_report_fixup._entry.20, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @apple_report_fixup._entry_ptr.22, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.23, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../include/linux/hid.h", i32 1036, i32 3}
!96 = !{ptr @hid_map_usage._rs, !95, !"_rs", i1 false, i1 false}
!97 = !{ptr @__func__.hid_map_usage, !95, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.24, !95, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.25, !95, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @hid_map_usage._entry, !95, !"_entry", i1 false, i1 false}
!101 = !{ptr @hid_map_usage._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.26, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/hid/hid-apple.c", i32 526, i32 3}
!104 = !{ptr @.str.27, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @apple_input_configured._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @apple_input_configured._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{i32 1, !"wchar_size", i32 2}
!108 = !{i32 1, !"min_enum_size", i32 4}
!109 = !{i32 8, !"branch-target-enforcement", i32 0}
!110 = !{i32 8, !"sign-return-address", i32 0}
!111 = !{i32 8, !"sign-return-address-all", i32 0}
!112 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!113 = !{i32 7, !"uwtable", i32 1}
!114 = !{i32 7, !"frame-pointer", i32 2}
!115 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!116 = !{!"branch_weights", i32 1, i32 2000}
