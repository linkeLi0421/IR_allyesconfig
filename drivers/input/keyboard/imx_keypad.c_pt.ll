; ModuleID = '/llk/IR_all_yes/drivers/input/keyboard/imx_keypad.c_pt.bc'
source_filename = "../drivers/input/keyboard/imx_keypad.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.imx_keypad = type { ptr, ptr, ptr, i32, %struct.timer_list, i32, i8, i16, i16, [64 x i16], [8 x i16], [8 x i16] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_imx_keypad__232_580_imx_keypad_driver_init6 = internal global ptr @imx_keypad_driver_init, section ".initcall6.init", align 4
@imx_keypad_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @imx_keypad_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx_keypad_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx_kbd_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_imx_keypad_driver_exit = internal global ptr @imx_keypad_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author233 = internal constant [68 x i8] c"imx_keypad.author=Alberto Panizzo <maramaopercheseimorto@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description234 = internal constant [46 x i8] c"imx_keypad.description=IMX Keypad Port Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file235 = internal constant [50 x i8] c"imx_keypad.file=drivers/input/keyboard/imx_keypad\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [26 x i8] c"imx_keypad.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias237 = internal constant [37 x i8] c"imx_keypad.alias=platform:imx-keypad\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"imx-keypad\00", [21 x i8] zeroinitializer }, align 32
@imx_keypad_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx21-kpp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@imx_kbd_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx_kbd_noirq_suspend, ptr @imx_kbd_noirq_resume, ptr @imx_kbd_noirq_suspend, ptr @imx_kbd_noirq_resume, ptr @imx_kbd_noirq_suspend, ptr @imx_kbd_noirq_resume, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@imx_keypad_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 429, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to allocate the input device\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"imx_keypad_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/input/keyboard/imx_keypad.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imx_keypad_probe._entry_ptr = internal global ptr @imx_keypad_probe._entry, section ".printk_index", align 4
@imx_keypad_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 435, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"not enough memory for driver data\0A\00", [61 x i8] zeroinitializer }, align 32
@imx_keypad_probe._entry_ptr.8 = internal global ptr @imx_keypad_probe._entry.6, section ".printk_index", align 4
@imx_keypad_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(&keypad->check_matrix_timer)\00", [34 x i8] zeroinitializer }, align 32
@imx_keypad_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 452, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to get keypad clock\0A\00", [36 x i8] zeroinitializer }, align 32
@imx_keypad_probe._entry_ptr.12 = internal global ptr @imx_keypad_probe._entry.10, section ".printk_index", align 4
@imx_keypad_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 468, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to build keymap\0A\00", [40 x i8] zeroinitializer }, align 32
@imx_keypad_probe._entry_ptr.15 = internal global ptr @imx_keypad_probe._entry.13, section ".printk_index", align 4
@imx_keypad_probe.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.2, ptr @.str.3, ptr @.str.17, i8 0, i8 120, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"imx_keypad\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"enabled rows mask: %x\0A\00", [41 x i8] zeroinitializer }, align 32
@imx_keypad_probe.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.2, ptr @.str.3, ptr @.str.18, i8 0, i8 120, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"enabled cols mask: %x\0A\00", [41 x i8] zeroinitializer }, align 32
@imx_keypad_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 499, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to request IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@imx_keypad_probe._entry_ptr.21 = internal global ptr @imx_keypad_probe._entry.19, section ".printk_index", align 4
@imx_keypad_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 506, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register input device\0A\00", [63 x i8] zeroinitializer }, align 32
@imx_keypad_probe._entry_ptr.24 = internal global ptr @imx_keypad_probe._entry.22, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@imx_keypad_fire_events.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.25, ptr @.str.3, ptr @.str.26, i8 0, i8 43, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"imx_keypad_fire_events\00", [41 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Event code: %d, val: %d\00", [40 x i8] zeroinitializer }, align 32
@imx_keypad_open.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.27, ptr @.str.3, ptr @.str.28, i8 0, i8 96, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"imx_keypad_open\00", [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c">%s\0A\00", [27 x i8] zeroinitializer }, align 32
@imx_keypad_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.3, i32 400, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"too many keys pressed, control pins initialisation\0A\00", [44 x i8] zeroinitializer }, align 32
@imx_keypad_open._entry_ptr = internal global ptr @imx_keypad_open._entry, section ".printk_index", align 4
@imx_keypad_close.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.30, ptr @.str.3, ptr @.str.28, i8 0, i8 91, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"imx_keypad_close\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.31 = private unnamed_addr constant [18 x i8] c"imx_keypad_driver\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 572, i32 31 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 574, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant [20 x i8] c"imx_keypad_of_match\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 411, i32 34 }
@___asan_gen_.40 = private unnamed_addr constant [15 x i8] c"imx_kbd_pm_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 568, i32 32 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 429, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 435, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 443, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 452, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 468, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 482, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 483, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 499, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 506, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 172, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 385, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 399, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.125 = private constant [39 x i8] c"../drivers/input/keyboard/imx_keypad.c\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 367, i32 2 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_alias237, ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__exitcall_imx_keypad_driver_exit, ptr @__initcall__kmod_imx_keypad__232_580_imx_keypad_driver_init6, ptr @imx_keypad_driver_exit, ptr @imx_keypad_open._entry, ptr @imx_keypad_open._entry_ptr, ptr @imx_keypad_probe._entry, ptr @imx_keypad_probe._entry.10, ptr @imx_keypad_probe._entry.13, ptr @imx_keypad_probe._entry.19, ptr @imx_keypad_probe._entry.22, ptr @imx_keypad_probe._entry.6, ptr @imx_keypad_probe._entry_ptr, ptr @imx_keypad_probe._entry_ptr.12, ptr @imx_keypad_probe._entry_ptr.15, ptr @imx_keypad_probe._entry_ptr.21, ptr @imx_keypad_probe._entry_ptr.24, ptr @imx_keypad_probe._entry_ptr.8, ptr @imx_keypad_driver, ptr @.str, ptr @imx_keypad_of_match, ptr @imx_kbd_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @imx_keypad_probe.__key, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_keypad_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_keypad_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_kbd_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_keypad_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_keypad_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_keypad_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_keypad_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_keypad_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_keypad_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_keypad_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_keypad_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_keypad_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx_keypad_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx_keypad_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @imx_keypad_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_keypad_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call1 = tail call ptr @devm_input_allocate_device(ptr noundef %dev) #6
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 236, i32 noundef 3520) #6
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %do.end11, label %if.end13

