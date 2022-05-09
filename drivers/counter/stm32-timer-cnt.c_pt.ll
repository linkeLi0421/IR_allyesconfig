; ModuleID = '/llk/IR_all_yes/drivers/counter/stm32-timer-cnt.c_pt.bc'
source_filename = "../drivers/counter/stm32-timer-cnt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.counter_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.counter_count = type { i32, ptr, ptr, i32, ptr, i32, ptr, i32 }
%struct.counter_signal = type { i32, ptr, ptr, i32 }
%struct.counter_synapse = type { ptr, i32, ptr }
%struct.counter_comp = type { i32, ptr, ptr, %union.anon.74, %union.anon.75 }
%union.anon.74 = type { ptr }
%union.anon.75 = type { ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.stm32_timers = type { ptr, ptr, i32, %struct.stm32_timers_dma }
%struct.stm32_timers_dma = type { %struct.completion, i32, %struct.mutex, ptr, [7 x ptr] }
%struct.stm32_timer_cnt = type { ptr, ptr, i32, i8, %struct.stm32_timer_regs }
%struct.stm32_timer_regs = type { i32, i32, i32, i32 }
%struct.counter_device = type { ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.device, %struct.cdev, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.anon.76, %struct.wait_queue_head, %struct.spinlock, %struct.mutex, %struct.mutex }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.anon.76 = type { %union.anon.77, [0 x %struct.counter_event] }
%union.anon.77 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.counter_event = type { i64, i64, %struct.counter_watch, i8 }
%struct.counter_watch = type { %struct.counter_component, i8, i8 }
%struct.counter_component = type { i8, i8, i8, i8 }

@__initcall__kmod_stm32_timer_cnt__231_414_stm32_timer_cnt_driver_init6 = internal global ptr @stm32_timer_cnt_driver_init, section ".initcall6.init", align 4
@stm32_timer_cnt_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @stm32_timer_cnt_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_timer_cnt_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_timer_cnt_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_stm32_timer_cnt_driver_exit = internal global ptr @stm32_timer_cnt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author232 = internal constant [68 x i8] c"stm32_timer_cnt.author=Benjamin Gaignard <benjamin.gaignard@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias233 = internal constant [51 x i8] c"stm32_timer_cnt.alias=platform:stm32-timer-counter\00", section ".modinfo", align 1
@__UNIQUE_ID_description234 = internal constant [74 x i8] c"stm32_timer_cnt.description=STMicroelectronics STM32 TIMER counter driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file235 = internal constant [53 x i8] c"stm32_timer_cnt.file=drivers/counter/stm32-timer-cnt\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [31 x i8] c"stm32_timer_cnt.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stm32-timer-counter\00", [44 x i8] zeroinitializer }, align 32
@stm32_timer_cnt_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32-timer-counter\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@stm32_timer_cnt_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @stm32_timer_cnt_suspend, ptr @stm32_timer_cnt_resume, ptr @stm32_timer_cnt_suspend, ptr @stm32_timer_cnt_resume, ptr @stm32_timer_cnt_suspend, ptr @stm32_timer_cnt_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@stm32_timer_cnt_ops = internal constant { %struct.counter_ops, [60 x i8] } { %struct.counter_ops { ptr null, ptr @stm32_count_read, ptr @stm32_count_write, ptr @stm32_count_function_read, ptr @stm32_count_function_write, ptr @stm32_action_read, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@stm32_counts = internal global { %struct.counter_count, [32 x i8] } { %struct.counter_count { i32 0, ptr @.str.2, ptr @stm32_count_functions, i32 4, ptr @stm32_count_synapses, i32 2, ptr @stm32_count_ext, i32 3 }, [32 x i8] zeroinitializer }, align 32
@stm32_signals = internal global { [2 x %struct.counter_signal], [32 x i8] } { [2 x %struct.counter_signal] [%struct.counter_signal { i32 0, ptr @.str.6, ptr null, i32 0 }, %struct.counter_signal { i32 1, ptr @.str.7, ptr null, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to add counter\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Channel 1 Count\00", [16 x i8] zeroinitializer }, align 32
@stm32_count_functions = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 5, i32 6, i32 7], [16 x i8] zeroinitializer }, align 32
@stm32_count_synapses = internal global { [2 x %struct.counter_synapse], [40 x i8] } { [2 x %struct.counter_synapse] [%struct.counter_synapse { ptr @stm32_synapse_actions, i32 2, ptr @stm32_signals }, %struct.counter_synapse { ptr @stm32_synapse_actions, i32 2, ptr getelementptr (i8, ptr @stm32_signals, i64 16) }], [40 x i8] zeroinitializer }, align 32
@stm32_count_ext = internal global { [3 x %struct.counter_comp], [36 x i8] } { [3 x %struct.counter_comp] [%struct.counter_comp { i32 7, ptr @.str.3, ptr null, %union.anon.74 { ptr @stm32_count_direction_read }, %union.anon.75 zeroinitializer }, %struct.counter_comp { i32 2, ptr @.str.4, ptr null, %union.anon.74 { ptr @stm32_count_enable_read }, %union.anon.75 { ptr @stm32_count_enable_write } }, %struct.counter_comp { i32 1, ptr @.str.5, ptr null, %union.anon.74 { ptr @stm32_count_ceiling_read }, %union.anon.75 { ptr @stm32_count_ceiling_write } }], [36 x i8] zeroinitializer }, align 32
@stm32_synapse_actions = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 0, i32 3], [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"direction\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ceiling\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Channel 1 Quadrature A\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Channel 1 Quadrature B\00", [41 x i8] zeroinitializer }, align 32
@switch.table.stm32_count_function_read = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 5, i32 6, i32 7], [16 x i8] zeroinitializer }, align 32
@switch.table.stm32_count_function_write = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.8 = private unnamed_addr constant [23 x i8] c"stm32_timer_cnt_driver\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 406, i32 31 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 409, i32 11 }
@___asan_gen_.14 = private unnamed_addr constant [25 x i8] c"stm32_timer_cnt_of_match\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 400, i32 34 }
@___asan_gen_.17 = private unnamed_addr constant [23 x i8] c"stm32_timer_cnt_pm_ops\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 397, i32 8 }
@___asan_gen_.20 = private unnamed_addr constant [20 x i8] c"stm32_timer_cnt_ops\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 271, i32 33 }
@___asan_gen_.23 = private unnamed_addr constant [13 x i8] c"stm32_counts\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 303, i32 29 }
@___asan_gen_.26 = private unnamed_addr constant [14 x i8] c"stm32_signals\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 279, i32 30 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 348, i32 27 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 305, i32 10 }
@___asan_gen_.35 = private unnamed_addr constant [22 x i8] c"stm32_count_functions\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 39, i32 36 }
@___asan_gen_.38 = private unnamed_addr constant [21 x i8] c"stm32_count_synapses\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 290, i32 31 }
@___asan_gen_.41 = private unnamed_addr constant [16 x i8] c"stm32_count_ext\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 219, i32 28 }
@___asan_gen_.44 = private unnamed_addr constant [22 x i8] c"stm32_synapse_actions\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 226, i32 42 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 220, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 221, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 222, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 282, i32 11 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private constant [37 x i8] c"../drivers/counter/stm32-timer-cnt.c\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 286, i32 11 }
@___asan_gen_.62 = private unnamed_addr constant [39 x i8] c"switch.table.stm32_count_function_read\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [40 x i8] c"switch.table.stm32_count_function_write\00", align 1
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_alias233, ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__exitcall_stm32_timer_cnt_driver_exit, ptr @__initcall__kmod_stm32_timer_cnt__231_414_stm32_timer_cnt_driver_init6, ptr @stm32_timer_cnt_driver_exit, ptr @stm32_timer_cnt_driver, ptr @.str, ptr @stm32_timer_cnt_of_match, ptr @stm32_timer_cnt_pm_ops, ptr @stm32_timer_cnt_ops, ptr @stm32_counts, ptr @stm32_signals, ptr @.str.1, ptr @.str.2, ptr @stm32_count_functions, ptr @stm32_count_synapses, ptr @stm32_count_ext, ptr @stm32_synapse_actions, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @switch.table.stm32_count_function_read, ptr @switch.table.stm32_count_function_write], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_timer_cnt_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_timer_cnt_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_timer_cnt_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_timer_cnt_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_counts to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_signals to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_count_functions to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_count_synapses to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_count_ext to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_synapse_actions to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.stm32_count_function_read to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.stm32_count_function_write to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_timer_cnt_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_timer_cnt_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stm32_timer_cnt_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_timer_cnt_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_timer_cnt_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @devm_counter_alloc(ptr noundef %dev, i32 noundef 32) #4
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @counter_priv(ptr noundef nonnull %call4) #4
  %regmap = getelementptr inbounds %struct.stm32_timers, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %6 = ptrtoint ptr %call7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %call7, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %clk9 = getelementptr inbounds %struct.stm32_timer_cnt, ptr %call7, i32 0, i32 1
  %9 = ptrtoint ptr %clk9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %clk9, align 4
  %max_arr = getelementptr inbounds %struct.stm32_timers, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %max_arr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_arr, align 4
  %max_arr10 = getelementptr inbounds %struct.stm32_timer_cnt, ptr %call7, i32 0, i32 2
  %12 = ptrtoint ptr %max_arr10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %max_arr10, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i44 = icmp eq ptr %14, null
  br i1 %tobool.not.i44, label %if.end.i, label %if.end6.dev_name.exit_crit_edge

