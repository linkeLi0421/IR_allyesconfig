; ModuleID = '/llk/IR_all_yes/drivers/hwtracing/coresight/coresight-cpu-debug.c_pt.bc'
source_filename = "../drivers/hwtracing/coresight/coresight-cpu-debug.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.96 }
%union.anon.96 = type { ptr }
%struct.amba_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amba_id = type { i32, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.amba_cs_uci_id = type { i32, i32, i32, ptr }
%struct.amba_device = type { %struct.device, %struct.resource, ptr, %struct.device_dma_parameters, i32, i32, %struct.amba_cs_uci_id, [9 x i32], ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.debug_drvdata = type { ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32 }

@__param_str_enable = internal constant [27 x i8] c"coresight_cpu_debug.enable\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@debug_enable = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_ops_bool, i16 384, i8 -1, i8 0, %union.anon.96 { ptr @debug_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype297 = internal constant [41 x i8] c"coresight_cpu_debug.parmtype=enable:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable298 = internal constant [84 x i8] c"coresight_cpu_debug.parm=enable:Control to enable coresight CPU debug functionality\00", section ".modinfo", align 1
@__initcall__kmod_coresight_cpu_debug__299_679_debug_driver_init6 = internal global ptr @debug_driver_init, section ".initcall6.init", align 4
@debug_driver = internal global { %struct.amba_driver, [36 x i8] } { %struct.amba_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @debug_probe, ptr @debug_remove, ptr null, ptr @debug_ids }, [36 x i8] zeroinitializer }, align 32
@__exitcall_debug_driver_exit = internal global ptr @debug_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author300 = internal constant [56 x i8] c"coresight_cpu_debug.author=Leo Yan <leo.yan@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description301 = internal constant [63 x i8] c"coresight_cpu_debug.description=ARM Coresight CPU Debug Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file302 = internal constant [73 x i8] c"coresight_cpu_debug.file=drivers/hwtracing/coresight/coresight-cpu-debug\00", section ".modinfo", align 1
@__UNIQUE_ID_license303 = internal constant [32 x i8] c"coresight_cpu_debug.license=GPL\00", section ".modinfo", align 1
@__pcpu_unique_debug_drvdata = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@debug_drvdata = weak dso_local global ptr null, section ".data..percpu", align 4
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"coresight-cpu-debug\00", [44 x i8] zeroinitializer }, align 32
@debug_ids = internal constant { [7 x %struct.amba_id], [44 x i8] } { [7 x %struct.amba_id] [%struct.amba_id { i32 769283, i32 1048575, ptr null }, %struct.amba_id { i32 769287, i32 1048575, ptr null }, %struct.amba_id { i32 769288, i32 1048575, ptr null }, %struct.amba_id { i32 769289, i32 1048575, ptr null }, %struct.amba_id { i32 983557, i32 1048575, ptr @uci_id_debug }, %struct.amba_id { i32 983569, i32 1048575, ptr @uci_id_debug }, %struct.amba_id zeroinitializer], [44 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@debug_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 577, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"CPU%d drvdata has already been initialized\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"debug_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/hwtracing/coresight/coresight-cpu-debug.c\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@debug_probe._entry_ptr = internal global ptr @debug_probe._entry, section ".printk_index", align 4
@debug_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 598, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CPU%d debug arch init failed\0A\00", [34 x i8] zeroinitializer }, align 32
@debug_probe._entry_ptr.8 = internal global ptr @debug_probe._entry.6, section ".printk_index", align 4
@debug_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 604, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"CPU%d sample-based profiling isn't implemented\0A\00", [48 x i8] zeroinitializer }, align 32
@debug_probe._entry_ptr.11 = internal global ptr @debug_probe._entry.9, section ".printk_index", align 4
@debug_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@debug_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.61, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @debug_lock, i64 52), ptr getelementptr (i8, ptr @debug_lock, i64 52) }, ptr @debug_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.62, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@debug_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 621, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Coresight debug-CPU%d initialized\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@debug_probe._entry_ptr.15 = internal global ptr @debug_probe._entry.12, section ".printk_index", align 4
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"coresight_cpu_debug\00", [44 x i8] zeroinitializer }, align 32
@debug_debugfs_dir = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@debug_func_knob_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @debug_func_knob_read, ptr @debug_func_knob_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@panic_notifier_list = external dso_local global %struct.atomic_notifier_head, align 4
@debug_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @debug_notifier_call, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@debug_func_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: unable to register notifier: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"debug_func_init\00", [16 x i8] zeroinitializer }, align 32
@debug_func_init._entry_ptr = internal global ptr @debug_func_init._entry, section ".printk_index", align 4
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@debug_func_knob_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 495, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: unable to %s debug function: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"debug_func_knob_write\00", [42 x i8] zeroinitializer }, align 32
@debug_func_knob_write._entry_ptr = internal global ptr @debug_func_knob_write._entry, section ".printk_index", align 4
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@debug_notifier_call._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\010ARM external debug module:\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"debug_notifier_call\00", [44 x i8] zeroinitializer }, align 32
@debug_notifier_call._entry_ptr = internal global ptr @debug_notifier_call._entry, section ".printk_index", align 4
@debug_notifier_call._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.3, i32 396, ptr @.str.29, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CPU[%d]:\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\010\00", [29 x i8] zeroinitializer }, align 32
@debug_notifier_call._entry_ptr.30 = internal global ptr @debug_notifier_call._entry.27, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@debug_force_cpu_powered_up._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 172, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: power up request for CPU%d failed\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"debug_force_cpu_powered_up\00", [37 x i8] zeroinitializer }, align 32
@debug_force_cpu_powered_up._entry_ptr = internal global ptr @debug_force_cpu_powered_up._entry, section ".printk_index", align 4
@debug_dump_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 294, ptr @.str.29, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c" EDPRSR:  %08x (Power:%s DLK:%s)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"debug_dump_regs\00", [16 x i8] zeroinitializer }, align 32
@debug_dump_regs._entry_ptr = internal global ptr @debug_dump_regs._entry, section ".printk_index", align 4
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"On\00", [29 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Off\00", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Lock\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Unlock\00", [25 x i8] zeroinitializer }, align 32
@debug_dump_regs._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.34, ptr @.str.3, i32 297, ptr @.str.29, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"No permission to access debug registers!\0A\00", [54 x i8] zeroinitializer }, align 32
@debug_dump_regs._entry_ptr.41 = internal global ptr @debug_dump_regs._entry.39, section ".printk_index", align 4
@debug_dump_regs._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.34, ptr @.str.3, i32 302, ptr @.str.29, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"CPU is in Debug state or profiling is prohibited!\0A\00", [45 x i8] zeroinitializer }, align 32
@debug_dump_regs._entry_ptr.44 = internal global ptr @debug_dump_regs._entry.42, section ".printk_index", align 4
@debug_dump_regs._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.34, ptr @.str.3, i32 307, ptr @.str.29, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c" EDPCSR:  %pS\0A\00", [17 x i8] zeroinitializer }, align 32
@debug_dump_regs._entry_ptr.47 = internal global ptr @debug_dump_regs._entry.45, section ".printk_index", align 4
@debug_dump_regs._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.34, ptr @.str.3, i32 310, ptr @.str.29, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c" EDCIDSR: %08x\0A\00", [16 x i8] zeroinitializer }, align 32
@debug_dump_regs._entry_ptr.50 = internal global ptr @debug_dump_regs._entry.48, section ".printk_index", align 4
@debug_dump_regs._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.34, ptr @.str.3, i32 321, ptr @.str.29, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c" EDVIDSR: %08x (State:%s Mode:%s Width:%dbits VMID:%x)\0A\00", [40 x i8] zeroinitializer }, align 32
@debug_dump_regs._entry_ptr.53 = internal global ptr @debug_dump_regs._entry.51, section ".printk_index", align 4
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Non-secure\00", [21 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Secure\00", [25 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"EL3\00", [28 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"EL2\00", [28 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"EL1/0\00", [26 x i8] zeroinitializer }, align 32
@debug_adjust_pc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.3, i32 278, ptr @.str.29, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Instruction offset is implementation defined\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"debug_adjust_pc\00", [16 x i8] zeroinitializer }, align 32
@debug_adjust_pc._entry_ptr = internal global ptr @debug_adjust_pc._entry, section ".printk_index", align 4
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"debug_lock.wait_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"debug_lock\00", [21 x i8] zeroinitializer }, align 32
@uci_id_debug = internal constant { [1 x %struct.amba_cs_uci_id], [16 x i8] } { [1 x %struct.amba_cs_uci_id] [%struct.amba_cs_uci_id { i32 1198549525, i32 -983041, i32 21, ptr null }], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.63 = private unnamed_addr constant [13 x i8] c"debug_enable\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 108, i32 13 }
@___asan_gen_.66 = private unnamed_addr constant [13 x i8] c"debug_driver\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 669, i32 27 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 671, i32 13 }
@___asan_gen_.72 = private unnamed_addr constant [10 x i8] c"debug_ids\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 657, i32 29 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 576, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 598, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 603, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant [12 x i8] c"debug_count\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 105, i32 12 }
@___asan_gen_.108 = private unnamed_addr constant [11 x i8] c"debug_lock\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 621, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 532, i32 41 }
@___asan_gen_.123 = private unnamed_addr constant [18 x i8] c"debug_debugfs_dir\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 106, i32 23 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 533, i32 22 }
@___asan_gen_.129 = private unnamed_addr constant [21 x i8] c"debug_func_knob_fops\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 521, i32 37 }
@___asan_gen_.132 = private unnamed_addr constant [15 x i8] c"debug_notifier\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 407, i32 30 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 540, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 514, i32 29 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 494, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 108, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 389, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 396, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 171, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 291, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 297, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 302, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 307, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 310, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 313, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 277, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 103, i32 8 }
@___asan_gen_.270 = private unnamed_addr constant [13 x i8] c"uci_id_debug\00", align 1
@___asan_gen_.271 = private constant [53 x i8] c"../drivers/hwtracing/coresight/coresight-cpu-debug.c\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 648, i32 36 }
@llvm.compiler.used = appending global [96 x ptr] [ptr @__UNIQUE_ID_author300, ptr @__UNIQUE_ID_description301, ptr @__UNIQUE_ID_enable298, ptr @__UNIQUE_ID_enabletype297, ptr @__UNIQUE_ID_file302, ptr @__UNIQUE_ID_license303, ptr @__exitcall_debug_driver_exit, ptr @__initcall__kmod_coresight_cpu_debug__299_679_debug_driver_init6, ptr @__param_enable, ptr @debug_adjust_pc._entry, ptr @debug_adjust_pc._entry_ptr, ptr @debug_driver_exit, ptr @debug_dump_regs._entry, ptr @debug_dump_regs._entry.39, ptr @debug_dump_regs._entry.42, ptr @debug_dump_regs._entry.45, ptr @debug_dump_regs._entry.48, ptr @debug_dump_regs._entry.51, ptr @debug_dump_regs._entry_ptr, ptr @debug_dump_regs._entry_ptr.41, ptr @debug_dump_regs._entry_ptr.44, ptr @debug_dump_regs._entry_ptr.47, ptr @debug_dump_regs._entry_ptr.50, ptr @debug_dump_regs._entry_ptr.53, ptr @debug_force_cpu_powered_up._entry, ptr @debug_force_cpu_powered_up._entry_ptr, ptr @debug_func_init._entry, ptr @debug_func_init._entry_ptr, ptr @debug_func_knob_write._entry, ptr @debug_func_knob_write._entry_ptr, ptr @debug_notifier_call._entry, ptr @debug_notifier_call._entry.27, ptr @debug_notifier_call._entry_ptr, ptr @debug_notifier_call._entry_ptr.30, ptr @debug_probe._entry, ptr @debug_probe._entry.12, ptr @debug_probe._entry.6, ptr @debug_probe._entry.9, ptr @debug_probe._entry_ptr, ptr @debug_probe._entry_ptr.11, ptr @debug_probe._entry_ptr.15, ptr @debug_probe._entry_ptr.8, ptr @debug_enable, ptr @debug_driver, ptr @.str, ptr @debug_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @debug_count, ptr @debug_lock, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @debug_debugfs_dir, ptr @.str.17, ptr @debug_func_knob_fops, ptr @debug_notifier, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @uci_id_debug], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_enable to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_ids to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_debugfs_dir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_func_knob_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_func_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_func_knob_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_notifier_call._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_notifier_call._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_force_cpu_powered_up._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_dump_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_dump_regs._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_dump_regs._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_dump_regs._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_dump_regs._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_dump_regs._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_adjust_pc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uci_id_debug to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @debug_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amba_driver_register(ptr noundef nonnull @debug_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @debug_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @amba_driver_unregister(ptr noundef nonnull @debug_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amba_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amba_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @debug_probe(ptr noundef %adev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %res2 = getelementptr inbounds %struct.amba_device, ptr %adev, i32 0, i32 1
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %adev, i32 noundef 36, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @coresight_get_cpu(ptr noundef %adev) #9
  %cpu = getelementptr inbounds %struct.debug_drvdata, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %cpu to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call3, ptr %cpu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.end
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call3
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %add = add i32 %2, ptrtoint (ptr @debug_drvdata to i32)
  %3 = inttoptr i32 %add to ptr
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %if.end16, label %do.end14

do.end14:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %adev, ptr noundef nonnull @.str.1, i32 noundef %call3) #12
  br label %cleanup

if.end16:                                         ; preds = %do.body
  %dev18 = getelementptr inbounds %struct.debug_drvdata, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %dev18 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %adev, ptr %dev18, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 8
  %7 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call20 = tail call ptr @devm_ioremap_resource(ptr noundef %adev, ptr noundef %res2) #9
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %call20 to i32
  br label %cleanup

if.end24:                                         ; preds = %if.end16
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call20, ptr %call.i, align 4
  tail call void @cpus_read_lock() #9
  %10 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu, align 4
  %arrayidx34 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx34, align 4
  %add35 = add i32 %13, ptrtoint (ptr @debug_drvdata to i32)
  %14 = inttoptr i32 %add35 to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %14, align 4
  %16 = load i32, ptr %cpu, align 4
  %call37 = tail call i32 @smp_call_function_single(i32 noundef %16, ptr noundef nonnull @debug_init_arch_data, ptr noundef nonnull %call.i, i32 noundef 1) #9
  tail call void @cpus_read_unlock() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end44, label %do.end42

do.end42:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %adev, ptr noundef nonnull @.str.7, i32 noundef %18) #12
  br label %do.body67

if.end44:                                         ; preds = %if.end24
  %edpcsr_present = getelementptr inbounds %struct.debug_drvdata, ptr %call.i, i32 0, i32 3
  %19 = ptrtoint ptr %edpcsr_present to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %edpcsr_present, align 4, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool45.not = icmp eq i8 %20, 0
  br i1 %tobool45.not, label %do.end49, label %if.end51

do.end49:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cpu, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %adev, ptr noundef nonnull @.str.10, i32 noundef %22) #12
  br label %do.body67

if.end51:                                         ; preds = %if.end44
  %23 = load i32, ptr @debug_count, align 4
  %inc = add i32 %23, 1
  store i32 %inc, ptr @debug_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool52.not = icmp eq i32 %23, 0
  br i1 %tobool52.not, label %if.then53, label %if.end51.if.end58_crit_edge

if.end51.if.end58_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

if.then53:                                        ; preds = %if.end51
  %call.i112 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.16, ptr noundef null) #9
  store ptr %call.i112, ptr @debug_debugfs_dir, align 4
  %call1.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.17, i16 noundef zeroext 420, ptr noundef %call.i112, ptr noundef null, ptr noundef nonnull @debug_func_knob_fops) #9
  %call2.i = tail call i32 @atomic_notifier_chain_register(ptr noundef nonnull @panic_notifier_list, ptr noundef nonnull @debug_notifier) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.then53.if.end58_crit_edge, label %err_func_init