do.end11:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end13:                                         ; preds = %if.end4
  %input_dev14 = getelementptr inbounds %struct.imx_keypad, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %input_dev14 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %input_dev14, align 4
  %irq15 = getelementptr inbounds %struct.imx_keypad, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %irq15 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call, ptr %irq15, align 4
  %stable_count = getelementptr inbounds %struct.imx_keypad, ptr %call.i, i32 0, i32 5
  %2 = ptrtoint ptr %stable_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %stable_count, align 4
  %check_matrix_timer = getelementptr inbounds %struct.imx_keypad, ptr %call.i, i32 0, i32 4
  tail call void @init_timer_key(ptr noundef %check_matrix_timer, ptr noundef nonnull @imx_keypad_check_for_events, i32 noundef 0, ptr noundef nonnull @.str.9, ptr noundef nonnull @imx_keypad_probe.__key) #6
  %call19 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %mmio_base = getelementptr inbounds %struct.imx_keypad, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %mmio_base to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call19, ptr %mmio_base, align 4
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then22, label %if.end25

if.then22:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call19 to i32
  br label %cleanup

if.end25:                                         ; preds = %if.end13
  %call27 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #6
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call27, ptr %call.i, align 4
  %cmp.i202 = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i202, label %do.end33, label %if.end37

do.end33:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #9
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call.i, align 4
  %8 = ptrtoint ptr %7 to i32
  br label %cleanup

if.end37:                                         ; preds = %if.end25
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 8
  %11 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %call1, align 8
  %id = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3
  %12 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 25, ptr %id, align 4
  %parent = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 40, i32 1
  %13 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev, ptr %parent, align 8
  %open = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 31
  %14 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @imx_keypad_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 32
  %15 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @imx_keypad_close, ptr %close, align 4
  %keycodes = getelementptr inbounds %struct.imx_keypad, ptr %call.i, i32 0, i32 9
  %call41 = tail call i32 @matrix_keypad_build_keymap(ptr noundef null, ptr noundef null, i32 noundef 8, i32 noundef 8, ptr noundef %keycodes, ptr noundef nonnull %call1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %for.cond.preheader, label %do.end46

for.cond.preheader:                               ; preds = %if.end37
  %rows_en_mask = getelementptr inbounds %struct.imx_keypad, ptr %call.i, i32 0, i32 7
  %cols_en_mask = getelementptr inbounds %struct.imx_keypad, ptr %call.i, i32 0, i32 8
  br label %for.cond50.preheader

do.end46:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #9
  br label %cleanup

for.cond50.preheader:                             ; preds = %for.inc.7.for.cond50.preheader_crit_edge, %for.cond.preheader
  %row.0213 = phi i32 [ 0, %for.cond.preheader ], [ %inc66, %for.inc.7.for.cond50.preheader_crit_edge ]
  %shl = shl i32 %row.0213, 3
  %shl57 = shl nuw i32 1, %row.0213
  %16 = trunc i32 %shl57 to i16
  %arrayidx = getelementptr %struct.imx_keypad, ptr %call.i, i32 0, i32 9, i32 %shl
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp54.not = icmp eq i16 %18, 0
  br i1 %cmp54.not, label %for.cond50.preheader.for.inc_crit_edge, label %if.then56

for.cond50.preheader.for.inc_crit_edge:           ; preds = %for.cond50.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then56:                                        ; preds = %for.cond50.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %rows_en_mask to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %rows_en_mask, align 2
  %conv59 = or i16 %20, %16
  store i16 %conv59, ptr %rows_en_mask, align 2
  %21 = ptrtoint ptr %cols_en_mask to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %cols_en_mask, align 4
  %conv63 = or i16 %22, 1
  store i16 %conv63, ptr %cols_en_mask, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then56, %for.cond50.preheader.for.inc_crit_edge
  %add.1 = or i32 %shl, 1
  %arrayidx.1 = getelementptr %struct.imx_keypad, ptr %call.i, i32 0, i32 9, i32 %add.1
  %23 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %cmp54.not.1 = icmp eq i16 %24, 0
  br i1 %cmp54.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then56.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.then56.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %rows_en_mask to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %rows_en_mask, align 2
  %conv59.1 = or i16 %26, %16
  store i16 %conv59.1, ptr %rows_en_mask, align 2
  %27 = ptrtoint ptr %cols_en_mask to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %cols_en_mask, align 4
  %conv63.1 = or i16 %28, 2
  store i16 %conv63.1, ptr %cols_en_mask, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then56.1, %for.inc.for.inc.1_crit_edge
  %add.2 = or i32 %shl, 2
  %arrayidx.2 = getelementptr %struct.imx_keypad, ptr %call.i, i32 0, i32 9, i32 %add.2
  %29 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx.2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %cmp54.not.2 = icmp eq i16 %30, 0
  br i1 %cmp54.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then56.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.then56.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %rows_en_mask to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %rows_en_mask, align 2
  %conv59.2 = or i16 %32, %16
  store i16 %conv59.2, ptr %rows_en_mask, align 2
  %33 = ptrtoint ptr %cols_en_mask to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %cols_en_mask, align 4
  %conv63.2 = or i16 %34, 4
  store i16 %conv63.2, ptr %cols_en_mask, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then56.2, %for.inc.1.for.inc.2_crit_edge
  %add.3 = or i32 %shl, 3
  %arrayidx.3 = getelementptr %struct.imx_keypad, ptr %call.i, i32 0, i32 9, i32 %add.3
  %35 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx.3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %cmp54.not.3 = icmp eq i16 %36, 0
  br i1 %cmp54.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then56.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

if.then56.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %rows_en_mask to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %rows_en_mask, align 2
  %conv59.3 = or i16 %38, %16
  store i16 %conv59.3, ptr %rows_en_mask, align 2
  %39 = ptrtoint ptr %cols_en_mask to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %cols_en_mask, align 4
  %conv63.3 = or i16 %40, 8
  store i16 %conv63.3, ptr %cols_en_mask, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then56.3, %for.inc.2.for.inc.3_crit_edge
  %add.4 = or i32 %shl, 4
  %arrayidx.4 = getelementptr %struct.imx_keypad, ptr %call.i, i32 0, i32 9, i32 %add.4
  %41 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx.4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %cmp54.not.4 = icmp eq i16 %42, 0
  br i1 %cmp54.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then56.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4

if.then56.4:                                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %rows_en_mask to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %rows_en_mask, align 2
  %conv59.4 = or i16 %44, %16
  store i16 %conv59.4, ptr %rows_en_mask, align 2
  %45 = ptrtoint ptr %cols_en_mask to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %cols_en_mask, align 4
  %conv63.4 = or i16 %46, 16
  store i16 %conv63.4, ptr %cols_en_mask, align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then56.4, %for.inc.3.for.inc.4_crit_edge
  %add.5 = or i32 %shl, 5
  %arrayidx.5 = getelementptr %struct.imx_keypad, ptr %call.i, i32 0, i32 9, i32 %add.5
  %47 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx.5, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %cmp54.not.5 = icmp eq i16 %48, 0
  br i1 %cmp54.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then56.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.5

if.then56.5:                                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %rows_en_mask to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %rows_en_mask, align 2
  %conv59.5 = or i16 %50, %16
  store i16 %conv59.5, ptr %rows_en_mask, align 2
  %51 = ptrtoint ptr %cols_en_mask to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %cols_en_mask, align 4
  %conv63.5 = or i16 %52, 32
  store i16 %conv63.5, ptr %cols_en_mask, align 4
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then56.5, %for.inc.4.for.inc.5_crit_edge
  %add.6 = or i32 %shl, 6
  %arrayidx.6 = getelementptr %struct.imx_keypad, ptr %call.i, i32 0, i32 9, i32 %add.6
  %53 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arrayidx.6, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %cmp54.not.6 = icmp eq i16 %54, 0
  br i1 %cmp54.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then56.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.6

if.then56.6:                                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %rows_en_mask to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %rows_en_mask, align 2
  %conv59.6 = or i16 %56, %16
  store i16 %conv59.6, ptr %rows_en_mask, align 2
  %57 = ptrtoint ptr %cols_en_mask to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %cols_en_mask, align 4
  %conv63.6 = or i16 %58, 64
  store i16 %conv63.6, ptr %cols_en_mask, align 4
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then56.6, %for.inc.5.for.inc.6_crit_edge
  %add.7 = or i32 %shl, 7
  %arrayidx.7 = getelementptr %struct.imx_keypad, ptr %call.i, i32 0, i32 9, i32 %add.7
  %59 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %arrayidx.7, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %cmp54.not.7 = icmp eq i16 %60, 0
  br i1 %cmp54.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then56.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.7

if.then56.7:                                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %rows_en_mask to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %rows_en_mask, align 2
  %conv59.7 = or i16 %62, %16
  store i16 %conv59.7, ptr %rows_en_mask, align 2
  %63 = ptrtoint ptr %cols_en_mask to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %cols_en_mask, align 4
  %conv63.7 = or i16 %64, 128
  store i16 %conv63.7, ptr %cols_en_mask, align 4
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then56.7, %for.inc.6.for.inc.7_crit_edge
  %inc66 = add nuw nsw i32 %row.0213, 1
  %exitcond.not = icmp eq i32 %inc66, 8
  br i1 %exitcond.not, label %do.body68, label %for.inc.7.for.cond50.preheader_crit_edge

for.inc.7.for.cond50.preheader_crit_edge:         ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond50.preheader

do.body68:                                        ; preds = %for.inc.7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_keypad_probe.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_keypad_probe, %if.then73)) #6
          to label %do.body80 [label %if.then73], !srcloc !82

