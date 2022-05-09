; ModuleID = '/llk/IR_all_yes/drivers/input/joystick/psxpad-spi.c_pt.bc'
source_filename = "../drivers/input/joystick/psxpad-spi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.psxpad = type { ptr, ptr, [32 x i8], i8, i8, i8, i8, [84 x i8], [32 x i8], [96 x i8], [21 x i8], [107 x i8] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
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
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon.71 }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon.71 = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, ptr }
%struct.ff_envelope = type { i16, i16, i16, i16 }

@__initcall__kmod_psxpad_spi__231_401_psxpad_spi_driver_init6 = internal global ptr @psxpad_spi_driver_init, section ".initcall6.init", align 4
@psxpad_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @psxpad_spi_id, ptr @psxpad_spi_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @psxpad_spi_pm, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_psxpad_spi_driver_exit = internal global ptr @psxpad_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author232 = internal constant [58 x i8] c"psxpad_spi.author=Tomohiro Yoshidomi <sylph23k@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description233 = internal constant [72 x i8] c"psxpad_spi.description=PlayStation 1/2 joypads via SPI interface Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file234 = internal constant [50 x i8] c"psxpad_spi.file=drivers/input/joystick/psxpad-spi\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [23 x i8] c"psxpad_spi.license=GPL\00", section ".modinfo", align 1
@psxpad_spi_id = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"psxpad-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"psxpad-spi\00", [21 x i8] zeroinitializer }, align 32
@psxpad_spi_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @psxpad_spi_suspend, ptr null, ptr @psxpad_spi_suspend, ptr null, ptr @psxpad_spi_suspend, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@psxpad_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 294, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to allocate input device\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"psxpad_spi_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/input/joystick/psxpad-spi.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@psxpad_spi_probe._entry_ptr = internal global ptr @psxpad_spi_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"PlayStation 1/2 joypad\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s/input\00", [23 x i8] zeroinitializer }, align 32
@psxpad_spi_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 352, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to set up polling: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@psxpad_spi_probe._entry_ptr.10 = internal global ptr @psxpad_spi_probe._entry.8, section ".printk_index", align 4
@psxpad_spi_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 365, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to register input device: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@psxpad_spi_probe._entry_ptr.13 = internal global ptr @psxpad_spi_probe._entry.11, section ".printk_index", align 4
@psxpad_spi_init_ff._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 164, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"input_ff_create_memless() failed: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"psxpad_spi_init_ff\00", [45 x i8] zeroinitializer }, align 32
@psxpad_spi_init_ff._entry_ptr = internal global ptr @psxpad_spi_init_ff._entry, section ".printk_index", align 4
@psxpad_spi_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 219, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: poll command failed mode: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"psxpad_spi_poll\00", [16 x i8] zeroinitializer }, align 32
@psxpad_spi_poll._entry_ptr = internal global ptr @psxpad_spi_poll._entry, section ".printk_index", align 4
@PSX_CMD_ENTER_CFG = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\80\C2\00\80\00\00\00\00\00", [23 x i8] zeroinitializer }, align 32
@psxpad_control_motor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 106, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: failed to enter config mode: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"psxpad_control_motor\00", [43 x i8] zeroinitializer }, align 32
@psxpad_control_motor._entry_ptr = internal global ptr @psxpad_control_motor._entry, section ".printk_index", align 4
@PSX_CMD_ENABLE_MOTOR = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\80\B2\00\00\80\FF\FF\FF\FF", [23 x i8] zeroinitializer }, align 32
@psxpad_control_motor._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.3, i32 118, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: failed to enable motor mode: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@psxpad_control_motor._entry_ptr.22 = internal global ptr @psxpad_control_motor._entry.20, section ".printk_index", align 4
@PSX_CMD_EXIT_CFG = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\80\C2\00\00ZZZZZ", [23 x i8] zeroinitializer }, align 32
@psxpad_control_motor._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.3, i32 127, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: failed to exit config mode: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@psxpad_control_motor._entry_ptr.25 = internal global ptr @psxpad_control_motor._entry.23, section ".printk_index", align 4
@PSX_CMD_POLL = internal constant { <{ i8, i8, [19 x i8] }>, [43 x i8] } { <{ i8, i8, [19 x i8] }> <{ i8 -128, i8 66, [19 x i8] zeroinitializer }>, [43 x i8] zeroinitializer }, align 32
@psxpad_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 85, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: failed to SPI xfers mode: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"psxpad_command\00", [17 x i8] zeroinitializer }, align 32
@psxpad_command._entry_ptr = internal global ptr @psxpad_command._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 130, i64 206]
@___asan_gen_.29 = private unnamed_addr constant [18 x i8] c"psxpad_spi_driver\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 392, i32 26 }
@___asan_gen_.32 = private unnamed_addr constant [14 x i8] c"psxpad_spi_id\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 386, i32 35 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 394, i32 11 }
@___asan_gen_.38 = private unnamed_addr constant [14 x i8] c"psxpad_spi_pm\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 384, i32 8 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 294, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 305, i32 15 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 306, i32 41 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 352, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 364, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 163, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 218, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant [18 x i8] c"PSX_CMD_ENTER_CFG\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 48, i32 17 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 104, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [21 x i8] c"PSX_CMD_ENABLE_MOTOR\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 56, i32 17 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 116, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c"PSX_CMD_EXIT_CFG\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 52, i32 17 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 125, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant [13 x i8] c"PSX_CMD_POLL\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 42, i32 17 }
@___asan_gen_.128 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.135 = private constant [39 x i8] c"../drivers/input/joystick/psxpad-spi.c\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 83, i32 3 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_license235, ptr @__exitcall_psxpad_spi_driver_exit, ptr @__initcall__kmod_psxpad_spi__231_401_psxpad_spi_driver_init6, ptr @psxpad_command._entry, ptr @psxpad_command._entry_ptr, ptr @psxpad_control_motor._entry, ptr @psxpad_control_motor._entry.20, ptr @psxpad_control_motor._entry.23, ptr @psxpad_control_motor._entry_ptr, ptr @psxpad_control_motor._entry_ptr.22, ptr @psxpad_control_motor._entry_ptr.25, ptr @psxpad_spi_driver_exit, ptr @psxpad_spi_init_ff._entry, ptr @psxpad_spi_init_ff._entry_ptr, ptr @psxpad_spi_poll._entry, ptr @psxpad_spi_poll._entry_ptr, ptr @psxpad_spi_probe._entry, ptr @psxpad_spi_probe._entry.11, ptr @psxpad_spi_probe._entry.8, ptr @psxpad_spi_probe._entry_ptr, ptr @psxpad_spi_probe._entry_ptr.10, ptr @psxpad_spi_probe._entry_ptr.13, ptr @psxpad_spi_driver, ptr @psxpad_spi_id, ptr @.str, ptr @psxpad_spi_pm, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @PSX_CMD_ENTER_CFG, ptr @.str.18, ptr @.str.19, ptr @PSX_CMD_ENABLE_MOTOR, ptr @.str.21, ptr @PSX_CMD_EXIT_CFG, ptr @.str.24, ptr @PSX_CMD_POLL, ptr @.str.27, ptr @.str.28], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psxpad_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psxpad_spi_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psxpad_spi_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psxpad_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psxpad_spi_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psxpad_spi_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psxpad_spi_init_ff._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psxpad_spi_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @PSX_CMD_ENTER_CFG to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psxpad_control_motor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @PSX_CMD_ENABLE_MOTOR to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psxpad_control_motor._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @PSX_CMD_EXIT_CFG to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psxpad_control_motor._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @PSX_CMD_POLL to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psxpad_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @psxpad_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @psxpad_spi_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @psxpad_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @psxpad_spi_driver, i32 0, i32 4)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psxpad_spi_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 384, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_input_allocate_device(ptr noundef %spi) #9
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %idev7 = getelementptr inbounds %struct.psxpad, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %idev7 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %idev7, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %spi, ptr %call.i, align 128
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 40, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.6, ptr %call2, align 8
  %phys = getelementptr inbounds %struct.psxpad, ptr %call.i, i32 0, i32 2
  %init_name.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end6.dev_name.exit_crit_edge