if.then53.if.end58_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

if.end58:                                         ; preds = %if.then53.if.end58_crit_edge, %if.end51.if.end58_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @debug_lock, i32 noundef 0) #9
  %24 = load i8, ptr @debug_enable, align 1, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool59.not = icmp eq i8 %24, 0
  br i1 %tobool59.not, label %if.then60, label %if.end58.if.end62_crit_edge

if.end58.if.end62_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.then60:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  %call.i113 = tail call i32 @__pm_runtime_idle(ptr noundef %adev, i32 noundef 5) #9
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %if.end58.if.end62_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @debug_lock) #9
  %25 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %adev, ptr noundef nonnull @.str.13, i32 noundef %26) #12
  br label %cleanup

err_func_init:                                    ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef %call2.i) #12
  %27 = load ptr, ptr @debug_debugfs_dir, align 4
  tail call void @debugfs_remove(ptr noundef %27) #9
  %28 = load i32, ptr @debug_count, align 4
  %dec = add i32 %28, -1
  store i32 %dec, ptr @debug_count, align 4
  br label %do.body67

do.body67:                                        ; preds = %err_func_init, %do.end49, %do.end42
  %ret.0 = phi i32 [ %call37, %do.end42 ], [ %call2.i, %err_func_init ], [ -6, %do.end49 ]
  %29 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cpu, align 4
  %arrayidx75 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx75, align 4
  %add76 = add i32 %32, ptrtoint (ptr @debug_drvdata to i32)
  %33 = inttoptr i32 %add76 to ptr
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %33, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body67, %if.end62, %if.then22, %do.end14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end14 ], [ %8, %if.then22 ], [ %ret.0, %do.body67 ], [ 0, %if.end62 ], [ -12, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @debug_remove(ptr noundef %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %cpu = getelementptr inbounds %struct.debug_drvdata, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @debug_drvdata to i32)
  %6 = inttoptr i32 %add to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %6, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @debug_lock, i32 noundef 0) #9
  %8 = load i8, ptr @debug_enable, align 1, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %adev, i32 noundef 5) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @debug_lock) #9
  %9 = load i32, ptr @debug_count, align 4
  %dec = add i32 %9, -1
  store i32 %dec, ptr @debug_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool5.not = icmp eq i32 %dec, 0
  br i1 %tobool5.not, label %if.then6, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i9 = tail call i32 @atomic_notifier_chain_unregister(ptr noundef nonnull @panic_notifier_list, ptr noundef nonnull @debug_notifier) #9
  %10 = load ptr, ptr @debug_debugfs_dir, align 4
  tail call void @debugfs_remove(ptr noundef %10) #9
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coresight_get_cpu(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smp_call_function_single(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @debug_init_arch_data(ptr nocapture noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1439608005) #9, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  tail call void @arm_heavy_mb() #9
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4040
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !148
  %5 = lshr i32 %4, 24
  %6 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info, align 4
  %add.ptr4 = getelementptr i8, ptr %7, i32 4036
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #9, !srcloc !148
  %9 = lshr i32 %8, 24
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !149
  tail call void @arm_heavy_mb() #9
  %add.ptr.i29 = getelementptr i8, ptr %11, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 0) #9, !srcloc !146
  %and = and i32 %5, 15
  %and8 = and i32 %9, 15
  %edpcsr_present = getelementptr inbounds %struct.debug_drvdata, ptr %info, i32 0, i32 3
  %edcidsr_present = getelementptr inbounds %struct.debug_drvdata, ptr %info, i32 0, i32 4
  %pc_has_offset = getelementptr inbounds %struct.debug_drvdata, ptr %info, i32 0, i32 6
  %12 = ptrtoint ptr %edpcsr_present to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %edpcsr_present, align 4
  %13 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %entry.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 2, label %entry.sw.bb10_crit_edge
    i32 1, label %entry.sw.bb12_crit_edge
  ]