if.then73:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %rows_en_mask to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %rows_en_mask, align 2
  %conv76 = zext i16 %66 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_keypad_probe.__UNIQUE_ID_ddebug230, ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %conv76) #6
  br label %do.body80

do.body80:                                        ; preds = %if.then73, %do.body68
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_keypad_probe.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_keypad_probe, %if.then92)) #6
          to label %do.end98 [label %if.then92], !srcloc !82

if.then92:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #8
  %67 = ptrtoint ptr %cols_en_mask to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %cols_en_mask, align 4
  %conv95 = zext i16 %68 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_keypad_probe.__UNIQUE_ID_ddebug231, ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %conv95) #6
  br label %do.end98

do.end98:                                         ; preds = %if.then92, %do.body80
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 5
  %69 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %evbit, align 4
  %or.i = or i32 %70, 1048576
  store i32 %or.i, ptr %evbit, align 4
  tail call void @input_set_capability(ptr noundef nonnull %call1, i32 noundef 4, i32 noundef 4) #6
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 40, i32 8
  %71 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %72 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %call.i, align 4
  %call.i203 = tail call i32 @clk_prepare(ptr noundef %73) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i203)
  %tobool.not.i = icmp eq i32 %call.i203, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end98.cleanup_crit_edge

do.end98.cleanup_crit_edge:                       ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %do.end98
  %call1.i = tail call i32 @clk_enable(ptr noundef %73) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end104, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %73) #6
  br label %cleanup

if.end104:                                        ; preds = %if.end.i
  %74 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mmio_base, align 4
  %add.ptr.i = getelementptr i8, ptr %75, i32 2
  %76 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  %77 = and i16 %76, -772
  %78 = or i16 %77, 768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %79 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mmio_base, align 4
  %add.ptr6.i = getelementptr i8, ptr %80, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr6.i, i16 %78) #6, !srcloc !86
  %81 = ptrtoint ptr %cols_en_mask to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %cols_en_mask, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %83 = and i16 %82, 255
  %84 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mmio_base, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %85, i16 %83) #6, !srcloc !86
  %86 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %call.i, align 4
  tail call void @clk_disable(ptr noundef %87) #6
  tail call void @clk_unprepare(ptr noundef %87) #6
  %88 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pdev, align 8
  %call.i205 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call, ptr noundef nonnull @imx_keypad_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %89, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i205)
  %tobool109.not = icmp eq i32 %call.i205, 0
  br i1 %tobool109.not, label %if.end115, label %do.end113

do.end113:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #9
  br label %cleanup