if.end6.dev_name.exit_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end6.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %16, %if.end.i ], [ %14, %if.end6.dev_name.exit_crit_edge ]
  %17 = ptrtoint ptr %call4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %retval.0.i, ptr %call4, align 8
  %parent12 = getelementptr inbounds %struct.counter_device, ptr %call4, i32 0, i32 1
  %18 = ptrtoint ptr %parent12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev, ptr %parent12, align 4
  %ops = getelementptr inbounds %struct.counter_device, ptr %call4, i32 0, i32 2
  %19 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @stm32_timer_cnt_ops, ptr %ops, align 8
  %counts = getelementptr inbounds %struct.counter_device, ptr %call4, i32 0, i32 5
  %20 = ptrtoint ptr %counts to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @stm32_counts, ptr %counts, align 4
  %num_counts = getelementptr inbounds %struct.counter_device, ptr %call4, i32 0, i32 6
  %21 = ptrtoint ptr %num_counts to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %num_counts, align 8
  %signals = getelementptr inbounds %struct.counter_device, ptr %call4, i32 0, i32 3
  %22 = ptrtoint ptr %signals to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @stm32_signals, ptr %signals, align 4
  %num_signals = getelementptr inbounds %struct.counter_device, ptr %call4, i32 0, i32 4
  %23 = ptrtoint ptr %num_signals to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %num_signals, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %24 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7, ptr %driver_data.i.i, align 4
  %call13 = tail call i32 @devm_counter_add(ptr noundef %dev, ptr noundef nonnull %call4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %if.then14, label %dev_name.exit.cleanup_crit_edge

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then14:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call15 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call13, ptr noundef nonnull @.str.1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %dev_name.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call13, %if.then14 ], [ %call13, %dev_name.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_counter_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @counter_priv(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_counter_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_count_read(ptr noundef %counter, ptr nocapture noundef readnone %count, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %cnt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @counter_priv(ptr noundef %counter) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cnt) #4
  %0 = ptrtoint ptr %cnt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cnt, align 4, !annotation !57
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef 36, ptr noundef nonnull %cnt) #4
  %3 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cnt, align 4
  %conv = zext i32 %4 to i64
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv, ptr %val, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cnt) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_count_write(ptr noundef %counter, ptr nocapture noundef readnone %count, i64 noundef %val) #2 align 64 {
entry:
  %ceiling = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @counter_priv(ptr noundef %counter) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ceiling) #4
  %0 = ptrtoint ptr %ceiling to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ceiling, align 4, !annotation !57
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef 44, ptr noundef nonnull %ceiling) #4
  %3 = ptrtoint ptr %ceiling to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ceiling, align 4
  %conv = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %val)
  %cmp = icmp ult i64 %conv, %val
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %conv4 = trunc i64 %val to i32
  %call5 = call i32 @regmap_write(ptr noundef %6, i32 noundef 36, i32 noundef %conv4) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ceiling) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_count_function_read(ptr noundef %counter, ptr nocapture noundef readnone %count, ptr nocapture noundef writeonly %function) #2 align 64 {