if.end6.dev_name.exit_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %spi, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end6.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %if.end6.dev_name.exit_crit_edge ]
  %call11 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 32, ptr noundef nonnull @.str.7, ptr noundef %retval.0.i)
  %id = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 3
  %8 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 28, ptr %id, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 31
  %9 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @psxpad_spi_poll_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 32
  %10 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @psxpad_spi_poll_close, ptr %close, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call2, i32 noundef 0, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #9
  tail call void @input_set_abs_params(ptr noundef nonnull %call2, i32 noundef 1, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #9
  tail call void @input_set_abs_params(ptr noundef nonnull %call2, i32 noundef 3, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #9
  tail call void @input_set_abs_params(ptr noundef nonnull %call2, i32 noundef 4, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #9
  tail call void @input_set_capability(ptr noundef nonnull %call2, i32 noundef 1, i32 noundef 544) #9
  tail call void @input_set_capability(ptr noundef nonnull %call2, i32 noundef 1, i32 noundef 545) #9
  tail call void @input_set_capability(ptr noundef nonnull %call2, i32 noundef 1, i32 noundef 546) #9
  tail call void @input_set_capability(ptr noundef nonnull %call2, i32 noundef 1, i32 noundef 547) #9
  tail call void @input_set_capability(ptr noundef nonnull %call2, i32 noundef 1, i32 noundef 304) #9
  tail call void @input_set_capability(ptr noundef nonnull %call2, i32 noundef 1, i32 noundef 305) #9
  tail call void @input_set_capability(ptr noundef nonnull %call2, i32 noundef 1, i32 noundef 307) #9
  tail call void @input_set_capability(ptr noundef nonnull %call2, i32 noundef 1, i32 noundef 308) #9
  tail call void @input_set_capability(ptr noundef nonnull %call2, i32 noundef 1, i32 noundef 310) #9
  tail call void @input_set_capability(ptr noundef nonnull %call2, i32 noundef 1, i32 noundef 311) #9
  tail call void @input_set_capability(ptr noundef nonnull %call2, i32 noundef 1, i32 noundef 312) #9
  tail call void @input_set_capability(ptr noundef nonnull %call2, i32 noundef 1, i32 noundef 313) #9
  tail call void @input_set_capability(ptr noundef nonnull %call2, i32 noundef 1, i32 noundef 317) #9
  tail call void @input_set_capability(ptr noundef nonnull %call2, i32 noundef 1, i32 noundef 318) #9
  tail call void @input_set_capability(ptr noundef nonnull %call2, i32 noundef 1, i32 noundef 314) #9
  tail call void @input_set_capability(ptr noundef nonnull %call2, i32 noundef 1, i32 noundef 315) #9
  %11 = ptrtoint ptr %idev7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %idev7, align 4
  tail call void @input_set_capability(ptr noundef %12, i32 noundef 21, i32 noundef 80) #9
  %13 = ptrtoint ptr %idev7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %idev7, align 4
  %call.i93 = tail call i32 @input_ff_create_memless(ptr noundef %14, ptr noundef null, ptr noundef nonnull @psxpad_spi_play_effect) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93)
  %tobool.not.i94 = icmp eq i32 %call.i93, 0
  br i1 %tobool.not.i94, label %if.end15, label %psxpad_spi_init_ff.exit

psxpad_spi_init_ff.exit:                          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call.i, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.14, i32 noundef %call.i93) #12
  br label %cleanup

if.end15:                                         ; preds = %dev_name.exit
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %17 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 3, ptr %mode, align 8
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %18 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 8, ptr %bits_per_word, align 1
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %19 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %master, align 4
  %min_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %min_speed_hz to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 125000, ptr %min_speed_hz, align 4
  %22 = load ptr, ptr %master, align 4
  %max_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 125000, ptr %max_speed_hz, align 8
  %call17 = tail call i32 @spi_setup(ptr noundef %spi) #9
  %motor1level2.i = getelementptr inbounds %struct.psxpad, ptr %call.i, i32 0, i32 5
  %24 = ptrtoint ptr %motor1level2.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %motor1level2.i, align 2
  %motor2level31.i = getelementptr inbounds %struct.psxpad, ptr %call.i, i32 0, i32 6
  %25 = ptrtoint ptr %motor2level31.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %motor2level31.i, align 1
  %call18 = tail call i32 @input_setup_polling(ptr noundef nonnull %call2, ptr noundef nonnull @psxpad_spi_poll) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end25, label %do.end23

do.end23:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.9, i32 noundef %call18) #12
  br label %cleanup