if.end115:                                        ; preds = %if.end104
  %call116 = tail call i32 @input_register_device(ptr noundef nonnull %call1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.end123, label %do.end121

do.end121:                                        ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #9
  br label %cleanup

if.end123:                                        ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i206 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %90 = ptrtoint ptr %driver_data.i.i206 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call.i, ptr %driver_data.i.i206, align 4
  %call125 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end123, %do.end121, %do.end113, %if.then3.i, %do.end98.cleanup_crit_edge, %do.end46, %do.end33, %if.then22, %do.end11, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then22 ], [ %8, %do.end33 ], [ %call41, %do.end46 ], [ %call.i205, %do.end113 ], [ %call116, %do.end121 ], [ 0, %if.end123 ], [ -12, %do.end11 ], [ -12, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i203, %do.end98.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_keypad_check_for_events(ptr noundef %t) #2 align 64 {
entry:
  %matrix_volatile_state = alloca [8 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %matrix_volatile_state) #6
  %0 = getelementptr inbounds [8 x i16], ptr %matrix_volatile_state, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i16], ptr %matrix_volatile_state, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i16], ptr %matrix_volatile_state, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i16], ptr %matrix_volatile_state, i32 0, i32 4
  %4 = getelementptr inbounds [8 x i16], ptr %matrix_volatile_state, i32 0, i32 5
  %5 = getelementptr inbounds [8 x i16], ptr %matrix_volatile_state, i32 0, i32 6
  %6 = getelementptr inbounds [8 x i16], ptr %matrix_volatile_state, i32 0, i32 7
  %7 = call ptr @memset(ptr %matrix_volatile_state, i32 0, i32 16)
  %cols_en_mask.i = getelementptr i8, ptr %t, i32 56
  %mmio_base.i = getelementptr i8, ptr %t, i32 -8
  %rows_en_mask.i = getelementptr i8, ptr %t, i32 54
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %col.0119.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %cols_en_mask.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %cols_en_mask.i, align 4
  %conv.i = zext i16 %9 to i32
  %shl.i = shl nuw nsw i32 1, %col.0119.i
  %and.i = and i32 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp1.i = icmp eq i32 %and.i, 0
  br i1 %cmp1.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 6
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #6, !srcloc !83
  %13 = lshr i16 %12, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  %14 = or i16 %13, -256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #6
  %16 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %17, i32 6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr7.i, i16 %15) #6, !srcloc !86
  %18 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio_base.i, align 4
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %19) #6, !srcloc !83
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  %22 = ptrtoint ptr %cols_en_mask.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %cols_en_mask.i, align 4
  %24 = shl i16 %23, 8
  %neg.i = xor i16 %24, -1
  %and20.i = and i16 %21, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  tail call void @arm_heavy_mb() #6
  %25 = tail call i16 @llvm.bswap.i16(i16 %and20.i) #6
  %26 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio_base.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %27, i16 %25) #6, !srcloc !86
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 429496) #6
  %29 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mmio_base.i, align 4
  %31 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %30) #6, !srcloc !83
  %32 = tail call i16 @llvm.bswap.i16(i16 %31) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %33 = ptrtoint ptr %cols_en_mask.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %cols_en_mask.i, align 4
  %35 = shl i16 %34, 8
  %or39118.i = or i16 %35, %32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %36 = tail call i16 @llvm.bswap.i16(i16 %or39118.i) #6
  %37 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mmio_base.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %38, i16 %36) #6, !srcloc !86
  %39 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr49.i = getelementptr i8, ptr %40, i32 6
  %41 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr49.i) #6, !srcloc !83
  %42 = tail call i16 @llvm.bswap.i16(i16 %41) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  %shl53.i = shl i32 256, %col.0119.i
  %43 = trunc i32 %shl53.i to i16
  %44 = xor i16 %43, -1
  %conv57.i = and i16 %42, %44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  tail call void @arm_heavy_mb() #6
  %45 = tail call i16 @llvm.bswap.i16(i16 %conv57.i) #6
  %46 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr62.i = getelementptr i8, ptr %47, i32 6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr62.i, i16 %45) #6, !srcloc !86
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 1073740) #6
  %49 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr66.i = getelementptr i8, ptr %50, i32 6
  %51 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr66.i) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %52 = xor i16 %51, -1
  %53 = tail call i16 @llvm.bswap.i16(i16 %52) #6
  %54 = ptrtoint ptr %rows_en_mask.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %rows_en_mask.i, align 2
  %and73.i = and i16 %55, %53
  %arrayidx.i = getelementptr i16, ptr %matrix_volatile_state, i32 %col.0119.i
  %56 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %and73.i, ptr %arrayidx.i, align 2
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %col.0119.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %imx_keypad_scan_matrix.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

imx_keypad_scan_matrix.exit:                      ; preds = %for.inc.i
  %add.ptr = getelementptr i8, ptr %t, i32 -16
  %57 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr78.i = getelementptr i8, ptr %58, i32 6
  %59 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr78.i) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  tail call void @arm_heavy_mb() #6
  %60 = and i16 %59, -256
  %61 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr89.i = getelementptr i8, ptr %62, i32 6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr89.i, i16 %60) #6, !srcloc !86
  %63 = ptrtoint ptr %cols_en_mask.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %cols_en_mask.i, align 4
  %conv = zext i16 %64 to i32
  %matrix_unstable_state = getelementptr i8, ptr %t, i32 202
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp2 = icmp eq i32 %and, 0
  br i1 %cmp2, label %imx_keypad_scan_matrix.exit.for.inc_crit_edge, label %if.end

imx_keypad_scan_matrix.exit.for.inc_crit_edge:    ; preds = %imx_keypad_scan_matrix.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %imx_keypad_scan_matrix.exit
  %65 = ptrtoint ptr %matrix_unstable_state to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %matrix_unstable_state, align 2
  %67 = ptrtoint ptr %matrix_volatile_state to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %matrix_volatile_state, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %66, i16 %68)
  %tobool.not = icmp eq i16 %66, %68
  br i1 %tobool.not, label %if.end.for.inc_crit_edge, label %if.end.if.then10.critedge_crit_edge

if.end.if.then10.critedge_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10.critedge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %imx_keypad_scan_matrix.exit.for.inc_crit_edge
  %and.1 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %cmp2.1 = icmp eq i32 %and.1, 0
  br i1 %cmp2.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  %arrayidx.1 = getelementptr i8, ptr %t, i32 204
  %69 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %arrayidx.1, align 2
  %71 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %0, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %70, i16 %72)
  %tobool.not.1 = icmp eq i16 %70, %72
  br i1 %tobool.not.1, label %if.end.1.for.inc.1_crit_edge, label %if.end.1.if.then10.critedge_crit_edge

if.end.1.if.then10.critedge_crit_edge:            ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10.critedge

if.end.1.for.inc.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %and.2 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %cmp2.2 = icmp eq i32 %and.2, 0
  br i1 %cmp2.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  %arrayidx.2 = getelementptr i8, ptr %t, i32 206
  %73 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %arrayidx.2, align 2
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %74, i16 %76)
  %tobool.not.2 = icmp eq i16 %74, %76
  br i1 %tobool.not.2, label %if.end.2.for.inc.2_crit_edge, label %if.end.2.if.then10.critedge_crit_edge

if.end.2.if.then10.critedge_crit_edge:            ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10.critedge

if.end.2.for.inc.2_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %and.3 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %cmp2.3 = icmp eq i32 %and.3, 0
  br i1 %cmp2.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

if.end.3:                                         ; preds = %for.inc.2
  %arrayidx.3 = getelementptr i8, ptr %t, i32 208
  %77 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %arrayidx.3, align 2
  %79 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %2, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %78, i16 %80)
  %tobool.not.3 = icmp eq i16 %78, %80
  br i1 %tobool.not.3, label %if.end.3.for.inc.3_crit_edge, label %if.end.3.if.then10.critedge_crit_edge

if.end.3.if.then10.critedge_crit_edge:            ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10.critedge

if.end.3.for.inc.3_crit_edge:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %and.4 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %cmp2.4 = icmp eq i32 %and.4, 0
  br i1 %cmp2.4, label %for.inc.3.for.inc.4_crit_edge, label %if.end.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4