entry:
  %smcr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @counter_priv(ptr noundef %counter) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %smcr) #4
  %0 = ptrtoint ptr %smcr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %smcr, align 4, !annotation !57
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef 8, ptr noundef nonnull %smcr) #4
  %3 = ptrtoint ptr %smcr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %smcr, align 4
  %and = and i32 %4, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and)
  %5 = icmp ult i32 %and, 4
  br i1 %5, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.stm32_count_function_read, i32 0, i32 %and
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load i32, ptr %switch.gep, align 4
  %7 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %switch.load, ptr %function, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %switch.lookup ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smcr) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_count_function_write(ptr noundef %counter, ptr nocapture noundef readnone %count, i32 noundef %function) #2 align 64 {
entry:
  %cr1 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @counter_priv(ptr noundef %counter) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cr1) #4
  %0 = ptrtoint ptr %cr1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cr1, align 4, !annotation !57
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %function)
  %1 = icmp ult i32 %function, 8
  br i1 %1, label %switch.hole_check, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %function to i8
  %switch.shifted = lshr i8 -31, %switch.maskindex
  %2 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %switch.lobit.not = icmp eq i8 %2, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.stm32_count_function_write, i32 0, i32 %function
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  %call4 = call i32 @regmap_read(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %cr1) #4
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %8 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call, align 4
  %call.i19 = call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 8, i32 noundef 7, i32 noundef %switch.load, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %10 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call, align 4
  %call.i20 = call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 20, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %12 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call, align 4
  %14 = ptrtoint ptr %cr1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cr1, align 4
  %call.i21 = call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 0, i32 noundef 1, i32 noundef %15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %switch.hole_check.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %switch.lookup ], [ -22, %entry.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cr1) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_action_read(ptr noundef %counter, ptr nocapture noundef readonly %count, ptr nocapture noundef readonly %synapse, ptr nocapture noundef writeonly %action) #2 align 64 {