entry.sw.bb12_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb12

entry.sw.bb10_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb10

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %edvidsr_present = getelementptr inbounds %struct.debug_drvdata, ptr %info, i32 0, i32 5
  %14 = ptrtoint ptr %edvidsr_present to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %edvidsr_present, align 2
  br label %sw.bb10

sw.bb10:                                          ; preds = %sw.bb, %entry.sw.bb10_crit_edge
  %15 = ptrtoint ptr %edcidsr_present to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %edcidsr_present, align 1
  br label %sw.bb12

sw.bb12:                                          ; preds = %sw.bb10, %entry.sw.bb12_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and8)
  %cmp = icmp ne i32 %and8, 2
  %frombool = zext i1 %cmp to i8
  %16 = ptrtoint ptr %edpcsr_present to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %frombool, ptr %edpcsr_present, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %cmp14 = icmp eq i32 %and8, 0
  %frombool16 = zext i1 %cmp14 to i8
  %17 = ptrtoint ptr %pc_has_offset to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %frombool16, ptr %pc_has_offset, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb12, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @debug_func_knob_read(ptr nocapture noundef readnone %f, ptr noundef %ubuf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #9
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %buf, align 1, !annotation !150
  %1 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !150
  %3 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !150
  tail call void @mutex_lock_nested(ptr noundef nonnull @debug_lock, i32 noundef 0) #9
  %5 = load i8, ptr @debug_enable, align 1, !range !145
  %6 = zext i8 %5 to i32
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 3, ptr noundef nonnull @.str.20, i32 noundef %6)
  tail call void @mutex_unlock(ptr noundef nonnull @debug_lock) #9
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %ubuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef 3) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #9
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @debug_func_knob_write(ptr nocapture noundef readnone %f, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %mask.i = alloca %struct.cpumask, align 4
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !150
  %call = call i32 @kstrtou8_from_user(ptr noundef %buf, i32 noundef %count, i32 noundef 2, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @mutex_lock_nested(ptr noundef nonnull @debug_lock, i32 noundef 0) #9
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %val, align 1
  %3 = load i8, ptr @debug_enable, align 1, !range !145
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %3)
  %cmp = icmp eq i8 %2, %3
  br i1 %cmp, label %if.end.err_crit_edge, label %if.end5

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool6.not = icmp eq i8 %2, 0
  br i1 %tobool6.not, label %if.end5.for.cond.outer.i_crit_edge, label %if.then7

if.end5.for.cond.outer.i_crit_edge:               ; preds = %if.end5
  br label %for.cond.outer.i

if.then7:                                         ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i) #9
  %4 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %mask.i, align 4, !annotation !150
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %5 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i.i = add i32 %5, 31
  %6 = lshr i32 %sub.i.i.i, 3
  %mul.i.i.i = and i32 %6, 536870908
  %7 = call ptr @memset(ptr %mask.i, i32 0, i32 %mul.i.i.i)
  %call34.i = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %call34.i, i32 %5)
  %cmp35.i = icmp ult i32 %call34.i, %5
  br i1 %cmp35.i, label %if.then7.do.body.i_crit_edge, label %if.then7.debug_enable_func.exit_crit_edge

