; ModuleID = '/llk/IR_all_yes/drivers/clocksource/ingenic-timer.c_pt.bc'
source_filename = "../drivers/clocksource/ingenic-timer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.3 }
%struct.llist_node = type { ptr }
%union.anon.3 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ingenic_soc_info = type { i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.ingenic_tcu = type { ptr, ptr, ptr, i32, %struct.clocksource, i32, [0 x %struct.ingenic_tcu_timer] }
%struct.clocksource = type { ptr, i64, i32, i32, i64, i32, i32, i64, ptr, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ingenic_tcu_timer = type { i32, i32, [120 x i8], %struct.clock_event_device, ptr, [8 x i8], [116 x i8] }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [124 x i8] }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__of_table_jz4740_tcu_intc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4740-tcu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ingenic_tcu_init }, section "__timer_of_table", align 4
@__of_table_jz4725b_tcu_intc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4725b-tcu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ingenic_tcu_init }, section "__timer_of_table", align 4
@__of_table_jz4760_tcu_intc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4760-tcu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ingenic_tcu_init }, section "__timer_of_table", align 4
@__of_table_jz4770_tcu_intc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4770-tcu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ingenic_tcu_init }, section "__timer_of_table", align 4
@__of_table_x1000_tcu_intc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,x1000-tcu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ingenic_tcu_init }, section "__timer_of_table", align 4
@__initcall__kmod_ingenic_timer__187_425_ingenic_tcu_driver_init6 = internal global ptr @ingenic_tcu_driver_init, section ".initcall6.init", align 4
@__pcpu_unique_ingenic_cevt_csd = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@ingenic_cevt_csd = weak dso_local global %struct.__call_single_data zeroinitializer, section ".data..percpu", align 16
@ingenic_tcu_of_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4740-tcu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jz4740_soc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4725b-tcu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jz4725b_soc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4760-tcu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jz4740_soc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4770-tcu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jz4740_soc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,x1000-tcu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jz4740_soc_info }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ingenic,pwm-channels-mask\00", [38 x i8] zeroinitializer }, align 32
@ingenic_tcu_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 308, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\012%s: Invalid PWM channel mask: 0x%02lx\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ingenic_tcu_init\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/clocksource/ingenic-timer.c\00", [60 x i8] zeroinitializer }, align 32
@ingenic_tcu_init._entry_ptr = internal global ptr @ingenic_tcu_init._entry, section ".printk_index", align 4
@ingenic_tcu = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ingenic_tcu_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\012%s: Unable to init clocksource: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@ingenic_tcu_init._entry_ptr.6 = internal global ptr @ingenic_tcu_init._entry.4, section ".printk_index", align 4
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Ingenic XBurst: online\00", [41 x i8] zeroinitializer }, align 32
@ingenic_tcu_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\012%s: Unable to start CPU timers: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@ingenic_tcu_init._entry_ptr.10 = internal global ptr @ingenic_tcu_init._entry.8, section ".printk_index", align 4
@jz4740_soc_info = internal constant { %struct.ingenic_soc_info, [28 x i8] } { %struct.ingenic_soc_info { i32 8 }, [28 x i8] zeroinitializer }, align 32
@jz4725b_soc_info = internal constant { %struct.ingenic_soc_info, [28 x i8] } { %struct.ingenic_soc_info { i32 6 }, [28 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ingenic-timer\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"TCU%u\00", [26 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@ingenic_tcu_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.13, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ingenic_tcu_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ingenic_tcu_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ingenic-tcu-timer\00", [46 x i8] zeroinitializer }, align 32
@ingenic_tcu_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ingenic_tcu_suspend, ptr @ingenic_tcu_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@___asan_gen_.14 = private unnamed_addr constant [21 x i8] c"ingenic_tcu_of_match\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 264, i32 34 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 301, i32 27 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 307, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant [12 x i8] c"ingenic_tcu\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 50, i32 28 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 333, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 338, i32 47 }
@___asan_gen_.44 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 341, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [16 x i8] c"jz4740_soc_info\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 256, i32 38 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"jz4725b_soc_info\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 260, i32 38 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 237, i32 13 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 176, i32 45 }
@___asan_gen_.62 = private unnamed_addr constant [19 x i8] c"ingenic_tcu_driver\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 416, i32 31 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 418, i32 11 }
@___asan_gen_.68 = private unnamed_addr constant [19 x i8] c"ingenic_tcu_pm_ops\00", align 1
@___asan_gen_.69 = private constant [39 x i8] c"../drivers/clocksource/ingenic-timer.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 410, i32 47 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__initcall__kmod_ingenic_timer__187_425_ingenic_tcu_driver_init6, ptr @__of_table_jz4725b_tcu_intc, ptr @__of_table_jz4740_tcu_intc, ptr @__of_table_jz4760_tcu_intc, ptr @__of_table_jz4770_tcu_intc, ptr @__of_table_x1000_tcu_intc, ptr @ingenic_tcu_init._entry, ptr @ingenic_tcu_init._entry.4, ptr @ingenic_tcu_init._entry.8, ptr @ingenic_tcu_init._entry_ptr, ptr @ingenic_tcu_init._entry_ptr.10, ptr @ingenic_tcu_init._entry_ptr.6, ptr @ingenic_tcu_of_match, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @ingenic_tcu, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @jz4740_soc_info, ptr @jz4725b_soc_info, ptr @.str.11, ptr @.str.12, ptr @ingenic_tcu_driver, ptr @.str.13, ptr @ingenic_tcu_pm_ops], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_tcu_of_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_tcu_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_tcu to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_tcu_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_tcu_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4740_soc_info to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4725b_soc_info to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_tcu_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_tcu_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_tcu_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_match_node(ptr noundef nonnull @ingenic_tcu_of_match, ptr noundef %np) #10
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %_flags.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %_flags.i) #10
  %call1 = tail call ptr @device_node_to_regmap(ptr noundef %np) #10
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end.i.i

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end.i.i:                                       ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %3) #10
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call4.i.i, i32 512) #10
  %5 = extractvalue { i32, i1 } %4, 1
  %6 = extractvalue { i32, i1 } %4, 0
  %7 = or i32 %6, 128
  %retval.0.i = select i1 %5, i32 -1, i32 %7
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3520) #13
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end.i.i.cleanup_crit_edge, label %if.end.i.i288

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i288:                                    ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i287 = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %8) #10
  %add = add i32 %call4.i.i287, 1
  %shl.neg = shl nsw i32 -1, %add
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 4
  %sub12 = sub i32 32, %10
  %shr = lshr i32 -1, %sub12
  %and = and i32 %shr, %shl.neg
  %pwm_channels_mask = getelementptr inbounds %struct.ingenic_tcu, ptr %call9.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %pwm_channels_mask to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and, ptr %pwm_channels_mask, align 8
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str, ptr noundef %pwm_channels_mask, i32 noundef 1, i32 noundef 0) #10
  %12 = ptrtoint ptr %pwm_channels_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pwm_channels_mask, align 8
  %call.i = tail call i32 @__sw_hweight8(i32 noundef %13) #10
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i389 = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %16) #10
  %sub88 = add i32 %15, 1
  %add89 = sub i32 %sub88, %call4.i.i389
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %add89)
  %cmp = icmp ugt i32 %call.i, %add89
  br i1 %cmp, label %do.end, label %if.end94

