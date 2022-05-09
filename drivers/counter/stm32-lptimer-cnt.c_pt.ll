; ModuleID = '/llk/IR_all_yes/drivers/counter/stm32-lptimer-cnt.c_pt.bc'
source_filename = "../drivers/counter/stm32-lptimer-cnt.c"
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
%struct.counter_comp = type { i32, ptr, ptr, %union.anon.71, %union.anon.72 }
%union.anon.71 = type { ptr }
%union.anon.72 = type { ptr }
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
%struct.stm32_lptimer = type { ptr, ptr, i8 }
%struct.stm32_lptim_cnt = type { ptr, ptr, ptr, i32, i32, i32, i8 }
%struct.counter_device = type { ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.device, %struct.cdev, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.anon.73, %struct.wait_queue_head, %struct.spinlock, %struct.mutex, %struct.mutex }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.anon.73 = type { %union.anon.74, [0 x %struct.counter_event] }
%union.anon.74 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.counter_event = type { i64, i64, %struct.counter_watch, i8 }
%struct.counter_watch = type { %struct.counter_component, i8, i8 }
%struct.counter_component = type { i8, i8, i8, i8 }

@__initcall__kmod_stm32_lptimer_cnt__242_517_stm32_lptim_cnt_driver_init6 = internal global ptr @stm32_lptim_cnt_driver_init, section ".initcall6.init", align 4
@stm32_lptim_cnt_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @stm32_lptim_cnt_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_lptim_cnt_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_lptim_cnt_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_stm32_lptim_cnt_driver_exit = internal global ptr @stm32_lptim_cnt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author243 = internal constant [66 x i8] c"stm32_lptimer_cnt.author=Fabrice Gasnier <fabrice.gasnier@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias244 = internal constant [55 x i8] c"stm32_lptimer_cnt.alias=platform:stm32-lptimer-counter\00", section ".modinfo", align 1
@__UNIQUE_ID_description245 = internal constant [76 x i8] c"stm32_lptimer_cnt.description=STMicroelectronics STM32 LPTIM counter driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file246 = internal constant [57 x i8] c"stm32_lptimer_cnt.file=drivers/counter/stm32-lptimer-cnt\00", section ".modinfo", align 1
@__UNIQUE_ID_license247 = internal constant [33 x i8] c"stm32_lptimer_cnt.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stm32-lptimer-counter\00", [42 x i8] zeroinitializer }, align 32
@stm32_lptim_cnt_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32-lptimer-counter\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@stm32_lptim_cnt_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @stm32_lptim_cnt_suspend, ptr @stm32_lptim_cnt_resume, ptr @stm32_lptim_cnt_suspend, ptr @stm32_lptim_cnt_resume, ptr @stm32_lptim_cnt_suspend, ptr @stm32_lptim_cnt_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@stm32_lptim_cnt_ops = internal constant { %struct.counter_ops, [60 x i8] } { %struct.counter_ops { ptr null, ptr @stm32_lptim_cnt_read, ptr null, ptr @stm32_lptim_cnt_function_read, ptr @stm32_lptim_cnt_function_write, ptr @stm32_lptim_cnt_action_read, ptr @stm32_lptim_cnt_action_write, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@stm32_lptim_enc_counts = internal global { %struct.counter_count, [32 x i8] } { %struct.counter_count { i32 0, ptr @.str.2, ptr @stm32_lptim_cnt_functions, i32 2, ptr @stm32_lptim_cnt_synapses, i32 2, ptr @stm32_lptim_cnt_ext, i32 2 }, [32 x i8] zeroinitializer }, align 32
@stm32_lptim_in1_counts = internal global { %struct.counter_count, [32 x i8] } { %struct.counter_count { i32 0, ptr @.str.2, ptr @stm32_lptim_cnt_functions, i32 1, ptr @stm32_lptim_cnt_synapses, i32 1, ptr @stm32_lptim_cnt_ext, i32 2 }, [32 x i8] zeroinitializer }, align 32
@stm32_lptim_cnt_signals = internal global { [2 x %struct.counter_signal], [32 x i8] } { [2 x %struct.counter_signal] [%struct.counter_signal { i32 0, ptr @.str.6, ptr null, i32 0 }, %struct.counter_signal { i32 1, ptr @.str.7, ptr null, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to add counter\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"LPTimer Count\00", [18 x i8] zeroinitializer }, align 32
@stm32_lptim_cnt_functions = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 0, i32 7], [24 x i8] zeroinitializer }, align 32
@stm32_lptim_cnt_synapses = internal global { [2 x %struct.counter_synapse], [40 x i8] } { [2 x %struct.counter_synapse] [%struct.counter_synapse { ptr @stm32_lptim_cnt_synapse_actions, i32 4, ptr @stm32_lptim_cnt_signals }, %struct.counter_synapse { ptr @stm32_lptim_cnt_synapse_actions, i32 4, ptr getelementptr (i8, ptr @stm32_lptim_cnt_signals, i64 16) }], [40 x i8] zeroinitializer }, align 32
@stm32_lptim_cnt_ext = internal global { [2 x %struct.counter_comp], [56 x i8] } { [2 x %struct.counter_comp] [%struct.counter_comp { i32 2, ptr @.str.3, ptr null, %union.anon.71 { ptr @stm32_lptim_cnt_enable_read }, %union.anon.72 { ptr @stm32_lptim_cnt_enable_write } }, %struct.counter_comp { i32 1, ptr @.str.4, ptr null, %union.anon.71 { ptr @stm32_lptim_cnt_ceiling_read }, %union.anon.72 { ptr @stm32_lptim_cnt_ceiling_write } }], [56 x i8] zeroinitializer }, align 32
@stm32_lptim_cnt_synapse_actions = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 2, i32 3, i32 0], [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ceiling\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/counter/stm32-lptimer-cnt.c\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Channel 1 Quadrature A\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Channel 1 Quadrature B\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 7]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.9 = private unnamed_addr constant [23 x i8] c"stm32_lptim_cnt_driver\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 509, i32 31 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 512, i32 11 }
@___asan_gen_.15 = private unnamed_addr constant [25 x i8] c"stm32_lptim_cnt_of_match\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 503, i32 34 }
@___asan_gen_.18 = private unnamed_addr constant [23 x i8] c"stm32_lptim_cnt_pm_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 500, i32 8 }
@___asan_gen_.21 = private unnamed_addr constant [20 x i8] c"stm32_lptim_cnt_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 354, i32 33 }
@___asan_gen_.24 = private unnamed_addr constant [23 x i8] c"stm32_lptim_enc_counts\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 387, i32 29 }
@___asan_gen_.27 = private unnamed_addr constant [23 x i8] c"stm32_lptim_in1_counts\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 399, i32 29 }
@___asan_gen_.30 = private unnamed_addr constant [24 x i8] c"stm32_lptim_cnt_signals\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 362, i32 30 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 448, i32 41 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 389, i32 10 }
@___asan_gen_.39 = private unnamed_addr constant [26 x i8] c"stm32_lptim_cnt_functions\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 128, i32 36 }
@___asan_gen_.42 = private unnamed_addr constant [25 x i8] c"stm32_lptim_cnt_synapses\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 373, i32 31 }
@___asan_gen_.45 = private unnamed_addr constant [20 x i8] c"stm32_lptim_cnt_ext\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 267, i32 28 }
@___asan_gen_.48 = private unnamed_addr constant [32 x i8] c"stm32_lptim_cnt_synapse_actions\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 133, i32 42 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 268, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 270, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 71, i32 8 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 365, i32 11 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private constant [39 x i8] c"../drivers/counter/stm32-lptimer-cnt.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 369, i32 11 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_alias244, ptr @__UNIQUE_ID_author243, ptr @__UNIQUE_ID_description245, ptr @__UNIQUE_ID_file246, ptr @__UNIQUE_ID_license247, ptr @__exitcall_stm32_lptim_cnt_driver_exit, ptr @__initcall__kmod_stm32_lptimer_cnt__242_517_stm32_lptim_cnt_driver_init6, ptr @stm32_lptim_cnt_driver_exit, ptr @stm32_lptim_cnt_driver, ptr @.str, ptr @stm32_lptim_cnt_of_match, ptr @stm32_lptim_cnt_pm_ops, ptr @stm32_lptim_cnt_ops, ptr @stm32_lptim_enc_counts, ptr @stm32_lptim_in1_counts, ptr @stm32_lptim_cnt_signals, ptr @.str.1, ptr @.str.2, ptr @stm32_lptim_cnt_functions, ptr @stm32_lptim_cnt_synapses, ptr @stm32_lptim_cnt_ext, ptr @stm32_lptim_cnt_synapse_actions, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_lptim_cnt_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_lptim_cnt_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_lptim_cnt_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_lptim_cnt_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_lptim_enc_counts to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_lptim_in1_counts to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_lptim_cnt_signals to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_lptim_cnt_functions to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_lptim_cnt_synapses to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_lptim_cnt_ext to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_lptim_cnt_synapse_actions to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_lptim_cnt_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_lptim_cnt_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stm32_lptim_cnt_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_lptim_cnt_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_lptim_cnt_probe(ptr noundef %pdev) #2 align 64 {
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
  %call3 = tail call ptr @devm_counter_alloc(ptr noundef %dev, i32 noundef 28) #4
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @counter_priv(ptr noundef nonnull %call3) #4
  %4 = ptrtoint ptr %call6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %call6, align 4
  %regmap = getelementptr inbounds %struct.stm32_lptimer, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %regmap9 = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %call6, i32 0, i32 1
  %7 = ptrtoint ptr %regmap9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %regmap9, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %clk10 = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %call6, i32 0, i32 2
  %10 = ptrtoint ptr %clk10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %clk10, align 4
  %ceiling = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %call6, i32 0, i32 3
  %11 = ptrtoint ptr %ceiling to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 65535, ptr %ceiling, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i55 = icmp eq ptr %13, null
  br i1 %tobool.not.i55, label %if.end.i, label %if.end5.dev_name.exit_crit_edge

if.end5.dev_name.exit_crit_edge:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end5.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %15, %if.end.i ], [ %13, %if.end5.dev_name.exit_crit_edge ]
  %16 = ptrtoint ptr %call3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %retval.0.i, ptr %call3, align 8
  %parent14 = getelementptr inbounds %struct.counter_device, ptr %call3, i32 0, i32 1
  %17 = ptrtoint ptr %parent14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dev, ptr %parent14, align 4
  %ops = getelementptr inbounds %struct.counter_device, ptr %call3, i32 0, i32 2
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @stm32_lptim_cnt_ops, ptr %ops, align 8
  %has_encoder = getelementptr inbounds %struct.stm32_lptimer, ptr %3, i32 0, i32 2
  %19 = ptrtoint ptr %has_encoder to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %has_encoder, align 4, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool15.not = icmp eq i8 %20, 0
  %spec.select = select i1 %tobool15.not, ptr @stm32_lptim_in1_counts, ptr @stm32_lptim_enc_counts
  %spec.select56 = select i1 %tobool15.not, i32 1, i32 2
  %21 = getelementptr inbounds %struct.counter_device, ptr %call3, i32 0, i32 5
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %spec.select, ptr %21, align 4
  %23 = getelementptr inbounds %struct.counter_device, ptr %call3, i32 0, i32 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %spec.select56, ptr %23, align 8
  %num_counts = getelementptr inbounds %struct.counter_device, ptr %call3, i32 0, i32 6
  %25 = ptrtoint ptr %num_counts to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %num_counts, align 8
  %signals = getelementptr inbounds %struct.counter_device, ptr %call3, i32 0, i32 3
  %26 = ptrtoint ptr %signals to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @stm32_lptim_cnt_signals, ptr %signals, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %27 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call6, ptr %driver_data.i.i, align 4
  %call21 = tail call i32 @devm_counter_add(ptr noundef %dev, ptr noundef nonnull %call3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp = icmp slt i32 %call21, 0
  br i1 %cmp, label %if.then22, label %dev_name.exit.cleanup_crit_edge

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then22:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call24 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call21, ptr noundef nonnull @.str.1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %dev_name.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call24, %if.then22 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %dev_name.exit.cleanup_crit_edge ]
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
define internal i32 @stm32_lptim_cnt_read(ptr noundef %counter, ptr nocapture noundef readnone %count, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %cnt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @counter_priv(ptr noundef %counter) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cnt) #4
  %0 = ptrtoint ptr %cnt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cnt, align 4, !annotation !60
  %regmap = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef 28, ptr noundef nonnull %cnt) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cnt, align 4
  %conv = zext i32 %4 to i64
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv, ptr %val, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cnt) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_lptim_cnt_function_read(ptr noundef %counter, ptr nocapture noundef readnone %count, ptr nocapture noundef writeonly %function) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @counter_priv(ptr noundef %counter) #4
  %quadrature_mode = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %quadrature_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %quadrature_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %polarity = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %polarity to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %polarity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.end.cleanup.sink.split_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 0, %entry.cleanup.sink.split_crit_edge ], [ 7, %if.end.cleanup.sink.split_crit_edge ]
  %4 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.sink, ptr %function, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_lptim_cnt_function_write(ptr noundef %counter, ptr nocapture noundef readnone %count, i32 noundef %function) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @counter_priv(ptr noundef %counter) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #4
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !60
  %regmap.i = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 16, ptr noundef nonnull %val.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %stm32_lptim_is_enabled.exit, label %stm32_lptim_is_enabled.exit.thread