if.then7.debug_enable_func.exit_crit_edge:        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %debug_enable_func.exit

if.then7.do.body.i_crit_edge:                     ; preds = %if.then7
  br label %do.body.i

do.body.i:                                        ; preds = %for.cond.backedge.i.do.body.i_crit_edge, %if.then7.do.body.i_crit_edge
  %call36.i = phi i32 [ %call.i, %for.cond.backedge.i.do.body.i_crit_edge ], [ %call34.i, %if.then7.do.body.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call36.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %9, ptrtoint (ptr @debug_drvdata to i32)
  %10 = inttoptr i32 %add.i to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %do.body.i.for.cond.backedge.i_crit_edge, label %if.end.i

do.body.i.for.cond.backedge.i_crit_edge:          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.backedge.i

if.end.i:                                         ; preds = %do.body.i
  %dev.i = getelementptr inbounds %struct.debug_drvdata, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  %call.i.i = call i32 @__pm_runtime_resume(ptr noundef %14, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i, label %for.cond6.preheader.i, label %if.else.i

for.cond6.preheader.i:                            ; preds = %if.end.i
  %call737.i = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull %mask.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %15 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call737.i, i32 %15)
  %cmp838.i = icmp ult i32 %call737.i, %15
  br i1 %cmp838.i, label %for.cond6.preheader.i.do.body10.i_crit_edge, label %for.cond6.preheader.i.debug_enable_func.exit_crit_edge

for.cond6.preheader.i.debug_enable_func.exit_crit_edge: ; preds = %for.cond6.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %debug_enable_func.exit

for.cond6.preheader.i.do.body10.i_crit_edge:      ; preds = %for.cond6.preheader.i
  br label %do.body10.i

if.else.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %call36.i)
  %cmp.not.i.i.i.i = icmp ugt i32 %16, %call36.i
  br i1 %cmp.not.i.i.i.i, label %if.else.i.cpumask_set_cpu.exit.i_crit_edge, label %land.rhs.i.i.i.i

if.else.i.cpumask_set_cpu.exit.i_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_set_cpu.exit.i

land.rhs.i.i.i.i:                                 ; preds = %if.else.i
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpumask_set_cpu.exit.i_crit_edge, label %if.then.i.i.i.i, !prof !151

land.rhs.i.i.i.i.cpumask_set_cpu.exit.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_set_cpu.exit.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpumask_set_cpu.exit.i

cpumask_set_cpu.exit.i:                           ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpumask_set_cpu.exit.i_crit_edge, %if.else.i.cpumask_set_cpu.exit.i_crit_edge
  call void @_set_bit(i32 noundef %call36.i, ptr noundef nonnull %mask.i) #9
  br label %for.cond.backedge.i