entry:
  %smcr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @counter_priv(ptr noundef %counter) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %smcr.i) #4
  %0 = ptrtoint ptr %smcr.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %smcr.i, align 4, !annotation !57
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call.i, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 8, ptr noundef nonnull %smcr.i) #4
  %3 = ptrtoint ptr %smcr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %smcr.i, align 4
  %and.i = and i32 %4, 7
  %5 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %stm32_count_function_read.exit [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb6
    i32 3, label %sw.bb17
  ]

stm32_count_function_read.exit:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smcr.i) #4
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smcr.i) #4
  %6 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %action, align 4
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smcr.i) #4
  %signal = getelementptr inbounds %struct.counter_synapse, ptr %synapse, i32 0, i32 2
  %7 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %signal, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %synapses = getelementptr inbounds %struct.counter_count, ptr %count, i32 0, i32 4
  %11 = ptrtoint ptr %synapses to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %synapses, align 4
  %signal2 = getelementptr inbounds %struct.counter_synapse, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %signal2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %signal2, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %16)
  %cmp = icmp eq i32 %10, %16
  %. = select i1 %cmp, i32 3, i32 0
  %17 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %., ptr %action, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smcr.i) #4
  %signal7 = getelementptr inbounds %struct.counter_synapse, ptr %synapse, i32 0, i32 2
  %18 = ptrtoint ptr %signal7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %signal7, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %synapses9 = getelementptr inbounds %struct.counter_count, ptr %count, i32 0, i32 4
  %22 = ptrtoint ptr %synapses9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %synapses9, align 4
  %signal11 = getelementptr %struct.counter_synapse, ptr %23, i32 1, i32 2
  %24 = ptrtoint ptr %signal11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %signal11, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %27)
  %cmp13 = icmp eq i32 %21, %27
  %.29 = select i1 %cmp13, i32 3, i32 0
  %28 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %.29, ptr %action, align 4
  br label %cleanup

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smcr.i) #4
  %29 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 3, ptr %action, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb17, %sw.bb6, %sw.bb1, %sw.bb, %stm32_count_function_read.exit
  %retval.0 = phi i32 [ 0, %sw.bb17 ], [ 0, %sw.bb6 ], [ 0, %sw.bb1 ], [ 0, %sw.bb ], [ -22, %stm32_count_function_read.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_count_direction_read(ptr noundef %counter, ptr nocapture noundef readnone %count, ptr nocapture noundef writeonly %direction) #2 align 64 {
entry:
  %cr1 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @counter_priv(ptr noundef %counter) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cr1) #4
  %0 = ptrtoint ptr %cr1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cr1, align 4, !annotation !57
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %cr1) #4
  %3 = ptrtoint ptr %cr1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cr1, align 4
  %and = lshr i32 %4, 4
  %and.lobit = and i32 %and, 1
  %5 = ptrtoint ptr %direction to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and.lobit, ptr %direction, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cr1) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_count_enable_read(ptr noundef %counter, ptr nocapture noundef readnone %count, ptr nocapture noundef writeonly %enable) #2 align 64 {