if.end25:                                         ; preds = %if.end15
  tail call void @input_set_poll_interval(ptr noundef nonnull %call2, i32 noundef 16) #9
  tail call void @input_set_min_poll_interval(ptr noundef nonnull %call2, i32 noundef 8) #9
  tail call void @input_set_max_poll_interval(ptr noundef nonnull %call2, i32 noundef 32) #9
  %call26 = tail call i32 @input_register_device(ptr noundef nonnull %call2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end33, label %do.end31

do.end31:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.12, i32 noundef %call26) #12
  br label %cleanup

if.end33:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pm_runtime_enable(ptr noundef %spi) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %do.end31, %do.end23, %psxpad_spi_init_ff.exit, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %do.end23 ], [ %call26, %do.end31 ], [ 0, %if.end33 ], [ -12, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call.i93, %psxpad_spi_init_ff.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psxpad_spi_poll_open(ptr nocapture noundef readonly %input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @psxpad_spi_poll_close(ptr nocapture noundef readonly %input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 4) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_setup_polling(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @psxpad_spi_poll(ptr noundef %input) #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %xfers.i = alloca %struct.spi_transfer, align 4
  %msg.i.i19.i = alloca %struct.spi_message, align 4
  %xfers.i20.i = alloca %struct.spi_transfer, align 4
  %msg.i.i1.i = alloca %struct.spi_message, align 4
  %xfers.i2.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %xfers.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %motor1enable2.i = getelementptr inbounds %struct.psxpad, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %motor1enable2.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %motor1enable2.i, align 8
  %motor2enable5.i = getelementptr inbounds %struct.psxpad, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %motor2enable5.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %motor2enable5.i, align 1
  %sendbuf.i = getelementptr inbounds %struct.psxpad, ptr %1, i32 0, i32 8
  %4 = call ptr @memcpy(ptr %sendbuf.i, ptr @PSX_CMD_ENTER_CFG, i32 9)
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfers.i.i) #9
  %5 = getelementptr inbounds i8, ptr %xfers.i.i, i32 12
  %6 = call ptr @memset(ptr %5, i32 0, i32 84)
  %7 = ptrtoint ptr %xfers.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %sendbuf.i, ptr %xfers.i.i, align 4
  %rx_buf.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i.i, i32 0, i32 1
  %response.i.i = getelementptr inbounds %struct.psxpad, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %response.i.i, ptr %rx_buf.i.i, align 4
  %len.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 9, ptr %len.i.i, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #9
  %12 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %13 = call ptr @memset(ptr %12, i32 0, i32 40)
  %14 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %16 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %17 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #9
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %entry.spi_sync_transfer.exit.i.i_crit_edge

entry.spi_sync_transfer.exit.i.i_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_sync_transfer.exit.i.i

if.end.i.i.i.i.i.i.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %19 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i.i, i32 0, i32 18, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %21 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %spi_sync_transfer.exit.i.i

spi_sync_transfer.exit.i.i:                       ; preds = %if.end.i.i.i.i.i.i.i, %entry.spi_sync_transfer.exit.i.i_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %11, ptr noundef nonnull %msg.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %spi_sync_transfer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %call.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfers.i.i) #9
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef %call.i.i.i) #12
  br label %psxpad_control_motor.exit