stm32_lptim_is_enabled.exit.thread:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #4
  br label %cleanup

stm32_lptim_is_enabled.exit:                      ; preds = %entry
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i, align 4
  %and.i = and i32 %4, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.end, label %stm32_lptim_is_enabled.exit.cleanup_crit_edge

stm32_lptim_is_enabled.exit.cleanup_crit_edge:    ; preds = %stm32_lptim_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %stm32_lptim_is_enabled.exit
  %5 = zext i32 %function to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %function, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 7, label %sw.bb2
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %quadrature_mode = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %call, i32 0, i32 5
  %6 = ptrtoint ptr %quadrature_mode to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %quadrature_mode, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %quadrature_mode3 = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %call, i32 0, i32 5
  %7 = ptrtoint ptr %quadrature_mode3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %quadrature_mode3, align 4
  %polarity = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %call, i32 0, i32 4
  %8 = ptrtoint ptr %polarity to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %polarity, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb2, %sw.bb, %if.end.cleanup_crit_edge, %stm32_lptim_is_enabled.exit.cleanup_crit_edge, %stm32_lptim_is_enabled.exit.thread
  %retval.0 = phi i32 [ 0, %sw.bb2 ], [ 0, %sw.bb ], [ -16, %stm32_lptim_is_enabled.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -16, %stm32_lptim_is_enabled.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_lptim_cnt_action_read(ptr noundef %counter, ptr nocapture noundef readonly %count, ptr nocapture noundef readonly %synapse, ptr nocapture noundef writeonly %action) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @counter_priv(ptr noundef %counter) #4
  %call.i = tail call ptr @counter_priv(ptr noundef %counter) #4
  %quadrature_mode.i = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %call.i, i32 0, i32 5
  %0 = ptrtoint ptr %quadrature_mode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %quadrature_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %sw.bb, label %if.end.i

if.end.i:                                         ; preds = %entry
  %polarity.i = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %polarity.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %polarity.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %if.end.i.cleanup.sink.split_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

sw.bb:                                            ; preds = %entry
  %signal = getelementptr inbounds %struct.counter_synapse, ptr %synapse, i32 0, i32 2
  %4 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %signal, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %synapses = getelementptr inbounds %struct.counter_count, ptr %count, i32 0, i32 4
  %8 = ptrtoint ptr %synapses to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %synapses, align 4
  %signal2 = getelementptr inbounds %struct.counter_synapse, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %signal2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %signal2, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %13)
  %cmp.not = icmp eq i32 %7, %13
  br i1 %cmp.not, label %if.end5, label %sw.bb.cleanup.sink.split_crit_edge