entry:
  %cr1 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @counter_priv(ptr noundef %counter) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cr1) #4
  %0 = ptrtoint ptr %cr1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cr1, align 4, !annotation !57
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %cr1) #4
  %3 = ptrtoint ptr %cr1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cr1, align 4
  %5 = trunc i32 %4 to i8
  %conv = and i8 %5, 1
  %6 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %enable, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cr1) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_count_enable_write(ptr noundef %counter, ptr nocapture noundef readnone %count, i8 noundef zeroext %enable) #2 align 64 {
entry:
  %cr1 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @counter_priv(ptr noundef %counter) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cr1) #4
  %0 = ptrtoint ptr %cr1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cr1, align 4, !annotation !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enable)
  %tobool = icmp ne i8 %enable, 0
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %cr1) #4
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %cr1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cr1, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.then3, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %clk = getelementptr inbounds %struct.stm32_timer_cnt, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk, align 4
  %call4 = call i32 @clk_enable(ptr noundef %6) #4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %if.end16

if.else:                                          ; preds = %entry
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call, align 4
  %call.i25 = call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %11 = ptrtoint ptr %cr1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cr1, align 4
  %and11 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.else.if.end16_crit_edge, label %if.then13

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %clk14 = getelementptr inbounds %struct.stm32_timer_cnt, ptr %call, i32 0, i32 1
  %13 = ptrtoint ptr %clk14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk14, align 4
  call void @clk_disable(ptr noundef %14) #4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.else.if.end16_crit_edge, %if.end
  %enabled = getelementptr inbounds %struct.stm32_timer_cnt, ptr %call, i32 0, i32 3
  %frombool = zext i1 %tobool to i8
  %15 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %frombool, ptr %enabled, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cr1) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_count_ceiling_read(ptr noundef %counter, ptr nocapture noundef readnone %count, ptr nocapture noundef writeonly %ceiling) #2 align 64 {