if.end.4:                                         ; preds = %for.inc.3
  %arrayidx.4 = getelementptr i8, ptr %t, i32 210
  %81 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %arrayidx.4, align 2
  %83 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %3, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %82, i16 %84)
  %tobool.not.4 = icmp eq i16 %82, %84
  br i1 %tobool.not.4, label %if.end.4.for.inc.4_crit_edge, label %if.end.4.if.then10.critedge_crit_edge

if.end.4.if.then10.critedge_crit_edge:            ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10.critedge

if.end.4.for.inc.4_crit_edge:                     ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %and.5 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %cmp2.5 = icmp eq i32 %and.5, 0
  br i1 %cmp2.5, label %for.inc.4.for.inc.5_crit_edge, label %if.end.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.5

if.end.5:                                         ; preds = %for.inc.4
  %arrayidx.5 = getelementptr i8, ptr %t, i32 212
  %85 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %arrayidx.5, align 2
  %87 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %4, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %86, i16 %88)
  %tobool.not.5 = icmp eq i16 %86, %88
  br i1 %tobool.not.5, label %if.end.5.for.inc.5_crit_edge, label %if.end.5.if.then10.critedge_crit_edge

if.end.5.if.then10.critedge_crit_edge:            ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10.critedge

if.end.5.for.inc.5_crit_edge:                     ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.end.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %and.6 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %cmp2.6 = icmp eq i32 %and.6, 0
  br i1 %cmp2.6, label %for.inc.5.for.inc.6_crit_edge, label %if.end.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.6

if.end.6:                                         ; preds = %for.inc.5
  %arrayidx.6 = getelementptr i8, ptr %t, i32 214
  %89 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %arrayidx.6, align 2
  %91 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %5, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %90, i16 %92)
  %tobool.not.6 = icmp eq i16 %90, %92
  br i1 %tobool.not.6, label %if.end.6.for.inc.6_crit_edge, label %if.end.6.if.then10.critedge_crit_edge

if.end.6.if.then10.critedge_crit_edge:            ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10.critedge

if.end.6.for.inc.6_crit_edge:                     ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.end.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %and.7 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %cmp2.7 = icmp eq i32 %and.7, 0
  br i1 %cmp2.7, label %for.inc.6.for.inc.7_crit_edge, label %if.end.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.7

if.end.7:                                         ; preds = %for.inc.6
  %arrayidx.7 = getelementptr i8, ptr %t, i32 216
  %93 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %arrayidx.7, align 2
  %95 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %6, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %94, i16 %96)
  %tobool.not.7 = icmp eq i16 %94, %96
  br i1 %tobool.not.7, label %if.end.7.for.inc.7_crit_edge, label %if.end.7.if.then10.critedge_crit_edge

if.end.7.if.then10.critedge_crit_edge:            ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10.critedge

if.end.7.for.inc.7_crit_edge:                     ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.end.7.for.inc.7_crit_edge, %for.inc.6.for.inc.7_crit_edge
  %stable_count14 = getelementptr i8, ptr %t, i32 48
  %97 = ptrtoint ptr %stable_count14 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %stable_count14, align 4
  %inc15 = add i32 %98, 1
  store i32 %inc15, ptr %stable_count14, align 4
  br label %if.end16

if.then10.critedge:                               ; preds = %if.end.7.if.then10.critedge_crit_edge, %if.end.6.if.then10.critedge_crit_edge, %if.end.5.if.then10.critedge_crit_edge, %if.end.4.if.then10.critedge_crit_edge, %if.end.3.if.then10.critedge_crit_edge, %if.end.2.if.then10.critedge_crit_edge, %if.end.1.if.then10.critedge_crit_edge, %if.end.if.then10.critedge_crit_edge
  %99 = call ptr @memcpy(ptr %matrix_unstable_state, ptr %matrix_volatile_state, i32 16)
  %stable_count = getelementptr i8, ptr %t, i32 48
  %100 = ptrtoint ptr %stable_count to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %stable_count, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then10.critedge, %for.inc.7
  %stable_count17 = getelementptr i8, ptr %t, i32 48
  %101 = ptrtoint ptr %stable_count17 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %stable_count17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %102)
  %cmp18 = icmp slt i32 %102, 3
  br i1 %cmp18, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %103 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %103, 1
  %call21 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #6
  br label %cleanup

if.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %102)
  %cmp24 = icmp eq i32 %102, 3
  br i1 %cmp24, label %if.then26, label %if.end22.if.end30_crit_edge

if.end22.if.end30_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @imx_keypad_fire_events(ptr noundef %add.ptr, ptr noundef nonnull %matrix_volatile_state)
  %matrix_stable_state = getelementptr i8, ptr %t, i32 186
  %104 = call ptr @memcpy(ptr %matrix_stable_state, ptr %matrix_volatile_state, i32 16)
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %if.end22.if.end30_crit_edge
  %105 = ptrtoint ptr %matrix_volatile_state to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %matrix_volatile_state, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %106)
  %cmp37.not = icmp eq i16 %106, 0
  br i1 %cmp37.not, label %for.cond31, label %if.end30.if.else72_crit_edge

if.end30.if.else72_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else72

for.cond31:                                       ; preds = %if.end30
  %107 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %0, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %108)
  %cmp37.not.1 = icmp eq i16 %108, 0
  br i1 %cmp37.not.1, label %for.cond31.1, label %for.cond31.if.else72_crit_edge

for.cond31.if.else72_crit_edge:                   ; preds = %for.cond31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else72

for.cond31.1:                                     ; preds = %for.cond31
  %109 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %110)
  %cmp37.not.2 = icmp eq i16 %110, 0
  br i1 %cmp37.not.2, label %for.cond31.2, label %for.cond31.1.if.else72_crit_edge

for.cond31.1.if.else72_crit_edge:                 ; preds = %for.cond31.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else72

for.cond31.2:                                     ; preds = %for.cond31.1
  %111 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %112)
  %cmp37.not.3 = icmp eq i16 %112, 0
  br i1 %cmp37.not.3, label %for.cond31.3, label %for.cond31.2.if.else72_crit_edge

for.cond31.2.if.else72_crit_edge:                 ; preds = %for.cond31.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else72

for.cond31.3:                                     ; preds = %for.cond31.2
  %113 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %114)
  %cmp37.not.4 = icmp eq i16 %114, 0
  br i1 %cmp37.not.4, label %for.cond31.4, label %for.cond31.3.if.else72_crit_edge

for.cond31.3.if.else72_crit_edge:                 ; preds = %for.cond31.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else72

for.cond31.4:                                     ; preds = %for.cond31.3
  %115 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %116)
  %cmp37.not.5 = icmp eq i16 %116, 0
  br i1 %cmp37.not.5, label %for.cond31.5, label %for.cond31.4.if.else72_crit_edge