if.end.i:                                         ; preds = %spi_sync_transfer.exit.i.i
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfers.i.i) #9
  %26 = call ptr @memcpy(ptr %sendbuf.i, ptr @PSX_CMD_ENABLE_MOTOR, i32 9)
  %27 = ptrtoint ptr %motor1enable2.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %motor1enable2.i, align 8, !range !83
  %sext.i = add nsw i8 %28, -1
  %arrayidx.i = getelementptr %struct.psxpad, ptr %1, i32 0, i32 8, i32 3
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %sext.i, ptr %arrayidx.i, align 1
  %30 = ptrtoint ptr %motor2enable5.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %motor2enable5.i, align 1, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool14.not.i = icmp eq i8 %31, 0
  %conv17.i = select i1 %tobool14.not.i, i8 -1, i8 -128
  %arrayidx19.i = getelementptr %struct.psxpad, ptr %1, i32 0, i32 8, i32 4
  %32 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv17.i, ptr %arrayidx19.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfers.i2.i) #9
  %33 = getelementptr inbounds i8, ptr %xfers.i2.i, i32 12
  %34 = call ptr @memset(ptr %33, i32 0, i32 84)
  %35 = ptrtoint ptr %xfers.i2.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %sendbuf.i, ptr %xfers.i2.i, align 4
  %rx_buf.i4.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i2.i, i32 0, i32 1
  %36 = ptrtoint ptr %rx_buf.i4.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %response.i.i, ptr %rx_buf.i4.i, align 4
  %len.i6.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i2.i, i32 0, i32 2
  %37 = ptrtoint ptr %len.i6.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 9, ptr %len.i6.i, align 4
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i1.i) #9
  %40 = getelementptr inbounds i8, ptr %msg.i.i1.i, i32 8
  %41 = call ptr @memset(ptr %40, i32 0, i32 40)
  %42 = ptrtoint ptr %msg.i.i1.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %msg.i.i1.i, ptr %msg.i.i1.i, align 4
  %prev.i.i.i.i.i.i7.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i1.i, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i.i.i.i.i.i7.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %msg.i.i1.i, ptr %prev.i.i.i.i.i.i7.i, align 4
  %resources.i.i.i.i.i8.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i1.i, i32 0, i32 10
  %44 = ptrtoint ptr %resources.i.i.i.i.i8.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %resources.i.i.i.i.i8.i, ptr %resources.i.i.i.i.i8.i, align 4
  %prev.i2.i.i.i.i.i9.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i1.i, i32 0, i32 10, i32 1
  %45 = ptrtoint ptr %prev.i2.i.i.i.i.i9.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %resources.i.i.i.i.i8.i, ptr %prev.i2.i.i.i.i.i9.i, align 4
  %transfer_list.i.i.i.i10.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i2.i, i32 0, i32 18
  %call.i.i.i.i.i.i11.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i10.i, ptr noundef nonnull %msg.i.i1.i, ptr noundef nonnull %msg.i.i1.i) #9
  br i1 %call.i.i.i.i.i.i11.i, label %if.end.i.i.i.i.i.i13.i, label %if.end.i.spi_sync_transfer.exit.i16.i_crit_edge

if.end.i.spi_sync_transfer.exit.i16.i_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_sync_transfer.exit.i16.i

if.end.i.i.i.i.i.i13.i:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %prev.i.i.i.i.i.i7.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %transfer_list.i.i.i.i10.i, ptr %prev.i.i.i.i.i.i7.i, align 4
  %47 = ptrtoint ptr %transfer_list.i.i.i.i10.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %msg.i.i1.i, ptr %transfer_list.i.i.i.i10.i, align 4
  %prev3.i.i.i.i.i.i12.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i2.i, i32 0, i32 18, i32 1
  %48 = ptrtoint ptr %prev3.i.i.i.i.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %msg.i.i1.i, ptr %prev3.i.i.i.i.i.i12.i, align 4
  %49 = ptrtoint ptr %msg.i.i1.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %transfer_list.i.i.i.i10.i, ptr %msg.i.i1.i, align 4
  br label %spi_sync_transfer.exit.i16.i

spi_sync_transfer.exit.i16.i:                     ; preds = %if.end.i.i.i.i.i.i13.i, %if.end.i.spi_sync_transfer.exit.i16.i_crit_edge
  %call.i.i14.i = call i32 @spi_sync(ptr noundef %39, ptr noundef nonnull %msg.i.i1.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i14.i)
  %tobool.not.i15.i = icmp eq i32 %call.i.i14.i, 0
  br i1 %tobool.not.i15.i, label %if.end28.i, label %do.end25.i

do.end25.i:                                       ; preds = %spi_sync_transfer.exit.i16.i
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %call.i.i14.i) #12
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfers.i2.i) #9
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.19, i32 noundef %call.i.i14.i) #12
  br label %psxpad_control_motor.exit

if.end28.i:                                       ; preds = %spi_sync_transfer.exit.i16.i
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfers.i2.i) #9
  %54 = call ptr @memcpy(ptr %sendbuf.i, ptr @PSX_CMD_EXIT_CFG, i32 9)
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfers.i20.i) #9
  %55 = getelementptr inbounds i8, ptr %xfers.i20.i, i32 12
  %56 = call ptr @memset(ptr %55, i32 0, i32 84)
  %57 = ptrtoint ptr %xfers.i20.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %sendbuf.i, ptr %xfers.i20.i, align 4
  %rx_buf.i22.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i20.i, i32 0, i32 1
  %58 = ptrtoint ptr %rx_buf.i22.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %response.i.i, ptr %rx_buf.i22.i, align 4
  %len.i24.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i20.i, i32 0, i32 2
  %59 = ptrtoint ptr %len.i24.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 9, ptr %len.i24.i, align 4
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i19.i) #9
  %62 = getelementptr inbounds i8, ptr %msg.i.i19.i, i32 8
  %63 = call ptr @memset(ptr %62, i32 0, i32 40)
  %64 = ptrtoint ptr %msg.i.i19.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %msg.i.i19.i, ptr %msg.i.i19.i, align 4
  %prev.i.i.i.i.i.i25.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i19.i, i32 0, i32 1
  %65 = ptrtoint ptr %prev.i.i.i.i.i.i25.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %msg.i.i19.i, ptr %prev.i.i.i.i.i.i25.i, align 4
  %resources.i.i.i.i.i26.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i19.i, i32 0, i32 10
  %66 = ptrtoint ptr %resources.i.i.i.i.i26.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %resources.i.i.i.i.i26.i, ptr %resources.i.i.i.i.i26.i, align 4
  %prev.i2.i.i.i.i.i27.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i19.i, i32 0, i32 10, i32 1
  %67 = ptrtoint ptr %prev.i2.i.i.i.i.i27.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %resources.i.i.i.i.i26.i, ptr %prev.i2.i.i.i.i.i27.i, align 4
  %transfer_list.i.i.i.i28.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i20.i, i32 0, i32 18
  %call.i.i.i.i.i.i29.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i28.i, ptr noundef nonnull %msg.i.i19.i, ptr noundef nonnull %msg.i.i19.i) #9
  br i1 %call.i.i.i.i.i.i29.i, label %if.end.i.i.i.i.i.i31.i, label %if.end28.i.spi_sync_transfer.exit.i34.i_crit_edge