sw.bb.cleanup.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end5:                                          ; preds = %sw.bb
  %polarity = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %call, i32 0, i32 4
  %14 = ptrtoint ptr %polarity to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %polarity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %16 = icmp ult i32 %15, 3
  br i1 %16, label %switch.lookup, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

switch.lookup:                                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  %switch.offset = add i32 %15, 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %switch.lookup, %sw.bb.cleanup.sink.split_crit_edge, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 0, %sw.bb.cleanup.sink.split_crit_edge ], [ 3, %if.end.i.cleanup.sink.split_crit_edge ], [ %switch.offset, %switch.lookup ]
  %17 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink, ptr %action, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end5.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end5.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_lptim_cnt_action_write(ptr noundef %counter, ptr nocapture noundef readonly %count, ptr nocapture noundef readonly %synapse, i32 noundef %action) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @counter_priv(ptr noundef %counter) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #4
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !60
  %regmap.i = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 16, ptr noundef nonnull %val.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %stm32_lptim_is_enabled.exit, label %stm32_lptim_is_enabled.exit.thread

stm32_lptim_is_enabled.exit.thread:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #4
  br label %cleanup

stm32_lptim_is_enabled.exit:                      ; preds = %entry
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i, align 4
  %and.i = and i32 %4, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.end, label %stm32_lptim_is_enabled.exit.cleanup_crit_edge