do.end:                                           ; preds = %if.end.i.i288
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %pwm_channels_mask to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pwm_channels_mask, align 8
  %call93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %18) #14
  br label %err_free_ingenic_tcu

if.end94:                                         ; preds = %if.end.i.i288
  %19 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call1, ptr %call9.i.i, align 128
  %np96 = getelementptr inbounds %struct.ingenic_tcu, ptr %call9.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %np96 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %np, ptr %np96, align 4
  store ptr %call9.i.i, ptr @ingenic_tcu, align 4
  br label %if.end.i.i492

if.end.i.i492:                                    ; preds = %for.body, %if.end94
  %cpu.0 = phi i32 [ 0, %if.end94 ], [ %inc, %for.body ]
  %last_bit.0 = phi i32 [ 0, %if.end94 ], [ %phi.bo, %for.body ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i491 = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %21) #10
  %cmp98 = icmp ult i32 %cpu.0, %call4.i.i491
  br i1 %cmp98, label %for.body, label %for.end

for.body:                                         ; preds = %if.end.i.i492
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.ingenic_tcu, ptr %call9.i.i, i32 0, i32 6, i32 %cpu.0
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %cpu.0, ptr %arrayidx, align 128
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %1, align 4
  %call104 = tail call i32 @_find_next_zero_bit_be(ptr noundef %pwm_channels_mask, i32 noundef %24, i32 noundef %last_bit.0) #10
  %channel = getelementptr %struct.ingenic_tcu, ptr %call9.i.i, i32 0, i32 6, i32 %cpu.0, i32 1
  %25 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call104, ptr %channel, align 4
  %inc = add nuw i32 %cpu.0, 1
  %phi.bo = add i32 %call104, 1
  br label %if.end.i.i492

for.end:                                          ; preds = %if.end.i.i492
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %1, align 4
  %call109 = tail call i32 @_find_next_zero_bit_be(ptr noundef %pwm_channels_mask, i32 noundef %27, i32 noundef %last_bit.0) #10
  %cs_channel = getelementptr inbounds %struct.ingenic_tcu, ptr %call9.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %cs_channel to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call109, ptr %cs_channel, align 4
  %call110 = tail call fastcc i32 @ingenic_tcu_clocksource_init(ptr noundef %np, ptr noundef nonnull %call9.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end118, label %do.end115

do.end115:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %call117 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2, i32 noundef %call110) #14
  br label %err_free_ingenic_tcu

if.end118:                                        ; preds = %for.end
  %call.i495 = tail call i32 @__cpuhp_setup_state(i32 noundef 194, ptr noundef nonnull @.str.7, i1 noundef zeroext true, ptr noundef nonnull @ingenic_tcu_setup_cevt, ptr noundef null, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i495)
  %cmp120 = icmp slt i32 %call.i495, 0
  br i1 %cmp120, label %do.end125, label %if.end128