for.cond.backedge.i:                              ; preds = %cpumask_set_cpu.exit.i, %do.body.i.for.cond.backedge.i_crit_edge
  %call.i = call i32 @cpumask_next(i32 noundef %call36.i, ptr noundef nonnull @__cpu_possible_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %17 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call.i, %17
  br i1 %cmp.i, label %for.cond.backedge.i.do.body.i_crit_edge, label %for.cond.backedge.i.debug_enable_func.exit_crit_edge

for.cond.backedge.i.debug_enable_func.exit_crit_edge: ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %debug_enable_func.exit

for.cond.backedge.i.do.body.i_crit_edge:          ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.body10.i:                                      ; preds = %pm_runtime_put_noidle.exit.i.do.body10.i_crit_edge, %for.cond6.preheader.i.do.body10.i_crit_edge
  %call739.i = phi i32 [ %call7.i, %pm_runtime_put_noidle.exit.i.do.body10.i_crit_edge ], [ %call737.i, %for.cond6.preheader.i.do.body10.i_crit_edge ]
  %arrayidx17.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call739.i
  %18 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx17.i, align 4
  %add18.i = add i32 %19, ptrtoint (ptr @debug_drvdata to i32)
  %20 = inttoptr i32 %add18.i to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %dev19.i = getelementptr inbounds %struct.debug_drvdata, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %dev19.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev19.i, align 4
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 12, i32 13
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !152
  call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #9
  %25 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #9, !srcloc !153
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %do.body10.i.pm_runtime_put_noidle.exit.i_crit_edge, label %do.end11.i.i.i.i.i

do.body10.i.pm_runtime_put_noidle.exit.i_crit_edge: ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pm_runtime_put_noidle.exit.i

do.end11.i.i.i.i.i:                               ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !154
  br label %pm_runtime_put_noidle.exit.i

pm_runtime_put_noidle.exit.i:                     ; preds = %do.end11.i.i.i.i.i, %do.body10.i.pm_runtime_put_noidle.exit.i_crit_edge
  %call7.i = call i32 @cpumask_next(i32 noundef %call739.i, ptr noundef nonnull %mask.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %26 = load i32, ptr @nr_cpu_ids, align 4
  %cmp8.i = icmp ult i32 %call7.i, %26
  br i1 %cmp8.i, label %pm_runtime_put_noidle.exit.i.do.body10.i_crit_edge, label %pm_runtime_put_noidle.exit.i.debug_enable_func.exit_crit_edge

pm_runtime_put_noidle.exit.i.debug_enable_func.exit_crit_edge: ; preds = %pm_runtime_put_noidle.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %debug_enable_func.exit

pm_runtime_put_noidle.exit.i.do.body10.i_crit_edge: ; preds = %pm_runtime_put_noidle.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body10.i

debug_enable_func.exit:                           ; preds = %pm_runtime_put_noidle.exit.i.debug_enable_func.exit_crit_edge, %for.cond.backedge.i.debug_enable_func.exit_crit_edge, %for.cond6.preheader.i.debug_enable_func.exit_crit_edge, %if.then7.debug_enable_func.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i, %for.cond6.preheader.i.debug_enable_func.exit_crit_edge ], [ 0, %if.then7.debug_enable_func.exit_crit_edge ], [ %call.i.i, %pm_runtime_put_noidle.exit.i.debug_enable_func.exit_crit_edge ], [ 0, %for.cond.backedge.i.debug_enable_func.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #9
  br label %if.end10

for.cond.outer.i:                                 ; preds = %if.end.i33, %if.end5.for.cond.outer.i_crit_edge
  %err.0.ph.i = phi i32 [ %spec.select.i, %if.end.i33 ], [ 0, %if.end5.for.cond.outer.i_crit_edge ]
  %cpu.0.ph.i = phi i32 [ %call.i24, %if.end.i33 ], [ -1, %if.end5.for.cond.outer.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %27 = load i32, ptr @nr_cpu_ids, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %do.body.i29.for.cond.i_crit_edge, %for.cond.outer.i
  %cpu.0.i = phi i32 [ %call.i24, %do.body.i29.for.cond.i_crit_edge ], [ %cpu.0.ph.i, %for.cond.outer.i ]
  %call.i24 = call i32 @cpumask_next(i32 noundef %cpu.0.i, ptr noundef nonnull @__cpu_possible_mask) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i24, i32 %27)
  %cmp.i25 = icmp ult i32 %call.i24, %27
  br i1 %cmp.i25, label %do.body.i29, label %for.cond.i.if.end10_crit_edge

for.cond.i.if.end10_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

do.body.i29:                                      ; preds = %for.cond.i
  %arrayidx.i26 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call.i24
  %28 = ptrtoint ptr %arrayidx.i26 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i26, align 4
  %add.i27 = add i32 %29, ptrtoint (ptr @debug_drvdata to i32)
  %30 = inttoptr i32 %add.i27 to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %tobool.not.i28 = icmp eq ptr %32, null
  br i1 %tobool.not.i28, label %do.body.i29.for.cond.i_crit_edge, label %if.end.i33

do.body.i29.for.cond.i_crit_edge:                 ; preds = %do.body.i29
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

if.end.i33:                                       ; preds = %do.body.i29
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i30 = getelementptr inbounds %struct.debug_drvdata, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %dev.i30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i30, align 4
  %call.i.i31 = call i32 @__pm_runtime_idle(ptr noundef %34, i32 noundef 5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i31)
  %cmp3.i32 = icmp slt i32 %call.i.i31, 0
  %spec.select.i = select i1 %cmp3.i32, i32 %call.i.i31, i32 %err.0.ph.i
  br label %for.cond.outer.i

if.end10:                                         ; preds = %for.cond.i.if.end10_crit_edge, %debug_enable_func.exit
  %ret.0 = phi i32 [ %retval.0.i, %debug_enable_func.exit ], [ %err.0.ph.i, %for.cond.i.if.end10_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool11.not = icmp eq i32 %ret.0, 0
  %35 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %val, align 1
  br i1 %tobool11.not, label %if.end16, label %do.end

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool14.not = icmp eq i8 %36, 0
  %cond = select i1 %tobool14.not, ptr @.str.23, ptr @.str.17
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull %cond, i32 noundef %ret.0) #12
  br label %err

if.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool17 = icmp ne i8 %36, 0
  %frombool = zext i1 %tobool17 to i8
  store i8 %frombool, ptr @debug_enable, align 1
  br label %err

err:                                              ; preds = %if.end16, %do.end, %if.end.err_crit_edge
  %ret.1 = phi i32 [ %ret.0, %do.end ], [ %count, %if.end.err_crit_edge ], [ %count, %if.end16 ]
  call void @mutex_unlock(ptr noundef nonnull @debug_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %err, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @debug_notifier_call(ptr nocapture noundef readnone %self, i32 noundef %v, ptr nocapture noundef readnone %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @debug_lock, i32 noundef 0) #9
  %0 = load i8, ptr @debug_enable, align 1, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.skip_dump_crit_edge, label %do.end

entry.skip_dump_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %skip_dump

do.end:                                           ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #12
  %call131 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call131, i32 %1)
  %cmp32 = icmp ult i32 %call131, %1
  br i1 %cmp32, label %do.end.do.body2_crit_edge, label %do.end.skip_dump_crit_edge

do.end.skip_dump_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %skip_dump

do.end.do.body2_crit_edge:                        ; preds = %do.end
  br label %do.body2

do.body2:                                         ; preds = %for.cond.backedge.do.body2_crit_edge, %do.end.do.body2_crit_edge
  %call133 = phi i32 [ %call1, %for.cond.backedge.do.body2_crit_edge ], [ %call131, %do.end.do.body2_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call133
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add = add i32 %3, ptrtoint (ptr @debug_drvdata to i32)
  %4 = inttoptr i32 %add to ptr
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %tobool7.not = icmp eq ptr %6, null
  br i1 %tobool7.not, label %do.body2.for.cond.backedge_crit_edge, label %do.end12

do.body2.for.cond.backedge_crit_edge:             ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.backedge

do.end12:                                         ; preds = %do.body2
  %dev = getelementptr inbounds %struct.debug_drvdata, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %cpu13 = getelementptr inbounds %struct.debug_drvdata, ptr %6, i32 0, i32 2
  %9 = ptrtoint ptr %cpu13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu13, align 4
  tail call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %8, ptr noundef nonnull @.str.28, i32 noundef %10) #12
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %6, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1439608005) #9, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  tail call void @arm_heavy_mb() #9
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %6, align 4
  %add.ptr.i44.i = getelementptr i8, ptr %14, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44.i, i32 0) #9, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !155
  tail call void @arm_heavy_mb() #9
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %6, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 784
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !148
  %edprsr.i.i = getelementptr inbounds %struct.debug_drvdata, ptr %6, i32 0, i32 9
  br label %try_again.i.i

try_again.i.i:                                    ; preds = %if.end35.i.i.try_again.i.i_crit_edge, %do.end12
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %6, align 4
  %add.ptr.i45.i = getelementptr i8, ptr %19, i32 784
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45.i) #9, !srcloc !148
  %21 = or i32 %20, 134217728
  %22 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %6, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %23, i32 784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 %21) #9, !srcloc !146
  %call3.i.i = tail call i64 @ktime_get() #9
  %add.i.i.i = add i64 %call3.i.i, 32000000
  %24 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %6, align 4
  %add.ptr783.i.i = getelementptr i8, ptr %25, i32 788
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr783.i.i) #9, !srcloc !148
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #9
  %28 = ptrtoint ptr %edprsr.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %edprsr.i.i, align 4
  %and84.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84.i.i)
  %tobool.not85.i.i = icmp eq i32 %and84.i.i, 0
  br i1 %tobool.not85.i.i, label %try_again.i.i.land.lhs.true.i.i_crit_edge, label %try_again.i.i.for.end.i.i_crit_edge

try_again.i.i.for.end.i.i_crit_edge:              ; preds = %try_again.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

try_again.i.i.land.lhs.true.i.i_crit_edge:        ; preds = %try_again.i.i
  br label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %cond.false.i.i.land.lhs.true.i.i_crit_edge, %try_again.i.i.land.lhs.true.i.i_crit_edge
  %call12.i.i = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call12.i.i, i64 %add.i.i.i)
  %cmp3.i.i.i = icmp sgt i64 %call12.i.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %if.then14.i.i, label %cond.false.i.i

if.then14.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %6, align 4
  %add.ptr17.i.i = getelementptr i8, ptr %30, i32 788
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i.i) #9, !srcloc !148
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #9
  %33 = ptrtoint ptr %edprsr.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %edprsr.i.i, align 4
  br label %for.end.i.i