entry:
  %arr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @counter_priv(ptr noundef %counter) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arr) #4
  %0 = ptrtoint ptr %arr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %arr, align 4, !annotation !57
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef 44, ptr noundef nonnull %arr) #4
  %3 = ptrtoint ptr %arr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arr, align 4
  %conv = zext i32 %4 to i64
  %5 = ptrtoint ptr %ceiling to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv, ptr %ceiling, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arr) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_count_ceiling_write(ptr noundef %counter, ptr nocapture noundef readnone %count, i64 noundef %ceiling) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @counter_priv(ptr noundef %counter) #4
  %max_arr = getelementptr inbounds %struct.stm32_timer_cnt, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %max_arr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_arr, align 4
  %conv = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %ceiling)
  %cmp = icmp ult i64 %conv, %ceiling
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 0, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  %conv4 = trunc i64 %ceiling to i32
  %call5 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 44, i32 noundef %conv4) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_timer_cnt_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %enabled = getelementptr inbounds %struct.stm32_timer_cnt, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %bak = getelementptr inbounds %struct.stm32_timer_cnt, ptr %1, i32 0, i32 4
  %smcr = getelementptr inbounds %struct.stm32_timer_cnt, ptr %1, i32 0, i32 4, i32 2
  %call1 = tail call i32 @regmap_read(ptr noundef %5, i32 noundef 8, ptr noundef %smcr) #4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %arr = getelementptr inbounds %struct.stm32_timer_cnt, ptr %1, i32 0, i32 4, i32 3
  %call4 = tail call i32 @regmap_read(ptr noundef %7, i32 noundef 44, ptr noundef %arr) #4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %cnt = getelementptr inbounds %struct.stm32_timer_cnt, ptr %1, i32 0, i32 4, i32 1
  %call7 = tail call i32 @regmap_read(ptr noundef %9, i32 noundef 36, ptr noundef %cnt) #4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %call10 = tail call i32 @regmap_read(ptr noundef %11, i32 noundef 0, ptr noundef %bak) #4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %clk = getelementptr inbounds %struct.stm32_timer_cnt, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %15) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call13 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev) #4
  ret i32 %call13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_timer_cnt_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %enabled = getelementptr inbounds %struct.stm32_timer_cnt, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %clk = getelementptr inbounds %struct.stm32_timer_cnt, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call4 = tail call i32 @clk_enable(ptr noundef %5) #4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %bak = getelementptr inbounds %struct.stm32_timer_cnt, ptr %1, i32 0, i32 4
  %smcr = getelementptr inbounds %struct.stm32_timer_cnt, ptr %1, i32 0, i32 4, i32 2
  %8 = ptrtoint ptr %smcr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %smcr, align 4
  %call5 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 8, i32 noundef %9) #4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %arr = getelementptr inbounds %struct.stm32_timer_cnt, ptr %1, i32 0, i32 4, i32 3
  %12 = ptrtoint ptr %arr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arr, align 4
  %call8 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 44, i32 noundef %13) #4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %cnt = getelementptr inbounds %struct.stm32_timer_cnt, ptr %1, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cnt, align 4
  %call11 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 36, i32 noundef %17) #4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %20 = ptrtoint ptr %bak to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bak, align 4
  %call14 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 0, i32 noundef %21) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @__initcall__kmod_stm32_timer_cnt__231_414_stm32_timer_cnt_driver_init6, !1, !"__initcall__kmod_stm32_timer_cnt__231_414_stm32_timer_cnt_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/counter/stm32-timer-cnt.c", i32 414, i32 1}