stm32_lptim_is_enabled.exit.cleanup_crit_edge:    ; preds = %stm32_lptim_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %stm32_lptim_is_enabled.exit
  %call.i23 = call ptr @counter_priv(ptr noundef %counter) #4
  %quadrature_mode.i = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %call.i23, i32 0, i32 5
  %5 = ptrtoint ptr %quadrature_mode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %quadrature_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i24 = icmp eq i32 %6, 0
  br i1 %tobool.not.i24, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
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
  %signal6 = getelementptr inbounds %struct.counter_synapse, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %signal6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %signal6, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %16)
  %cmp8.not = icmp eq i32 %10, %16
  br i1 %cmp8.not, label %if.end10, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  %17 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %action, label %if.end10.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb11
    i32 3, label %sw.bb13
  ]

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  %polarity = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %call, i32 0, i32 4
  %18 = ptrtoint ptr %polarity to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %polarity, align 4
  br label %cleanup

sw.bb11:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  %polarity12 = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %call, i32 0, i32 4
  %19 = ptrtoint ptr %polarity12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %polarity12, align 4
  br label %cleanup

sw.bb13:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  %polarity14 = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %call, i32 0, i32 4
  %20 = ptrtoint ptr %polarity14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %polarity14, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb13, %sw.bb11, %sw.bb, %if.end10.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %stm32_lptim_is_enabled.exit.cleanup_crit_edge, %stm32_lptim_is_enabled.exit.thread
  %retval.0 = phi i32 [ 0, %sw.bb13 ], [ 0, %sw.bb11 ], [ 0, %sw.bb ], [ -16, %stm32_lptim_is_enabled.exit.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ], [ -16, %stm32_lptim_is_enabled.exit.thread ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_lptim_cnt_enable_read(ptr noundef %counter, ptr nocapture noundef readnone %count, ptr nocapture noundef writeonly %enable) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @counter_priv(ptr noundef %counter) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #4
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !60
  %regmap.i = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 16, ptr noundef nonnull %val.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %stm32_lptim_is_enabled.exit.thread, label %stm32_lptim_is_enabled.exit

stm32_lptim_is_enabled.exit.thread:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i, align 4
  %and.i = and i32 %4, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #4
  br label %if.end

stm32_lptim_is_enabled.exit:                      ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %stm32_lptim_is_enabled.exit.cleanup_crit_edge, label %stm32_lptim_is_enabled.exit.if.end_crit_edge

stm32_lptim_is_enabled.exit.if.end_crit_edge:     ; preds = %stm32_lptim_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

stm32_lptim_is_enabled.exit.cleanup_crit_edge:    ; preds = %stm32_lptim_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %stm32_lptim_is_enabled.exit.if.end_crit_edge, %stm32_lptim_is_enabled.exit.thread
  %retval.0.i7 = phi i32 [ %and.i, %stm32_lptim_is_enabled.exit.thread ], [ %call.i, %stm32_lptim_is_enabled.exit.if.end_crit_edge ]
  %conv = trunc i32 %retval.0.i7 to i8
  %5 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %enable, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %stm32_lptim_is_enabled.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call.i, %stm32_lptim_is_enabled.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_lptim_cnt_enable_write(ptr noundef %counter, ptr nocapture noundef readnone %count, i8 noundef zeroext %enable) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @counter_priv(ptr noundef %counter) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #4
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !60
  %regmap.i = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 16, ptr noundef nonnull %val.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false, label %stm32_lptim_is_enabled.exit

stm32_lptim_is_enabled.exit:                      ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %stm32_lptim_is_enabled.exit.cleanup_crit_edge, label %lor.lhs.false.thread

stm32_lptim_is_enabled.exit.cleanup_crit_edge:    ; preds = %stm32_lptim_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false.thread:                             ; preds = %stm32_lptim_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enable)
  %tobool2.not38 = icmp eq i8 %enable, 0
  br label %if.end

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i, align 4
  %and.i = and i32 %4, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enable)
  %tobool2.not = icmp eq i8 %enable, 0
  %or.cond = and i1 %tobool2.not, %tobool.not
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %lor.lhs.false.thread
  %tobool2.not41 = phi i1 [ %tobool2.not38, %lor.lhs.false.thread ], [ %tobool2.not, %lor.lhs.false.if.end_crit_edge ]
  %tobool.not40 = phi i1 [ false, %lor.lhs.false.thread ], [ %tobool.not, %lor.lhs.false.if.end_crit_edge ]
  %conv = zext i8 %enable to i32
  %brmerge = select i1 %tobool2.not41, i1 true, i1 %tobool.not40
  br i1 %brmerge, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %quadrature_mode.i = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %call, i32 0, i32 5
  %5 = ptrtoint ptr %quadrature_mode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %quadrature_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enable)
  %tobool1.not.i = icmp eq i8 %enable, 0
  br i1 %tobool1.not.i, label %if.end7.stm32_lptim_setup.exit_crit_edge, label %cond.true30.i