cond.false.i.i:                                   ; preds = %land.lhs.true.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #9
  %35 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %6, align 4
  %add.ptr7.i.i = getelementptr i8, ptr %36, i32 788
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i) #9, !srcloc !148
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #9
  %39 = ptrtoint ptr %edprsr.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %edprsr.i.i, align 4
  %and.i.i = and i32 %38, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %cond.false.i.i.land.lhs.true.i.i_crit_edge, label %cond.false.i.i.for.end.i.i_crit_edge

cond.false.i.i.for.end.i.i_crit_edge:             ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

cond.false.i.i.land.lhs.true.i.i_crit_edge:       ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i.i

for.end.i.i:                                      ; preds = %cond.false.i.i.for.end.i.i_crit_edge, %if.then14.i.i, %try_again.i.i.for.end.i.i_crit_edge
  %40 = ptrtoint ptr %edprsr.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %edprsr.i.i, align 4
  %and31.i.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i.i)
  %tobool32.not.i.i = icmp eq i32 %and31.i.i, 0
  br i1 %tobool32.not.i.i, label %do.end.i.i, label %if.end35.i.i

do.end.i.i:                                       ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 4
  %44 = ptrtoint ptr %cpu13 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cpu13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef %45) #12
  br label %debug_force_cpu_powered_up.exit.i

if.end35.i.i:                                     ; preds = %for.end.i.i
  %46 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %6, align 4
  %add.ptr38.i.i = getelementptr i8, ptr %47, i32 784
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38.i.i) #9, !srcloc !148
  %49 = or i32 %48, 150994944
  %50 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %6, align 4
  %add.ptr43.i.i = getelementptr i8, ptr %51, i32 784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43.i.i, i32 %49) #9, !srcloc !146
  %52 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %6, align 4
  %add.ptr46.i.i = getelementptr i8, ptr %53, i32 788
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46.i.i) #9, !srcloc !148
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #9
  %56 = ptrtoint ptr %edprsr.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %edprsr.i.i, align 4
  %and51.i.i = and i32 %55, 1
  %tobool52.not.i.i = icmp eq i32 %and51.i.i, 0
  br i1 %tobool52.not.i.i, label %if.end35.i.i.try_again.i.i_crit_edge, label %if.end35.i.i.debug_force_cpu_powered_up.exit.i_crit_edge, !prof !156

if.end35.i.i.debug_force_cpu_powered_up.exit.i_crit_edge: ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %debug_force_cpu_powered_up.exit.i

if.end35.i.i.try_again.i.i_crit_edge:             ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %try_again.i.i

debug_force_cpu_powered_up.exit.i:                ; preds = %if.end35.i.i.debug_force_cpu_powered_up.exit.i_crit_edge, %do.end.i.i
  %57 = ptrtoint ptr %edprsr.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %edprsr.i.i, align 4
  %59 = and i32 %58, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %if.end.i, label %debug_force_cpu_powered_up.exit.i.debug_read_regs.exit_crit_edge

debug_force_cpu_powered_up.exit.i.debug_read_regs.exit_crit_edge: ; preds = %debug_force_cpu_powered_up.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %debug_read_regs.exit

if.end.i:                                         ; preds = %debug_force_cpu_powered_up.exit.i
  %61 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %6, align 4
  %add.ptr5.i = getelementptr i8, ptr %62, i32 160
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #9, !srcloc !148
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #9
  %edpcsr.i = getelementptr inbounds %struct.debug_drvdata, ptr %6, i32 0, i32 7
  %65 = ptrtoint ptr %edpcsr.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %edpcsr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %63)
  %cmp.i = icmp eq i32 %63, -1
  br i1 %cmp.i, label %if.end.i.debug_read_regs.exit_crit_edge, label %if.end10.i

if.end.i.debug_read_regs.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %debug_read_regs.exit

if.end10.i:                                       ; preds = %if.end.i
  %edcidsr_present.i = getelementptr inbounds %struct.debug_drvdata, ptr %6, i32 0, i32 4
  %66 = ptrtoint ptr %edcidsr_present.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %edcidsr_present.i, align 1, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool.not.i = icmp eq i8 %67, 0
  br i1 %tobool.not.i, label %if.end10.i.if.end17.i_crit_edge, label %if.then11.i

if.end10.i.if.end17.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i

if.then11.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %6, align 4
  %add.ptr14.i = getelementptr i8, ptr %69, i32 164
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i) #9, !srcloc !148
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #9
  %edcidsr.i = getelementptr inbounds %struct.debug_drvdata, ptr %6, i32 0, i32 11
  %72 = ptrtoint ptr %edcidsr.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %edcidsr.i, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then11.i, %if.end10.i.if.end17.i_crit_edge
  %edvidsr_present.i = getelementptr inbounds %struct.debug_drvdata, ptr %6, i32 0, i32 5
  %73 = ptrtoint ptr %edvidsr_present.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %edvidsr_present.i, align 2, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool18.not.i = icmp eq i8 %74, 0
  br i1 %tobool18.not.i, label %if.end17.i.debug_read_regs.exit_crit_edge, label %if.then19.i

if.end17.i.debug_read_regs.exit_crit_edge:        ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %debug_read_regs.exit

if.then19.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  %75 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %6, align 4
  %add.ptr22.i = getelementptr i8, ptr %76, i32 168
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22.i) #9, !srcloc !148
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #9
  %edvidsr.i = getelementptr inbounds %struct.debug_drvdata, ptr %6, i32 0, i32 10
  %79 = ptrtoint ptr %edvidsr.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %edvidsr.i, align 4
  br label %debug_read_regs.exit

debug_read_regs.exit:                             ; preds = %if.then19.i, %if.end17.i.debug_read_regs.exit_crit_edge, %if.end.i.debug_read_regs.exit_crit_edge, %debug_force_cpu_powered_up.exit.i.debug_read_regs.exit_crit_edge
  %80 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %6, align 4
  %add.ptr27.i = getelementptr i8, ptr %81, i32 784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i, i32 %17) #9, !srcloc !146
  %82 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !149
  tail call void @arm_heavy_mb() #9
  %add.ptr.i47.i = getelementptr i8, ptr %83, i32 4016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47.i, i32 0) #9, !srcloc !146
  %84 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev, align 4
  %86 = ptrtoint ptr %edprsr.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %edprsr.i.i, align 4
  %and.i = and i32 %87, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i20 = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i20, ptr @.str.36, ptr @.str.35
  %and4.i = and i32 %87, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  %cond6.i = select i1 %tobool5.not.i, ptr @.str.38, ptr @.str.37
  tail call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %85, ptr noundef nonnull @.str.33, i32 noundef %87, ptr noundef nonnull %cond.i, ptr noundef nonnull %cond6.i) #12
  %88 = ptrtoint ptr %edprsr.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %edprsr.i.i, align 4
  %90 = and i32 %89, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %90)
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %if.end.i23, label %do.end9.i

do.end9.i:                                        ; preds = %debug_read_regs.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %85, ptr noundef nonnull @.str.40) #12
  br label %for.cond.backedge

if.end.i23:                                       ; preds = %debug_read_regs.exit
  %edpcsr.i21 = getelementptr inbounds %struct.debug_drvdata, ptr %6, i32 0, i32 7
  %92 = ptrtoint ptr %edpcsr.i21 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %edpcsr.i21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %93)
  %cmp.i22 = icmp eq i32 %93, -1
  br i1 %cmp.i22, label %do.end13.i, label %if.end14.i