!2 = !{ptr @__exitcall_stm32_timer_cnt_driver_exit, !1, !"__exitcall_stm32_timer_cnt_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author232, !4, !"__UNIQUE_ID_author232", i1 false, i1 false}
!4 = !{!"../drivers/counter/stm32-timer-cnt.c", i32 416, i32 1}
!5 = !{ptr @__UNIQUE_ID_alias233, !6, !"__UNIQUE_ID_alias233", i1 false, i1 false}
!6 = !{!"../drivers/counter/stm32-timer-cnt.c", i32 417, i32 1}
!7 = !{ptr @__UNIQUE_ID_description234, !8, !"__UNIQUE_ID_description234", i1 false, i1 false}
!8 = !{!"../drivers/counter/stm32-timer-cnt.c", i32 418, i32 1}
!9 = !{ptr @__UNIQUE_ID_file235, !10, !"__UNIQUE_ID_file235", i1 false, i1 false}
!10 = !{!"../drivers/counter/stm32-timer-cnt.c", i32 419, i32 1}
!11 = !{ptr @__UNIQUE_ID_license236, !10, !"__UNIQUE_ID_license236", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/counter/stm32-timer-cnt.c", i32 409, i32 11}
!14 = !{ptr @stm32_timer_cnt_driver, !15, !"stm32_timer_cnt_driver", i1 false, i1 false}
!15 = !{!"../drivers/counter/stm32-timer-cnt.c", i32 406, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/counter/stm32-timer-cnt.c", i32 348, i32 27}
!18 = !{ptr @stm32_timer_cnt_ops, !19, !"stm32_timer_cnt_ops", i1 false, i1 false}
!19 = !{!"../drivers/counter/stm32-timer-cnt.c", i32 271, i32 33}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/counter/stm32-timer-cnt.c", i32 305, i32 10}
!22 = !{ptr @stm32_counts, !23, !"stm32_counts", i1 false, i1 false}
!23 = !{!"../drivers/counter/stm32-timer-cnt.c", i32 303, i32 29}
!24 = !{ptr @stm32_count_functions, !25, !"stm32_count_functions", i1 false, i1 false}
!25 = !{!"../drivers/counter/stm32-timer-cnt.c", i32 39, i32 36}
!26 = !{ptr @stm32_count_synapses, !27, !"stm32_count_synapses", i1 false, i1 false}
!27 = !{!"../drivers/counter/stm32-timer-cnt.c", i32 290, i32 31}
!28 = !{ptr @stm32_synapse_actions, !29, !"stm32_synapse_actions", i1 false, i1 false}
!29 = !{!"../drivers/counter/stm32-timer-cnt.c", i32 226, i32 42}
!30 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/counter/stm32-timer-cnt.c", i32 220, i32 2}
!32 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/counter/stm32-timer-cnt.c", i32 221, i32 2}
!34 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/counter/stm32-timer-cnt.c", i32 222, i32 2}
!36 = !{ptr @stm32_count_ext, !37, !"stm32_count_ext", i1 false, i1 false}
!37 = !{!"../drivers/counter/stm32-timer-cnt.c", i32 219, i32 28}
!38 = !{ptr @.str.6, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/counter/stm32-timer-cnt.c", i32 282, i32 11}
!40 = !{ptr @.str.7, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/counter/stm32-timer-cnt.c", i32 286, i32 11}
!42 = !{ptr @stm32_signals, !43, !"stm32_signals", i1 false, i1 false}
!43 = !{!"../drivers/counter/stm32-timer-cnt.c", i32 279, i32 30}
!44 = !{ptr @stm32_timer_cnt_of_match, !45, !"stm32_timer_cnt_of_match", i1 false, i1 false}
!45 = !{!"../drivers/counter/stm32-timer-cnt.c", i32 400, i32 34}
!46 = !{ptr @stm32_timer_cnt_pm_ops, !47, !"stm32_timer_cnt_pm_ops", i1 false, i1 false}
!47 = !{!"../drivers/counter/stm32-timer-cnt.c", i32 397, i32 8}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{!"auto-init"}
!58 = !{i8 0, i8 2}