if.end28.i.spi_sync_transfer.exit.i34.i_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_sync_transfer.exit.i34.i

if.end.i.i.i.i.i.i31.i:                           ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %prev.i.i.i.i.i.i25.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %transfer_list.i.i.i.i28.i, ptr %prev.i.i.i.i.i.i25.i, align 4
  %69 = ptrtoint ptr %transfer_list.i.i.i.i28.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %msg.i.i19.i, ptr %transfer_list.i.i.i.i28.i, align 4
  %prev3.i.i.i.i.i.i30.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i20.i, i32 0, i32 18, i32 1
  %70 = ptrtoint ptr %prev3.i.i.i.i.i.i30.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %msg.i.i19.i, ptr %prev3.i.i.i.i.i.i30.i, align 4
  %71 = ptrtoint ptr %msg.i.i19.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %transfer_list.i.i.i.i28.i, ptr %msg.i.i19.i, align 4
  br label %spi_sync_transfer.exit.i34.i

spi_sync_transfer.exit.i34.i:                     ; preds = %if.end.i.i.i.i.i.i31.i, %if.end28.i.spi_sync_transfer.exit.i34.i_crit_edge
  %call.i.i32.i = call i32 @spi_sync(ptr noundef %61, ptr noundef nonnull %msg.i.i19.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i19.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i32.i)
  %tobool.not.i33.i = icmp eq i32 %call.i.i32.i, 0
  br i1 %tobool.not.i33.i, label %psxpad_command.exit36.thread.i, label %do.end36.i

psxpad_command.exit36.thread.i:                   ; preds = %spi_sync_transfer.exit.i34.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfers.i20.i) #9
  br label %psxpad_control_motor.exit

do.end36.i:                                       ; preds = %spi_sync_transfer.exit.i34.i
  call void @__sanitizer_cov_trace_pc() #11
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %1, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %call.i.i32.i) #12
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfers.i20.i) #9
  %74 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %1, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.19, i32 noundef %call.i.i32.i) #12
  br label %psxpad_control_motor.exit

psxpad_control_motor.exit:                        ; preds = %do.end36.i, %psxpad_command.exit36.thread.i, %do.end25.i, %do.end.i
  %76 = call ptr @memcpy(ptr %sendbuf.i, ptr @PSX_CMD_POLL, i32 21)
  %77 = ptrtoint ptr %motor1enable2.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %motor1enable2.i, align 8, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool.not = icmp eq i8 %78, 0
  br i1 %tobool.not, label %psxpad_control_motor.exit.cond.end_crit_edge, label %cond.true

psxpad_control_motor.exit.cond.end_crit_edge:     ; preds = %psxpad_control_motor.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %psxpad_control_motor.exit
  call void @__sanitizer_cov_trace_pc() #11
  %motor1level = getelementptr inbounds %struct.psxpad, ptr %1, i32 0, i32 5
  %79 = ptrtoint ptr %motor1level to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %motor1level, align 2
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %psxpad_control_motor.exit.cond.end_crit_edge
  %cond = phi i8 [ %80, %cond.true ], [ 0, %psxpad_control_motor.exit.cond.end_crit_edge ]
  %arrayidx = getelementptr %struct.psxpad, ptr %1, i32 0, i32 8, i32 3
  %81 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %cond, ptr %arrayidx, align 1
  %82 = ptrtoint ptr %motor2enable5.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %motor2enable5.i, align 1, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool3.not = icmp eq i8 %83, 0
  br i1 %tobool3.not, label %cond.end.cond.end8_crit_edge, label %cond.true5

cond.end.cond.end8_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end8

cond.true5:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %motor2level = getelementptr inbounds %struct.psxpad, ptr %1, i32 0, i32 6
  %84 = ptrtoint ptr %motor2level to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %motor2level, align 1
  br label %cond.end8

cond.end8:                                        ; preds = %cond.true5, %cond.end.cond.end8_crit_edge
  %cond9 = phi i8 [ %85, %cond.true5 ], [ 0, %cond.end.cond.end8_crit_edge ]
  %arrayidx12 = getelementptr %struct.psxpad, ptr %1, i32 0, i32 8, i32 4
  %86 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %cond9, ptr %arrayidx12, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfers.i) #9
  %87 = getelementptr inbounds i8, ptr %xfers.i, i32 12
  %88 = call ptr @memset(ptr %87, i32 0, i32 84)
  %89 = ptrtoint ptr %xfers.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %sendbuf.i, ptr %xfers.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i, i32 0, i32 1
  %90 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %response.i.i, ptr %rx_buf.i, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i, i32 0, i32 2
  %91 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 21, ptr %len.i, align 4
  %92 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #9
  %94 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %95 = call ptr @memset(ptr %94, i32 0, i32 40)
  %96 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %97 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %98 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %99 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #9
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %cond.end8.spi_sync_transfer.exit.i_crit_edge