do.end125:                                        ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #12
  %call127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.2, i32 noundef %call.i495) #14
  %cs = getelementptr inbounds %struct.ingenic_tcu, ptr %call9.i.i, i32 0, i32 4
  %call130 = tail call i32 @clocksource_unregister(ptr noundef %cs) #10
  %cs_clk131 = getelementptr inbounds %struct.ingenic_tcu, ptr %call9.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %cs_clk131 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cs_clk131, align 8
  tail call void @clk_disable(ptr noundef %30) #10
  tail call void @clk_unprepare(ptr noundef %30) #10
  %31 = ptrtoint ptr %cs_clk131 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cs_clk131, align 8
  tail call void @clk_put(ptr noundef %32) #10
  br label %err_free_ingenic_tcu

if.end128:                                        ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #12
  %cs_clk = getelementptr inbounds %struct.ingenic_tcu, ptr %call9.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %cs_clk to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cs_clk, align 8
  %call129 = tail call i32 @clk_get_rate(ptr noundef %34) #10
  tail call void @sched_clock_register(ptr noundef nonnull @ingenic_tcu_timer_read, i32 noundef 16, i32 noundef %call129) #10
  br label %cleanup

err_free_ingenic_tcu:                             ; preds = %do.end125, %do.end115, %do.end
  %ret.0 = phi i32 [ -22, %do.end ], [ %call110, %do.end115 ], [ %call.i495, %do.end125 ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %err_free_ingenic_tcu, %if.end128, %if.end.i.i.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %ret.0, %err_free_ingenic_tcu ], [ 0, %if.end128 ], [ -12, %if.end.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_tcu_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @ingenic_tcu_driver, ptr noundef nonnull @ingenic_tcu_probe, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_node_to_regmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ingenic_tcu_clocksource_init(ptr noundef %np, ptr noundef %tcu) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cs_channel = getelementptr inbounds %struct.ingenic_tcu, ptr %tcu, i32 0, i32 3
  %0 = ptrtoint ptr %cs_channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cs_channel, align 4
  %cs1 = getelementptr inbounds %struct.ingenic_tcu, ptr %tcu, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #10
  %2 = getelementptr inbounds i8, ptr %args.i, i32 12
  %3 = call ptr @memset(ptr %2, i32 255, i32 60)
  %4 = ptrtoint ptr %args.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %np, ptr %args.i, align 4
  %args_count.i = getelementptr inbounds %struct.of_phandle_args, ptr %args.i, i32 0, i32 1
  %5 = ptrtoint ptr %args_count.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %args_count.i, align 4
  %args2.i = getelementptr inbounds %struct.of_phandle_args, ptr %args.i, i32 0, i32 2
  %6 = ptrtoint ptr %args2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %1, ptr %args2.i, align 4
  %call.i = call ptr @of_clk_get_from_provider(ptr noundef nonnull %args.i) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #10
  %cs_clk = getelementptr inbounds %struct.ingenic_tcu, ptr %tcu, i32 0, i32 2
  %7 = ptrtoint ptr %cs_clk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %cs_clk, align 8
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i59 = call i32 @clk_prepare(ptr noundef %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59)
  %tobool.not.i = icmp eq i32 %call.i59, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.err_clk_put_crit_edge

if.end.err_clk_put_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_clk_put

if.end.i:                                         ; preds = %if.end
  %call1.i = call i32 @clk_enable(ptr noundef %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end9, label %if.end.i.err_clk_put.sink.split_crit_edge

if.end.i.err_clk_put.sink.split_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_clk_put.sink.split

if.end9:                                          ; preds = %if.end.i
  %9 = ptrtoint ptr %cs_clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cs_clk, align 8
  %call11 = call i32 @clk_get_rate(ptr noundef %10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end9.err_clk_disable_crit_edge, label %if.end14

if.end9.err_clk_disable_crit_edge:                ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_clk_disable

if.end14:                                         ; preds = %if.end9
  %11 = ptrtoint ptr %tcu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tcu, align 128
  %mul = shl i32 %1, 4
  %add = add i32 %mul, 76
  %call.i60 = call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef %add, i32 noundef 65472, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %13 = ptrtoint ptr %tcu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tcu, align 128
  %add18 = add i32 %mul, 64
  %call19 = call i32 @regmap_write(ptr noundef %14, i32 noundef %add18, i32 noundef 65535) #10
  %15 = ptrtoint ptr %tcu to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tcu, align 128
  %add22 = add i32 %mul, 72
  %call23 = call i32 @regmap_write(ptr noundef %16, i32 noundef %add22, i32 noundef 0) #10
  %17 = ptrtoint ptr %tcu to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tcu, align 128
  %shl = shl nuw i32 1, %1
  %call25 = call i32 @regmap_write(ptr noundef %18, i32 noundef 20, i32 noundef %shl) #10
  %name = getelementptr inbounds %struct.ingenic_tcu, ptr %tcu, i32 0, i32 4, i32 8
  %19 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.11, ptr %name, align 8
  %rating = getelementptr inbounds %struct.ingenic_tcu, ptr %tcu, i32 0, i32 4, i32 10
  %20 = ptrtoint ptr %rating to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 200, ptr %rating, align 4
  %flags = getelementptr inbounds %struct.ingenic_tcu, ptr %tcu, i32 0, i32 4, i32 13
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %flags, align 8
  %mask = getelementptr inbounds %struct.ingenic_tcu, ptr %tcu, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %mask to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 65535, ptr %mask, align 8
  %23 = ptrtoint ptr %cs1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @ingenic_tcu_timer_cs_read, ptr %cs1, align 8
  %call.i61 = call i32 @__clocksource_register_scale(ptr noundef %cs1, i32 noundef 1, i32 noundef %call11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %tobool27.not = icmp eq i32 %call.i61, 0
  br i1 %tobool27.not, label %if.end14.cleanup_crit_edge, label %if.end14.err_clk_disable_crit_edge

if.end14.err_clk_disable_crit_edge:               ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_clk_disable

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_clk_disable:                                  ; preds = %if.end14.err_clk_disable_crit_edge, %if.end9.err_clk_disable_crit_edge
  %err.0 = phi i32 [ %call.i61, %if.end14.err_clk_disable_crit_edge ], [ -22, %if.end9.err_clk_disable_crit_edge ]
  %24 = ptrtoint ptr %cs_clk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cs_clk, align 8
  call void @clk_disable(ptr noundef %25) #10
  br label %err_clk_put.sink.split

err_clk_put.sink.split:                           ; preds = %err_clk_disable, %if.end.i.err_clk_put.sink.split_crit_edge
  %call.i.sink = phi ptr [ %25, %err_clk_disable ], [ %call.i, %if.end.i.err_clk_put.sink.split_crit_edge ]
  %err.1.ph = phi i32 [ %err.0, %err_clk_disable ], [ %call1.i, %if.end.i.err_clk_put.sink.split_crit_edge ]
  call void @clk_unprepare(ptr noundef %call.i.sink) #10
  br label %err_clk_put

err_clk_put:                                      ; preds = %err_clk_put.sink.split, %if.end.err_clk_put_crit_edge
  %err.1 = phi i32 [ %call.i59, %if.end.err_clk_put_crit_edge ], [ %err.1.ph, %err_clk_put.sink.split ]
  %26 = ptrtoint ptr %cs_clk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cs_clk, align 8
  call void @clk_put(ptr noundef %27) #10
  br label %cleanup

cleanup:                                          ; preds = %err_clk_put, %if.end14.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %8, %if.then ], [ %err.1, %err_clk_put ], [ 0, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_tcu_setup_cevt(i32 noundef %cpu) #4 align 64 {
entry:
  %fwspec.i.i4.i = alloca %struct.irq_fwspec, align 4
  %fwspec.i.i.i = alloca %struct.irq_fwspec, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ingenic_tcu, align 4
  %arrayidx = getelementptr %struct.ingenic_tcu, ptr %0, i32 0, i32 6, i32 %cpu
  %np = getelementptr inbounds %struct.ingenic_tcu, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %np, align 4
  %channel = getelementptr %struct.ingenic_tcu, ptr %0, i32 0, i32 6, i32 %cpu, i32 1
  %3 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channel, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #10
  %5 = getelementptr inbounds i8, ptr %args.i, i32 12
  %6 = call ptr @memset(ptr %5, i32 255, i32 60)
  %7 = ptrtoint ptr %args.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %2, ptr %args.i, align 4
  %args_count.i = getelementptr inbounds %struct.of_phandle_args, ptr %args.i, i32 0, i32 1
  %8 = ptrtoint ptr %args_count.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %args_count.i, align 4
  %args2.i = getelementptr inbounds %struct.of_phandle_args, ptr %args.i, i32 0, i32 2
  %9 = ptrtoint ptr %args2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %4, ptr %args2.i, align 4
  %call.i = call ptr @of_clk_get_from_provider(ptr noundef nonnull %args.i) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #10
  %clk = getelementptr %struct.ingenic_tcu, ptr %0, i32 0, i32 6, i32 %cpu, i32 4
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %clk, align 128
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i83 = call i32 @clk_prepare(ptr noundef %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %tobool.not.i = icmp eq i32 %call.i83, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.err_clk_put_crit_edge

if.end.err_clk_put_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_clk_put

if.end.i:                                         ; preds = %if.end
  %call1.i = call i32 @clk_enable(ptr noundef %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end8, label %if.end.i.err_clk_put.sink.split_crit_edge

if.end.i.err_clk_put.sink.split_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_clk_put.sink.split

if.end8:                                          ; preds = %if.end.i
  %12 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk, align 128
  %call10 = call i32 @clk_get_rate(ptr noundef %13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end8.err_clk_disable_crit_edge, label %if.end13

if.end8.err_clk_disable_crit_edge:                ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_clk_disable

if.end13:                                         ; preds = %if.end8
  %14 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %np, align 4
  %tobool.not.i.i.i = icmp eq ptr %15, null
  %fwnode.i.i.i = getelementptr inbounds %struct.device_node, ptr %15, i32 0, i32 3
  %spec.select.i.i.i = select i1 %tobool.not.i.i.i, ptr null, ptr %fwnode.i.i.i
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i.i.i) #10
  %16 = getelementptr inbounds i8, ptr %fwspec.i.i.i, i32 4
  %17 = call ptr @memset(ptr %16, i32 0, i32 68)
  %18 = ptrtoint ptr %fwspec.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %spec.select.i.i.i, ptr %fwspec.i.i.i, align 4
  %call.i.i.i = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %fwspec.i.i.i, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i.i.i) #10
  %tobool.not.i84 = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i84, label %irq_find_host.exit, label %if.end13.if.end18_crit_edge

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

irq_find_host.exit:                               ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i.i4.i) #10
  %19 = getelementptr inbounds i8, ptr %fwspec.i.i4.i, i32 4
  %20 = call ptr @memset(ptr %19, i32 0, i32 68)
  %21 = ptrtoint ptr %fwspec.i.i4.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %spec.select.i.i.i, ptr %fwspec.i.i4.i, align 4
  %call.i.i8.i = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %fwspec.i.i4.i, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i.i4.i) #10
  %tobool16.not = icmp eq ptr %call.i.i8.i, null
  br i1 %tobool16.not, label %irq_find_host.exit.err_clk_disable_crit_edge, label %irq_find_host.exit.if.end18_crit_edge

irq_find_host.exit.if.end18_crit_edge:            ; preds = %irq_find_host.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

irq_find_host.exit.err_clk_disable_crit_edge:     ; preds = %irq_find_host.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_clk_disable

if.end18:                                         ; preds = %irq_find_host.exit.if.end18_crit_edge, %if.end13.if.end18_crit_edge
  %d.0.i92 = phi ptr [ %call.i.i8.i, %irq_find_host.exit.if.end18_crit_edge ], [ %call.i.i.i, %if.end13.if.end18_crit_edge ]
  %22 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %channel, align 4
  %call.i86 = call i32 @irq_create_mapping_affinity(ptr noundef nonnull %d.0.i92, i32 noundef %23, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86)
  %tobool21.not = icmp eq i32 %call.i86, 0
  br i1 %tobool21.not, label %if.end18.err_clk_disable_crit_edge, label %if.end23

if.end18.err_clk_disable_crit_edge:               ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_clk_disable

if.end23:                                         ; preds = %if.end18
  %name = getelementptr %struct.ingenic_tcu, ptr %0, i32 0, i32 6, i32 %cpu, i32 5
  %24 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %channel, align 4
  %call25 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 8, ptr noundef nonnull @.str.12, i32 noundef %25)
  %call.i87 = call i32 @request_threaded_irq(i32 noundef %call.i86, ptr noundef nonnull @ingenic_tcu_cevt_cb, ptr noundef null, i32 noundef 82432, ptr noundef %name, ptr noundef %arrayidx) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87)
  %tobool29.not = icmp eq i32 %call.i87, 0
  br i1 %tobool29.not, label %if.end31, label %err_irq_dispose_mapping

if.end31:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %26 = call i32 @llvm.read_register.i32(metadata !51) #10
  %and.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i to ptr
  %cpu33 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %cpu33 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu33, align 4
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %arrayidx, align 128
  %31 = load i32, ptr %cpu33, align 4
  %rem.i = and i32 %31, 31
  %add.i = add nuw nsw i32 %rem.i, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %div3.i = lshr i32 %31, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  %cevt = getelementptr %struct.ingenic_tcu, ptr %0, i32 0, i32 6, i32 %cpu, i32 3
  %cpumask = getelementptr %struct.ingenic_tcu, ptr %0, i32 0, i32 6, i32 %cpu, i32 3, i32 25
  %32 = ptrtoint ptr %cpumask to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr.i, ptr %cpumask, align 4
  %features = getelementptr %struct.ingenic_tcu, ptr %0, i32 0, i32 6, i32 %cpu, i32 3, i32 9
  %33 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2, ptr %features, align 4
  %name42 = getelementptr %struct.ingenic_tcu, ptr %0, i32 0, i32 6, i32 %cpu, i32 3, i32 21
  %34 = ptrtoint ptr %name42 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %name, ptr %name42, align 4
  %rating = getelementptr %struct.ingenic_tcu, ptr %0, i32 0, i32 6, i32 %cpu, i32 3, i32 22
  %35 = ptrtoint ptr %rating to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 200, ptr %rating, align 8
  %set_state_shutdown = getelementptr %struct.ingenic_tcu, ptr %0, i32 0, i32 6, i32 %cpu, i32 3, i32 14
  %36 = ptrtoint ptr %set_state_shutdown to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @ingenic_tcu_cevt_set_state_shutdown, ptr %set_state_shutdown, align 8
  %set_next_event = getelementptr %struct.ingenic_tcu, ptr %0, i32 0, i32 6, i32 %cpu, i32 3, i32 1
  %37 = ptrtoint ptr %set_next_event to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @ingenic_tcu_cevt_set_next, ptr %set_next_event, align 4
  call void @clockevents_config_and_register(ptr noundef %cevt, i32 noundef %call10, i32 noundef 10, i32 noundef 65535) #10
  br label %cleanup

err_irq_dispose_mapping:                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  call void @irq_dispose_mapping(i32 noundef %call.i86) #10
  br label %err_clk_disable

err_clk_disable:                                  ; preds = %err_irq_dispose_mapping, %if.end18.err_clk_disable_crit_edge, %irq_find_host.exit.err_clk_disable_crit_edge, %if.end8.err_clk_disable_crit_edge
  %err.0 = phi i32 [ %call.i87, %err_irq_dispose_mapping ], [ -22, %if.end8.err_clk_disable_crit_edge ], [ -19, %irq_find_host.exit.err_clk_disable_crit_edge ], [ -22, %if.end18.err_clk_disable_crit_edge ]
  %38 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %clk, align 128
  call void @clk_disable(ptr noundef %39) #10
  br label %err_clk_put.sink.split

err_clk_put.sink.split:                           ; preds = %err_clk_disable, %if.end.i.err_clk_put.sink.split_crit_edge
  %call.i.sink = phi ptr [ %39, %err_clk_disable ], [ %call.i, %if.end.i.err_clk_put.sink.split_crit_edge ]
  %err.1.ph = phi i32 [ %err.0, %err_clk_disable ], [ %call1.i, %if.end.i.err_clk_put.sink.split_crit_edge ]
  call void @clk_unprepare(ptr noundef %call.i.sink) #10
  br label %err_clk_put

err_clk_put:                                      ; preds = %err_clk_put.sink.split, %if.end.err_clk_put_crit_edge
  %err.1 = phi i32 [ %call.i83, %if.end.err_clk_put_crit_edge ], [ %err.1.ph, %err_clk_put.sink.split ]
  %40 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %clk, align 128
  call void @clk_put(ptr noundef %41) #10
  br label %cleanup

cleanup:                                          ; preds = %err_clk_put, %if.end31, %if.then
  %retval.0 = phi i32 [ %11, %if.then ], [ %err.1, %err_clk_put ], [ 0, %if.end31 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @ingenic_tcu_timer_read() #4 align 64 {
entry:
  %count = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  %0 = load ptr, ptr @ingenic_tcu, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count) #10
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %count, align 4, !annotation !61
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %0, align 128
  %cs_channel = getelementptr inbounds %struct.ingenic_tcu, ptr %0, i32 0, i32 3
  %4 = ptrtoint ptr %cs_channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cs_channel, align 4
  %mul = shl i32 %5, 4
  %add = add i32 %mul, 72
  %call = call i32 @regmap_read(ptr noundef %3, i32 noundef %add, ptr noundef nonnull %count) #10
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count, align 4
  %conv = zext i32 %7 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count) #10
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clocksource_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @ingenic_tcu_timer_cs_read(ptr nocapture noundef readnone %cs) #4 align 64 {
entry:
  %count.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  %0 = load ptr, ptr @ingenic_tcu, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count.i) #10
  %1 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %count.i, align 4, !annotation !61
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %0, align 128
  %cs_channel.i = getelementptr inbounds %struct.ingenic_tcu, ptr %0, i32 0, i32 3
  %4 = ptrtoint ptr %cs_channel.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cs_channel.i, align 4
  %mul.i = shl i32 %5, 4
  %add.i = add i32 %mul.i, 72
  %call.i = call i32 @regmap_read(ptr noundef %3, i32 noundef %add.i, ptr noundef nonnull %count.i) #10
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 4
  %conv.i = zext i32 %7 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count.i) #10
  ret i64 %conv.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_from_provider(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clocksource_register_scale(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_tcu_cevt_cb(i32 noundef %irq, ptr noundef %dev_id) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_id, align 128
  %.neg.i = mul i32 %1, -512
  %.neg2.i = add i32 %.neg.i, -128
  %add.ptr.i = getelementptr i8, ptr %dev_id, i32 %.neg2.i
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 128
  %channel = getelementptr inbounds %struct.ingenic_tcu_timer, ptr %dev_id, i32 0, i32 1
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel, align 4
  %shl = shl nuw i32 1, %5
  %call1 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 24, i32 noundef %shl) #10
  %cevt = getelementptr inbounds %struct.ingenic_tcu_timer, ptr %dev_id, i32 0, i32 3
  %6 = ptrtoint ptr %cevt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cevt, align 128
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dev_id, align 128
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %add = add i32 %11, ptrtoint (ptr @ingenic_cevt_csd to i32)
  %12 = inttoptr i32 %add to ptr
  %info = getelementptr inbounds %struct.__call_single_data, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %cevt, ptr %info, align 4
  %func = getelementptr inbounds %struct.__call_single_data, ptr %12, i32 0, i32 1
  %14 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @ingenic_per_cpu_event_handler, ptr %func, align 8
  %15 = load i32, ptr %dev_id, align 128
  %call5 = tail call i32 @smp_call_function_single_async(i32 noundef %15, ptr noundef %12) #10
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_tcu_cevt_set_state_shutdown(ptr nocapture noundef readonly %evt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %evt, i32 -128
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 128
  %.neg.i = mul i32 %1, -512
  %.neg2.i = add i32 %.neg.i, -128
  %add.ptr.i4 = getelementptr i8, ptr %add.ptr.i, i32 %.neg2.i
  %2 = ptrtoint ptr %add.ptr.i4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i4, align 128
  %channel = getelementptr i8, ptr %evt, i32 -124
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel, align 4
  %shl = shl nuw i32 1, %5
  %call2 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 24, i32 noundef %shl) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_tcu_cevt_set_next(i32 noundef %next, ptr nocapture noundef readonly %evt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %next)
  %cmp = icmp ugt i32 %next, 65535
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %evt, i32 -128
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 128
  %.neg.i = mul i32 %1, -512
  %.neg2.i = add i32 %.neg.i, -128
  %add.ptr.i18 = getelementptr i8, ptr %add.ptr.i, i32 %.neg2.i
  %2 = ptrtoint ptr %add.ptr.i18 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i18, align 128
  %channel = getelementptr i8, ptr %evt, i32 -124
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel, align 4
  %mul = shl i32 %5, 4
  %add = add i32 %mul, 64
  %call2 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef %add, i32 noundef %next) #10
  %6 = ptrtoint ptr %add.ptr.i18 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i18, align 128
  %8 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel, align 4
  %mul5 = shl i32 %9, 4
  %add6 = add i32 %mul5, 72
  %call7 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef %add6, i32 noundef 0) #10
  %10 = ptrtoint ptr %add.ptr.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i18, align 128
  %12 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channel, align 4
  %shl = shl nuw i32 1, %13
  %call10 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 20, i32 noundef %shl) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ingenic_per_cpu_event_handler(ptr noundef %info) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 128
  tail call void %1(ptr noundef %info) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smp_call_function_single_async(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ingenic_tcu_probe(ptr nocapture noundef writeonly %pdev) #9 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ingenic_tcu, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %0, ptr %driver_data.i.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_tcu_suspend(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %cs_clk = getelementptr inbounds %struct.ingenic_tcu, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cs_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cs_clk, align 8
  tail call void @clk_disable(ptr noundef %3) #10
  %call.i.i.i5 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %4 = load volatile i32, ptr @__num_online_cpus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp6.not = icmp eq i32 %4, 0
  br i1 %cmp6.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %cpu.07 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %clk = getelementptr %struct.ingenic_tcu, ptr %1, i32 0, i32 6, i32 %cpu.07, i32 4
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk, align 128
  tail call void @clk_disable(ptr noundef %6) #10
  %inc = add nuw i32 %cpu.07, 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %7 = load volatile i32, ptr @__num_online_cpus, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_tcu_resume(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call.i.i.i28 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %2 = load volatile i32, ptr @__num_online_cpus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp29.not = icmp eq i32 %2, 0
  br i1 %cmp29.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %cpu.030 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %clk = getelementptr %struct.ingenic_tcu, ptr %1, i32 0, i32 6, i32 %cpu.030, i32 4
  %3 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clk, align 128
  %call2 = tail call i32 @clk_enable(ptr noundef %4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %for.inc, label %for.body.err_timer_clk_disable_crit_edge

for.body.err_timer_clk_disable_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_timer_clk_disable

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %cpu.030, 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %5 = load volatile i32, ptr @__num_online_cpus, align 4
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %cpu.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %cs_clk = getelementptr inbounds %struct.ingenic_tcu, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %cs_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cs_clk, align 8
  %call3 = tail call i32 @clk_enable(ptr noundef %7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %for.end.cleanup_crit_edge, label %for.end.err_timer_clk_disable_crit_edge

for.end.err_timer_clk_disable_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_timer_clk_disable

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_timer_clk_disable:                            ; preds = %for.end.err_timer_clk_disable_crit_edge, %for.body.err_timer_clk_disable_crit_edge
  %cpu.027 = phi i32 [ %cpu.0.lcssa, %for.end.err_timer_clk_disable_crit_edge ], [ %cpu.030, %for.body.err_timer_clk_disable_crit_edge ]
  %ret.0 = phi i32 [ %call3, %for.end.err_timer_clk_disable_crit_edge ], [ %call2, %for.body.err_timer_clk_disable_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cpu.027)
  %cmp8.not31 = icmp eq i32 %cpu.027, 0
  br i1 %cmp8.not31, label %err_timer_clk_disable.cleanup_crit_edge, label %err_timer_clk_disable.for.body9_crit_edge

err_timer_clk_disable.for.body9_crit_edge:        ; preds = %err_timer_clk_disable
  br label %for.body9

err_timer_clk_disable.cleanup_crit_edge:          ; preds = %err_timer_clk_disable
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %err_timer_clk_disable.for.body9_crit_edge
  %cpu.132 = phi i32 [ %sub, %for.body9.for.body9_crit_edge ], [ %cpu.027, %err_timer_clk_disable.for.body9_crit_edge ]
  %sub = add i32 %cpu.132, -1
  %clk12 = getelementptr %struct.ingenic_tcu, ptr %1, i32 0, i32 6, i32 %sub, i32 4
  %8 = ptrtoint ptr %clk12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk12, align 128
  tail call void @clk_disable(ptr noundef %9) #10
  %cmp8.not = icmp eq i32 %sub, 0
  br i1 %cmp8.not, label %for.body9.cleanup_crit_edge, label %for.body9.for.body9_crit_edge

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body9

for.body9.cleanup_crit_edge:                      ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.body9.cleanup_crit_edge, %err_timer_clk_disable.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end.cleanup_crit_edge ], [ %ret.0, %err_timer_clk_disable.cleanup_crit_edge ], [ %ret.0, %for.body9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { cold nounwind }
attributes #15 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !20, !21, !22, !23, !25, !26, !27, !29, !31, !32, !33, !35, !37, !39, !41, !43, !45, !47, !49}
!llvm.named.register.sp = !{!51}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @__of_table_jz4740_tcu_intc, !1, !"__of_table_jz4740_tcu_intc", i1 false, i1 false}
!1 = !{!"../drivers/clocksource/ingenic-timer.c", i32 360, i32 1}
!2 = !{ptr @__of_table_jz4725b_tcu_intc, !3, !"__of_table_jz4725b_tcu_intc", i1 false, i1 false}
!3 = !{!"../drivers/clocksource/ingenic-timer.c", i32 361, i32 1}
!4 = !{ptr @__of_table_jz4760_tcu_intc, !5, !"__of_table_jz4760_tcu_intc", i1 false, i1 false}
!5 = !{!"../drivers/clocksource/ingenic-timer.c", i32 362, i32 1}
!6 = !{ptr @__of_table_jz4770_tcu_intc, !7, !"__of_table_jz4770_tcu_intc", i1 false, i1 false}
!7 = !{!"../drivers/clocksource/ingenic-timer.c", i32 363, i32 1}
!8 = !{ptr @__of_table_x1000_tcu_intc, !9, !"__of_table_x1000_tcu_intc", i1 false, i1 false}
!9 = !{!"../drivers/clocksource/ingenic-timer.c", i32 364, i32 1}
!10 = !{ptr @__initcall__kmod_ingenic_timer__187_425_ingenic_tcu_driver_init6, !11, !"__initcall__kmod_ingenic_timer__187_425_ingenic_tcu_driver_init6", i1 false, i1 false}
!11 = !{!"../drivers/clocksource/ingenic-timer.c", i32 425, i32 1}
!12 = !{ptr @__pcpu_unique_ingenic_cevt_csd, !13, !"__pcpu_unique_ingenic_cevt_csd", i1 false, i1 false}
!13 = !{!"../drivers/clocksource/ingenic-timer.c", i32 26, i32 8}
!14 = !{ptr @ingenic_cevt_csd, !13, !"ingenic_cevt_csd", i1 false, i1 false}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/clocksource/ingenic-timer.c", i32 301, i32 27}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/clocksource/ingenic-timer.c", i32 307, i32 3}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @ingenic_tcu_init._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @ingenic_tcu_init._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/clocksource/ingenic-timer.c", i32 333, i32 3}
!25 = !{ptr @ingenic_tcu_init._entry.4, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @ingenic_tcu_init._entry_ptr.6, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clocksource/ingenic-timer.c", i32 338, i32 47}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/clocksource/ingenic-timer.c", i32 341, i32 3}
!31 = !{ptr @ingenic_tcu_init._entry.8, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @ingenic_tcu_init._entry_ptr.10, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @ingenic_tcu_of_match, !34, !"ingenic_tcu_of_match", i1 false, i1 false}
!34 = !{!"../drivers/clocksource/ingenic-timer.c", i32 264, i32 34}
!35 = !{ptr @jz4740_soc_info, !36, !"jz4740_soc_info", i1 false, i1 false}
!36 = !{!"../drivers/clocksource/ingenic-timer.c", i32 256, i32 38}
!37 = !{ptr @jz4725b_soc_info, !38, !"jz4725b_soc_info", i1 false, i1 false}
!38 = !{!"../drivers/clocksource/ingenic-timer.c", i32 260, i32 38}
!39 = !{ptr @ingenic_tcu, !40, !"ingenic_tcu", i1 false, i1 false}
!40 = !{!"../drivers/clocksource/ingenic-timer.c", i32 50, i32 28}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/clocksource/ingenic-timer.c", i32 237, i32 13}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/clocksource/ingenic-timer.c", i32 176, i32 45}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/clocksource/ingenic-timer.c", i32 418, i32 11}
!47 = !{ptr @ingenic_tcu_driver, !48, !"ingenic_tcu_driver", i1 false, i1 false}
!48 = !{!"../drivers/clocksource/ingenic-timer.c", i32 416, i32 31}
!49 = !{ptr @ingenic_tcu_pm_ops, !50, !"ingenic_tcu_pm_ops", i1 false, i1 false}
!50 = !{!"../drivers/clocksource/ingenic-timer.c", i32 410, i32 47}
!51 = !{!"sp"}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{!"auto-init"}