for.cond31.4.if.else72_crit_edge:                 ; preds = %for.cond31.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else72

for.cond31.5:                                     ; preds = %for.cond31.4
  %117 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %5, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %118)
  %cmp37.not.6 = icmp eq i16 %118, 0
  br i1 %cmp37.not.6, label %for.cond31.6, label %for.cond31.5.if.else72_crit_edge

for.cond31.5.if.else72_crit_edge:                 ; preds = %for.cond31.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else72

for.cond31.6:                                     ; preds = %for.cond31.5
  %119 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %6, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %120)
  %cmp37.not.7 = icmp eq i16 %120, 0
  br i1 %cmp37.not.7, label %for.cond31.7, label %for.cond31.6.if.else72_crit_edge

for.cond31.6.if.else72_crit_edge:                 ; preds = %for.cond31.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else72

for.cond31.7:                                     ; preds = %for.cond31.6
  call void @__sanitizer_cov_trace_pc() #8
  %121 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr46 = getelementptr i8, ptr %122, i32 2
  %123 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr46) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  %124 = or i16 %123, 1280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  tail call void @arm_heavy_mb() #6
  %125 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr53 = getelementptr i8, ptr %126, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr53, i16 %124) #6, !srcloc !86
  %127 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr57 = getelementptr i8, ptr %128, i32 2
  %129 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr57) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  %130 = and i16 %129, -4
  %131 = or i16 %130, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  tail call void @arm_heavy_mb() #6
  %132 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr71 = getelementptr i8, ptr %133, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr71, i16 %131) #6, !srcloc !86
  br label %cleanup

if.else72:                                        ; preds = %for.cond31.6.if.else72_crit_edge, %for.cond31.5.if.else72_crit_edge, %for.cond31.4.if.else72_crit_edge, %for.cond31.3.if.else72_crit_edge, %for.cond31.2.if.else72_crit_edge, %for.cond31.1.if.else72_crit_edge, %for.cond31.if.else72_crit_edge, %if.end30.if.else72_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %134 = load volatile i32, ptr @jiffies, align 128
  %add75 = add i32 %134, 6
  %call76 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add75) #6
  %135 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr80 = getelementptr i8, ptr %136, i32 2
  %137 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr80) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  %138 = or i16 %137, 2560
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  tail call void @arm_heavy_mb() #6
  %139 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr91 = getelementptr i8, ptr %140, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr91, i16 %138) #6, !srcloc !86
  %141 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr95 = getelementptr i8, ptr %142, i32 2
  %143 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr95) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  %144 = and i16 %143, -4
  %145 = or i16 %144, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  tail call void @arm_heavy_mb() #6
  %146 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr109 = getelementptr i8, ptr %147, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr109, i16 %145) #6, !srcloc !86
  br label %cleanup

cleanup:                                          ; preds = %if.else72, %for.cond31.7, %if.then20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %matrix_volatile_state) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_keypad_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_keypad_open.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_keypad_open, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !82

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev4 = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_keypad_open.__UNIQUE_ID_ddebug229, ptr noundef %dev4, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.27) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %do.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end8, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %3) #6
  br label %cleanup

if.end8:                                          ; preds = %if.end.i
  %enabled = getelementptr inbounds %struct.imx_keypad, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %enabled, align 4
  %mmio_base.i = getelementptr inbounds %struct.imx_keypad, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio_base.i, align 4
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %6) #6, !srcloc !83
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  %rows_en_mask.i = getelementptr inbounds %struct.imx_keypad, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %rows_en_mask.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %rows_en_mask.i, align 2
  %11 = and i16 %10, 255
  %or75.i = or i16 %11, %8
  %cols_en_mask.i = getelementptr inbounds %struct.imx_keypad, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %cols_en_mask.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %cols_en_mask.i, align 4
  %14 = shl i16 %13, 8
  %or776.i = or i16 %or75.i, %14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @arm_heavy_mb() #6
  %15 = tail call i16 @llvm.bswap.i16(i16 %or776.i) #6
  %16 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio_base.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %17, i16 %15) #6, !srcloc !86
  %18 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %19, i32 6
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr14.i) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void @arm_heavy_mb() #6
  %21 = and i16 %20, -256
  %22 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr25.i = getelementptr i8, ptr %23, i32 6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr25.i, i16 %21) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  tail call void @arm_heavy_mb() #6
  %24 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr30.i = getelementptr i8, ptr %25, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr30.i, i16 255) #6, !srcloc !86
  %26 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr34.i = getelementptr i8, ptr %27, i32 2
  %28 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr34.i) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  %29 = or i16 %28, 3840
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %30 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr45.i = getelementptr i8, ptr %31, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr45.i, i16 %29) #6, !srcloc !86
  %32 = and i16 %28, -3844
  %33 = or i16 %32, 3841
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  tail call void @arm_heavy_mb() #6
  %34 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr56.i = getelementptr i8, ptr %35, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr56.i, i16 %33) #6, !srcloc !86
  %36 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr = getelementptr i8, ptr %37, i32 6
  %38 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #6, !srcloc !83
  %39 = tail call i16 @llvm.bswap.i16(i16 %38)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  %40 = ptrtoint ptr %rows_en_mask.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %rows_en_mask.i, align 2
  %and29 = and i16 %41, %39
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and29)
  %cmp = icmp eq i16 %and29, 0
  br i1 %cmp, label %do.end17, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end17:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %dev18 = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18, ptr noundef nonnull @.str.29) #9
  tail call void @imx_keypad_close(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %if.end8.cleanup_crit_edge, %if.then3.i, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end17 ], [ 0, %if.end8.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_keypad_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_keypad_close.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_keypad_close, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !82

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev4 = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_keypad_close.__UNIQUE_ID_ddebug228, ptr noundef %dev4, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.30) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %enabled = getelementptr inbounds %struct.imx_keypad, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %enabled, align 4
  %irq = getelementptr inbounds %struct.imx_keypad, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq, align 4
  tail call void @synchronize_irq(i32 noundef %4) #6
  %check_matrix_timer = getelementptr inbounds %struct.imx_keypad, ptr %1, i32 0, i32 4
  %call5 = tail call i32 @del_timer_sync(ptr noundef %check_matrix_timer) #6
  %mmio_base.i = getelementptr inbounds %struct.imx_keypad, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 2
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  %8 = and i16 %7, -772
  %9 = or i16 %8, 768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio_base.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %11, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr6.i, i16 %9) #6, !srcloc !86
  %cols_en_mask.i = getelementptr inbounds %struct.imx_keypad, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %cols_en_mask.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %cols_en_mask.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %14 = and i16 %13, 255
  %15 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio_base.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %16, i16 %14) #6, !srcloc !86
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  tail call void @clk_disable(ptr noundef %18) #6
  tail call void @clk_unprepare(ptr noundef %18) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @matrix_keypad_build_keymap(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_keypad_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio_base = getelementptr inbounds %struct.imx_keypad, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 2
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  %3 = and i16 %2, -772
  %4 = or i16 %3, 768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void @arm_heavy_mb() #6
  %5 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio_base, align 4
  %add.ptr6 = getelementptr i8, ptr %6, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr6, i16 %4) #6, !srcloc !86
  %enabled = getelementptr inbounds %struct.imx_keypad, ptr %dev_id, i32 0, i32 6
  %7 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %enabled, align 4, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %stable_count = getelementptr inbounds %struct.imx_keypad, ptr %dev_id, i32 0, i32 5
  %9 = ptrtoint ptr %stable_count to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %stable_count, align 4
  %check_matrix_timer = getelementptr inbounds %struct.imx_keypad, ptr %dev_id, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %10, 1
  %call8 = tail call i32 @mod_timer(ptr noundef %check_matrix_timer, i32 noundef %add) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @imx_keypad_fire_events(ptr nocapture noundef readonly %keypad, ptr nocapture noundef readonly %matrix_volatile_state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %input_dev1 = getelementptr inbounds %struct.imx_keypad, ptr %keypad, i32 0, i32 1
  %0 = ptrtoint ptr %input_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input_dev1, align 4
  %cols_en_mask = getelementptr inbounds %struct.imx_keypad, ptr %keypad, i32 0, i32 8
  %rows_en_mask = getelementptr inbounds %struct.imx_keypad, ptr %keypad, i32 0, i32 7
  %dev = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 40
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %col.083 = phi i32 [ 0, %entry ], [ %inc51, %cleanup.for.body_crit_edge ]
  %2 = ptrtoint ptr %cols_en_mask to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cols_en_mask, align 4
  %conv = zext i16 %3 to i32
  %shl = shl nuw nsw i32 1, %col.083
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp2 = icmp eq i32 %and, 0
  br i1 %cmp2, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr %struct.imx_keypad, ptr %keypad, i32 0, i32 10, i32 %col.083
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %arrayidx5 = getelementptr i16, ptr %matrix_volatile_state, i32 %col.083
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx5, align 2
  %xor79 = xor i16 %7, %5
  %conv8 = zext i16 %xor79 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %xor79)
  %cmp9 = icmp eq i16 %xor79, 0
  br i1 %cmp9, label %if.end.cleanup_crit_edge, label %if.end.for.body16_crit_edge