cond.end8.spi_sync_transfer.exit.i_crit_edge:     ; preds = %cond.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_sync_transfer.exit.i

if.end.i.i.i.i.i.i:                               ; preds = %cond.end8
  call void @__sanitizer_cov_trace_pc() #11
  %100 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %101 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i, i32 0, i32 18, i32 1
  %102 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %103 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_sync_transfer.exit.i

spi_sync_transfer.exit.i:                         ; preds = %if.end.i.i.i.i.i.i, %cond.end8.spi_sync_transfer.exit.i_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %93, ptr noundef nonnull %msg.i.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end, label %do.end

do.end:                                           ; preds = %spi_sync_transfer.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %104 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %1, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %105, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %call.i.i) #12
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfers.i) #9
  %106 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %1, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %107, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef %call.i.i) #12
  br label %cleanup

if.end:                                           ; preds = %spi_sync_transfer.exit.i
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfers.i) #9
  %arrayidx15 = getelementptr %struct.psxpad, ptr %1, i32 0, i32 10, i32 1
  %108 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx15, align 1
  %110 = zext i8 %109 to i64
  call void @__sanitizer_cov_trace_switch(i64 %110, ptr @__sancov_gen_cov_switch_values)
  switch i8 %109, label %if.end.sw.epilog_crit_edge [
    i8 -50, label %sw.bb
    i8 -126, label %sw.bb242
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx18 = getelementptr %struct.psxpad, ptr %1, i32 0, i32 10, i32 3
  %111 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx18, align 1
  %neg = xor i8 %112, -1
  %arrayidx22 = getelementptr %struct.psxpad, ptr %1, i32 0, i32 10, i32 4
  %113 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx22, align 4
  %neg24 = xor i8 %114, -1
  %arrayidx27 = getelementptr %struct.psxpad, ptr %1, i32 0, i32 10, i32 7
  %115 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx27, align 1
  %rev = call i8 @llvm.bitreverse.i8(i8 %116)
  %or68 = zext i8 %rev to i32
  call void @input_event(ptr noundef %input, i32 noundef 3, i32 noundef 0, i32 noundef %or68) #9
  %arrayidx70 = getelementptr %struct.psxpad, ptr %1, i32 0, i32 10, i32 8
  %117 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx70, align 8
  %rev400 = call i8 @llvm.bitreverse.i8(i8 %118)
  %or115 = zext i8 %rev400 to i32
  call void @input_event(ptr noundef %input, i32 noundef 3, i32 noundef 1, i32 noundef %or115) #9
  %arrayidx117 = getelementptr %struct.psxpad, ptr %1, i32 0, i32 10, i32 5
  %119 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx117, align 1
  %rev401 = call i8 @llvm.bitreverse.i8(i8 %120)
  %or162 = zext i8 %rev401 to i32
  call void @input_event(ptr noundef %input, i32 noundef 3, i32 noundef 3, i32 noundef %or162) #9
  %arrayidx164 = getelementptr %struct.psxpad, ptr %1, i32 0, i32 10, i32 6
  %121 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx164, align 2
  %rev402 = call i8 @llvm.bitreverse.i8(i8 %122)
  %or209 = zext i8 %rev402 to i32
  call void @input_event(ptr noundef %input, i32 noundef 3, i32 noundef 4, i32 noundef %or209) #9
  %conv210 = zext i8 %neg to i32
  %and211 = lshr i32 %conv210, 3
  %and211.lobit = and i32 %and211, 1
  call void @input_event(ptr noundef %input, i32 noundef 1, i32 noundef 544, i32 noundef %and211.lobit) #9
  %and213 = lshr i32 %conv210, 1
  %and213.lobit = and i32 %and213, 1
  call void @input_event(ptr noundef %input, i32 noundef 1, i32 noundef 545, i32 noundef %and213.lobit) #9
  %and215 = and i32 %conv210, 1
  call void @input_event(ptr noundef %input, i32 noundef 1, i32 noundef 546, i32 noundef %and215) #9
  %and217 = lshr i32 %conv210, 2
  %and217.lobit = and i32 %and217, 1
  call void @input_event(ptr noundef %input, i32 noundef 1, i32 noundef 547, i32 noundef %and217.lobit) #9
  %conv218 = zext i8 %neg24 to i32
  %and219 = lshr i32 %conv218, 3
  %and219.lobit = and i32 %and219, 1
  call void @input_event(ptr noundef %input, i32 noundef 1, i32 noundef 307, i32 noundef %and219.lobit) #9
  %and221 = lshr i32 %conv218, 2
  %and221.lobit = and i32 %and221, 1
  call void @input_event(ptr noundef %input, i32 noundef 1, i32 noundef 304, i32 noundef %and221.lobit) #9
  %and223 = lshr i32 %conv218, 1
  %and223.lobit = and i32 %and223, 1
  call void @input_event(ptr noundef %input, i32 noundef 1, i32 noundef 305, i32 noundef %and223.lobit) #9
  %and225 = and i32 %conv218, 1
  call void @input_event(ptr noundef %input, i32 noundef 1, i32 noundef 308, i32 noundef %and225) #9
  %and227 = lshr i32 %conv218, 5
  %and227.lobit = and i32 %and227, 1
  call void @input_event(ptr noundef %input, i32 noundef 1, i32 noundef 310, i32 noundef %and227.lobit) #9
  %and229 = lshr i32 %conv218, 4
  %and229.lobit = and i32 %and229, 1
  call void @input_event(ptr noundef %input, i32 noundef 1, i32 noundef 311, i32 noundef %and229.lobit) #9
  %and231.lobit = lshr i32 %conv218, 7
  call void @input_event(ptr noundef %input, i32 noundef 1, i32 noundef 312, i32 noundef %and231.lobit) #9
  %and233 = lshr i32 %conv218, 6
  %and233.lobit = and i32 %and233, 1
  call void @input_event(ptr noundef %input, i32 noundef 1, i32 noundef 313, i32 noundef %and233.lobit) #9
  %and235 = lshr i32 %conv210, 6
  %and235.lobit = and i32 %and235, 1
  call void @input_event(ptr noundef %input, i32 noundef 1, i32 noundef 317, i32 noundef %and235.lobit) #9
  %and237 = lshr i32 %conv210, 5
  %and237.lobit = and i32 %and237, 1
  br label %sw.epilog.sink.split

sw.bb242:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx244 = getelementptr %struct.psxpad, ptr %1, i32 0, i32 10, i32 3
  %123 = ptrtoint ptr %arrayidx244 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx244, align 1
  %neg246 = xor i8 %124, -1
  %arrayidx249 = getelementptr %struct.psxpad, ptr %1, i32 0, i32 10, i32 4
  %125 = ptrtoint ptr %arrayidx249 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx249, align 4
  %neg251 = xor i8 %126, -1
  call void @input_event(ptr noundef %input, i32 noundef 3, i32 noundef 0, i32 noundef 128) #9
  call void @input_event(ptr noundef %input, i32 noundef 3, i32 noundef 1, i32 noundef 128) #9
  call void @input_event(ptr noundef %input, i32 noundef 3, i32 noundef 3, i32 noundef 128) #9
  call void @input_event(ptr noundef %input, i32 noundef 3, i32 noundef 4, i32 noundef 128) #9
  %conv253 = zext i8 %neg246 to i32
  %and254 = lshr i32 %conv253, 3
  %and254.lobit = and i32 %and254, 1
  call void @input_event(ptr noundef %input, i32 noundef 1, i32 noundef 544, i32 noundef %and254.lobit) #9
  %and256 = lshr i32 %conv253, 1
  %and256.lobit = and i32 %and256, 1
  call void @input_event(ptr noundef %input, i32 noundef 1, i32 noundef 545, i32 noundef %and256.lobit) #9
  %and258 = and i32 %conv253, 1
  call void @input_event(ptr noundef %input, i32 noundef 1, i32 noundef 546, i32 noundef %and258) #9
  %and260 = lshr i32 %conv253, 2
  %and260.lobit = and i32 %and260, 1
  call void @input_event(ptr noundef %input, i32 noundef 1, i32 noundef 547, i32 noundef %and260.lobit) #9
  %conv261 = zext i8 %neg251 to i32
  %and262 = lshr i32 %conv261, 3
  %and262.lobit = and i32 %and262, 1
  call void @input_event(ptr noundef %input, i32 noundef 1, i32 noundef 307, i32 noundef %and262.lobit) #9
  %and264 = lshr i32 %conv261, 2
  %and264.lobit = and i32 %and264, 1
  call void @input_event(ptr noundef %input, i32 noundef 1, i32 noundef 304, i32 noundef %and264.lobit) #9
  %and266 = lshr i32 %conv261, 1
  %and266.lobit = and i32 %and266, 1
  call void @input_event(ptr noundef %input, i32 noundef 1, i32 noundef 305, i32 noundef %and266.lobit) #9
  %and268 = and i32 %conv261, 1
  call void @input_event(ptr noundef %input, i32 noundef 1, i32 noundef 308, i32 noundef %and268) #9
  %and270 = lshr i32 %conv261, 5
  %and270.lobit = and i32 %and270, 1
  call void @input_event(ptr noundef %input, i32 noundef 1, i32 noundef 310, i32 noundef %and270.lobit) #9
  %and272 = lshr i32 %conv261, 4
  %and272.lobit = and i32 %and272, 1
  call void @input_event(ptr noundef %input, i32 noundef 1, i32 noundef 311, i32 noundef %and272.lobit) #9
  %and274.lobit = lshr i32 %conv261, 7
  call void @input_event(ptr noundef %input, i32 noundef 1, i32 noundef 312, i32 noundef %and274.lobit) #9
  %and276 = lshr i32 %conv261, 6
  %and276.lobit = and i32 %and276, 1
  call void @input_event(ptr noundef %input, i32 noundef 1, i32 noundef 313, i32 noundef %and276.lobit) #9
  call void @input_event(ptr noundef %input, i32 noundef 1, i32 noundef 317, i32 noundef 0) #9
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb242, %sw.bb
  %.sink = phi i32 [ 0, %sw.bb242 ], [ %and237.lobit, %sw.bb ]
  %conv253.sink463 = phi i32 [ %conv253, %sw.bb242 ], [ %conv210, %sw.bb ]
  call void @input_event(ptr noundef %input, i32 noundef 1, i32 noundef 318, i32 noundef %.sink) #9
  %and278.lobit = lshr i32 %conv253.sink463, 7
  call void @input_event(ptr noundef %input, i32 noundef 1, i32 noundef 314, i32 noundef %and278.lobit) #9
  %and280 = lshr i32 %conv253.sink463, 4
  %and280.lobit = and i32 %and280, 1
  call void @input_event(ptr noundef %input, i32 noundef 1, i32 noundef 315, i32 noundef %and280.lobit) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end.sw.epilog_crit_edge
  call void @input_event(ptr noundef %input, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_poll_interval(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_min_poll_interval(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_max_poll_interval(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_ff_create_memless(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @psxpad_spi_play_effect(ptr nocapture noundef readonly %idev, ptr nocapture noundef readnone %data, ptr nocapture noundef readonly %effect) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %effect to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %effect, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 80, i16 %1)
  %cond = icmp eq i16 %1, 80
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %idev, i32 0, i32 40, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %u = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5
  %weak_magnitude = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 1
  %4 = ptrtoint ptr %weak_magnitude to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %weak_magnitude, align 2
  %6 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %u, align 4
  %8 = lshr i16 %7, 8
  %conv7 = trunc i16 %8 to i8
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %5)
  %tobool.not.i = icmp ugt i16 %5, 255
  %conv1.i = sext i1 %tobool.not.i to i8
  %motor1level2.i = getelementptr inbounds %struct.psxpad, ptr %3, i32 0, i32 5
  %9 = ptrtoint ptr %motor1level2.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv1.i, ptr %motor1level2.i, align 2
  %rev.i = tail call i8 @llvm.bitreverse.i8(i8 %conv7) #9
  %motor2level31.i = getelementptr inbounds %struct.psxpad, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %motor2level31.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %rev.i, ptr %motor2level31.i, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @psxpad_spi_suspend(ptr nocapture noundef readonly %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %motor1level2.i = getelementptr inbounds %struct.psxpad, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %motor1level2.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %motor1level2.i, align 2
  %motor2level31.i = getelementptr inbounds %struct.psxpad, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %motor2level31.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %motor2level31.i, align 1
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.bitreverse.i8(i8) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !63, !65, !67, !69, !70, !71, !72}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @__initcall__kmod_psxpad_spi__231_401_psxpad_spi_driver_init6, !1, !"__initcall__kmod_psxpad_spi__231_401_psxpad_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/joystick/psxpad-spi.c", i32 401, i32 1}
!2 = !{ptr @__exitcall_psxpad_spi_driver_exit, !1, !"__exitcall_psxpad_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author232, !4, !"__UNIQUE_ID_author232", i1 false, i1 false}
!4 = !{!"../drivers/input/joystick/psxpad-spi.c", i32 403, i32 1}
!5 = !{ptr @__UNIQUE_ID_description233, !6, !"__UNIQUE_ID_description233", i1 false, i1 false}
!6 = !{!"../drivers/input/joystick/psxpad-spi.c", i32 404, i32 1}
!7 = !{ptr @__UNIQUE_ID_file234, !8, !"__UNIQUE_ID_file234", i1 false, i1 false}
!8 = !{!"../drivers/input/joystick/psxpad-spi.c", i32 405, i32 1}
!9 = !{ptr @__UNIQUE_ID_license235, !8, !"__UNIQUE_ID_license235", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/joystick/psxpad-spi.c", i32 394, i32 11}
!12 = !{ptr @psxpad_spi_driver, !13, !"psxpad_spi_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/joystick/psxpad-spi.c", i32 392, i32 26}
!14 = !{ptr @psxpad_spi_id, !15, !"psxpad_spi_id", i1 false, i1 false}
!15 = !{!"../drivers/input/joystick/psxpad-spi.c", i32 386, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/joystick/psxpad-spi.c", i32 294, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @psxpad_spi_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @psxpad_spi_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/joystick/psxpad-spi.c", i32 305, i32 15}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/joystick/psxpad-spi.c", i32 306, i32 41}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/joystick/psxpad-spi.c", i32 352, i32 3}
!30 = !{ptr @psxpad_spi_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @psxpad_spi_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/joystick/psxpad-spi.c", i32 364, i32 3}
!34 = !{ptr @psxpad_spi_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @psxpad_spi_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/joystick/psxpad-spi.c", i32 163, i32 3}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @psxpad_spi_init_ff._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @psxpad_spi_init_ff._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/input/joystick/psxpad-spi.c", i32 218, i32 3}
!43 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @psxpad_spi_poll._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @psxpad_spi_poll._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/input/joystick/psxpad-spi.c", i32 104, i32 3}
!48 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @psxpad_control_motor._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @psxpad_control_motor._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/input/joystick/psxpad-spi.c", i32 116, i32 3}
!53 = !{ptr @psxpad_control_motor._entry.20, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @psxpad_control_motor._entry_ptr.22, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/input/joystick/psxpad-spi.c", i32 125, i32 3}
!57 = !{ptr @psxpad_control_motor._entry.23, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @psxpad_control_motor._entry_ptr.25, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @PSX_CMD_ENTER_CFG, !60, !"PSX_CMD_ENTER_CFG", i1 false, i1 false}
!60 = !{!"../drivers/input/joystick/psxpad-spi.c", i32 48, i32 17}
!61 = !{ptr @PSX_CMD_ENABLE_MOTOR, !62, !"PSX_CMD_ENABLE_MOTOR", i1 false, i1 false}
!62 = !{!"../drivers/input/joystick/psxpad-spi.c", i32 56, i32 17}
!63 = !{ptr @PSX_CMD_EXIT_CFG, !64, !"PSX_CMD_EXIT_CFG", i1 false, i1 false}
!64 = !{!"../drivers/input/joystick/psxpad-spi.c", i32 52, i32 17}
!65 = !{ptr @PSX_CMD_POLL, !66, !"PSX_CMD_POLL", i1 false, i1 false}
!66 = !{!"../drivers/input/joystick/psxpad-spi.c", i32 42, i32 17}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/input/joystick/psxpad-spi.c", i32 83, i32 3}
!69 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @psxpad_command._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @psxpad_command._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @psxpad_spi_pm, !73, !"psxpad_spi_pm", i1 false, i1 false}
!73 = !{!"../drivers/input/joystick/psxpad-spi.c", i32 384, i32 8}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{i8 0, i8 2}