if.end7.stm32_lptim_setup.exit_crit_edge:         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %stm32_lptim_setup.exit

cond.true30.i:                                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  %polarity31.i = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %call, i32 0, i32 4
  %7 = ptrtoint ptr %polarity31.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %polarity31.i, align 4
  %phi.bo.i = shl i32 %8, 1
  %phi.bo45.i = and i32 %phi.bo.i, 6
  br label %stm32_lptim_setup.exit

stm32_lptim_setup.exit:                           ; preds = %cond.true30.i, %if.end7.stm32_lptim_setup.exit_crit_edge
  %cond.i = phi i32 [ 0, %if.end7.stm32_lptim_setup.exit_crit_edge ], [ 16777216, %cond.true30.i ]
  %cond3.i = phi i32 [ 0, %if.end7.stm32_lptim_setup.exit_crit_edge ], [ 8388608, %cond.true30.i ]
  %cond34.i = phi i32 [ 0, %if.end7.stm32_lptim_setup.exit_crit_edge ], [ %phi.bo45.i, %cond.true30.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i31 = icmp eq i32 %6, 0
  %val.0.i = select i1 %tobool.not.i31, i32 %cond3.i, i32 %cond.i
  %or.i = or i32 %cond34.i, %val.0.i
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 12, i32 noundef 25169414, i32 noundef %or.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool10.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool10.not, label %if.end12, label %stm32_lptim_setup.exit.cleanup_crit_edge

stm32_lptim_setup.exit.cleanup_crit_edge:         ; preds = %stm32_lptim_setup.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %stm32_lptim_setup.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call14 = call fastcc i32 @stm32_lptim_set_enable_state(ptr noundef %call, i32 noundef %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %stm32_lptim_setup.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %stm32_lptim_is_enabled.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ %call.i, %stm32_lptim_is_enabled.exit.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ %call.i.i, %stm32_lptim_setup.exit.cleanup_crit_edge ], [ %call14, %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_lptim_cnt_ceiling_read(ptr noundef %counter, ptr nocapture noundef readnone %count, ptr nocapture noundef writeonly %ceiling) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @counter_priv(ptr noundef %counter) #4
  %ceiling1 = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %ceiling1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ceiling1, align 4
  %conv = zext i32 %1 to i64
  %2 = ptrtoint ptr %ceiling to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %ceiling, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_lptim_cnt_ceiling_write(ptr noundef %counter, ptr nocapture noundef readnone %count, i64 noundef %ceiling) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @counter_priv(ptr noundef %counter) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #4
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !60
  %regmap.i = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 16, ptr noundef nonnull %val.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %stm32_lptim_is_enabled.exit, label %stm32_lptim_is_enabled.exit.thread

stm32_lptim_is_enabled.exit.thread:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #4
  br label %cleanup

stm32_lptim_is_enabled.exit:                      ; preds = %entry
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i, align 4
  %and.i = and i32 %4, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.end, label %stm32_lptim_is_enabled.exit.cleanup_crit_edge

stm32_lptim_is_enabled.exit.cleanup_crit_edge:    ; preds = %stm32_lptim_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %stm32_lptim_is_enabled.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 65535, i64 %ceiling)
  %cmp = icmp ugt i64 %ceiling, 65535
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %conv = trunc i64 %ceiling to i32
  %ceiling4 = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %call, i32 0, i32 3
  %5 = ptrtoint ptr %ceiling4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %ceiling4, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %stm32_lptim_is_enabled.exit.cleanup_crit_edge, %stm32_lptim_is_enabled.exit.thread
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -16, %stm32_lptim_is_enabled.exit.cleanup_crit_edge ], [ -34, %if.end.cleanup_crit_edge ], [ -16, %stm32_lptim_is_enabled.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_lptim_set_enable_state(ptr nocapture noundef %priv, i32 noundef %enable) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #4
  %and13 = and i32 %enable, 1
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %and13, ptr %val, align 4
  %regmap = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %priv, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = tail call i32 @regmap_write(ptr noundef %2, i32 noundef 16, i32 noundef %and13) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool14.not = icmp eq i32 %call, 0
  br i1 %tobool14.not, label %if.end16, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end16:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool17.not = icmp eq i32 %enable, 0
  br i1 %tobool17.not, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  %clk = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %priv, i32 0, i32 2
  %3 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %4) #4
  %enabled = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %priv, i32 0, i32 6
  %5 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %enabled, align 4
  br label %cleanup