if.end.for.body16_crit_edge:                      ; preds = %if.end
  br label %for.body16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body16:                                       ; preds = %for.inc.for.body16_crit_edge, %if.end.for.body16_crit_edge
  %row.081 = phi i32 [ %inc, %for.inc.for.body16_crit_edge ], [ 0, %if.end.for.body16_crit_edge ]
  %8 = ptrtoint ptr %rows_en_mask to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %rows_en_mask, align 2
  %conv17 = zext i16 %9 to i32
  %shl18 = shl nuw nsw i32 1, %row.081
  %and19 = and i32 %shl18, %conv17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %cmp20 = icmp eq i32 %and19, 0
  %and26 = and i32 %shl18, %conv8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %cmp27 = icmp eq i32 %and26, 0
  %or.cond = select i1 %cmp20, i1 true, i1 %cmp27
  br i1 %or.cond, label %for.body16.for.inc_crit_edge, label %if.end30

for.body16.for.inc_crit_edge:                     ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end30:                                         ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #8
  %shl31 = shl i32 %row.081, 3
  %add = add nuw nsw i32 %shl31, %col.083
  tail call void @input_event(ptr noundef %1, i32 noundef 4, i32 noundef 4, i32 noundef %add) #6
  %arrayidx32 = getelementptr %struct.imx_keypad, ptr %keypad, i32 0, i32 9, i32 %add
  %10 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx32, align 2
  %conv33 = zext i16 %11 to i32
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx5, align 2
  %conv35 = zext i16 %13 to i32
  %14 = lshr i32 %conv35, %row.081
  %15 = and i32 %14, 1
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef %conv33, i32 noundef %15) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_keypad_fire_events.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_keypad_fire_events, %if.then40)) #6
          to label %for.inc [label %if.then40], !srcloc !82

if.then40:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx32, align 2
  %conv43 = zext i16 %17 to i32
  %18 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx5, align 2
  %conv45 = zext i16 %19 to i32
  %and47 = and i32 %shl18, %conv45
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_keypad_fire_events.__UNIQUE_ID_ddebug227, ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %conv43, i32 noundef %and47) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then40, %if.end30, %for.body16.for.inc_crit_edge
  %inc = add nuw nsw i32 %row.081, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body16_crit_edge

for.inc.for.body16_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body16

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc51 = add nuw nsw i32 %col.083, 1
  %exitcond85.not = icmp eq i32 %inc51, 8
  br i1 %exitcond85.not, label %for.end52, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end52:                                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @input_event(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_kbd_noirq_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %input_dev1 = getelementptr inbounds %struct.imx_keypad, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %input_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input_dev1, align 4
  %mmio_base = getelementptr inbounds %struct.imx_keypad, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio_base, align 4
  %add.ptr2 = getelementptr i8, ptr %5, i32 2
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2) #6, !srcloc !83
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  %mutex = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %call6 = tail call zeroext i1 @input_device_enabled(ptr noundef %3) #6
  br i1 %call6, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void @clk_disable(ptr noundef %9) #6
  tail call void @clk_unprepare(ptr noundef %9) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %10 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.if.end26_crit_edge, label %device_may_wakeup.exit

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

device_may_wakeup.exit:                           ; preds = %if.end
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %11 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %12, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end26_crit_edge, label %if.then10

device_may_wakeup.exit.if.end26_crit_edge:        ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then10:                                        ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  %13 = shl i16 %7, 9
  %14 = and i16 %13, 512
  %15 = or i16 %14, %7
  %16 = shl i16 %7, 7
  %17 = and i16 %16, 256
  %18 = or i16 %15, %17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  tail call void @arm_heavy_mb() #6
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  %20 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio_base, align 4
  %add.ptr24 = getelementptr i8, ptr %21, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr24, i16 %19) #6, !srcloc !86
  %irq = getelementptr inbounds %struct.imx_keypad, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %23, i32 noundef 1) #6
  br label %if.end26

if.end26:                                         ; preds = %if.then10, %device_may_wakeup.exit.if.end26_crit_edge, %if.end.if.end26_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_kbd_noirq_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %input_dev1 = getelementptr inbounds %struct.imx_keypad, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %input_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input_dev1, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  %irq = getelementptr inbounds %struct.imx_keypad, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %8, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %mutex = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %call5 = tail call zeroext i1 @input_device_enabled(ptr noundef %3) #6
  br i1 %call5, label %if.then6, label %if.end.err_clk_crit_edge