do.end13.i:                                       ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %85, ptr noundef nonnull @.str.43) #12
  br label %for.cond.backedge

if.end14.i:                                       ; preds = %if.end.i23
  %pc_has_offset.i.i = getelementptr inbounds %struct.debug_drvdata, ptr %6, i32 0, i32 6
  %94 = ptrtoint ptr %pc_has_offset.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %pc_has_offset.i.i, align 1, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool.not.i.i24 = icmp eq i8 %95, 0
  %spec.select.i.i = select i1 %tobool.not.i.i24, i32 0, i32 -8
  %and.i.i25 = and i32 %93, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i25)
  %tobool1.not.i.i = icmp eq i32 %and.i.i25, 0
  br i1 %tobool1.not.i.i, label %if.end4.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  %spec.select20.i.i = select i1 %tobool.not.i.i24, i32 0, i32 -4
  %and3.i.i = and i32 %93, -2
  %sub.i.i = add i32 %spec.select20.i.i, %and3.i.i
  br label %debug_adjust_pc.exit.i

if.end4.i.i:                                      ; preds = %if.end14.i
  %and5.i.i = and i32 %93, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool6.not.i.i = icmp eq i32 %and5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.else.i.i, label %do.end.i.i26

do.end.i.i26:                                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %96 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %97, ptr noundef nonnull @.str.59) #12
  br label %debug_adjust_pc.exit.i

if.else.i.i:                                      ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and8.i.i = and i32 %93, -4
  %sub9.i.i = add i32 %spec.select.i.i, %and8.i.i
  br label %debug_adjust_pc.exit.i

debug_adjust_pc.exit.i:                           ; preds = %if.else.i.i, %do.end.i.i26, %if.then2.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then2.i.i ], [ %93, %do.end.i.i26 ], [ %sub9.i.i, %if.else.i.i ]
  %98 = inttoptr i32 %retval.0.i.i to ptr
  tail call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %85, ptr noundef nonnull @.str.46, ptr noundef %98) #12
  %edcidsr_present.i27 = getelementptr inbounds %struct.debug_drvdata, ptr %6, i32 0, i32 4
  %99 = ptrtoint ptr %edcidsr_present.i27 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %edcidsr_present.i27, align 1, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool19.not.i = icmp eq i8 %100, 0
  br i1 %tobool19.not.i, label %debug_adjust_pc.exit.i.if.end24.i_crit_edge, label %do.end23.i

debug_adjust_pc.exit.i.if.end24.i_crit_edge:      ; preds = %debug_adjust_pc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i

do.end23.i:                                       ; preds = %debug_adjust_pc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %edcidsr.i28 = getelementptr inbounds %struct.debug_drvdata, ptr %6, i32 0, i32 11
  %101 = ptrtoint ptr %edcidsr.i28 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %edcidsr.i28, align 4
  tail call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %85, ptr noundef nonnull @.str.49, i32 noundef %102) #12
  br label %if.end24.i

if.end24.i:                                       ; preds = %do.end23.i, %debug_adjust_pc.exit.i.if.end24.i_crit_edge
  %edvidsr_present.i29 = getelementptr inbounds %struct.debug_drvdata, ptr %6, i32 0, i32 5
  %103 = ptrtoint ptr %edvidsr_present.i29 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %edvidsr_present.i29, align 2, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool25.not.i = icmp eq i8 %104, 0
  br i1 %tobool25.not.i, label %if.end24.i.for.cond.backedge_crit_edge, label %do.end29.i

if.end24.i.for.cond.backedge_crit_edge:           ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.backedge

do.end29.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  %edvidsr.i30 = getelementptr inbounds %struct.debug_drvdata, ptr %6, i32 0, i32 10
  %105 = ptrtoint ptr %edvidsr.i30 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %edvidsr.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %106)
  %tobool32.not.i = icmp sgt i32 %106, -1
  %cond33.i = select i1 %tobool32.not.i, ptr @.str.55, ptr @.str.54
  %and35.i = and i32 %106, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  %and38.i = and i32 %106, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  %cond40.i = select i1 %tobool39.not.i, ptr @.str.58, ptr @.str.57
  %cond41.i = select i1 %tobool36.not.i, ptr %cond40.i, ptr @.str.56
  %and43.i = and i32 %106, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  %cond45.i = select i1 %tobool44.not.i, i32 32, i32 64
  %and47.i = and i32 %106, 255
  tail call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %85, ptr noundef nonnull @.str.52, i32 noundef %106, ptr noundef nonnull %cond33.i, ptr noundef nonnull %cond41.i, i32 noundef %cond45.i, i32 noundef %and47.i) #12
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %do.end29.i, %if.end24.i.for.cond.backedge_crit_edge, %do.end13.i, %do.end9.i, %do.body2.for.cond.backedge_crit_edge
  %call1 = tail call i32 @cpumask_next(i32 noundef %call133, ptr noundef nonnull @__cpu_possible_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %107 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call1, %107
  br i1 %cmp, label %for.cond.backedge.do.body2_crit_edge, label %for.cond.backedge.skip_dump_crit_edge

for.cond.backedge.skip_dump_crit_edge:            ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %skip_dump

for.cond.backedge.do.body2_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2

skip_dump:                                        ; preds = %for.cond.backedge.skip_dump_crit_edge, %do.end.skip_dump_crit_edge, %entry.skip_dump_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @debug_lock) #9
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_emerg(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !19, !21, !23, !25, !27, !28, !29, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !50, !52, !54, !55, !56, !57, !59, !61, !63, !65, !66, !67, !68, !69, !71, !72, !74, !76, !77, !78, !79, !81, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !94, !95, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !119, !120, !121, !122, !123, !125, !126, !127, !128, !130, !131, !132, !134}
!llvm.module.flags = !{!136, !137, !138, !139, !140, !141, !142, !143}
!llvm.ident = !{!144}