if.end19:                                         ; preds = %if.end16
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %ceiling = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %priv, i32 0, i32 3
  %8 = ptrtoint ptr %ceiling to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ceiling, align 4
  %call21 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 24, i32 noundef %9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call26 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 20, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  %call30 = tail call i64 @ktime_get() #4
  %add.i = add i64 %call30, 1000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 73) #4
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call44132 = call i32 @regmap_read(ptr noundef %13, i32 noundef 0, ptr noundef nonnull %val) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44132)
  %tobool45.not133 = icmp eq i32 %call44132, 0
  br i1 %tobool45.not133, label %if.end29.lor.lhs.false_crit_edge, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end29.lor.lhs.false_crit_edge:                 ; preds = %if.end29
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then59.lor.lhs.false_crit_edge, %if.end29.lor.lhs.false_crit_edge
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val, align 4
  %and46 = and i32 %15, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %land.lhs.true, label %lor.lhs.false.lor.rhs_crit_edge

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call51 = call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call51, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call51, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then59

if.then59:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #4
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call44 = call i32 @regmap_read(ptr noundef %17, i32 noundef 0, ptr noundef nonnull %val) #4
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then59.lor.lhs.false_crit_edge, label %if.then59.cleanup_crit_edge

if.then59.cleanup_crit_edge:                      ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then59.lor.lhs.false_crit_edge:                ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call56 = call i32 @regmap_read(ptr noundef %19, i32 noundef 0, ptr noundef nonnull %val) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool62.not = icmp eq i32 %call56, 0
  br i1 %tobool62.not, label %for.end.lor.rhs_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val, align 4
  %and63 = and i32 %21, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %lor.rhs.cleanup_crit_edge, label %if.end72

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end72:                                         ; preds = %lor.rhs
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %call74 = call i32 @regmap_write(ptr noundef %23, i32 noundef 4, i32 noundef 24) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end77, label %if.end72.cleanup_crit_edge

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end77:                                         ; preds = %if.end72
  %clk78 = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %priv, i32 0, i32 2
  %24 = ptrtoint ptr %clk78 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk78, align 4
  %call79 = call i32 @clk_enable(ptr noundef %25) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end84, label %if.then81