if.end.err_clk_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_clk

if.then6:                                         ; preds = %if.end
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call.i17 = tail call i32 @clk_prepare(ptr noundef %10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17)
  %tobool.not.i18 = icmp eq i32 %call.i17, 0
  br i1 %tobool.not.i18, label %if.end.i, label %if.then6.err_clk_crit_edge

if.then6.err_clk_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_clk

if.end.i:                                         ; preds = %if.then6
  %call1.i = tail call i32 @clk_enable(ptr noundef %10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.err_clk_crit_edge, label %if.then3.i

if.end.i.err_clk_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_clk

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %10) #6
  br label %err_clk

err_clk:                                          ; preds = %if.then3.i, %if.end.i.err_clk_crit_edge, %if.then6.err_clk_crit_edge, %if.end.err_clk_crit_edge
  %ret.0 = phi i32 [ 0, %if.end.err_clk_crit_edge ], [ %call.i17, %if.then6.err_clk_crit_edge ], [ %call1.i, %if.then3.i ], [ 0, %if.end.i.err_clk_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_device_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !71}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @__initcall__kmod_imx_keypad__232_580_imx_keypad_driver_init6, !1, !"__initcall__kmod_imx_keypad__232_580_imx_keypad_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/keyboard/imx_keypad.c", i32 580, i32 1}
!2 = !{ptr @__exitcall_imx_keypad_driver_exit, !1, !"__exitcall_imx_keypad_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author233, !4, !"__UNIQUE_ID_author233", i1 false, i1 false}
!4 = !{!"../drivers/input/keyboard/imx_keypad.c", i32 582, i32 1}
!5 = !{ptr @__UNIQUE_ID_description234, !6, !"__UNIQUE_ID_description234", i1 false, i1 false}
!6 = !{!"../drivers/input/keyboard/imx_keypad.c", i32 583, i32 1}
!7 = !{ptr @__UNIQUE_ID_file235, !8, !"__UNIQUE_ID_file235", i1 false, i1 false}
!8 = !{!"../drivers/input/keyboard/imx_keypad.c", i32 584, i32 1}
!9 = !{ptr @__UNIQUE_ID_license236, !8, !"__UNIQUE_ID_license236", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias237, !11, !"__UNIQUE_ID_alias237", i1 false, i1 false}
!11 = !{!"../drivers/input/keyboard/imx_keypad.c", i32 585, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/keyboard/imx_keypad.c", i32 574, i32 11}
!14 = !{ptr @imx_keypad_driver, !15, !"imx_keypad_driver", i1 false, i1 false}
!15 = !{!"../drivers/input/keyboard/imx_keypad.c", i32 572, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/keyboard/imx_keypad.c", i32 429, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @imx_keypad_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @imx_keypad_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/keyboard/imx_keypad.c", i32 435, i32 3}
!26 = !{ptr @imx_keypad_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @imx_keypad_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @imx_keypad_probe.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/input/keyboard/imx_keypad.c", i32 443, i32 2}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/keyboard/imx_keypad.c", i32 452, i32 3}
!33 = !{ptr @imx_keypad_probe._entry.10, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @imx_keypad_probe._entry_ptr.12, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/input/keyboard/imx_keypad.c", i32 468, i32 3}
!37 = !{ptr @imx_keypad_probe._entry.13, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @imx_keypad_probe._entry_ptr.15, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/input/keyboard/imx_keypad.c", i32 482, i32 2}
!41 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @imx_keypad_probe.__UNIQUE_ID_ddebug230, !40, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/input/keyboard/imx_keypad.c", i32 483, i32 2}
!45 = !{ptr @imx_keypad_probe.__UNIQUE_ID_ddebug231, !44, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/input/keyboard/imx_keypad.c", i32 499, i32 3}
!48 = !{ptr @imx_keypad_probe._entry.19, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @imx_keypad_probe._entry_ptr.21, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/input/keyboard/imx_keypad.c", i32 506, i32 3}
!52 = !{ptr @imx_keypad_probe._entry.22, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @imx_keypad_probe._entry_ptr.24, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/input/keyboard/imx_keypad.c", i32 172, i32 4}
!56 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @imx_keypad_fire_events.__UNIQUE_ID_ddebug227, !55, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/input/keyboard/imx_keypad.c", i32 385, i32 2}
!60 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @imx_keypad_open.__UNIQUE_ID_ddebug229, !59, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/input/keyboard/imx_keypad.c", i32 399, i32 3}
!64 = !{ptr @imx_keypad_open._entry, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @imx_keypad_open._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/input/keyboard/imx_keypad.c", i32 367, i32 2}
!68 = !{ptr @imx_keypad_close.__UNIQUE_ID_ddebug228, !67, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!69 = !{ptr @imx_keypad_of_match, !70, !"imx_keypad_of_match", i1 false, i1 false}
!70 = !{!"../drivers/input/keyboard/imx_keypad.c", i32 411, i32 34}
!71 = !{ptr @imx_kbd_pm_ops, !72, !"imx_kbd_pm_ops", i1 false, i1 false}
!72 = !{!"../drivers/input/keyboard/imx_keypad.c", i32 568, i32 32}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{i64 2148735944, i64 2148735949, i64 2148735962, i64 2148736006, i64 2148736040, i64 2148736061}
!83 = !{i64 5834995}
!84 = !{i64 2153958303}
!85 = !{i64 2153958577}
!86 = !{i64 5834795}
!87 = !{i64 2153959001}
!88 = !{i64 2153939468}
!89 = !{i64 2153939698}
!90 = !{i64 2153940411}
!91 = !{i64 2153940641}
!92 = !{i64 2153941890}
!93 = !{i64 2153942120}
!94 = !{i64 2153942833}
!95 = !{i64 2153943063}
!96 = !{i64 2153944312}
!97 = !{i64 2153944831}
!98 = !{i64 2153945061}
!99 = !{i64 2153949717}
!100 = !{i64 2153949969}
!101 = !{i64 2153950682}
!102 = !{i64 2153950934}
!103 = !{i64 2153951647}
!104 = !{i64 2153951899}
!105 = !{i64 2153952612}
!106 = !{i64 2153952864}
!107 = !{i64 2153954564}
!108 = !{i64 2153954794}
!109 = !{i64 2153955507}
!110 = !{i64 2153955737}
!111 = !{i64 2153956160}
!112 = !{i64 2153956870}
!113 = !{i64 2153957144}
!114 = !{i64 2153957590}
!115 = !{i64 2153963974}
!116 = !{i64 2153953577}
!117 = !{i64 2153953851}
!118 = !{i8 0, i8 2}
!119 = !{i64 2153982916}
!120 = !{i64 2153983232}