!0 = !{ptr @__param_enable, !1, !"__param_enable", i1 false, i1 false}
!1 = !{!"../drivers/hwtracing/coresight/coresight-cpu-debug.c", i32 109, i32 1}
!2 = !{ptr @__UNIQUE_ID_enabletype297, !1, !"__UNIQUE_ID_enabletype297", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_enable298, !4, !"__UNIQUE_ID_enable298", i1 false, i1 false}
!4 = !{!"../drivers/hwtracing/coresight/coresight-cpu-debug.c", i32 110, i32 1}
!5 = !{ptr @__initcall__kmod_coresight_cpu_debug__299_679_debug_driver_init6, !6, !"__initcall__kmod_coresight_cpu_debug__299_679_debug_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/hwtracing/coresight/coresight-cpu-debug.c", i32 679, i32 1}
!7 = !{ptr @__exitcall_debug_driver_exit, !6, !"__exitcall_debug_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author300, !9, !"__UNIQUE_ID_author300", i1 false, i1 false}
!9 = !{!"../drivers/hwtracing/coresight/coresight-cpu-debug.c", i32 681, i32 1}
!10 = !{ptr @__UNIQUE_ID_description301, !11, !"__UNIQUE_ID_description301", i1 false, i1 false}
!11 = !{!"../drivers/hwtracing/coresight/coresight-cpu-debug.c", i32 682, i32 1}
!12 = !{ptr @__UNIQUE_ID_file302, !13, !"__UNIQUE_ID_file302", i1 false, i1 false}
!13 = !{!"../drivers/hwtracing/coresight/coresight-cpu-debug.c", i32 683, i32 1}
!14 = !{ptr @__UNIQUE_ID_license303, !13, !"__UNIQUE_ID_license303", i1 false, i1 false}
!15 = !{ptr @__pcpu_unique_debug_drvdata, !16, !"__pcpu_unique_debug_drvdata", i1 false, i1 false}
!16 = !{!"../drivers/hwtracing/coresight/coresight-cpu-debug.c", i32 104, i32 8}
!17 = !{ptr @debug_drvdata, !16, !"debug_drvdata", i1 false, i1 false}
!18 = !{ptr @__param_str_enable, !1, !"__param_str_enable", i1 false, i1 false}
!19 = !{ptr @debug_enable, !20, !"debug_enable", i1 false, i1 false}
!20 = !{!"../drivers/hwtracing/coresight/coresight-cpu-debug.c", i32 108, i32 13}
!21 = !{ptr @.str, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/hwtracing/coresight/coresight-cpu-debug.c", i32 671, i32 13}
!23 = !{ptr @debug_driver, !24, !"debug_driver", i1 false, i1 false}
!24 = !{!"../drivers/hwtracing/coresight/coresight-cpu-debug.c", i32 669, i32 27}
!25 = !{ptr @.str.1, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hwtracing/coresight/coresight-cpu-debug.c", i32 576, i32 3}
!27 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @debug_probe._entry, !26, !"_entry", i1 false, i1 false}
!32 = !{ptr @debug_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/hwtracing/coresight/coresight-cpu-debug.c", i32 598, i32 3}
!35 = !{ptr @debug_probe._entry.6, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @debug_probe._entry_ptr.8, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/hwtracing/coresight/coresight-cpu-debug.c", i32 603, i32 3}
!39 = !{ptr @debug_probe._entry.9, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @debug_probe._entry_ptr.11, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/hwtracing/coresight/coresight-cpu-debug.c", i32 621, i32 2}
!43 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @debug_probe._entry.12, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @debug_probe._entry_ptr.15, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @debug_count, !47, !"debug_count", i1 false, i1 false}
!47 = !{!"../drivers/hwtracing/coresight/coresight-cpu-debug.c", i32 105, i32 12}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/hwtracing/coresight/coresight-cpu-debug.c", i32 532, i32 41}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/hwtracing/coresight/coresight-cpu-debug.c", i32 533, i32 22}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/hwtracing/coresight/coresight-cpu-debug.c", i32 540, i32 3}
!54 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @debug_func_init._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @debug_func_init._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @debug_debugfs_dir, !58, !"debug_debugfs_dir", i1 false, i1 false}
!58 = !{!"../drivers/hwtracing/coresight/coresight-cpu-debug.c", i32 106, i32 23}
!59 = !{ptr @debug_func_knob_fops, !60, !"debug_func_knob_fops", i1 false, i1 false}
!60 = !{!"../drivers/hwtracing/coresight/coresight-cpu-debug.c", i32 521, i32 37}
!61 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/hwtracing/coresight/coresight-cpu-debug.c", i32 514, i32 29}
!63 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/hwtracing/coresight/coresight-cpu-debug.c", i32 494, i32 3}
!65 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @debug_func_knob_write._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @debug_func_knob_write._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!69 = distinct !{null, !70, !"__already_done", i1 false, i1 false}
!70 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!71 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @debug_notifier, !73, !"debug_notifier", i1 false, i1 false}
!73 = !{!"../drivers/hwtracing/coresight/coresight-cpu-debug.c", i32 407, i32 30}
!74 = !{ptr @.str.25, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/hwtracing/coresight/coresight-cpu-debug.c", i32 389, i32 2}
!76 = !{ptr @.str.26, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @debug_notifier_call._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @debug_notifier_call._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/hwtracing/coresight/coresight-cpu-debug.c", i32 396, i32 3}
!81 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @debug_notifier_call._entry.27, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @debug_notifier_call._entry_ptr.30, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.31, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/hwtracing/coresight/coresight-cpu-debug.c", i32 171, i32 3}
!86 = !{ptr @.str.32, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @debug_force_cpu_powered_up._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @debug_force_cpu_powered_up._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.33, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/hwtracing/coresight/coresight-cpu-debug.c", i32 291, i32 2}
!91 = !{ptr @.str.34, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @debug_dump_regs._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @debug_dump_regs._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.35, !90, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.40, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/hwtracing/coresight/coresight-cpu-debug.c", i32 297, i32 3}
!100 = !{ptr @debug_dump_regs._entry.39, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @debug_dump_regs._entry_ptr.41, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.43, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/hwtracing/coresight/coresight-cpu-debug.c", i32 302, i32 3}
!104 = !{ptr @debug_dump_regs._entry.42, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @debug_dump_regs._entry_ptr.44, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.46, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/hwtracing/coresight/coresight-cpu-debug.c", i32 307, i32 2}
!108 = !{ptr @debug_dump_regs._entry.45, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @debug_dump_regs._entry_ptr.47, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/hwtracing/coresight/coresight-cpu-debug.c", i32 310, i32 3}
!112 = !{ptr @debug_dump_regs._entry.48, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @debug_dump_regs._entry_ptr.50, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.52, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/hwtracing/coresight/coresight-cpu-debug.c", i32 313, i32 3}
!116 = !{ptr @debug_dump_regs._entry.51, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @debug_dump_regs._entry_ptr.53, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.58, !115, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.59, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/hwtracing/coresight/coresight-cpu-debug.c", i32 277, i32 3}
!125 = !{ptr @.str.60, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @debug_adjust_pc._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @debug_adjust_pc._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.61, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/hwtracing/coresight/coresight-cpu-debug.c", i32 103, i32 8}
!130 = !{ptr @.str.62, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @debug_lock, !129, !"debug_lock", i1 false, i1 false}
!132 = !{ptr @debug_ids, !133, !"debug_ids", i1 false, i1 false}
!133 = !{!"../drivers/hwtracing/coresight/coresight-cpu-debug.c", i32 657, i32 29}
!134 = !{ptr @uci_id_debug, !135, !"uci_id_debug", i1 false, i1 false}
!135 = !{!"../drivers/hwtracing/coresight/coresight-cpu-debug.c", i32 648, i32 36}
!136 = !{i32 1, !"wchar_size", i32 2}
!137 = !{i32 1, !"min_enum_size", i32 4}
!138 = !{i32 8, !"branch-target-enforcement", i32 0}
!139 = !{i32 8, !"sign-return-address", i32 0}
!140 = !{i32 8, !"sign-return-address-all", i32 0}
!141 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!142 = !{i32 7, !"uwtable", i32 1}
!143 = !{i32 7, !"frame-pointer", i32 2}
!144 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!145 = !{i8 0, i8 2}
!146 = !{i64 5854689}
!147 = !{i64 2155436888}
!148 = !{i64 5855107}
!149 = !{i64 2155436192}
!150 = !{!"auto-init"}
!151 = !{!"branch_weights", i32 2000, i32 1}
!152 = !{i64 2148260437}
!153 = !{i64 745260, i64 745285, i64 745307, i64 745323, i64 745335, i64 745355, i64 745379, i64 745395, i64 745407}
!154 = !{i64 2148260625}
!155 = !{i64 2155449857}
!156 = !{!"branch_weights", i32 1, i32 2000}