if.then81:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %call83 = call i32 @regmap_write(ptr noundef %27, i32 noundef 16, i32 noundef 0) #4
  br label %cleanup

if.end84:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #6
  %enabled85 = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %priv, i32 0, i32 6
  %28 = ptrtoint ptr %enabled85 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %enabled85, align 4
  %29 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 16, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end84, %if.then81, %if.end72.cleanup_crit_edge, %lor.rhs.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then59.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.then18, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call79, %if.then81 ], [ %call.i, %if.end84 ], [ 0, %if.then18 ], [ %call, %entry.cleanup_crit_edge ], [ %call21, %if.end19.cleanup_crit_edge ], [ %call26, %if.end24.cleanup_crit_edge ], [ %call74, %if.end72.cleanup_crit_edge ], [ %call44132, %if.end29.cleanup_crit_edge ], [ %call56, %for.end.cleanup_crit_edge ], [ -110, %lor.rhs.cleanup_crit_edge ], [ %call44, %if.then59.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_lptim_cnt_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %enabled = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 4, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.then:                                          ; preds = %entry
  %regmap.i = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 12, i32 noundef 25169414, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %if.then
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 16, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool14.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool14.not.i, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %clk.i = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %9) #4
  %10 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %enabled, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end7, %entry.if.end9_crit_edge
  %call10 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end9 ], [ %call.i.i, %if.then.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_lptim_cnt_resume(ptr noundef %dev) #2 align 64 {
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
  %enabled = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 4, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.end.if.end13_crit_edge, label %if.then3

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.then3:                                         ; preds = %if.end
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %enabled, align 4
  %polarity.i = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %polarity.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %polarity.i, align 4
  %quadrature_mode.i = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %quadrature_mode.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %quadrature_mode.i, align 4
  %phi.bo.i = shl i32 %6, 1
  %phi.bo45.i = and i32 %phi.bo.i, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  %val.0.i = select i1 %tobool.not.i, i32 8388608, i32 16777216
  %or.i = or i32 %val.0.i, %phi.bo45.i
  %regmap.i = getelementptr inbounds %struct.stm32_lptim_cnt, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 12, i32 noundef 25169414, i32 noundef %or.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool6.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool6.not, label %if.end8, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %if.then3
  %call9 = tail call fastcc i32 @stm32_lptim_set_enable_state(ptr noundef %1, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.if.end13_crit_edge, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.end13:                                         ; preds = %if.end8.if.end13_crit_edge, %if.end.if.end13_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end8.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ %call1, %entry.cleanup_crit_edge ], [ %call.i.i, %if.then3.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
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

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @__initcall__kmod_stm32_lptimer_cnt__242_517_stm32_lptim_cnt_driver_init6, !1, !"__initcall__kmod_stm32_lptimer_cnt__242_517_stm32_lptim_cnt_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/counter/stm32-lptimer-cnt.c", i32 517, i32 1}
!2 = !{ptr @__exitcall_stm32_lptim_cnt_driver_exit, !1, !"__exitcall_stm32_lptim_cnt_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author243, !4, !"__UNIQUE_ID_author243", i1 false, i1 false}
!4 = !{!"../drivers/counter/stm32-lptimer-cnt.c", i32 519, i32 1}
!5 = !{ptr @__UNIQUE_ID_alias244, !6, !"__UNIQUE_ID_alias244", i1 false, i1 false}
!6 = !{!"../drivers/counter/stm32-lptimer-cnt.c", i32 520, i32 1}
!7 = !{ptr @__UNIQUE_ID_description245, !8, !"__UNIQUE_ID_description245", i1 false, i1 false}
!8 = !{!"../drivers/counter/stm32-lptimer-cnt.c", i32 521, i32 1}
!9 = !{ptr @__UNIQUE_ID_file246, !10, !"__UNIQUE_ID_file246", i1 false, i1 false}
!10 = !{!"../drivers/counter/stm32-lptimer-cnt.c", i32 522, i32 1}
!11 = !{ptr @__UNIQUE_ID_license247, !10, !"__UNIQUE_ID_license247", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/counter/stm32-lptimer-cnt.c", i32 512, i32 11}
!14 = !{ptr @stm32_lptim_cnt_driver, !15, !"stm32_lptim_cnt_driver", i1 false, i1 false}
!15 = !{!"../drivers/counter/stm32-lptimer-cnt.c", i32 509, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/counter/stm32-lptimer-cnt.c", i32 448, i32 41}
!18 = !{ptr @stm32_lptim_cnt_ops, !19, !"stm32_lptim_cnt_ops", i1 false, i1 false}
!19 = !{!"../drivers/counter/stm32-lptimer-cnt.c", i32 354, i32 33}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/counter/stm32-lptimer-cnt.c", i32 389, i32 10}
!22 = !{ptr @stm32_lptim_enc_counts, !23, !"stm32_lptim_enc_counts", i1 false, i1 false}
!23 = !{!"../drivers/counter/stm32-lptimer-cnt.c", i32 387, i32 29}
!24 = !{ptr @stm32_lptim_cnt_functions, !25, !"stm32_lptim_cnt_functions", i1 false, i1 false}
!25 = !{!"../drivers/counter/stm32-lptimer-cnt.c", i32 128, i32 36}
!26 = !{ptr @stm32_lptim_cnt_synapses, !27, !"stm32_lptim_cnt_synapses", i1 false, i1 false}
!27 = !{!"../drivers/counter/stm32-lptimer-cnt.c", i32 373, i32 31}
!28 = !{ptr @stm32_lptim_cnt_synapse_actions, !29, !"stm32_lptim_cnt_synapse_actions", i1 false, i1 false}
!29 = !{!"../drivers/counter/stm32-lptimer-cnt.c", i32 133, i32 42}
!30 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/counter/stm32-lptimer-cnt.c", i32 268, i32 2}
!32 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/counter/stm32-lptimer-cnt.c", i32 270, i32 2}
!34 = !{ptr @stm32_lptim_cnt_ext, !35, !"stm32_lptim_cnt_ext", i1 false, i1 false}
!35 = !{!"../drivers/counter/stm32-lptimer-cnt.c", i32 267, i32 28}
!36 = !{ptr @.str.5, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/counter/stm32-lptimer-cnt.c", i32 71, i32 8}
!38 = !{ptr @stm32_lptim_in1_counts, !39, !"stm32_lptim_in1_counts", i1 false, i1 false}
!39 = !{!"../drivers/counter/stm32-lptimer-cnt.c", i32 399, i32 29}
!40 = !{ptr @.str.6, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/counter/stm32-lptimer-cnt.c", i32 365, i32 11}
!42 = !{ptr @.str.7, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/counter/stm32-lptimer-cnt.c", i32 369, i32 11}
!44 = !{ptr @stm32_lptim_cnt_signals, !45, !"stm32_lptim_cnt_signals", i1 false, i1 false}
!45 = !{!"../drivers/counter/stm32-lptimer-cnt.c", i32 362, i32 30}
!46 = !{ptr @stm32_lptim_cnt_of_match, !47, !"stm32_lptim_cnt_of_match", i1 false, i1 false}
!47 = !{!"../drivers/counter/stm32-lptimer-cnt.c", i32 503, i32 34}
!48 = !{ptr @stm32_lptim_cnt_pm_ops, !49, !"stm32_lptim_cnt_pm_ops", i1 false, i1 false}
!49 = !{!"../drivers/counter/stm32-lptimer-cnt.c", i32 500, i32 8}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{i8 0, i8 2}
!60 = !{!"auto-init"}
