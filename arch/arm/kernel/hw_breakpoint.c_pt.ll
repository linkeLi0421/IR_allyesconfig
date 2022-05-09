; ModuleID = '/llk/IR_all_yes/arch/arm/kernel/hw_breakpoint.c_pt.bc'
source_filename = "../arch/arm/kernel/hw_breakpoint.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.undef_hook = type { %struct.list_head, i32, i32, i32, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.perf_event = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.rb_node, i64, %struct.list_head, %struct.hlist_node, %struct.list_head, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.local64_t, %struct.atomic64_t, i64, i64, i64, %struct.perf_event_attr, i16, i16, i16, %struct.hw_perf_event, ptr, %struct.atomic_t, %struct.atomic64_t, %struct.atomic64_t, %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.list_head, ptr, %struct.mutex, %struct.atomic_t, ptr, %struct.list_head, i32, i32, %struct.wait_queue_head, ptr, i32, i32, i32, i32, %struct.irq_work, %struct.atomic_t, %struct.perf_addr_filters_head, ptr, i32, ptr, ptr, %struct.callback_head, ptr, i64, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, %struct.ftrace_ops, ptr, ptr, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.local64_t = type { %struct.atomic64_t }
%struct.perf_event_attr = type { i32, i32, i64, %union.anon.72, i64, i64, i64, %union.anon.73, i32, %union.anon.74, %union.anon.75, i64, i64, i32, i32, i64, i32, i16, i16, i32, i32, i64 }
%union.anon.72 = type { i64 }
%union.anon.73 = type { i32 }
%union.anon.74 = type { i64 }
%union.anon.75 = type { i64 }
%struct.hw_perf_event = type { %union.anon.76, ptr, ptr, i32, i32, %struct.local64_t, i64, %union.anon.83, i64, i64, i64, i64 }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { i64, i64, i32, i32, i32, i32, i32, i32, %struct.hw_perf_event_extra, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i64, i32, i32, i32 }
%union.anon.83 = type { %struct.anon.84 }
%struct.anon.84 = type { i64, %struct.local64_t }
%struct.atomic64_t = type { i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.perf_addr_filters_head = type { %struct.list_head, %struct.raw_spinlock, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.ftrace_ops = type { ptr, ptr, i32, ptr, ptr, %struct.ftrace_ops_hash, ptr, %struct.ftrace_ops_hash, i32, i32, %struct.list_head }
%struct.ftrace_ops_hash = type { ptr, ptr, %struct.mutex }
%struct.arch_hw_breakpoint = type { i32, i32, %struct.arch_hw_breakpoint_ctrl, %struct.arch_hw_breakpoint_ctrl }
%struct.arch_hw_breakpoint_ctrl = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@debug_arch = internal unnamed_addr global i8 0, section ".data..ro_after_init", align 1
@hw_breakpoint_slots._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014hw-breakpoint: unknown slot type: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hw_breakpoint_slots\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"arch/arm/kernel/hw_breakpoint.c\00", [32 x i8] zeroinitializer }, align 32
@hw_breakpoint_slots._entry_ptr = internal global ptr @hw_breakpoint_slots._entry, section ".printk_index", align 4
@max_watchpoint_len = internal unnamed_addr global i8 0, section ".data..ro_after_init", align 1
@bp_on_reg = weak dso_local global [16 x ptr] zeroinitializer, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@core_num_brps = internal unnamed_addr global i32 0, section ".data..ro_after_init", align 4
@wp_on_reg = weak dso_local global [16 x ptr] zeroinitializer, section ".data..percpu", align 4
@core_num_wrps = internal unnamed_addr global i32 0, section ".data..ro_after_init", align 4
@arch_install_hw_breakpoint._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014hw-breakpoint: Can't find any breakpoint slot\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"arch_install_hw_breakpoint\00", [37 x i8] zeroinitializer }, align 32
@arch_install_hw_breakpoint._entry_ptr = internal global ptr @arch_install_hw_breakpoint._entry, section ".printk_index", align 4
@arch_uninstall_hw_breakpoint._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.5, ptr @.str.2, i32 411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"arch_uninstall_hw_breakpoint\00", [35 x i8] zeroinitializer }, align 32
@arch_uninstall_hw_breakpoint._entry_ptr = internal global ptr @arch_uninstall_hw_breakpoint._entry, section ".printk_index", align 4
@__initcall__kmod_hw_breakpoint__253_1192_arch_hw_breakpoint_init3 = internal global ptr @arch_hw_breakpoint_init, section ".initcall3.init", align 4
@__pcpu_unique_bp_on_reg = dso_local local_unnamed_addr global [16 x i8] zeroinitializer, section ".discard", align 1
@__pcpu_unique_wp_on_reg = dso_local local_unnamed_addr global [16 x i8] zeroinitializer, section ".discard", align 1
@get_debug_arch.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@get_debug_arch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\014hw-breakpoint: CPUID feature registers not supported. Assuming v6 debug is present.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"get_debug_arch\00", [17 x i8] zeroinitializer }, align 32
@get_debug_arch._entry_ptr = internal global ptr @get_debug_arch._entry, section ".printk_index", align 4
@write_wb_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\014hw-breakpoint: attempt to write to unknown breakpoint register %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"write_wb_reg\00", [19 x i8] zeroinitializer }, align 32
@write_wb_reg._entry_ptr = internal global ptr @write_wb_reg._entry, section ".printk_index", align 4
@arch_hw_breakpoint_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 1120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016hw-breakpoint: debug architecture 0x%x unsupported.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"arch_hw_breakpoint_init\00", [40 x i8] zeroinitializer }, align 32
@arch_hw_breakpoint_init._entry_ptr = internal global ptr @arch_hw_breakpoint_init._entry, section ".printk_index", align 4
@arch_hw_breakpoint_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 1136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\016hw-breakpoint: Scorpion CPU detected. Hardware breakpoints and watchpoints disabled\0A\00", [41 x i8] zeroinitializer }, align 32
@arch_hw_breakpoint_init._entry_ptr.14 = internal global ptr @arch_hw_breakpoint_init._entry.12, section ".printk_index", align 4
@has_ossr = internal unnamed_addr global i8 0, section ".data..ro_after_init", align 1
@debug_reg_hook = internal global { %struct.undef_hook, [36 x i8] } { %struct.undef_hook { %struct.list_head zeroinitializer, i32 266866448, i32 234884624, i32 0, i32 0, ptr @debug_reg_trap }, [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"arm/hw_breakpoint:online\00", [39 x i8] zeroinitializer }, align 32
@debug_err_mask = internal global { %struct.cpumask, [28 x i8] } zeroinitializer, align 32
@arch_hw_breakpoint_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.11, ptr @.str.2, i32 1174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\016hw-breakpoint: found %d %sbreakpoint and %d watchpoint registers.\0A\00", [59 x i8] zeroinitializer }, align 32
@arch_hw_breakpoint_init._entry_ptr.18 = internal global ptr @arch_hw_breakpoint_init._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"(+1 reserved) \00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@arch_hw_breakpoint_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.11, ptr @.str.2, i32 1179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016hw-breakpoint: maximum watchpoint size is %u bytes.\0A\00", [41 x i8] zeroinitializer }, align 32
@arch_hw_breakpoint_init._entry_ptr.23 = internal global ptr @arch_hw_breakpoint_init._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"watchpoint debug exception\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"breakpoint debug exception\00", [37 x i8] zeroinitializer }, align 32
@debug_reg_trap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 954, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\014hw-breakpoint: Debug register access (0x%x) caused undefined instruction on CPU %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"debug_reg_trap\00", [17 x i8] zeroinitializer }, align 32
@debug_reg_trap._entry_ptr = internal global ptr @debug_reg_trap._entry, section ".printk_index", align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@reset_ctrl_regs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@reset_ctrl_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 1027, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014hw-breakpoint: CPU %d debug is powered down!\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reset_ctrl_regs\00", [16 x i8] zeroinitializer }, align 32
@reset_ctrl_regs._entry_ptr = internal global ptr @reset_ctrl_regs._entry, section ".printk_index", align 4
@reset_ctrl_regs.__already_done.31 = internal unnamed_addr global i1 false, section ".data.once", align 1
@reset_ctrl_regs._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.30, ptr @.str.2, i32 1048, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014hw-breakpoint: CPU %d failed to disable vector catch\0A\00", [40 x i8] zeroinitializer }, align 32
@reset_ctrl_regs._entry_ptr.34 = internal global ptr @reset_ctrl_regs._entry.32, section ".printk_index", align 4
@reset_ctrl_regs.__already_done.35 = internal unnamed_addr global i1 false, section ".data.once", align 1
@reset_ctrl_regs._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.30, ptr @.str.2, i32 1068, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014hw-breakpoint: CPU %d failed to clear debug register pairs\0A\00", [34 x i8] zeroinitializer }, align 32
@reset_ctrl_regs._entry_ptr.38 = internal global ptr @reset_ctrl_regs._entry.36, section ".printk_index", align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@enable_monitor_mode.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@enable_monitor_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014hw-breakpoint: Failed to enable monitor mode on CPU %d.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"enable_monitor_mode\00", [44 x i8] zeroinitializer }, align 32
@enable_monitor_mode._entry_ptr = internal global ptr @enable_monitor_mode._entry, section ".printk_index", align 4
@read_wb_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\014hw-breakpoint: attempt to read from unknown breakpoint register %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"read_wb_reg\00", [20 x i8] zeroinitializer }, align 32
@read_wb_reg._entry_ptr = internal global ptr @read_wb_reg._entry, section ".printk_index", align 4
@.str.43 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"Asynchronous watchpoint exception taken. Debugging results may be unreliable\0A\00", [50 x i8] zeroinitializer }, align 32
@breakpoint_handler.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.45, ptr @.str.2, ptr @.str.46, i8 0, i8 -35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hw_breakpoint\00", [18 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"breakpoint_handler\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"breakpoint fired: address = 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"hw-breakpoint: breakpoint fired: address = 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.50 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@watchpoint_handler.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.51, ptr @.str.2, ptr @.str.52, i8 0, i8 -60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"watchpoint_handler\00", [45 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"watchpoint fired: address = 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"hw-breakpoint: watchpoint fired: address = 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@watchpoint_handler.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.51, ptr @.str.2, ptr @.str.52, i8 0, i8 -53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@dbg_cpu_pm_nb = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @dbg_cpu_pm_notify, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@switch.table.arch_check_bp_in_kernelspace = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 8, i32 1, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4], [60 x i8] zeroinitializer }, align 32
@switch.table.arch_bp_generic_fields = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4, i32 1, i32 2, i32 3], [16 x i8] zeroinitializer }, align 32
@switch.table.arch_bp_generic_fields.54 = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 8, i32 1, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 4], [60 x i8] zeroinitializer }, align 32
@switch.table.hw_breakpoint_arch_parse = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 8, i32 1, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4], [60 x i8] zeroinitializer }, align 32
@switch.table.hw_breakpoint_arch_parse.55 = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 8, i32 1, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.56 = internal global [66 x i64] [i64 64, i64 32, i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71, i64 72, i64 73, i64 74, i64 75, i64 76, i64 77, i64 78, i64 79, i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87, i64 88, i64 89, i64 90, i64 91, i64 92, i64 93, i64 94, i64 95, i64 96, i64 97, i64 98, i64 99, i64 100, i64 101, i64 102, i64 103, i64 104, i64 105, i64 106, i64 107, i64 108, i64 109, i64 110, i64 111, i64 112, i64 113, i64 114, i64 115, i64 116, i64 117, i64 118, i64 119, i64 120, i64 121, i64 122, i64 123, i64 124, i64 125, i64 126, i64 127]
@__sancov_gen_cov_switch_values.57 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.58 = internal global [6 x i64] [i64 4, i64 64, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 15]
@__sancov_gen_cov_switch_values.60 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 32, i64 96]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 4, i64 3, i64 5]
@__sancov_gen_cov_switch_values.63 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 10]
@__sancov_gen_cov_switch_values.64 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.65 = internal global [10 x i64] [i64 8, i64 4, i64 1, i64 2, i64 3, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.66 = internal global [66 x i64] [i64 64, i64 32, i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71, i64 72, i64 73, i64 74, i64 75, i64 76, i64 77, i64 78, i64 79, i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87, i64 88, i64 89, i64 90, i64 91, i64 92, i64 93, i64 94, i64 95, i64 96, i64 97, i64 98, i64 99, i64 100, i64 101, i64 102, i64 103, i64 104, i64 105, i64 106, i64 107, i64 108, i64 109, i64 110, i64 111, i64 112, i64 113, i64 114, i64 115, i64 116, i64 117, i64 118, i64 119, i64 120, i64 121, i64 122, i64 123, i64 124, i64 125, i64 126, i64 127]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 286, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 359, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 411, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 132, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 119, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1120, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1136, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [15 x i8] c"debug_reg_hook\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 962, i32 26 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1160, i32 9 }
@___asan_gen_.134 = private unnamed_addr constant [15 x i8] c"debug_err_mask\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 947, i32 18 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1172, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1178, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1183, i32 17 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1185, i32 17 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 953, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 108, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1027, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1048, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1068, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 262, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 104, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 930, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 887, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 695, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 723, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 784, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant [14 x i8] c"dbg_cpu_pm_nb\00", align 1
@___asan_gen_.246 = private constant [35 x i8] c"../arch/arm/kernel/hw_breakpoint.c\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1099, i32 30 }
@___asan_gen_.248 = private unnamed_addr constant [42 x i8] c"switch.table.arch_check_bp_in_kernelspace\00", align 1
@___asan_gen_.249 = private unnamed_addr constant [36 x i8] c"switch.table.arch_bp_generic_fields\00", align 1
@___asan_gen_.250 = private unnamed_addr constant [39 x i8] c"switch.table.arch_bp_generic_fields.54\00", align 1
@___asan_gen_.251 = private unnamed_addr constant [38 x i8] c"switch.table.hw_breakpoint_arch_parse\00", align 1
@___asan_gen_.252 = private unnamed_addr constant [41 x i8] c"switch.table.hw_breakpoint_arch_parse.55\00", align 1
@llvm.compiler.used = appending global [81 x ptr] [ptr @__initcall__kmod_hw_breakpoint__253_1192_arch_hw_breakpoint_init3, ptr @arch_hw_breakpoint_init._entry, ptr @arch_hw_breakpoint_init._entry.12, ptr @arch_hw_breakpoint_init._entry.16, ptr @arch_hw_breakpoint_init._entry.21, ptr @arch_hw_breakpoint_init._entry_ptr, ptr @arch_hw_breakpoint_init._entry_ptr.14, ptr @arch_hw_breakpoint_init._entry_ptr.18, ptr @arch_hw_breakpoint_init._entry_ptr.23, ptr @arch_install_hw_breakpoint._entry, ptr @arch_install_hw_breakpoint._entry_ptr, ptr @arch_uninstall_hw_breakpoint._entry, ptr @arch_uninstall_hw_breakpoint._entry_ptr, ptr @debug_reg_trap._entry, ptr @debug_reg_trap._entry_ptr, ptr @enable_monitor_mode._entry, ptr @enable_monitor_mode._entry_ptr, ptr @get_debug_arch._entry, ptr @get_debug_arch._entry_ptr, ptr @hw_breakpoint_slots._entry, ptr @hw_breakpoint_slots._entry_ptr, ptr @read_wb_reg._entry, ptr @read_wb_reg._entry_ptr, ptr @reset_ctrl_regs._entry, ptr @reset_ctrl_regs._entry.32, ptr @reset_ctrl_regs._entry.36, ptr @reset_ctrl_regs._entry_ptr, ptr @reset_ctrl_regs._entry_ptr.34, ptr @reset_ctrl_regs._entry_ptr.38, ptr @write_wb_reg._entry, ptr @write_wb_reg._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @debug_reg_hook, ptr @.str.15, ptr @debug_err_mask, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.33, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @dbg_cpu_pm_nb, ptr @switch.table.arch_check_bp_in_kernelspace, ptr @switch.table.arch_bp_generic_fields, ptr @switch.table.arch_bp_generic_fields.54, ptr @switch.table.hw_breakpoint_arch_parse, ptr @switch.table.hw_breakpoint_arch_parse.55], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_breakpoint_slots._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arch_install_hw_breakpoint._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arch_uninstall_hw_breakpoint._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_debug_arch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_wb_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arch_hw_breakpoint_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arch_hw_breakpoint_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_reg_hook to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_err_mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arch_hw_breakpoint_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arch_hw_breakpoint_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_reg_trap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_ctrl_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_ctrl_regs._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_ctrl_regs._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_monitor_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_wb_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_cpu_pm_nb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.arch_check_bp_in_kernelspace to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.arch_bp_generic_fields to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.arch_bp_generic_fields.54 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hw_breakpoint_arch_parse to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hw_breakpoint_arch_parse.55 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @arch_get_debug_arch() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @debug_arch, align 1
  ret i8 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_breakpoint_slots(i32 noundef %type) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #14, !srcloc !142
  %1 = and i32 %0, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 983040, i32 %1)
  %cmp.not.i.i = icmp eq i32 %1, 983040
  br i1 %cmp.not.i.i, label %debug_arch_supported.exit, label %land.end.i.i

land.end.i.i:                                     ; preds = %entry
  %.b21.i.i = load i1, ptr @get_debug_arch.__already_done, align 1
  br i1 %.b21.i.i, label %land.end.i.i.if.end_crit_edge, label %if.then5.i.i, !prof !143

land.end.i.i.if.end_crit_edge:                    ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then5.i.i:                                     ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @get_debug_arch.__already_done, align 1
  %call6.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #15
  br label %if.end

debug_arch_supported.exit:                        ; preds = %entry
  %2 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c0, 0", "=r"() #11, !srcloc !144
  %shr18.i.i = lshr i32 %2, 16
  %3 = trunc i32 %shr18.i.i to i8
  %conv.i.i = and i8 %3, 15
  %4 = add nsw i8 %conv.i.i, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -3, i8 %4)
  %5 = icmp ult i8 %4, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %conv.i.i)
  %cmp6.i = icmp ult i8 %conv.i.i, 5
  %tobool.not = and i1 %cmp6.i, %5
  br i1 %tobool.not, label %debug_arch_supported.exit.return_crit_edge, label %debug_arch_supported.exit.if.end_crit_edge

debug_arch_supported.exit.if.end_crit_edge:       ; preds = %debug_arch_supported.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

debug_arch_supported.exit.return_crit_edge:       ; preds = %debug_arch_supported.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %debug_arch_supported.exit.if.end_crit_edge, %if.then5.i.i, %land.end.i.i.if.end_crit_edge
  %6 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
  ]

sw.bb:                                            ; preds = %if.end
  %7 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c0, 0", "=r"() #11, !srcloc !145
  %shr.i.i = lshr i32 %7, 24
  %and.i.i = and i32 %shr.i.i, 15
  %add.i.i = add nuw nsw i32 %and.i.i, 1
  br i1 %cmp.not.i.i, label %get_debug_arch.exit.i.i, label %land.end.i.i.i

land.end.i.i.i:                                   ; preds = %sw.bb
  %.b21.i.i.i = load i1, ptr @get_debug_arch.__already_done, align 1
  br i1 %.b21.i.i.i, label %land.end.i.i.i.core_has_mismatch_brps.exit.thread.i_crit_edge, label %if.then5.i.i.i, !prof !143

land.end.i.i.i.core_has_mismatch_brps.exit.thread.i_crit_edge: ; preds = %land.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %core_has_mismatch_brps.exit.thread.i

if.then5.i.i.i:                                   ; preds = %land.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @get_debug_arch.__already_done, align 1
  %call6.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #15
  br label %core_has_mismatch_brps.exit.thread.i

get_debug_arch.exit.i.i:                          ; preds = %sw.bb
  %8 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c0, 0", "=r"() #11, !srcloc !144
  %9 = and i32 %8, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %9)
  %cmp.i.i = icmp ugt i32 %9, 131072
  br i1 %cmp.i.i, label %core_has_mismatch_brps.exit.i, label %get_debug_arch.exit.i.i.core_has_mismatch_brps.exit.thread.i_crit_edge

get_debug_arch.exit.i.i.core_has_mismatch_brps.exit.thread.i_crit_edge: ; preds = %get_debug_arch.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %core_has_mismatch_brps.exit.thread.i

core_has_mismatch_brps.exit.i:                    ; preds = %get_debug_arch.exit.i.i
  %10 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c0, 0", "=r"() #11, !srcloc !145
  %11 = and i32 %10, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp3.i.not.i = icmp eq i32 %11, 0
  br i1 %cmp3.i.not.i, label %core_has_mismatch_brps.exit.i.core_has_mismatch_brps.exit.thread.i_crit_edge, label %core_has_mismatch_brps.exit.i.return_crit_edge

core_has_mismatch_brps.exit.i.return_crit_edge:   ; preds = %core_has_mismatch_brps.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

core_has_mismatch_brps.exit.i.core_has_mismatch_brps.exit.thread.i_crit_edge: ; preds = %core_has_mismatch_brps.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %core_has_mismatch_brps.exit.thread.i

core_has_mismatch_brps.exit.thread.i:             ; preds = %core_has_mismatch_brps.exit.i.core_has_mismatch_brps.exit.thread.i_crit_edge, %get_debug_arch.exit.i.i.core_has_mismatch_brps.exit.thread.i_crit_edge, %if.then5.i.i.i, %land.end.i.i.i.core_has_mismatch_brps.exit.thread.i_crit_edge
  br label %return

sw.bb2:                                           ; preds = %if.end
  br i1 %cmp.not.i.i, label %get_debug_arch.exit.i, label %land.end.i.i8

land.end.i.i8:                                    ; preds = %sw.bb2
  %.b21.i.i7 = load i1, ptr @get_debug_arch.__already_done, align 1
  br i1 %.b21.i.i7, label %land.end.i.i8.return_crit_edge, label %if.then5.i.i10, !prof !143

land.end.i.i8.return_crit_edge:                   ; preds = %land.end.i.i8
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then5.i.i10:                                   ; preds = %land.end.i.i8
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @get_debug_arch.__already_done, align 1
  %call6.i.i9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #15
  br label %return

get_debug_arch.exit.i:                            ; preds = %sw.bb2
  %12 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c0, 0", "=r"() #11, !srcloc !144
  %13 = and i32 %12, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 327680, i32 %13)
  %cmp.i = icmp ult i32 %13, 327680
  br i1 %cmp.i, label %get_debug_arch.exit.i.return_crit_edge, label %if.end.i

get_debug_arch.exit.i.return_crit_edge:           ; preds = %get_debug_arch.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end.i:                                         ; preds = %get_debug_arch.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %14 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c0, 0", "=r"() #11, !srcloc !146
  %shr.i.i11 = lshr i32 %14, 28
  %add.i.i12 = add nuw nsw i32 %shr.i.i11, 1
  br label %return

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %type) #15
  br label %return

return:                                           ; preds = %do.end, %if.end.i, %get_debug_arch.exit.i.return_crit_edge, %if.then5.i.i10, %land.end.i.i8.return_crit_edge, %core_has_mismatch_brps.exit.thread.i, %core_has_mismatch_brps.exit.i.return_crit_edge, %debug_arch_supported.exit.return_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %debug_arch_supported.exit.return_crit_edge ], [ %add.i.i, %core_has_mismatch_brps.exit.thread.i ], [ %and.i.i, %core_has_mismatch_brps.exit.i.return_crit_edge ], [ %add.i.i12, %if.end.i ], [ 1, %get_debug_arch.exit.i.return_crit_edge ], [ 1, %if.then5.i.i10 ], [ 1, %land.end.i.i8.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @arch_get_max_wp_len() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @max_watchpoint_len, align 1
  ret i8 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @arch_install_hw_breakpoint(ptr noundef %bp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hw.i = getelementptr inbounds %struct.perf_event, ptr %bp, i32 0, i32 25
  %0 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw.i, align 4
  %ctrl1 = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %hw.i, i32 0, i32 3
  %2 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.unpack = load i32, ptr %ctrl1, align 4
  %or17.i = and i32 %.unpack, 4202494
  %or = or i32 %or17.i, 1
  %3 = and i32 %.unpack, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %4 = tail call i32 @llvm.read_register.i32(metadata !132) #11
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %. = select i1 %cmp, i32 ptrtoint (ptr @bp_on_reg to i32), i32 ptrtoint (ptr @wp_on_reg to i32)
  %.84 = select i1 %cmp, i32 64, i32 96
  %.85 = select i1 %cmp, i32 80, i32 112
  %add16 = add i32 %9, %.
  %slots.0 = inttoptr i32 %add16 to ptr
  %core_num_brps.val = load i32, ptr @core_num_brps, align 4
  %core_num_wrps.val = load i32, ptr @core_num_wrps, align 4
  %max_slots.0 = select i1 %cmp, i32 %core_num_brps.val, i32 %core_num_wrps.val
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_slots.0)
  %cmp1776 = icmp sgt i32 %max_slots.0, 0
  br i1 %cmp1776, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.077 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx18 = getelementptr ptr, ptr %slots.0, i32 %i.077
  %10 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx18, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.then19, label %for.inc

if.then19:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx18.le = getelementptr ptr, ptr %slots.0, i32 %i.077
  %12 = ptrtoint ptr %arrayidx18.le to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %bp, ptr %arrayidx18.le, align 4
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.077, 1
  %exitcond.not = icmp eq i32 %inc, %max_slots.0
  br i1 %exitcond.not, label %for.inc.do.end25_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.do.end25_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end25

for.end:                                          ; preds = %if.then19, %entry.for.end_crit_edge
  %i.074 = phi i32 [ %i.077, %if.then19 ], [ 0, %entry.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.074, i32 %max_slots.0)
  %cmp21 = icmp eq i32 %i.074, %max_slots.0
  br i1 %cmp21, label %for.end.do.end25_crit_edge, label %if.end28

for.end.do.end25_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end25

do.end25:                                         ; preds = %for.end.do.end25_crit_edge, %for.inc.do.end25_crit_edge
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #15
  br label %cleanup

if.end28:                                         ; preds = %for.end
  %step_ctrl = getelementptr inbounds %struct.perf_event, ptr %bp, i32 0, i32 25, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %step_ctrl to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load29 = load i32, ptr %step_ctrl, align 4
  %bf.clear30 = and i32 %bf.load29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear30)
  %tobool31.not = icmp eq i32 %bf.clear30, 0
  br i1 %tobool31.not, label %if.end28.if.end45_crit_edge, label %if.then32

if.end28.if.end45_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.then32:                                        ; preds = %if.end28
  %trigger = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %hw.i, i32 0, i32 1
  %14 = ptrtoint ptr %trigger to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %trigger, align 4
  %and = and i32 %15, -4
  %or17.i72 = and i32 %bf.load29, 4202495
  %16 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load37 = load i32, ptr %ctrl1, align 4
  %17 = and i32 %bf.load37, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp40.not = icmp eq i32 %17, 0
  br i1 %cmp40.not, label %if.then32.if.end45_crit_edge, label %if.then41

if.then32.if.end45_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.then41:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  %18 = load i32, ptr @core_num_brps, align 4
  %add42 = add i32 %18, 80
  %add43 = add i32 %18, 64
  br label %if.end45

if.end45:                                         ; preds = %if.then41, %if.then32.if.end45_crit_edge, %if.end28.if.end45_crit_edge
  %ctrl.0 = phi i32 [ %or17.i72, %if.then41 ], [ %or17.i72, %if.then32.if.end45_crit_edge ], [ %or, %if.end28.if.end45_crit_edge ]
  %addr.0 = phi i32 [ %and, %if.then41 ], [ %and, %if.then32.if.end45_crit_edge ], [ %1, %if.end28.if.end45_crit_edge ]
  %val_base.1 = phi i32 [ %add43, %if.then41 ], [ %.84, %if.then32.if.end45_crit_edge ], [ %.84, %if.end28.if.end45_crit_edge ]
  %ctrl_base.1 = phi i32 [ %add42, %if.then41 ], [ %.85, %if.then32.if.end45_crit_edge ], [ %.85, %if.end28.if.end45_crit_edge ]
  %i.1 = phi i32 [ 0, %if.then41 ], [ %i.074, %if.then32.if.end45_crit_edge ], [ %i.074, %if.end28.if.end45_crit_edge ]
  %add46 = add i32 %i.1, %val_base.1
  tail call fastcc void @write_wb_reg(i32 noundef %add46, i32 noundef %addr.0)
  %add47 = add i32 %i.1, %ctrl_base.1
  tail call fastcc void @write_wb_reg(i32 noundef %add47, i32 noundef %ctrl.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %do.end25
  %retval.0 = phi i32 [ -16, %do.end25 ], [ 0, %if.end45 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @write_wb_reg(i32 noundef %n, i32 noundef %val) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %n to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %n, label %do.end191 [
    i32 64, label %do.body
    i32 65, label %do.body2
    i32 66, label %do.body5
    i32 67, label %do.body8
    i32 68, label %do.body11
    i32 69, label %do.body14
    i32 70, label %do.body17
    i32 71, label %do.body20
    i32 72, label %do.body23
    i32 73, label %do.body26
    i32 74, label %do.body29
    i32 75, label %do.body32
    i32 76, label %do.body35
    i32 77, label %do.body38
    i32 78, label %do.body41
    i32 79, label %do.body44
    i32 80, label %do.body47
    i32 81, label %do.body50
    i32 82, label %do.body53
    i32 83, label %do.body56
    i32 84, label %do.body59
    i32 85, label %do.body62
    i32 86, label %do.body65
    i32 87, label %do.body68
    i32 88, label %do.body71
    i32 89, label %do.body74
    i32 90, label %do.body77
    i32 91, label %do.body80
    i32 92, label %do.body83
    i32 93, label %do.body86
    i32 94, label %do.body89
    i32 95, label %do.body92
    i32 96, label %do.body95
    i32 97, label %do.body98
    i32 98, label %do.body101
    i32 99, label %do.body104
    i32 100, label %do.body107
    i32 101, label %do.body110
    i32 102, label %do.body113
    i32 103, label %do.body116
    i32 104, label %do.body119
    i32 105, label %do.body122
    i32 106, label %do.body125
    i32 107, label %do.body128
    i32 108, label %do.body131
    i32 109, label %do.body134
    i32 110, label %do.body137
    i32 111, label %do.body140
    i32 112, label %do.body143
    i32 113, label %do.body146
    i32 114, label %do.body149
    i32 115, label %do.body152
    i32 116, label %do.body155
    i32 117, label %do.body158
    i32 118, label %do.body161
    i32 119, label %do.body164
    i32 120, label %do.body167
    i32 121, label %do.body170
    i32 122, label %do.body173
    i32 123, label %do.body176
    i32 124, label %do.body179
    i32 125, label %do.body182
    i32 126, label %do.body185
    i32 127, label %do.body188
  ]

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c0, 4", "r"(i32 %val) #11, !srcloc !147
  br label %sw.epilog

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c1, 4", "r"(i32 %val) #11, !srcloc !148
  br label %sw.epilog

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c2, 4", "r"(i32 %val) #11, !srcloc !149
  br label %sw.epilog

do.body8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c3, 4", "r"(i32 %val) #11, !srcloc !150
  br label %sw.epilog

do.body11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c4, 4", "r"(i32 %val) #11, !srcloc !151
  br label %sw.epilog

do.body14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c5, 4", "r"(i32 %val) #11, !srcloc !152
  br label %sw.epilog

do.body17:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c6, 4", "r"(i32 %val) #11, !srcloc !153
  br label %sw.epilog

do.body20:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c7, 4", "r"(i32 %val) #11, !srcloc !154
  br label %sw.epilog

do.body23:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c8, 4", "r"(i32 %val) #11, !srcloc !155
  br label %sw.epilog

do.body26:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c9, 4", "r"(i32 %val) #11, !srcloc !156
  br label %sw.epilog

do.body29:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c10, 4", "r"(i32 %val) #11, !srcloc !157
  br label %sw.epilog

do.body32:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c11, 4", "r"(i32 %val) #11, !srcloc !158
  br label %sw.epilog

do.body35:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c12, 4", "r"(i32 %val) #11, !srcloc !159
  br label %sw.epilog

do.body38:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c13, 4", "r"(i32 %val) #11, !srcloc !160
  br label %sw.epilog

do.body41:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c14, 4", "r"(i32 %val) #11, !srcloc !161
  br label %sw.epilog

do.body44:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c15, 4", "r"(i32 %val) #11, !srcloc !162
  br label %sw.epilog

do.body47:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c0, 5", "r"(i32 %val) #11, !srcloc !163
  br label %sw.epilog

do.body50:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c1, 5", "r"(i32 %val) #11, !srcloc !164
  br label %sw.epilog

do.body53:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c2, 5", "r"(i32 %val) #11, !srcloc !165
  br label %sw.epilog

do.body56:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c3, 5", "r"(i32 %val) #11, !srcloc !166
  br label %sw.epilog

do.body59:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c4, 5", "r"(i32 %val) #11, !srcloc !167
  br label %sw.epilog

do.body62:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c5, 5", "r"(i32 %val) #11, !srcloc !168
  br label %sw.epilog

do.body65:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c6, 5", "r"(i32 %val) #11, !srcloc !169
  br label %sw.epilog

do.body68:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c7, 5", "r"(i32 %val) #11, !srcloc !170
  br label %sw.epilog

do.body71:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c8, 5", "r"(i32 %val) #11, !srcloc !171
  br label %sw.epilog

do.body74:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c9, 5", "r"(i32 %val) #11, !srcloc !172
  br label %sw.epilog

do.body77:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c10, 5", "r"(i32 %val) #11, !srcloc !173
  br label %sw.epilog

do.body80:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c11, 5", "r"(i32 %val) #11, !srcloc !174
  br label %sw.epilog

do.body83:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c12, 5", "r"(i32 %val) #11, !srcloc !175
  br label %sw.epilog

do.body86:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c13, 5", "r"(i32 %val) #11, !srcloc !176
  br label %sw.epilog

do.body89:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c14, 5", "r"(i32 %val) #11, !srcloc !177
  br label %sw.epilog

do.body92:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c15, 5", "r"(i32 %val) #11, !srcloc !178
  br label %sw.epilog

do.body95:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c0, 6", "r"(i32 %val) #11, !srcloc !179
  br label %sw.epilog

do.body98:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c1, 6", "r"(i32 %val) #11, !srcloc !180
  br label %sw.epilog

do.body101:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c2, 6", "r"(i32 %val) #11, !srcloc !181
  br label %sw.epilog

do.body104:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c3, 6", "r"(i32 %val) #11, !srcloc !182
  br label %sw.epilog

do.body107:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c4, 6", "r"(i32 %val) #11, !srcloc !183
  br label %sw.epilog

do.body110:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c5, 6", "r"(i32 %val) #11, !srcloc !184
  br label %sw.epilog

do.body113:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c6, 6", "r"(i32 %val) #11, !srcloc !185
  br label %sw.epilog

do.body116:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c7, 6", "r"(i32 %val) #11, !srcloc !186
  br label %sw.epilog

do.body119:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c8, 6", "r"(i32 %val) #11, !srcloc !187
  br label %sw.epilog

do.body122:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c9, 6", "r"(i32 %val) #11, !srcloc !188
  br label %sw.epilog

do.body125:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c10, 6", "r"(i32 %val) #11, !srcloc !189
  br label %sw.epilog

do.body128:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c11, 6", "r"(i32 %val) #11, !srcloc !190
  br label %sw.epilog

do.body131:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c12, 6", "r"(i32 %val) #11, !srcloc !191
  br label %sw.epilog

do.body134:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c13, 6", "r"(i32 %val) #11, !srcloc !192
  br label %sw.epilog

do.body137:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c14, 6", "r"(i32 %val) #11, !srcloc !193
  br label %sw.epilog

do.body140:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c15, 6", "r"(i32 %val) #11, !srcloc !194
  br label %sw.epilog

do.body143:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c0, 7", "r"(i32 %val) #11, !srcloc !195
  br label %sw.epilog

do.body146:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c1, 7", "r"(i32 %val) #11, !srcloc !196
  br label %sw.epilog

do.body149:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c2, 7", "r"(i32 %val) #11, !srcloc !197
  br label %sw.epilog

do.body152:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c3, 7", "r"(i32 %val) #11, !srcloc !198
  br label %sw.epilog

do.body155:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c4, 7", "r"(i32 %val) #11, !srcloc !199
  br label %sw.epilog

do.body158:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c5, 7", "r"(i32 %val) #11, !srcloc !200
  br label %sw.epilog

do.body161:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c6, 7", "r"(i32 %val) #11, !srcloc !201
  br label %sw.epilog

do.body164:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c7, 7", "r"(i32 %val) #11, !srcloc !202
  br label %sw.epilog

do.body167:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c8, 7", "r"(i32 %val) #11, !srcloc !203
  br label %sw.epilog

do.body170:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c9, 7", "r"(i32 %val) #11, !srcloc !204
  br label %sw.epilog

do.body173:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c10, 7", "r"(i32 %val) #11, !srcloc !205
  br label %sw.epilog

do.body176:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c11, 7", "r"(i32 %val) #11, !srcloc !206
  br label %sw.epilog

do.body179:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c12, 7", "r"(i32 %val) #11, !srcloc !207
  br label %sw.epilog

do.body182:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c13, 7", "r"(i32 %val) #11, !srcloc !208
  br label %sw.epilog

do.body185:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c14, 7", "r"(i32 %val) #11, !srcloc !209
  br label %sw.epilog

do.body188:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c15, 7", "r"(i32 %val) #11, !srcloc !210
  br label %sw.epilog

do.end191:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %n) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end191, %do.body188, %do.body185, %do.body182, %do.body179, %do.body176, %do.body173, %do.body170, %do.body167, %do.body164, %do.body161, %do.body158, %do.body155, %do.body152, %do.body149, %do.body146, %do.body143, %do.body140, %do.body137, %do.body134, %do.body131, %do.body128, %do.body125, %do.body122, %do.body119, %do.body116, %do.body113, %do.body110, %do.body107, %do.body104, %do.body101, %do.body98, %do.body95, %do.body92, %do.body89, %do.body86, %do.body83, %do.body80, %do.body77, %do.body74, %do.body71, %do.body68, %do.body65, %do.body62, %do.body59, %do.body56, %do.body53, %do.body50, %do.body47, %do.body44, %do.body41, %do.body38, %do.body35, %do.body32, %do.body29, %do.body26, %do.body23, %do.body20, %do.body17, %do.body14, %do.body11, %do.body8, %do.body5, %do.body2, %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !211
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @arch_uninstall_hw_breakpoint(ptr noundef readonly %bp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hw.i = getelementptr inbounds %struct.perf_event, ptr %bp, i32 0, i32 25
  %ctrl = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %hw.i, i32 0, i32 3
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %ctrl, align 4
  %1 = and i32 %bf.load, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %2 = tail call i32 @llvm.read_register.i32(metadata !132) #11
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %. = select i1 %cmp, i32 ptrtoint (ptr @bp_on_reg to i32), i32 ptrtoint (ptr @wp_on_reg to i32)
  %.64 = select i1 %cmp, i32 80, i32 112
  %add13 = add i32 %7, %.
  %slots.0 = inttoptr i32 %add13 to ptr
  %core_num_brps.val = load i32, ptr @core_num_brps, align 4
  %core_num_wrps.val = load i32, ptr @core_num_wrps, align 4
  %max_slots.0 = select i1 %cmp, i32 %core_num_brps.val, i32 %core_num_wrps.val
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_slots.0)
  %cmp1456 = icmp sgt i32 %max_slots.0, 0
  br i1 %cmp1456, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.057 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx15 = getelementptr ptr, ptr %slots.0, i32 %i.057
  %8 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx15, align 4
  %cmp16 = icmp eq ptr %9, %bp
  br i1 %cmp16, label %if.then17, label %for.inc

if.then17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx15.le = getelementptr ptr, ptr %slots.0, i32 %i.057
  %10 = ptrtoint ptr %arrayidx15.le to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx15.le, align 4
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.057, 1
  %exitcond.not = icmp eq i32 %inc, %max_slots.0
  br i1 %exitcond.not, label %for.inc.do.end23_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.do.end23_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23

for.end:                                          ; preds = %if.then17, %entry.for.end_crit_edge
  %i.054 = phi i32 [ %i.057, %if.then17 ], [ 0, %entry.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.054, i32 %max_slots.0)
  %cmp19 = icmp eq i32 %i.054, %max_slots.0
  br i1 %cmp19, label %for.end.do.end23_crit_edge, label %if.end26

for.end.do.end23_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23

do.end23:                                         ; preds = %for.end.do.end23_crit_edge, %for.inc.do.end23_crit_edge
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #15
  br label %cleanup

if.end26:                                         ; preds = %for.end
  %11 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load28 = load i32, ptr %ctrl, align 4
  %12 = and i32 %bf.load28, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp31.not = icmp eq i32 %12, 0
  br i1 %cmp31.not, label %if.end26.if.end36_crit_edge, label %land.lhs.true

if.end26.if.end36_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

land.lhs.true:                                    ; preds = %if.end26
  %step_ctrl = getelementptr inbounds %struct.perf_event, ptr %bp, i32 0, i32 25, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %step_ctrl to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load32 = load i32, ptr %step_ctrl, align 4
  %bf.clear33 = and i32 %bf.load32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear33)
  %tobool.not = icmp eq i32 %bf.clear33, 0
  br i1 %tobool.not, label %land.lhs.true.if.end36_crit_edge, label %if.then34

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then34:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %14 = load i32, ptr @core_num_brps, align 4
  %add35 = add i32 %14, 80
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %land.lhs.true.if.end36_crit_edge, %if.end26.if.end36_crit_edge
  %base.1 = phi i32 [ %add35, %if.then34 ], [ %.64, %land.lhs.true.if.end36_crit_edge ], [ %.64, %if.end26.if.end36_crit_edge ]
  %i.1 = phi i32 [ 0, %if.then34 ], [ %i.054, %land.lhs.true.if.end36_crit_edge ], [ %i.054, %if.end26.if.end36_crit_edge ]
  %add37 = add i32 %i.1, %base.1
  tail call fastcc void @write_wb_reg(i32 noundef %add37, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %do.end23
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @arch_check_bp_in_kernelspace(ptr nocapture noundef readonly %hw) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw, align 4
  %ctrl = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %ctrl, align 4
  %bf.lshr = lshr i32 %bf.load, 5
  %conv = trunc i32 %bf.lshr to i8
  %3 = add i8 %conv, 1
  %4 = tail call i8 @llvm.fshl.i8(i8 %3, i8 %3, i8 7) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %4)
  %5 = icmp ult i8 %4, 9
  br i1 %5, label %switch.lookup, label %entry.get_hbp_len.exit_crit_edge

entry.get_hbp_len.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_hbp_len.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = sext i8 %4 to i32
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.arch_check_bp_in_kernelspace, i32 0, i32 %6
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %get_hbp_len.exit

get_hbp_len.exit:                                 ; preds = %switch.lookup, %entry.get_hbp_len.exit_crit_edge
  %len_in_bytes.0.i = phi i32 [ 0, %entry.get_hbp_len.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1226833921, i32 %1)
  %cmp = icmp ugt i32 %1, -1226833921
  %add = add i32 %1, 1226833919
  %8 = add i32 %add, %len_in_bytes.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1226833920, i32 %8)
  %cmp2 = icmp ult i32 %8, 1226833920
  %narrow = select i1 %cmp, i1 %cmp2, i1 false
  %9 = zext i1 %narrow to i32
  ret i32 %9
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @arch_bp_generic_fields([1 x i32] %ctrl.coerce, ptr nocapture noundef writeonly %gen_len, ptr nocapture noundef writeonly %gen_type) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl.coerce.fca.0.extract = extractvalue [1 x i32] %ctrl.coerce, 0
  %bf.lshr = lshr i32 %ctrl.coerce.fca.0.extract, 3
  %bf.clear = and i32 %bf.lshr, 3
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.arch_bp_generic_fields, i32 0, i32 %bf.clear
  %0 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %0)
  %switch.load = load i32, ptr %switch.gep, align 4
  %1 = ptrtoint ptr %gen_type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %switch.load, ptr %gen_type, align 4
  %bf.lshr5 = lshr i32 %ctrl.coerce.fca.0.extract, 5
  %trunc = trunc i32 %bf.lshr5 to i8
  %2 = add i8 %trunc, 1
  %3 = tail call i8 @llvm.fshl.i8(i8 %2, i8 %2, i8 7)
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %3)
  %4 = icmp ult i8 %3, 9
  br i1 %4, label %switch.hole_check, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = zext i8 %3 to i16
  %switch.shifted = lshr i16 263, %switch.maskindex
  %5 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %switch.lobit.not = icmp eq i16 %5, 0
  br i1 %switch.lobit.not, label %switch.hole_check.return_crit_edge, label %switch.lookup

switch.hole_check.return_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #13
  %6 = sext i8 %3 to i32
  %switch.gep21 = getelementptr inbounds [9 x i32], ptr @switch.table.arch_bp_generic_fields.54, i32 0, i32 %6
  %7 = ptrtoint ptr %switch.gep21 to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load22 = load i32, ptr %switch.gep21, align 4
  %8 = ptrtoint ptr %gen_len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %switch.load22, ptr %gen_len, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %switch.hole_check.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %switch.lookup ], [ -22, %switch.hole_check.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hw_breakpoint_arch_parse(ptr nocapture noundef readonly %bp, ptr nocapture noundef readonly %attr, ptr nocapture noundef %hw) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c1, 0", "=r"() #11, !srcloc !212
  %1 = and i32 %0, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %bp_type.i = getelementptr inbounds %struct.perf_event_attr, ptr %attr, i32 0, i32 8
  %2 = ptrtoint ptr %bp_type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bp_type.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %3, label %if.end.out_crit_edge [
    i32 4, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb6.i
    i32 3, label %sw.bb11.i
  ]

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %ctrl.i = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %hw, i32 0, i32 3
  %5 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load.i = load i32, ptr %ctrl.i, align 4
  %bf.clear.i = and i32 %bf.load.i, -25
  store i32 %bf.clear.i, ptr %ctrl.i, align 4
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %ctrl2.i = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %hw, i32 0, i32 3
  %6 = ptrtoint ptr %ctrl2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load3.i = load i32, ptr %ctrl2.i, align 4
  %bf.clear4.i = and i32 %bf.load3.i, -25
  %bf.set5.i = or i32 %bf.clear4.i, 8
  store i32 %bf.set5.i, ptr %ctrl2.i, align 4
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %ctrl7.i = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %hw, i32 0, i32 3
  %7 = ptrtoint ptr %ctrl7.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load8.i = load i32, ptr %ctrl7.i, align 4
  %bf.clear9.i = and i32 %bf.load8.i, -25
  %bf.set10.i = or i32 %bf.clear9.i, 16
  store i32 %bf.set10.i, ptr %ctrl7.i, align 4
  br label %sw.epilog.i

sw.bb11.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %ctrl12.i = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %hw, i32 0, i32 3
  %8 = ptrtoint ptr %ctrl12.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load13.i = load i32, ptr %ctrl12.i, align 4
  %bf.set15.i = or i32 %bf.load13.i, 24
  store i32 %bf.set15.i, ptr %ctrl12.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb11.i, %sw.bb6.i, %sw.bb1.i, %sw.bb.i
  %9 = getelementptr inbounds %struct.perf_event_attr, ptr %attr, i32 0, i32 10
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %9, align 8
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.58)
  switch i64 %11, label %sw.epilog.i.out_crit_edge [
    i64 1, label %sw.epilog.i.sw.epilog42.sink.split.i_crit_edge
    i64 2, label %sw.bb21.i
    i64 4, label %sw.bb26.i
    i64 8, label %sw.bb31.i
  ]

sw.epilog.i.sw.epilog42.sink.split.i_crit_edge:   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog42.sink.split.i

sw.epilog.i.out_crit_edge:                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

sw.bb21.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog42.sink.split.i

sw.bb26.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog42.sink.split.i

sw.bb31.i:                                        ; preds = %sw.epilog.i
  %ctrl32.i = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %hw, i32 0, i32 3
  %12 = ptrtoint ptr %ctrl32.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %bf.load33.i = load i32, ptr %ctrl32.i, align 4
  %bf.set35.i = or i32 %bf.load33.i, 8160
  store i32 %bf.set35.i, ptr %ctrl32.i, align 4
  %13 = and i32 %bf.load33.i, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not.i = icmp eq i32 %13, 0
  br i1 %cmp.not.i, label %sw.bb31.i.out_crit_edge, label %land.lhs.true.i

sw.bb31.i.out_crit_edge:                          ; preds = %sw.bb31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

land.lhs.true.i:                                  ; preds = %sw.bb31.i
  %14 = load i8, ptr @max_watchpoint_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %14)
  %cmp39.i = icmp ugt i8 %14, 7
  br i1 %cmp39.i, label %land.lhs.true.i.sw.epilog42.i_crit_edge, label %land.lhs.true.i.out_crit_edge

land.lhs.true.i.out_crit_edge:                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

land.lhs.true.i.sw.epilog42.i_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog42.i

sw.epilog42.sink.split.i:                         ; preds = %sw.bb26.i, %sw.bb21.i, %sw.epilog.i.sw.epilog42.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 480, %sw.bb26.i ], [ 96, %sw.bb21.i ], [ 32, %sw.epilog.i.sw.epilog42.sink.split.i_crit_edge ]
  %ctrl17.i = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %hw, i32 0, i32 3
  %15 = ptrtoint ptr %ctrl17.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.load28.i = load i32, ptr %ctrl17.i, align 4
  %bf.clear29.i = and i32 %bf.load28.i, -8161
  %bf.set30.i = or i32 %bf.clear29.i, %.sink.i
  store i32 %bf.set30.i, ptr %ctrl17.i, align 4
  br label %sw.epilog42.i

sw.epilog42.i:                                    ; preds = %sw.epilog42.sink.split.i, %land.lhs.true.i.sw.epilog42.i_crit_edge
  %ctrl43.i = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %hw, i32 0, i32 3
  %16 = ptrtoint ptr %ctrl43.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load44.i = load i32, ptr %ctrl43.i, align 4
  %17 = and i32 %bf.load44.i, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp47.i = icmp eq i32 %17, 0
  %bf.lshr52.i = lshr i32 %bf.load44.i, 5
  %trunc.i = trunc i32 %bf.lshr52.i to i8
  br i1 %cmp47.i, label %land.lhs.true49.i, label %sw.epilog42.i.if.end64.i_crit_edge

sw.epilog42.i.if.end64.i_crit_edge:               ; preds = %sw.epilog42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64.i

land.lhs.true49.i:                                ; preds = %sw.epilog42.i
  %18 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.59)
  switch i8 %trunc.i, label %land.lhs.true49.i.out_crit_edge [
    i8 3, label %land.lhs.true49.i.if.end64.i_crit_edge
    i8 15, label %land.lhs.true49.i.if.end64.i_crit_edge88
  ]

land.lhs.true49.i.if.end64.i_crit_edge88:         ; preds = %land.lhs.true49.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64.i

land.lhs.true49.i.if.end64.i_crit_edge:           ; preds = %land.lhs.true49.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64.i

land.lhs.true49.i.out_crit_edge:                  ; preds = %land.lhs.true49.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end64.i:                                       ; preds = %land.lhs.true49.i.if.end64.i_crit_edge, %land.lhs.true49.i.if.end64.i_crit_edge88, %sw.epilog42.i.if.end64.i_crit_edge
  %19 = getelementptr inbounds %struct.perf_event_attr, ptr %attr, i32 0, i32 9
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %19, align 8
  %conv65.i = trunc i64 %21 to i32
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv65.i, ptr %hw, align 4
  %bf.clear68.i = and i32 %bf.load44.i, -7
  %bf.set69.i = or i32 %bf.clear68.i, 4
  %23 = ptrtoint ptr %ctrl43.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %bf.set69.i, ptr %ctrl43.i, align 4
  %24 = add i8 %trunc.i, 1
  %25 = tail call i8 @llvm.fshl.i8(i8 %24, i8 %24, i8 7) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %25)
  %26 = icmp ult i8 %25, 9
  br i1 %26, label %switch.lookup, label %if.end64.i.arch_check_bp_in_kernelspace.exit.i_crit_edge

if.end64.i.arch_check_bp_in_kernelspace.exit.i_crit_edge: ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %arch_check_bp_in_kernelspace.exit.i

switch.lookup:                                    ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #13
  %27 = sext i8 %25 to i32
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.hw_breakpoint_arch_parse, i32 0, i32 %27
  %28 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %28)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %arch_check_bp_in_kernelspace.exit.i

arch_check_bp_in_kernelspace.exit.i:              ; preds = %switch.lookup, %if.end64.i.arch_check_bp_in_kernelspace.exit.i_crit_edge
  %len_in_bytes.0.i.i.i = phi i32 [ 0, %if.end64.i.arch_check_bp_in_kernelspace.exit.i_crit_edge ], [ %switch.load, %switch.lookup ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1226833920, i32 %conv65.i)
  %cmp.i.i = icmp ult i32 %conv65.i, -1226833920
  %add.i.i = add i32 %conv65.i, 1226833919
  %29 = add i32 %add.i.i, %len_in_bytes.0.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1226833919, i32 %29)
  %cmp2.i.i = icmp ugt i32 %29, 1226833919
  %narrow.i.i = select i1 %cmp.i.i, i1 true, i1 %cmp2.i.i
  br i1 %narrow.i.i, label %arch_check_bp_in_kernelspace.exit.i.if.end4_crit_edge, label %if.then70.i

arch_check_bp_in_kernelspace.exit.i.if.end4_crit_edge: ; preds = %arch_check_bp_in_kernelspace.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then70.i:                                      ; preds = %arch_check_bp_in_kernelspace.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %bf.set77.i = or i32 %bf.load44.i, 6
  %30 = ptrtoint ptr %ctrl43.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %bf.set77.i, ptr %ctrl43.i, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then70.i, %arch_check_bp_in_kernelspace.exit.i.if.end4_crit_edge
  %disabled.i = getelementptr inbounds %struct.perf_event_attr, ptr %attr, i32 0, i32 6
  %31 = ptrtoint ptr %disabled.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %bf.load79.i = load i64, ptr %disabled.i, align 8
  %bf.load79.lobit.i = lshr i64 %bf.load79.i, 63
  %32 = trunc i64 %bf.load79.lobit.i to i32
  %33 = ptrtoint ptr %ctrl43.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %bf.load83.i = load i32, ptr %ctrl43.i, align 4
  %bf.clear85.i = and i32 %bf.load83.i, -4194306
  %34 = or i32 %bf.clear85.i, %32
  %bf.set86.i = xor i32 %34, 1
  store i32 %bf.set86.i, ptr %ctrl43.i, align 4
  %35 = and i32 %bf.load83.i, 8160
  call void @__sanitizer_cov_trace_const_cmp4(i32 8160, i32 %35)
  %cmp = icmp eq i32 %35, 8160
  %spec.select = select i1 %cmp, i32 7, i32 3
  %36 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %hw, align 4
  %and = and i32 %spec.select, %37
  %38 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %and, label %if.end4.out_crit_edge [
    i32 0, label %if.end4.sw.epilog_crit_edge
    i32 1, label %if.end4.sw.bb_crit_edge
    i32 2, label %if.end4.sw.bb_crit_edge89
    i32 3, label %sw.bb14
  ]

if.end4.sw.bb_crit_edge89:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end4.sw.bb_crit_edge:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end4.sw.epilog_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

sw.bb:                                            ; preds = %if.end4.sw.bb_crit_edge, %if.end4.sw.bb_crit_edge89
  %39 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %35, label %sw.bb.out_crit_edge [
    i32 96, label %sw.bb.sw.epilog_crit_edge
    i32 32, label %sw.bb.sw.epilog_crit_edge90
  ]

sw.bb.sw.epilog_crit_edge90:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb.out_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

sw.bb14:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %35)
  %cmp19 = icmp eq i32 %35, 32
  br i1 %cmp19, label %sw.bb14.sw.epilog_crit_edge, label %sw.bb14.out_crit_edge

sw.bb14.out_crit_edge:                            ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

sw.bb14.sw.epilog_crit_edge:                      ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb14.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge90, %if.end4.sw.epilog_crit_edge
  %neg = xor i32 %spec.select, -1
  %and23 = and i32 %37, %neg
  %40 = ptrtoint ptr %hw to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %and23, ptr %hw, align 4
  %bf.lshr26 = lshr i32 %bf.load83.i, 5
  %shl = shl nuw nsw i32 %bf.lshr26, %and
  %bf.value = shl i32 %shl, 5
  %bf.shl = and i32 %bf.value, 8160
  %bf.clear29 = and i32 %bf.set86.i, -4202465
  %bf.set = or i32 %bf.shl, %bf.clear29
  %41 = ptrtoint ptr %ctrl43.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %bf.set, ptr %ctrl43.i, align 4
  %overflow_handler.i = getelementptr inbounds %struct.perf_event, ptr %bp, i32 0, i32 60
  %42 = ptrtoint ptr %overflow_handler.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %overflow_handler.i, align 4
  %cmp.i = icmp eq ptr %43, @perf_event_output_forward
  br i1 %cmp.i, label %sw.epilog.if.then31_crit_edge, label %is_default_overflow_handler.exit, !prof !143

sw.epilog.if.then31_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then31

is_default_overflow_handler.exit:                 ; preds = %sw.epilog
  %cmp3.i = icmp eq ptr %43, @perf_event_output_backward
  br i1 %cmp3.i, label %is_default_overflow_handler.exit.if.then31_crit_edge, label %is_default_overflow_handler.exit.out_crit_edge

is_default_overflow_handler.exit.out_crit_edge:   ; preds = %is_default_overflow_handler.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

is_default_overflow_handler.exit.if.then31_crit_edge: ; preds = %is_default_overflow_handler.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then31

if.then31:                                        ; preds = %is_default_overflow_handler.exit.if.then31_crit_edge, %sw.epilog.if.then31_crit_edge
  %44 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #14, !srcloc !142
  %45 = and i32 %44, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 983040, i32 %45)
  %cmp.not.i.i = icmp eq i32 %45, 983040
  br i1 %cmp.not.i.i, label %get_debug_arch.exit.i, label %land.end.i.i

land.end.i.i:                                     ; preds = %if.then31
  %.b21.i.i = load i1, ptr @get_debug_arch.__already_done, align 1
  br i1 %.b21.i.i, label %land.end.i.i.cleanup_crit_edge, label %if.then5.i.i, !prof !143

land.end.i.i.cleanup_crit_edge:                   ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then5.i.i:                                     ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @get_debug_arch.__already_done, align 1
  %call6.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #15
  br label %cleanup

get_debug_arch.exit.i:                            ; preds = %if.then31
  %46 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c0, 0", "=r"() #11, !srcloc !144
  %47 = and i32 %46, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %47)
  %cmp.i76 = icmp ugt i32 %47, 131072
  br i1 %cmp.i76, label %core_has_mismatch_brps.exit, label %get_debug_arch.exit.i.cleanup_crit_edge

get_debug_arch.exit.i.cleanup_crit_edge:          ; preds = %get_debug_arch.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

core_has_mismatch_brps.exit:                      ; preds = %get_debug_arch.exit.i
  %48 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c0, 0", "=r"() #11, !srcloc !145
  %49 = and i32 %48, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp3.i77.not = icmp eq i32 %49, 0
  br i1 %cmp3.i77.not, label %core_has_mismatch_brps.exit.cleanup_crit_edge, label %if.end35

core_has_mismatch_brps.exit.cleanup_crit_edge:    ; preds = %core_has_mismatch_brps.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end35:                                         ; preds = %core_has_mismatch_brps.exit
  %50 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %hw, align 4
  %52 = ptrtoint ptr %ctrl43.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %bf.load.i79 = load i32, ptr %ctrl43.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i79, 5
  %conv.i = trunc i32 %bf.lshr.i to i8
  %53 = add i8 %conv.i, 1
  %54 = tail call i8 @llvm.fshl.i8(i8 %53, i8 %53, i8 7) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %54)
  %55 = icmp ult i8 %54, 9
  br i1 %55, label %switch.lookup85, label %if.end35.arch_check_bp_in_kernelspace.exit_crit_edge

if.end35.arch_check_bp_in_kernelspace.exit_crit_edge: ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %arch_check_bp_in_kernelspace.exit

switch.lookup85:                                  ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  %56 = sext i8 %54 to i32
  %switch.gep86 = getelementptr inbounds [9 x i32], ptr @switch.table.hw_breakpoint_arch_parse.55, i32 0, i32 %56
  %57 = ptrtoint ptr %switch.gep86 to i32
  call void @__asan_load4_noabort(i32 %57)
  %switch.load87 = load i32, ptr %switch.gep86, align 4
  br label %arch_check_bp_in_kernelspace.exit

arch_check_bp_in_kernelspace.exit:                ; preds = %switch.lookup85, %if.end35.arch_check_bp_in_kernelspace.exit_crit_edge
  %len_in_bytes.0.i.i = phi i32 [ 0, %if.end35.arch_check_bp_in_kernelspace.exit_crit_edge ], [ %switch.load87, %switch.lookup85 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1226833920, i32 %51)
  %cmp.i80 = icmp ult i32 %51, -1226833920
  %add.i = add i32 %51, 1226833919
  %58 = add i32 %add.i, %len_in_bytes.0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1226833919, i32 %58)
  %cmp2.i = icmp ugt i32 %58, 1226833919
  %narrow.i = select i1 %cmp.i80, i1 true, i1 %cmp2.i
  br i1 %narrow.i, label %if.end39, label %arch_check_bp_in_kernelspace.exit.cleanup_crit_edge

arch_check_bp_in_kernelspace.exit.cleanup_crit_edge: ; preds = %arch_check_bp_in_kernelspace.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end39:                                         ; preds = %arch_check_bp_in_kernelspace.exit
  %target = getelementptr inbounds %struct.perf_event, ptr %bp, i32 0, i32 25, i32 1
  %59 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %target, align 8
  %tobool41.not = icmp eq ptr %60, null
  br i1 %tobool41.not, label %if.end39.cleanup_crit_edge, label %if.end43

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end43:                                         ; preds = %if.end39
  %call44 = tail call fastcc i32 @debug_exception_updates_fsr()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %land.lhs.true, label %if.end43.out_crit_edge

if.end43.out_crit_edge:                           ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

land.lhs.true:                                    ; preds = %if.end43
  %61 = ptrtoint ptr %ctrl43.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %bf.load47 = load i32, ptr %ctrl43.i, align 4
  %bf.lshr48 = lshr i32 %bf.load47, 3
  %bf.clear49 = and i32 %bf.lshr48, 3
  %bf.clear49.off = add nsw i32 %bf.clear49, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bf.clear49.off)
  %switch = icmp ult i32 %bf.clear49.off, 2
  br i1 %switch, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

out:                                              ; preds = %land.lhs.true.out_crit_edge, %if.end43.out_crit_edge, %is_default_overflow_handler.exit.out_crit_edge, %sw.bb14.out_crit_edge, %sw.bb.out_crit_edge, %if.end4.out_crit_edge, %land.lhs.true49.i.out_crit_edge, %land.lhs.true.i.out_crit_edge, %sw.bb31.i.out_crit_edge, %sw.epilog.i.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end43.out_crit_edge ], [ 0, %is_default_overflow_handler.exit.out_crit_edge ], [ -22, %sw.bb14.out_crit_edge ], [ -22, %if.end4.out_crit_edge ], [ 0, %land.lhs.true.out_crit_edge ], [ -22, %if.end.out_crit_edge ], [ -22, %sw.bb31.i.out_crit_edge ], [ -22, %land.lhs.true.i.out_crit_edge ], [ -22, %sw.epilog.i.out_crit_edge ], [ -22, %land.lhs.true49.i.out_crit_edge ], [ -22, %sw.bb.out_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %out, %land.lhs.true.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %arch_check_bp_in_kernelspace.exit.cleanup_crit_edge, %core_has_mismatch_brps.exit.cleanup_crit_edge, %get_debug_arch.exit.i.cleanup_crit_edge, %if.then5.i.i, %land.end.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -19, %entry.cleanup_crit_edge ], [ -22, %core_has_mismatch_brps.exit.cleanup_crit_edge ], [ -1, %arch_check_bp_in_kernelspace.exit.cleanup_crit_edge ], [ -22, %if.end39.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %get_debug_arch.exit.i.cleanup_crit_edge ], [ -22, %if.then5.i.i ], [ -22, %land.end.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @debug_exception_updates_fsr() unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #14, !srcloc !142
  %1 = and i32 %0, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 983040, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 983040
  br i1 %cmp.not.i, label %do.body15.i, label %land.end.i

land.end.i:                                       ; preds = %entry
  %.b21.i = load i1, ptr @get_debug_arch.__already_done, align 1
  br i1 %.b21.i, label %land.end.i.get_debug_arch.exit_crit_edge, label %if.then5.i, !prof !143

land.end.i.get_debug_arch.exit_crit_edge:         ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_debug_arch.exit

if.then5.i:                                       ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @get_debug_arch.__already_done, align 1
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #15
  br label %get_debug_arch.exit

do.body15.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c0, 0", "=r"() #11, !srcloc !144
  %3 = and i32 %2, 917504
  call void @__sanitizer_cov_trace_const_cmp4(i32 327680, i32 %3)
  %phi.cmp = icmp ugt i32 %3, 327680
  %phi.cast = zext i1 %phi.cmp to i32
  br label %get_debug_arch.exit

get_debug_arch.exit:                              ; preds = %do.body15.i, %if.then5.i, %land.end.i.get_debug_arch.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.cast, %do.body15.i ], [ 0, %if.then5.i ], [ 0, %land.end.i.get_debug_arch.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @arch_hw_breakpoint_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #14, !srcloc !142
  %1 = and i32 %0, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 983040, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 983040
  br i1 %cmp.not.i, label %debug_arch_supported.exit, label %land.end.i

land.end.i:                                       ; preds = %entry
  %.b21.i = load i1, ptr @get_debug_arch.__already_done, align 1
  br i1 %.b21.i, label %land.end.i.i.thread, label %land.end.i.i, !prof !143

land.end.i.i.thread:                              ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #13
  store i8 1, ptr @debug_arch, align 1
  br label %if.end.thread

land.end.i.i:                                     ; preds = %land.end.i
  store i1 true, ptr @get_debug_arch.__already_done, align 1
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #15
  %.b21.i.i.pr = load i1, ptr @get_debug_arch.__already_done, align 1
  store i8 1, ptr @debug_arch, align 1
  br i1 %.b21.i.i.pr, label %land.end.i.i.if.end.thread_crit_edge, label %if.then5.i.i, !prof !143

land.end.i.i.if.end.thread_crit_edge:             ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.thread

if.then5.i.i:                                     ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @get_debug_arch.__already_done, align 1
  %call6.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #15
  br label %if.end.thread

debug_arch_supported.exit:                        ; preds = %entry
  %2 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c0, 0", "=r"() #11, !srcloc !144
  %shr18.i = lshr i32 %2, 16
  %3 = trunc i32 %shr18.i to i8
  %conv.i = and i8 %3, 15
  store i8 %conv.i, ptr @debug_arch, align 1
  %4 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c0, 0", "=r"() #11, !srcloc !144
  %shr18.i.i = lshr i32 %4, 16
  %5 = trunc i32 %shr18.i.i to i8
  %conv.i.i = and i8 %5, 15
  %6 = add nsw i8 %conv.i.i, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -3, i8 %6)
  %7 = icmp ult i8 %6, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %conv.i.i)
  %cmp6.i = icmp ult i8 %conv.i.i, 5
  %tobool.not = and i1 %cmp6.i, %7
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %debug_arch_supported.exit
  call void @__sanitizer_cov_trace_pc() #13
  %8 = load i8, ptr @debug_arch, align 1
  %conv = zext i8 %8 to i32
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %conv) #15
  br label %cleanup

if.end:                                           ; preds = %debug_arch_supported.exit
  %and.i = and i32 %0, -16711696
  call void @__sanitizer_cov_trace_const_cmp4(i32 1358955216, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 1358955216
  br i1 %cmp, label %if.end.do.end8_crit_edge, label %get_debug_arch.exit.i

if.end.do.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

if.end.thread:                                    ; preds = %if.then5.i.i, %land.end.i.i.if.end.thread_crit_edge, %land.end.i.i.thread
  %and.i107 = and i32 %0, -16711696
  call void @__sanitizer_cov_trace_const_cmp4(i32 1358955216, i32 %and.i107)
  %cmp108 = icmp eq i32 %and.i107, 1358955216
  br i1 %cmp108, label %if.end.thread.do.end8_crit_edge, label %land.end.i.i70

if.end.thread.do.end8_crit_edge:                  ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

do.end8:                                          ; preds = %if.end.thread.do.end8_crit_edge, %if.end.do.end8_crit_edge
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #15
  br label %cleanup

land.end.i.i70:                                   ; preds = %if.end.thread
  %.b21.i.i69 = load i1, ptr @get_debug_arch.__already_done, align 1
  br i1 %.b21.i.i69, label %land.end.i.i70.sw.default.i_crit_edge, label %if.then5.i.i72, !prof !143

land.end.i.i70.sw.default.i_crit_edge:            ; preds = %land.end.i.i70
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.default.i

if.then5.i.i72:                                   ; preds = %land.end.i.i70
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @get_debug_arch.__already_done, align 1
  %call6.i.i71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #15
  br label %sw.default.i

get_debug_arch.exit.i:                            ; preds = %if.end
  %9 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c0, 0", "=r"() #11, !srcloc !144
  %shr18.i.i73 = lshr i32 %9, 16
  %10 = trunc i32 %shr18.i.i73 to i4
  %11 = zext i4 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.62)
  switch i4 %10, label %get_debug_arch.exit.i.sw.default.i_crit_edge [
    i4 5, label %get_debug_arch.exit.i.core_has_os_save_restore.exit_crit_edge
    i4 3, label %do.body.i
  ]

get_debug_arch.exit.i.core_has_os_save_restore.exit_crit_edge: ; preds = %get_debug_arch.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %core_has_os_save_restore.exit

get_debug_arch.exit.i.sw.default.i_crit_edge:     ; preds = %get_debug_arch.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.default.i

do.body.i:                                        ; preds = %get_debug_arch.exit.i
  %12 = tail call i32 asm sideeffect "mrc p14, 0, $0, c1,c1, 4", "=r"() #11, !srcloc !213
  %and.i74 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i74)
  %tobool.not.i = icmp eq i32 %and.i74, 0
  br i1 %tobool.not.i, label %do.body.i.sw.default.i_crit_edge, label %do.body.i.core_has_os_save_restore.exit_crit_edge

do.body.i.core_has_os_save_restore.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %core_has_os_save_restore.exit

do.body.i.sw.default.i_crit_edge:                 ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.default.i

sw.default.i:                                     ; preds = %do.body.i.sw.default.i_crit_edge, %get_debug_arch.exit.i.sw.default.i_crit_edge, %if.then5.i.i72, %land.end.i.i70.sw.default.i_crit_edge
  br label %core_has_os_save_restore.exit

core_has_os_save_restore.exit:                    ; preds = %sw.default.i, %do.body.i.core_has_os_save_restore.exit_crit_edge, %get_debug_arch.exit.i.core_has_os_save_restore.exit_crit_edge
  %retval.0.i75 = phi i1 [ false, %sw.default.i ], [ true, %get_debug_arch.exit.i.core_has_os_save_restore.exit_crit_edge ], [ true, %do.body.i.core_has_os_save_restore.exit_crit_edge ]
  %frombool = zext i1 %retval.0.i75 to i8
  store i8 %frombool, ptr @has_ossr, align 1
  %13 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c0, 0", "=r"() #11, !srcloc !145
  %shr.i.i = lshr i32 %13, 24
  %and.i.i = and i32 %shr.i.i, 15
  %add.i.i = add nuw nsw i32 %and.i.i, 1
  br i1 %cmp.not.i, label %get_debug_arch.exit.i.i, label %land.end.i.i.i

land.end.i.i.i:                                   ; preds = %core_has_os_save_restore.exit
  %.b21.i.i.i = load i1, ptr @get_debug_arch.__already_done, align 1
  br i1 %.b21.i.i.i, label %land.end.i.i78.thread, label %land.end.i.i78, !prof !143

land.end.i.i78.thread:                            ; preds = %land.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i32 %add.i.i, ptr @core_num_brps, align 4
  br label %get_num_wrps.exit

get_debug_arch.exit.i.i:                          ; preds = %core_has_os_save_restore.exit
  %14 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c0, 0", "=r"() #11, !srcloc !144
  %15 = and i32 %14, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %15)
  %cmp.i.i = icmp ugt i32 %15, 131072
  br i1 %cmp.i.i, label %core_has_mismatch_brps.exit.i, label %get_debug_arch.exit.i.i.get_num_brps.exit.thread109_crit_edge

get_debug_arch.exit.i.i.get_num_brps.exit.thread109_crit_edge: ; preds = %get_debug_arch.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_num_brps.exit.thread109

core_has_mismatch_brps.exit.i:                    ; preds = %get_debug_arch.exit.i.i
  %16 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c0, 0", "=r"() #11, !srcloc !145
  %17 = and i32 %16, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp3.i.not.i = icmp eq i32 %17, 0
  br i1 %cmp3.i.not.i, label %core_has_mismatch_brps.exit.i.get_num_brps.exit.thread109_crit_edge, label %core_has_mismatch_brps.exit.i.get_debug_arch.exit.i81_crit_edge

core_has_mismatch_brps.exit.i.get_debug_arch.exit.i81_crit_edge: ; preds = %core_has_mismatch_brps.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_debug_arch.exit.i81

core_has_mismatch_brps.exit.i.get_num_brps.exit.thread109_crit_edge: ; preds = %core_has_mismatch_brps.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_num_brps.exit.thread109

get_num_brps.exit.thread109:                      ; preds = %core_has_mismatch_brps.exit.i.get_num_brps.exit.thread109_crit_edge, %get_debug_arch.exit.i.i.get_num_brps.exit.thread109_crit_edge
  br label %get_debug_arch.exit.i81

land.end.i.i78:                                   ; preds = %land.end.i.i.i
  store i1 true, ptr @get_debug_arch.__already_done, align 1
  %call6.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #15
  %.b21.i.i77.pr = load i1, ptr @get_debug_arch.__already_done, align 1
  store i32 %add.i.i, ptr @core_num_brps, align 4
  br i1 %.b21.i.i77.pr, label %land.end.i.i78.get_num_wrps.exit_crit_edge, label %if.then5.i.i80, !prof !143

land.end.i.i78.get_num_wrps.exit_crit_edge:       ; preds = %land.end.i.i78
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_num_wrps.exit

if.then5.i.i80:                                   ; preds = %land.end.i.i78
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @get_debug_arch.__already_done, align 1
  %call6.i.i79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #15
  br label %get_num_wrps.exit

get_debug_arch.exit.i81:                          ; preds = %get_num_brps.exit.thread109, %core_has_mismatch_brps.exit.i.get_debug_arch.exit.i81_crit_edge
  %storemerge = phi i32 [ %add.i.i, %get_num_brps.exit.thread109 ], [ %and.i.i, %core_has_mismatch_brps.exit.i.get_debug_arch.exit.i81_crit_edge ]
  store i32 %storemerge, ptr @core_num_brps, align 4
  %18 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c0, 0", "=r"() #11, !srcloc !144
  %19 = and i32 %18, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 327680, i32 %19)
  %cmp.i = icmp ult i32 %19, 327680
  br i1 %cmp.i, label %get_debug_arch.exit.i81.get_num_wrps.exit_crit_edge, label %if.end.i

get_debug_arch.exit.i81.get_num_wrps.exit_crit_edge: ; preds = %get_debug_arch.exit.i81
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_num_wrps.exit

if.end.i:                                         ; preds = %get_debug_arch.exit.i81
  call void @__sanitizer_cov_trace_pc() #13
  %20 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c0, 0", "=r"() #11, !srcloc !146
  %shr.i.i82 = lshr i32 %20, 28
  %add.i.i83 = add nuw nsw i32 %shr.i.i82, 1
  br label %get_num_wrps.exit

get_num_wrps.exit:                                ; preds = %if.end.i, %get_debug_arch.exit.i81.get_num_wrps.exit_crit_edge, %if.then5.i.i80, %land.end.i.i78.get_num_wrps.exit_crit_edge, %land.end.i.i78.thread
  %retval.0.i84 = phi i32 [ %add.i.i83, %if.end.i ], [ 1, %get_debug_arch.exit.i81.get_num_wrps.exit_crit_edge ], [ 1, %if.then5.i.i80 ], [ 1, %land.end.i.i78.get_num_wrps.exit_crit_edge ], [ 1, %land.end.i.i78.thread ]
  store i32 %retval.0.i84, ptr @core_num_wrps, align 4
  tail call void @cpus_read_lock() #11
  tail call void @register_undef_hook(ptr noundef nonnull @debug_reg_hook) #11
  %call.i = tail call i32 @__cpuhp_setup_state_cpuslocked(i32 noundef 194, ptr noundef nonnull @.str.15, i1 noundef zeroext true, ptr noundef nonnull @dbg_reset_online, ptr noundef null, i1 noundef zeroext false) #11
  tail call void @unregister_undef_hook(ptr noundef nonnull @debug_reg_hook) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp16 = icmp slt i32 %call.i, 0
  br i1 %cmp16, label %if.then45.thread, label %cpumask_empty.exit, !prof !214

if.then45.thread:                                 ; preds = %get_num_wrps.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1163, i32 noundef 9, ptr noundef null) #11
  store i32 0, ptr @core_num_brps, align 4
  store i32 0, ptr @core_num_wrps, align 4
  br label %if.end49

cpumask_empty.exit:                               ; preds = %get_num_wrps.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i = tail call i32 @_find_first_bit_be(ptr noundef nonnull @debug_err_mask, i32 noundef %21) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %21)
  %cmp4.i.i = icmp eq i32 %call.i.i, %21
  br i1 %cmp4.i.i, label %do.end53, label %if.then45

if.then45:                                        ; preds = %cpumask_empty.exit
  store i32 0, ptr @core_num_brps, align 4
  store i32 0, ptr @core_num_wrps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp46.not = icmp eq i32 %call.i, 0
  br i1 %cmp46.not, label %if.then45.if.end49_crit_edge, label %if.then48

if.then45.if.end49_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.then48:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__cpuhp_remove_state_cpuslocked(i32 noundef %call.i, i1 noundef zeroext false) #11
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.then45.if.end49_crit_edge, %if.then45.thread
  tail call void @cpus_read_unlock() #11
  br label %cleanup

do.end53:                                         ; preds = %cpumask_empty.exit
  %22 = load i32, ptr @core_num_brps, align 4
  br i1 %cmp.not.i, label %get_debug_arch.exit.i94, label %land.end.i.i90

land.end.i.i90:                                   ; preds = %do.end53
  %.b21.i.i89 = load i1, ptr @get_debug_arch.__already_done, align 1
  br i1 %.b21.i.i89, label %land.end.i.i90.core_has_mismatch_brps.exit.thread_crit_edge, label %if.then5.i.i92, !prof !143

land.end.i.i90.core_has_mismatch_brps.exit.thread_crit_edge: ; preds = %land.end.i.i90
  call void @__sanitizer_cov_trace_pc() #13
  br label %core_has_mismatch_brps.exit.thread

if.then5.i.i92:                                   ; preds = %land.end.i.i90
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @get_debug_arch.__already_done, align 1
  %call6.i.i91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #15
  br label %core_has_mismatch_brps.exit.thread

get_debug_arch.exit.i94:                          ; preds = %do.end53
  %23 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c0, 0", "=r"() #11, !srcloc !144
  %24 = and i32 %23, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %24)
  %cmp.i93 = icmp ugt i32 %24, 131072
  br i1 %cmp.i93, label %core_has_mismatch_brps.exit, label %get_debug_arch.exit.i94.core_has_mismatch_brps.exit.thread_crit_edge

get_debug_arch.exit.i94.core_has_mismatch_brps.exit.thread_crit_edge: ; preds = %get_debug_arch.exit.i94
  call void @__sanitizer_cov_trace_pc() #13
  br label %core_has_mismatch_brps.exit.thread

core_has_mismatch_brps.exit:                      ; preds = %get_debug_arch.exit.i94
  %25 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c0, 0", "=r"() #11, !srcloc !145
  %26 = and i32 %25, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp3.i.not = icmp eq i32 %26, 0
  br i1 %cmp3.i.not, label %core_has_mismatch_brps.exit.core_has_mismatch_brps.exit.thread_crit_edge, label %core_has_mismatch_brps.exit._crit_edge

core_has_mismatch_brps.exit._crit_edge:           ; preds = %core_has_mismatch_brps.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %27

core_has_mismatch_brps.exit.core_has_mismatch_brps.exit.thread_crit_edge: ; preds = %core_has_mismatch_brps.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %core_has_mismatch_brps.exit.thread

core_has_mismatch_brps.exit.thread:               ; preds = %core_has_mismatch_brps.exit.core_has_mismatch_brps.exit.thread_crit_edge, %get_debug_arch.exit.i94.core_has_mismatch_brps.exit.thread_crit_edge, %if.then5.i.i92, %land.end.i.i90.core_has_mismatch_brps.exit.thread_crit_edge
  br label %27

27:                                               ; preds = %core_has_mismatch_brps.exit.thread, %core_has_mismatch_brps.exit._crit_edge
  %28 = phi ptr [ @.str.20, %core_has_mismatch_brps.exit.thread ], [ @.str.19, %core_has_mismatch_brps.exit._crit_edge ]
  %29 = load i32, ptr @core_num_wrps, align 4
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %22, ptr noundef nonnull %28, i32 noundef %29) #15
  %30 = load i8, ptr @debug_arch, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %30)
  %cmp.i96 = icmp ult i8 %30, 3
  br i1 %cmp.i96, label %.get_max_wp_len.exit_crit_edge, label %if.end.i99

.get_max_wp_len.exit_crit_edge:                   ; preds = %27
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_max_wp_len.exit

if.end.i99:                                       ; preds = %27
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c0, 6", "r"(i32 0) #11, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !211
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c0, 7", "r"(i32 8160) #11, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !211
  %31 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c0, 7", "=r"() #11, !srcloc !215
  %and.i97 = and i32 %31, 8160
  call void @__sanitizer_cov_trace_const_cmp4(i32 8160, i32 %and.i97)
  %cmp3.i98 = icmp eq i32 %and.i97, 8160
  %spec.select.i = select i1 %cmp3.i98, i8 8, i8 4
  br label %get_max_wp_len.exit

get_max_wp_len.exit:                              ; preds = %if.end.i99, %.get_max_wp_len.exit_crit_edge
  %size.0.i = phi i8 [ 4, %.get_max_wp_len.exit_crit_edge ], [ %spec.select.i, %if.end.i99 ]
  store i8 %size.0.i, ptr @max_watchpoint_len, align 1
  %conv63 = zext i8 %size.0.i to i32
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %conv63) #15
  tail call void @hook_fault_code(i32 noundef 2, ptr noundef nonnull @hw_breakpoint_pending, i32 noundef 5, i32 noundef 4, ptr noundef nonnull @.str.24) #11
  tail call void @hook_ifault_code(i32 noundef 2, ptr noundef nonnull @hw_breakpoint_pending, i32 noundef 5, i32 noundef 4, ptr noundef nonnull @.str.25) #11
  tail call void @cpus_read_unlock() #11
  %call.i100 = tail call i32 @cpu_pm_register_notifier(ptr noundef nonnull @dbg_cpu_pm_nb) #11
  br label %cleanup

cleanup:                                          ; preds = %get_max_wp_len.exit, %if.end49, %do.end8, %do.end
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @hw_breakpoint_pmu_read(ptr nocapture noundef %bp) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @hw_breakpoint_exceptions_notify(ptr nocapture noundef readnone %unused, i32 noundef %val, ptr nocapture noundef readnone %data) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_event_output_forward(ptr noundef, ptr noundef, ptr noundef) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_event_output_backward(ptr noundef, ptr noundef, ptr noundef) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_lock() local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_undef_hook(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dbg_reset_online(i32 noundef %cpu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !216
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #11, !srcloc !217
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_off() #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @reset_ctrl_regs(i32 noundef %cpu)
  tail call void @trace_hardirqs_on() #11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !218
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_undef_hook(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_unlock() local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @hook_fault_code(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_breakpoint_pending(i32 noundef %addr, i32 noundef %fsr, ptr noundef %regs) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !132) #11
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !219
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 16
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %and = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body1, label %entry.do.body4_crit_edge

entry.do.body4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body4

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_on() #11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !218
  br label %do.body4

do.body4:                                         ; preds = %do.body1, %entry.do.body4_crit_edge
  %6 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c1, 0", "=r"() #11, !srcloc !220
  %shr = lshr i32 %6, 2
  %and7 = and i32 %shr, 15
  %7 = zext i32 %and7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %and7, label %do.body4.do.body30_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %do.end16
    i32 10, label %do.body4.sw.bb29_crit_edge
  ]

do.body4.sw.bb29_crit_edge:                       ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb29

do.body4.do.body30_crit_edge:                     ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body30

sw.bb:                                            ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @breakpoint_handler(ptr noundef %regs)
  br label %do.body30

do.end16:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 930, i32 noundef 9, ptr noundef nonnull @.str.43) #11
  br label %sw.bb29

sw.bb29:                                          ; preds = %do.end16, %do.body4.sw.bb29_crit_edge
  tail call fastcc void @watchpoint_handler(i32 noundef %addr, i32 noundef %fsr, ptr noundef %regs)
  br label %do.body30

do.body30:                                        ; preds = %sw.bb29, %sw.bb, %do.body4.do.body30_crit_edge
  %ret.0 = phi i32 [ 0, %sw.bb29 ], [ 0, %sw.bb ], [ 1, %do.body4.do.body30_crit_edge ]
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !221
  %8 = tail call i32 @llvm.read_register.i32(metadata !132) #11
  %and.i.i.i37 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i37 to ptr
  %preempt_count.i.i38 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i38 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i38, align 4
  %sub.i = add i32 %11, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i38, align 4
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hook_ifault_code(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @debug_reg_trap(ptr nocapture noundef %regs, i32 noundef %instr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !132) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu1 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu1, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %instr, i32 noundef %3) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i, label %entry.cpumask_set_cpu.exit_crit_edge, label %land.rhs.i.i.i

entry.cpumask_set_cpu.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpumask_set_cpu.exit

land.rhs.i.i.i:                                   ; preds = %entry
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !143

land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpumask_set_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpumask_set_cpu.exit

cpumask_set_cpu.exit:                             ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, %entry.cpumask_set_cpu.exit_crit_edge
  tail call void @_set_bit(i32 noundef %3, ptr noundef nonnull @debug_err_mask) #11
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %add = add i32 %6, 4
  store i32 %add, ptr %arrayidx, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state_cpuslocked(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reset_ctrl_regs(i32 noundef %cpu) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @debug_arch, align 1
  %1 = zext i8 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.64)
  switch i8 %0, label %entry.do.body36_crit_edge [
    i8 1, label %entry.out_mdbgen_crit_edge
    i8 2, label %entry.out_mdbgen_crit_edge200
    i8 3, label %do.body
    i8 5, label %do.body6
  ]

entry.out_mdbgen_crit_edge200:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_mdbgen

entry.out_mdbgen_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_mdbgen

entry.do.body36_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body36

do.body:                                          ; preds = %entry
  %2 = tail call i32 asm sideeffect "mrc p14, 0, $0, c1,c5, 4", "=r"() #11, !srcloc !222
  %3 = load i8, ptr @has_ossr, align 1, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.body.do.body39_crit_edge, label %sw.epilog

do.body.do.body39_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body39

do.body6:                                         ; preds = %entry
  %4 = tail call i32 asm sideeffect "mrc p14, 0, $0, c1,c3, 4", "=r"() #11, !srcloc !224
  %and9 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %cmp10.not = icmp eq i32 %and9, 0
  br i1 %cmp10.not, label %do.body6.do.body36_crit_edge, label %do.body6.land.end_crit_edge

do.body6.land.end_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

do.body6.do.body36_crit_edge:                     ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body36

sw.epilog:                                        ; preds = %do.body
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not.not = icmp eq i32 %and, 0
  br i1 %tobool14.not.not, label %sw.epilog.land.end_crit_edge, label %sw.epilog.do.body36_crit_edge

sw.epilog.do.body36_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body36

sw.epilog.land.end_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

land.end:                                         ; preds = %sw.epilog.land.end_crit_edge, %do.body6.land.end_crit_edge
  %.b148 = load i1, ptr @reset_ctrl_regs.__already_done, align 1
  br i1 %.b148, label %land.end.if.else.i.i_crit_edge, label %if.then22, !prof !143

land.end.if.else.i.i_crit_edge:                   ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i

if.then22:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @reset_ctrl_regs.__already_done, align 1
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %cpu) #15
  br label %if.else.i.i

if.else.i.i:                                      ; preds = %if.then22, %land.end.if.else.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %5 = load i32, ptr @nr_cpu_ids, align 4
  %rem.i = and i32 %cpu, 31
  %add.i = add nuw nsw i32 %rem.i, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %div3.i = lshr i32 %cpu, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  tail call void @__bitmap_or(ptr noundef nonnull @debug_err_mask, ptr noundef nonnull @debug_err_mask, ptr noundef %add.ptr.i, i32 noundef %5) #11
  br label %cleanup

do.body36:                                        ; preds = %sw.epilog.do.body36_crit_edge, %do.body6.do.body36_crit_edge, %entry.do.body36_crit_edge
  tail call void asm sideeffect "mcr p14, 0, $0, c1,c0, 4", "r"(i32 978530730) #11, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !226
  br label %do.body39

do.body39:                                        ; preds = %do.body36, %do.body.do.body39_crit_edge
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c7, 0", "r"(i32 0) #11, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !228
  %rem.i150 = and i32 %cpu, 31
  %add.i151 = add nuw nsw i32 %rem.i150, 1
  %arrayidx.i152 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i151
  %div3.i153 = lshr i32 %cpu, 5
  %idx.neg.i154 = sub nsw i32 0, %div3.i153
  %add.ptr.i155 = getelementptr i32, ptr %arrayidx.i152, i32 %idx.neg.i154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i = tail call i32 @__bitmap_intersects(ptr noundef nonnull @debug_err_mask, ptr noundef %add.ptr.i155, i32 noundef %6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.i.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.i.not, label %if.end73, label %land.end52

land.end52:                                       ; preds = %do.body39
  %.b144147 = load i1, ptr @reset_ctrl_regs.__already_done.31, align 1
  br i1 %.b144147, label %land.end52.cleanup_crit_edge, label %if.then59, !prof !143

land.end52.cleanup_crit_edge:                     ; preds = %land.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then59:                                        ; preds = %land.end52
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @reset_ctrl_regs.__already_done.31, align 1
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %cpu) #15
  br label %cleanup

if.end73:                                         ; preds = %do.body39
  %7 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c0, 0", "=r"() #11, !srcloc !145
  %shr.i = lshr i32 %7, 24
  %and.i = and i32 %shr.i, 15
  br label %for.body

for.cond78.preheader:                             ; preds = %for.body
  %8 = load i32, ptr @core_num_wrps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp79198 = icmp sgt i32 %8, 0
  br i1 %cmp79198, label %for.cond78.preheader.for.body81_crit_edge, label %for.cond78.preheader.if.else.i.i174_crit_edge

for.cond78.preheader.if.else.i.i174_crit_edge:    ; preds = %for.cond78.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i174

for.cond78.preheader.for.body81_crit_edge:        ; preds = %for.cond78.preheader
  br label %for.body81

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end73
  %i.0197 = phi i32 [ 0, %if.end73 ], [ %inc, %for.body.for.body_crit_edge ]
  %add = add nuw nsw i32 %i.0197, 80
  tail call fastcc void @write_wb_reg(i32 noundef %add, i32 noundef 0)
  %add77 = add nuw nsw i32 %i.0197, 64
  tail call fastcc void @write_wb_reg(i32 noundef %add77, i32 noundef 0)
  %inc = add nuw nsw i32 %i.0197, 1
  %exitcond.not = icmp eq i32 %i.0197, %and.i
  br i1 %exitcond.not, label %for.cond78.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body81:                                       ; preds = %for.body81.for.body81_crit_edge, %for.cond78.preheader.for.body81_crit_edge
  %i.1199 = phi i32 [ %inc85, %for.body81.for.body81_crit_edge ], [ 0, %for.cond78.preheader.for.body81_crit_edge ]
  %add82 = add nuw i32 %i.1199, 112
  tail call fastcc void @write_wb_reg(i32 noundef %add82, i32 noundef 0)
  %add83 = add nuw i32 %i.1199, 96
  tail call fastcc void @write_wb_reg(i32 noundef %add83, i32 noundef 0)
  %inc85 = add nuw nsw i32 %i.1199, 1
  %9 = load i32, ptr @core_num_wrps, align 4
  %cmp79 = icmp slt i32 %inc85, %9
  br i1 %cmp79, label %for.body81.for.body81_crit_edge, label %for.body81.if.else.i.i174_crit_edge

for.body81.if.else.i.i174_crit_edge:              ; preds = %for.body81
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i174

for.body81.for.body81_crit_edge:                  ; preds = %for.body81
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body81

if.else.i.i174:                                   ; preds = %for.body81.if.else.i.i174_crit_edge, %for.cond78.preheader.if.else.i.i174_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i173 = tail call i32 @__bitmap_intersects(ptr noundef nonnull @debug_err_mask, ptr noundef %add.ptr.i155, i32 noundef %10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i173)
  %tobool.i176.not = icmp eq i32 %call.i.i173, 0
  br i1 %tobool.i176.not, label %if.else.i.i174.out_mdbgen_crit_edge, label %land.end97

if.else.i.i174.out_mdbgen_crit_edge:              ; preds = %if.else.i.i174
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_mdbgen

land.end97:                                       ; preds = %if.else.i.i174
  %.b145146 = load i1, ptr @reset_ctrl_regs.__already_done.35, align 1
  br i1 %.b145146, label %land.end97.cleanup_crit_edge, label %if.then104, !prof !143

land.end97.cleanup_crit_edge:                     ; preds = %land.end97
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then104:                                       ; preds = %land.end97
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @reset_ctrl_regs.__already_done.35, align 1
  %call109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %cpu) #15
  br label %cleanup

out_mdbgen:                                       ; preds = %if.else.i.i174.out_mdbgen_crit_edge, %entry.out_mdbgen_crit_edge, %entry.out_mdbgen_crit_edge200
  %11 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c1, 0", "=r"() #11, !srcloc !229
  %and.i178 = and i32 %11, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i178)
  %tobool.not.i = icmp eq i32 %and.i178, 0
  br i1 %tobool.not.i, label %if.end.i, label %out_mdbgen.cleanup_crit_edge

out_mdbgen.cleanup_crit_edge:                     ; preds = %out_mdbgen
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %out_mdbgen
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #14, !srcloc !142
  %13 = and i32 %12, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 983040, i32 %13)
  %cmp.not.i.i = icmp eq i32 %13, 983040
  br i1 %cmp.not.i.i, label %get_debug_arch.exit.i, label %land.end.i.i

land.end.i.i:                                     ; preds = %if.end.i
  %.b21.i.i = load i1, ptr @get_debug_arch.__already_done, align 1
  br i1 %.b21.i.i, label %land.end.i.i.do.body1.i_crit_edge, label %if.then5.i.i, !prof !143

land.end.i.i.do.body1.i_crit_edge:                ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body1.i

if.then5.i.i:                                     ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @get_debug_arch.__already_done, align 1
  %call6.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #15
  br label %do.body1.i

get_debug_arch.exit.i:                            ; preds = %if.end.i
  %14 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c0, 0", "=r"() #11, !srcloc !144
  %shr18.i.i = lshr i32 %14, 16
  %15 = trunc i32 %shr18.i.i to i4
  %16 = zext i4 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.65)
  switch i4 %15, label %get_debug_arch.exit.i.if.else.i.i188_crit_edge [
    i4 1, label %get_debug_arch.exit.i.do.body1.i_crit_edge
    i4 2, label %get_debug_arch.exit.i.do.body1.i_crit_edge201
    i4 3, label %get_debug_arch.exit.i.do.body5.i_crit_edge
    i4 5, label %get_debug_arch.exit.i.do.body5.i_crit_edge202
    i4 6, label %get_debug_arch.exit.i.do.body5.i_crit_edge203
    i4 7, label %get_debug_arch.exit.i.do.body5.i_crit_edge204
    i4 -8, label %get_debug_arch.exit.i.do.body5.i_crit_edge205
    i4 -7, label %get_debug_arch.exit.i.do.body5.i_crit_edge206
  ]

get_debug_arch.exit.i.do.body5.i_crit_edge206:    ; preds = %get_debug_arch.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body5.i

get_debug_arch.exit.i.do.body5.i_crit_edge205:    ; preds = %get_debug_arch.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body5.i

get_debug_arch.exit.i.do.body5.i_crit_edge204:    ; preds = %get_debug_arch.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body5.i

get_debug_arch.exit.i.do.body5.i_crit_edge203:    ; preds = %get_debug_arch.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body5.i

get_debug_arch.exit.i.do.body5.i_crit_edge202:    ; preds = %get_debug_arch.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body5.i

get_debug_arch.exit.i.do.body5.i_crit_edge:       ; preds = %get_debug_arch.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body5.i

get_debug_arch.exit.i.do.body1.i_crit_edge201:    ; preds = %get_debug_arch.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body1.i

get_debug_arch.exit.i.do.body1.i_crit_edge:       ; preds = %get_debug_arch.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body1.i

get_debug_arch.exit.i.if.else.i.i188_crit_edge:   ; preds = %get_debug_arch.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i188

do.body1.i:                                       ; preds = %get_debug_arch.exit.i.do.body1.i_crit_edge, %get_debug_arch.exit.i.do.body1.i_crit_edge201, %if.then5.i.i, %land.end.i.i.do.body1.i_crit_edge
  %or.i = or i32 %11, 32768
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c1, 0", "r"(i32 %or.i) #11, !srcloc !230
  br label %do.body9.i

do.body5.i:                                       ; preds = %get_debug_arch.exit.i.do.body5.i_crit_edge, %get_debug_arch.exit.i.do.body5.i_crit_edge202, %get_debug_arch.exit.i.do.body5.i_crit_edge203, %get_debug_arch.exit.i.do.body5.i_crit_edge204, %get_debug_arch.exit.i.do.body5.i_crit_edge205, %get_debug_arch.exit.i.do.body5.i_crit_edge206
  %or6.i = or i32 %11, 32768
  tail call void asm sideeffect "mcr p14, 0, $0, c0,c2, 2", "r"(i32 %or6.i) #11, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !232
  br label %do.body9.i

do.body9.i:                                       ; preds = %do.body5.i, %do.body1.i
  %17 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c1, 0", "=r"() #11, !srcloc !233
  %and12.i = and i32 %17, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %land.end.i, label %do.body9.i.cleanup_crit_edge

do.body9.i.cleanup_crit_edge:                     ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.end.i:                                       ; preds = %do.body9.i
  %.b40.i = load i1, ptr @enable_monitor_mode.__already_done, align 1
  br i1 %.b40.i, label %land.end.i.if.else.i.i188_crit_edge, label %if.then21.i, !prof !143

land.end.i.if.else.i.i188_crit_edge:              ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i188

if.then21.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @enable_monitor_mode.__already_done, align 1
  %18 = tail call i32 @llvm.read_register.i32(metadata !132) #11
  %and.i.i179 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i179 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpu.i, align 4
  %call26.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %21) #15
  br label %if.else.i.i188

if.else.i.i188:                                   ; preds = %if.then21.i, %land.end.i.if.else.i.i188_crit_edge, %get_debug_arch.exit.i.if.else.i.i188_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %22 = load i32, ptr @nr_cpu_ids, align 4
  %rem.i180 = and i32 %cpu, 31
  %add.i181 = add nuw nsw i32 %rem.i180, 1
  %arrayidx.i182 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i181
  %div3.i183 = lshr i32 %cpu, 5
  %idx.neg.i184 = sub nsw i32 0, %div3.i183
  %add.ptr.i185 = getelementptr i32, ptr %arrayidx.i182, i32 %idx.neg.i184
  tail call void @__bitmap_or(ptr noundef nonnull @debug_err_mask, ptr noundef nonnull @debug_err_mask, ptr noundef %add.ptr.i185, i32 noundef %22) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else.i.i188, %do.body9.i.cleanup_crit_edge, %out_mdbgen.cleanup_crit_edge, %if.then104, %land.end97.cleanup_crit_edge, %if.then59, %land.end52.cleanup_crit_edge, %if.else.i.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_or(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_intersects(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cpuhp_remove_state_cpuslocked(i32 noundef, i1 noundef zeroext) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_wb_reg(i32 noundef %n) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %n to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %n, label %do.end255 [
    i32 64, label %do.body
    i32 65, label %do.body2
    i32 66, label %do.body6
    i32 67, label %do.body10
    i32 68, label %do.body14
    i32 69, label %do.body18
    i32 70, label %do.body22
    i32 71, label %do.body26
    i32 72, label %do.body30
    i32 73, label %do.body34
    i32 74, label %do.body38
    i32 75, label %do.body42
    i32 76, label %do.body46
    i32 77, label %do.body50
    i32 78, label %do.body54
    i32 79, label %do.body58
    i32 80, label %do.body62
    i32 81, label %do.body66
    i32 82, label %do.body70
    i32 83, label %do.body74
    i32 84, label %do.body78
    i32 85, label %do.body82
    i32 86, label %do.body86
    i32 87, label %do.body90
    i32 88, label %do.body94
    i32 89, label %do.body98
    i32 90, label %do.body102
    i32 91, label %do.body106
    i32 92, label %do.body110
    i32 93, label %do.body114
    i32 94, label %do.body118
    i32 95, label %do.body122
    i32 96, label %do.body126
    i32 97, label %do.body130
    i32 98, label %do.body134
    i32 99, label %do.body138
    i32 100, label %do.body142
    i32 101, label %do.body146
    i32 102, label %do.body150
    i32 103, label %do.body154
    i32 104, label %do.body158
    i32 105, label %do.body162
    i32 106, label %do.body166
    i32 107, label %do.body170
    i32 108, label %do.body174
    i32 109, label %do.body178
    i32 110, label %do.body182
    i32 111, label %do.body186
    i32 112, label %do.body190
    i32 113, label %do.body194
    i32 114, label %do.body198
    i32 115, label %do.body202
    i32 116, label %do.body206
    i32 117, label %do.body210
    i32 118, label %do.body214
    i32 119, label %do.body218
    i32 120, label %do.body222
    i32 121, label %do.body226
    i32 122, label %do.body230
    i32 123, label %do.body234
    i32 124, label %do.body238
    i32 125, label %do.body242
    i32 126, label %do.body246
    i32 127, label %do.body250
  ]

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c0, 4", "=r"() #11, !srcloc !234
  br label %sw.epilog

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c1, 4", "=r"() #11, !srcloc !235
  br label %sw.epilog

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c2, 4", "=r"() #11, !srcloc !236
  br label %sw.epilog

do.body10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c3, 4", "=r"() #11, !srcloc !237
  br label %sw.epilog

do.body14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c4, 4", "=r"() #11, !srcloc !238
  br label %sw.epilog

do.body18:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c5, 4", "=r"() #11, !srcloc !239
  br label %sw.epilog

do.body22:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %7 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c6, 4", "=r"() #11, !srcloc !240
  br label %sw.epilog

do.body26:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %8 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c7, 4", "=r"() #11, !srcloc !241
  br label %sw.epilog

do.body30:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c8, 4", "=r"() #11, !srcloc !242
  br label %sw.epilog

do.body34:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %10 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c9, 4", "=r"() #11, !srcloc !243
  br label %sw.epilog

do.body38:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %11 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c10, 4", "=r"() #11, !srcloc !244
  br label %sw.epilog

do.body42:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %12 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c11, 4", "=r"() #11, !srcloc !245
  br label %sw.epilog

do.body46:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %13 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c12, 4", "=r"() #11, !srcloc !246
  br label %sw.epilog

do.body50:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %14 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c13, 4", "=r"() #11, !srcloc !247
  br label %sw.epilog

do.body54:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %15 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c14, 4", "=r"() #11, !srcloc !248
  br label %sw.epilog

do.body58:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %16 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c15, 4", "=r"() #11, !srcloc !249
  br label %sw.epilog

do.body62:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %17 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c0, 5", "=r"() #11, !srcloc !250
  br label %sw.epilog

do.body66:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %18 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c1, 5", "=r"() #11, !srcloc !251
  br label %sw.epilog

do.body70:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %19 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c2, 5", "=r"() #11, !srcloc !252
  br label %sw.epilog

do.body74:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %20 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c3, 5", "=r"() #11, !srcloc !253
  br label %sw.epilog

do.body78:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %21 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c4, 5", "=r"() #11, !srcloc !254
  br label %sw.epilog

do.body82:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %22 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c5, 5", "=r"() #11, !srcloc !255
  br label %sw.epilog

do.body86:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %23 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c6, 5", "=r"() #11, !srcloc !256
  br label %sw.epilog

do.body90:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %24 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c7, 5", "=r"() #11, !srcloc !257
  br label %sw.epilog

do.body94:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %25 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c8, 5", "=r"() #11, !srcloc !258
  br label %sw.epilog

do.body98:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %26 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c9, 5", "=r"() #11, !srcloc !259
  br label %sw.epilog

do.body102:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %27 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c10, 5", "=r"() #11, !srcloc !260
  br label %sw.epilog

do.body106:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %28 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c11, 5", "=r"() #11, !srcloc !261
  br label %sw.epilog

do.body110:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %29 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c12, 5", "=r"() #11, !srcloc !262
  br label %sw.epilog

do.body114:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %30 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c13, 5", "=r"() #11, !srcloc !263
  br label %sw.epilog

do.body118:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %31 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c14, 5", "=r"() #11, !srcloc !264
  br label %sw.epilog

do.body122:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %32 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c15, 5", "=r"() #11, !srcloc !265
  br label %sw.epilog

do.body126:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %33 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c0, 6", "=r"() #11, !srcloc !266
  br label %sw.epilog

do.body130:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %34 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c1, 6", "=r"() #11, !srcloc !267
  br label %sw.epilog

do.body134:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %35 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c2, 6", "=r"() #11, !srcloc !268
  br label %sw.epilog

do.body138:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %36 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c3, 6", "=r"() #11, !srcloc !269
  br label %sw.epilog

do.body142:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %37 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c4, 6", "=r"() #11, !srcloc !270
  br label %sw.epilog

do.body146:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %38 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c5, 6", "=r"() #11, !srcloc !271
  br label %sw.epilog

do.body150:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %39 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c6, 6", "=r"() #11, !srcloc !272
  br label %sw.epilog

do.body154:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %40 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c7, 6", "=r"() #11, !srcloc !273
  br label %sw.epilog

do.body158:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %41 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c8, 6", "=r"() #11, !srcloc !274
  br label %sw.epilog

do.body162:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %42 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c9, 6", "=r"() #11, !srcloc !275
  br label %sw.epilog

do.body166:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %43 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c10, 6", "=r"() #11, !srcloc !276
  br label %sw.epilog

do.body170:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %44 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c11, 6", "=r"() #11, !srcloc !277
  br label %sw.epilog

do.body174:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %45 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c12, 6", "=r"() #11, !srcloc !278
  br label %sw.epilog

do.body178:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %46 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c13, 6", "=r"() #11, !srcloc !279
  br label %sw.epilog

do.body182:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %47 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c14, 6", "=r"() #11, !srcloc !280
  br label %sw.epilog

do.body186:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %48 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c15, 6", "=r"() #11, !srcloc !281
  br label %sw.epilog

do.body190:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %49 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c0, 7", "=r"() #11, !srcloc !215
  br label %sw.epilog

do.body194:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %50 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c1, 7", "=r"() #11, !srcloc !282
  br label %sw.epilog

do.body198:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %51 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c2, 7", "=r"() #11, !srcloc !283
  br label %sw.epilog

do.body202:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %52 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c3, 7", "=r"() #11, !srcloc !284
  br label %sw.epilog

do.body206:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %53 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c4, 7", "=r"() #11, !srcloc !285
  br label %sw.epilog

do.body210:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %54 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c5, 7", "=r"() #11, !srcloc !286
  br label %sw.epilog

do.body214:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %55 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c6, 7", "=r"() #11, !srcloc !287
  br label %sw.epilog

do.body218:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %56 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c7, 7", "=r"() #11, !srcloc !288
  br label %sw.epilog

do.body222:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %57 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c8, 7", "=r"() #11, !srcloc !289
  br label %sw.epilog

do.body226:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %58 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c9, 7", "=r"() #11, !srcloc !290
  br label %sw.epilog

do.body230:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %59 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c10, 7", "=r"() #11, !srcloc !291
  br label %sw.epilog

do.body234:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %60 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c11, 7", "=r"() #11, !srcloc !292
  br label %sw.epilog

do.body238:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %61 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c12, 7", "=r"() #11, !srcloc !293
  br label %sw.epilog

do.body242:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %62 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c13, 7", "=r"() #11, !srcloc !294
  br label %sw.epilog

do.body246:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %63 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c14, 7", "=r"() #11, !srcloc !295
  br label %sw.epilog

do.body250:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %64 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c15, 7", "=r"() #11, !srcloc !296
  br label %sw.epilog

do.end255:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %n) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end255, %do.body250, %do.body246, %do.body242, %do.body238, %do.body234, %do.body230, %do.body226, %do.body222, %do.body218, %do.body214, %do.body210, %do.body206, %do.body202, %do.body198, %do.body194, %do.body190, %do.body186, %do.body182, %do.body178, %do.body174, %do.body170, %do.body166, %do.body162, %do.body158, %do.body154, %do.body150, %do.body146, %do.body142, %do.body138, %do.body134, %do.body130, %do.body126, %do.body122, %do.body118, %do.body114, %do.body110, %do.body106, %do.body102, %do.body98, %do.body94, %do.body90, %do.body86, %do.body82, %do.body78, %do.body74, %do.body70, %do.body66, %do.body62, %do.body58, %do.body54, %do.body50, %do.body46, %do.body42, %do.body38, %do.body34, %do.body30, %do.body26, %do.body22, %do.body18, %do.body14, %do.body10, %do.body6, %do.body2, %do.body
  %val.0 = phi i32 [ 0, %do.end255 ], [ %64, %do.body250 ], [ %63, %do.body246 ], [ %62, %do.body242 ], [ %61, %do.body238 ], [ %60, %do.body234 ], [ %59, %do.body230 ], [ %58, %do.body226 ], [ %57, %do.body222 ], [ %56, %do.body218 ], [ %55, %do.body214 ], [ %54, %do.body210 ], [ %53, %do.body206 ], [ %52, %do.body202 ], [ %51, %do.body198 ], [ %50, %do.body194 ], [ %49, %do.body190 ], [ %48, %do.body186 ], [ %47, %do.body182 ], [ %46, %do.body178 ], [ %45, %do.body174 ], [ %44, %do.body170 ], [ %43, %do.body166 ], [ %42, %do.body162 ], [ %41, %do.body158 ], [ %40, %do.body154 ], [ %39, %do.body150 ], [ %38, %do.body146 ], [ %37, %do.body142 ], [ %36, %do.body138 ], [ %35, %do.body134 ], [ %34, %do.body130 ], [ %33, %do.body126 ], [ %32, %do.body122 ], [ %31, %do.body118 ], [ %30, %do.body114 ], [ %29, %do.body110 ], [ %28, %do.body106 ], [ %27, %do.body102 ], [ %26, %do.body98 ], [ %25, %do.body94 ], [ %24, %do.body90 ], [ %23, %do.body86 ], [ %22, %do.body82 ], [ %21, %do.body78 ], [ %20, %do.body74 ], [ %19, %do.body70 ], [ %18, %do.body66 ], [ %17, %do.body62 ], [ %16, %do.body58 ], [ %15, %do.body54 ], [ %14, %do.body50 ], [ %13, %do.body46 ], [ %12, %do.body42 ], [ %11, %do.body38 ], [ %10, %do.body34 ], [ %9, %do.body30 ], [ %8, %do.body26 ], [ %7, %do.body22 ], [ %6, %do.body18 ], [ %5, %do.body14 ], [ %4, %do.body10 ], [ %3, %do.body6 ], [ %2, %do.body2 ], [ %1, %do.body ]
  ret i32 %val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @breakpoint_handler(ptr noundef %regs) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !132) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @bp_on_reg to i32)
  %6 = inttoptr i32 %add to ptr
  %arrayidx2 = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx2, align 4
  %9 = load i32, ptr @core_num_brps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp20 = icmp sgt i32 %9, 0
  br i1 %cmp20, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %and = and i32 %8, -4
  %and13 = and i32 %8, 3
  %shl = shl nuw nsw i32 1, %and13
  br label %for.body

for.body:                                         ; preds = %rcu_read_unlock.exit.for.body_crit_edge, %for.body.lr.ph
  %i.022 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %rcu_read_unlock.exit.for.body_crit_edge ]
  %10 = tail call i32 @llvm.read_register.i32(metadata !132) #11
  %and.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %13, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !297
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %for.body.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

for.body.rcu_read_lock.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %for.body
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 696, ptr noundef nonnull @.str.49) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %for.body.rcu_read_lock.exit_crit_edge
  %arrayidx3 = getelementptr ptr, ptr %6, i32 %i.022
  %14 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx3, align 4
  %cmp4 = icmp eq ptr %15, null
  br i1 %cmp4, label %rcu_read_lock.exit.unlock_crit_edge, label %if.end

rcu_read_lock.exit.unlock_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end:                                           ; preds = %rcu_read_lock.exit
  %hw.i = getelementptr inbounds %struct.perf_event, ptr %15, i32 0, i32 25
  %add6 = add nuw i32 %i.022, 64
  %call7 = tail call fastcc i32 @read_wb_reg(i32 noundef %add6)
  call void @__sanitizer_cov_trace_cmp4(i32 %call7, i32 %and)
  %cmp8.not = icmp eq i32 %call7, %and
  br i1 %cmp8.not, label %if.end10, label %if.end.mismatch_crit_edge

if.end.mismatch_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %mismatch

if.end10:                                         ; preds = %if.end
  %add11 = add nuw i32 %i.022, 80
  %call12 = tail call fastcc i32 @read_wb_reg(i32 noundef %add11)
  %bf.lshr = lshr i32 %call12, 5
  %and14 = and i32 %shl, %bf.lshr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool.not = icmp eq i32 %and14, 0
  br i1 %tobool.not, label %if.end10.mismatch_crit_edge, label %if.then15

if.end10.mismatch_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %mismatch

if.then15:                                        ; preds = %if.end10
  %trigger = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %hw.i, i32 0, i32 1
  %16 = ptrtoint ptr %trigger to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %8, ptr %trigger, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @breakpoint_handler.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@breakpoint_handler, %if.then22)) #11
          to label %do.end25 [label %if.then22], !srcloc !298

if.then22:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @breakpoint_handler.__UNIQUE_ID_ddebug252, ptr noundef nonnull @.str.47, i32 noundef %8) #11
  br label %do.end25

do.end25:                                         ; preds = %if.then22, %if.then15
  tail call void @perf_bp_event(ptr noundef nonnull %15, ptr noundef %regs) #11
  %overflow_handler.i = getelementptr inbounds %struct.perf_event, ptr %15, i32 0, i32 60
  %17 = ptrtoint ptr %overflow_handler.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %overflow_handler.i, align 4
  %cmp.i = icmp eq ptr %18, @perf_event_output_forward
  br i1 %cmp.i, label %do.end25.if.then27_crit_edge, label %is_default_overflow_handler.exit, !prof !143

do.end25.if.then27_crit_edge:                     ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then27

is_default_overflow_handler.exit:                 ; preds = %do.end25
  %cmp3.i = icmp eq ptr %18, @perf_event_output_backward
  br i1 %cmp3.i, label %is_default_overflow_handler.exit.if.then27_crit_edge, label %is_default_overflow_handler.exit.unlock_crit_edge

is_default_overflow_handler.exit.unlock_crit_edge: ; preds = %is_default_overflow_handler.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

is_default_overflow_handler.exit.if.then27_crit_edge: ; preds = %is_default_overflow_handler.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then27

if.then27:                                        ; preds = %is_default_overflow_handler.exit.if.then27_crit_edge, %do.end25.if.then27_crit_edge
  tail call fastcc void @enable_single_step(ptr noundef nonnull %15, i32 noundef %8)
  br label %unlock

mismatch:                                         ; preds = %if.end10.mismatch_crit_edge, %if.end.mismatch_crit_edge
  %step_ctrl = getelementptr inbounds %struct.perf_event, ptr %15, i32 0, i32 25, i32 0, i32 0, i32 1
  %19 = ptrtoint ptr %step_ctrl to i32
  call void @__asan_load4_noabort(i32 %19)
  %bf.load30 = load i32, ptr %step_ctrl, align 4
  %bf.clear31 = and i32 %bf.load30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear31)
  %tobool32.not = icmp eq i32 %bf.clear31, 0
  br i1 %tobool32.not, label %mismatch.unlock_crit_edge, label %if.then33

mismatch.unlock_crit_edge:                        ; preds = %mismatch
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.then33:                                        ; preds = %mismatch
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @disable_single_step(ptr noundef nonnull %15)
  br label %unlock

unlock:                                           ; preds = %if.then33, %mismatch.unlock_crit_edge, %if.then27, %is_default_overflow_handler.exit.unlock_crit_edge, %rcu_read_lock.exit.unlock_crit_edge
  %call.i2 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i2, label %unlock.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i5

unlock.rcu_read_unlock.exit_crit_edge:            ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i5:                                 ; preds = %unlock
  %call1.i3 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool.not.i4, label %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i7

land.lhs.true.i5.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i7:                                ; preds = %land.lhs.true.i5
  %.b4.i6 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6, label %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, label %if.then.i8

land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i8:                                       ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i8, %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, %unlock.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !299
  %20 = tail call i32 @llvm.read_register.i32(metadata !132) #11
  %and.i.i.i.i.i9 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i9 to ptr
  %preempt_count.i.i.i.i10 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i10, align 4
  %sub.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i10, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %inc = add nuw nsw i32 %i.022, 1
  %24 = load i32, ptr @core_num_brps, align 4
  %cmp = icmp slt i32 %inc, %24
  br i1 %cmp, label %rcu_read_unlock.exit.for.body_crit_edge, label %rcu_read_unlock.exit.for.end_crit_edge

rcu_read_unlock.exit.for.end_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

rcu_read_unlock.exit.for.body_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %rcu_read_unlock.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %25 = tail call i32 @llvm.read_register.i32(metadata !132) #11
  %and.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %30, ptrtoint (ptr @wp_on_reg to i32)
  %31 = inttoptr i32 %add.i to ptr
  %32 = load i32, ptr @core_num_wrps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp24.i = icmp sgt i32 %32, 0
  br i1 %cmp24.i, label %for.end.for.body.i_crit_edge, label %for.end.watchpoint_single_step_handler.exit_crit_edge

for.end.watchpoint_single_step_handler.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %watchpoint_single_step_handler.exit

for.end.for.body.i_crit_edge:                     ; preds = %for.end
  br label %for.body.i

for.body.i:                                       ; preds = %rcu_read_unlock.exit.i.for.body.i_crit_edge, %for.end.for.body.i_crit_edge
  %i.025.i = phi i32 [ %inc.i, %rcu_read_unlock.exit.i.for.body.i_crit_edge ], [ 0, %for.end.for.body.i_crit_edge ]
  %33 = tail call i32 @llvm.read_register.i32(metadata !132) #11
  %and.i.i.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %36, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !297
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i, label %for.body.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

for.body.i.rcu_read_lock.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %for.body.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 696, ptr noundef nonnull @.str.49) #11
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %for.body.i.rcu_read_lock.exit.i_crit_edge
  %arrayidx2.i = getelementptr ptr, ptr %31, i32 %i.025.i
  %37 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx2.i, align 4
  %cmp3.i11 = icmp eq ptr %38, null
  br i1 %cmp3.i11, label %rcu_read_lock.exit.i.unlock.i_crit_edge, label %if.end.i15

rcu_read_lock.exit.i.unlock.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock.i

if.end.i15:                                       ; preds = %rcu_read_lock.exit.i
  %step_ctrl.i = getelementptr inbounds %struct.perf_event, ptr %38, i32 0, i32 25, i32 0, i32 0, i32 1
  %39 = ptrtoint ptr %step_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %bf.load.i12 = load i32, ptr %step_ctrl.i, align 4
  %bf.clear.i13 = and i32 %bf.load.i12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear.i13)
  %tobool.not.i14 = icmp eq i32 %bf.clear.i13, 0
  br i1 %tobool.not.i14, label %if.end.i15.unlock.i_crit_edge, label %if.end6.i

if.end.i15.unlock.i_crit_edge:                    ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock.i

if.end6.i:                                        ; preds = %if.end.i15
  %hw.i.i = getelementptr inbounds %struct.perf_event, ptr %38, i32 0, i32 25
  %trigger.i = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %hw.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %trigger.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %trigger.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %8)
  %cmp7.not.i = icmp eq i32 %41, %8
  br i1 %cmp7.not.i, label %if.end6.i.unlock.i_crit_edge, label %if.then8.i

if.end6.i.unlock.i_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock.i

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @disable_single_step(ptr noundef nonnull %38) #11
  br label %unlock.i

unlock.i:                                         ; preds = %if.then8.i, %if.end6.i.unlock.i_crit_edge, %if.end.i15.unlock.i_crit_edge, %rcu_read_lock.exit.i.unlock.i_crit_edge
  %call.i15.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i15.i, label %unlock.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i18.i

unlock.i.rcu_read_unlock.exit.i_crit_edge:        ; preds = %unlock.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

land.lhs.true.i18.i:                              ; preds = %unlock.i
  %call1.i16.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i16.i)
  %tobool.not.i17.i = icmp eq i32 %call1.i16.i, 0
  br i1 %tobool.not.i17.i, label %land.lhs.true.i18.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i20.i

land.lhs.true.i18.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i20.i:                             ; preds = %land.lhs.true.i18.i
  %.b4.i19.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i19.i, label %land.lhs.true2.i20.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i21.i

land.lhs.true2.i20.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

if.then.i21.i:                                    ; preds = %land.lhs.true2.i20.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #11
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i21.i, %land.lhs.true2.i20.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i18.i.rcu_read_unlock.exit.i_crit_edge, %unlock.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !299
  %42 = tail call i32 @llvm.read_register.i32(metadata !132) #11
  %and.i.i.i.i.i22.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i.i.i22.i to ptr
  %preempt_count.i.i.i.i23.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i.i.i23.i, align 4
  %sub.i.i.i.i = add i32 %45, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i23.i, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %inc.i = add nuw nsw i32 %i.025.i, 1
  %46 = load i32, ptr @core_num_wrps, align 4
  %cmp.i16 = icmp slt i32 %inc.i, %46
  br i1 %cmp.i16, label %rcu_read_unlock.exit.i.for.body.i_crit_edge, label %rcu_read_unlock.exit.i.watchpoint_single_step_handler.exit_crit_edge

rcu_read_unlock.exit.i.watchpoint_single_step_handler.exit_crit_edge: ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %watchpoint_single_step_handler.exit

rcu_read_unlock.exit.i.for.body.i_crit_edge:      ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

watchpoint_single_step_handler.exit:              ; preds = %rcu_read_unlock.exit.i.watchpoint_single_step_handler.exit_crit_edge, %for.end.watchpoint_single_step_handler.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @watchpoint_handler(i32 noundef %addr, i32 noundef %fsr, ptr noundef %regs) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !132) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @wp_on_reg to i32)
  %6 = inttoptr i32 %add to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !297
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 696, ptr noundef nonnull @.str.49) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %9 = load i32, ptr @core_num_wrps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp176 = icmp sgt i32 %9, 0
  br i1 %cmp176, label %for.body.lr.ph, label %rcu_read_lock.exit.if.end102_crit_edge

rcu_read_lock.exit.if.end102_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end102

for.body.lr.ph:                                   ; preds = %rcu_read_lock.exit
  %and = and i32 %fsr, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool26.not, i32 1, i32 2
  %arrayidx.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 16
  %arrayidx71 = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0181 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %closest_match.0180 = phi i32 [ 0, %for.body.lr.ph ], [ %closest_match.3, %for.inc.for.body_crit_edge ]
  %min_dist.0179 = phi i32 [ -1, %for.body.lr.ph ], [ %min_dist.3, %for.inc.for.body_crit_edge ]
  %arrayidx2 = getelementptr ptr, ptr %6, i32 %i.0181
  %10 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx2, align 4
  %cmp3 = icmp eq ptr %11, null
  br i1 %cmp3, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end:                                           ; preds = %for.body
  %12 = load i8, ptr @debug_arch, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %12)
  %cmp4 = icmp ult i8 %12, 5
  br i1 %cmp4, label %do.body7, label %if.else

do.body7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0181)
  %cmp8.not = icmp eq i32 %i.0181, 0
  br i1 %cmp8.not, label %do.end20, label %do.body12, !prof !143

do.body12:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/kernel/hw_breakpoint.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 755, 0\0A.popsection", ""() #11, !srcloc !300
  unreachable

do.end20:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #13
  %13 = getelementptr inbounds %struct.perf_event, ptr %11, i32 0, i32 21, i32 9
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %13, align 8
  %conv22 = trunc i64 %15 to i32
  br label %do.body49

if.else:                                          ; preds = %if.end
  %16 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #14, !srcloc !142
  %17 = and i32 %16, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 983040, i32 %17)
  %cmp.not.i.i = icmp eq i32 %17, 983040
  br i1 %cmp.not.i.i, label %debug_exception_updates_fsr.exit, label %land.end.i.i

land.end.i.i:                                     ; preds = %if.else
  %.b21.i.i = load i1, ptr @get_debug_arch.__already_done, align 1
  br i1 %.b21.i.i, label %land.end.i.i.if.end32_crit_edge, label %if.then5.i.i, !prof !143

land.end.i.i.if.end32_crit_edge:                  ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then5.i.i:                                     ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @get_debug_arch.__already_done, align 1
  %call6.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #15
  br label %if.end32

debug_exception_updates_fsr.exit:                 ; preds = %if.else
  %18 = tail call i32 asm sideeffect "mrc p14, 0, $0, c0,c0, 0", "=r"() #11, !srcloc !144
  %19 = and i32 %18, 917504
  call void @__sanitizer_cov_trace_const_cmp4(i32 327681, i32 %19)
  %phi.cmp.i = icmp ult i32 %19, 327681
  br i1 %phi.cmp.i, label %debug_exception_updates_fsr.exit.if.end32_crit_edge, label %if.then25

debug_exception_updates_fsr.exit.if.end32_crit_edge: ; preds = %debug_exception_updates_fsr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then25:                                        ; preds = %debug_exception_updates_fsr.exit
  %bp_type.i = getelementptr inbounds %struct.perf_event, ptr %11, i32 0, i32 21, i32 8
  %20 = ptrtoint ptr %bp_type.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bp_type.i, align 4
  %and28 = and i32 %21, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.then25.for.inc_crit_edge, label %if.then25.if.end32_crit_edge

if.then25.if.end32_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then25.for.inc_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end32:                                         ; preds = %if.then25.if.end32_crit_edge, %debug_exception_updates_fsr.exit.if.end32_crit_edge, %if.then5.i.i, %land.end.i.i.if.end32_crit_edge
  %add33 = add nuw i32 %i.0181, 96
  %call34 = tail call fastcc i32 @read_wb_reg(i32 noundef %add33)
  %add35 = add nuw i32 %i.0181, 112
  %call36 = tail call fastcc i32 @read_wb_reg(i32 noundef %add35)
  %bf.lshr.i = lshr i32 %call36, 5
  %bf.clear.i141 = and i32 %bf.lshr.i, 255
  %22 = tail call i32 @llvm.cttz.i32(i32 %bf.clear.i141, i1 false) #11, !range !301
  %23 = tail call i32 @llvm.ctlz.i32(i32 %bf.clear.i141, i1 false) #11, !range !301
  %add.i = add i32 %22, %call34
  %sub.i.i = add i32 %call34, 31
  %add5.i = sub i32 %sub.i.i, %23
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %addr)
  %cmp.i = icmp ugt i32 %add.i, %addr
  %sub.i = sub i32 %add.i, %addr
  %24 = tail call i32 @llvm.usub.sat.i32(i32 %addr, i32 %add5.i) #11
  %retval.0.i142 = select i1 %cmp.i, i32 %sub.i, i32 %24
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i142, i32 %min_dist.0179)
  %cmp38 = icmp ult i32 %retval.0.i142, %min_dist.0179
  %25 = tail call i32 @llvm.umin.i32(i32 %retval.0.i142, i32 %min_dist.0179)
  %spec.select136 = select i1 %cmp38, i32 %i.0181, i32 %closest_match.0180
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i142)
  %cmp42.not = icmp eq i32 %retval.0.i142, 0
  br i1 %cmp42.not, label %if.end32.do.body49_crit_edge, label %if.end32.for.inc_crit_edge

if.end32.for.inc_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end32.do.body49_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body49

do.body49:                                        ; preds = %if.end32.do.body49_crit_edge, %do.end20
  %conv22.sink = phi i32 [ %conv22, %do.end20 ], [ %addr, %if.end32.do.body49_crit_edge ]
  %min_dist.2 = phi i32 [ %min_dist.0179, %do.end20 ], [ %25, %if.end32.do.body49_crit_edge ]
  %closest_match.2 = phi i32 [ %closest_match.0180, %do.end20 ], [ %spec.select136, %if.end32.do.body49_crit_edge ]
  %hw.i.sink = getelementptr inbounds %struct.perf_event, ptr %11, i32 0, i32 25
  %trigger = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %hw.i.sink, i32 0, i32 1
  %26 = ptrtoint ptr %trigger to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv22.sink, ptr %trigger, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @watchpoint_handler.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@watchpoint_handler, %if.then59)) #11
          to label %do.end63 [label %if.then59], !srcloc !298

if.then59:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #13
  %27 = getelementptr inbounds %struct.perf_event, ptr %11, i32 0, i32 25
  %trigger60 = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %trigger60 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %trigger60, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @watchpoint_handler.__UNIQUE_ID_ddebug250, ptr noundef nonnull @.str.53, i32 noundef %29) #11
  br label %do.end63

do.end63:                                         ; preds = %if.then59, %do.body49
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i, align 4
  %and.i144 = and i32 %31, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i144)
  %cmp.i145 = icmp eq i32 %and.i144, 0
  br i1 %cmp.i145, label %do.end63.if.end67_crit_edge, label %watchpoint_fault_on_uaccess.exit

do.end63.if.end67_crit_edge:                      ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67

watchpoint_fault_on_uaccess.exit:                 ; preds = %do.end63
  %32 = getelementptr inbounds %struct.perf_event, ptr %11, i32 0, i32 25
  %ctrl.i = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %bf.load.i146 = load i32, ptr %ctrl.i, align 4
  %34 = and i32 %bf.load.i146, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %34)
  %cmp1.i.not = icmp eq i32 %34, 4
  br i1 %cmp1.i.not, label %watchpoint_fault_on_uaccess.exit.step_crit_edge, label %watchpoint_fault_on_uaccess.exit.if.end67_crit_edge

watchpoint_fault_on_uaccess.exit.if.end67_crit_edge: ; preds = %watchpoint_fault_on_uaccess.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67

watchpoint_fault_on_uaccess.exit.step_crit_edge:  ; preds = %watchpoint_fault_on_uaccess.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %step

if.end67:                                         ; preds = %watchpoint_fault_on_uaccess.exit.if.end67_crit_edge, %do.end63.if.end67_crit_edge
  tail call void @perf_bp_event(ptr noundef nonnull %11, ptr noundef %regs) #11
  %overflow_handler.i = getelementptr inbounds %struct.perf_event, ptr %11, i32 0, i32 60
  %35 = ptrtoint ptr %overflow_handler.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %overflow_handler.i, align 4
  %cmp.i148 = icmp eq ptr %36, @perf_event_output_forward
  br i1 %cmp.i148, label %if.end67.step_crit_edge, label %is_default_overflow_handler.exit, !prof !143

if.end67.step_crit_edge:                          ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  br label %step

is_default_overflow_handler.exit:                 ; preds = %if.end67
  %cmp3.i = icmp eq ptr %36, @perf_event_output_backward
  br i1 %cmp3.i, label %is_default_overflow_handler.exit.step_crit_edge, label %is_default_overflow_handler.exit.for.inc_crit_edge

is_default_overflow_handler.exit.for.inc_crit_edge: ; preds = %is_default_overflow_handler.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

is_default_overflow_handler.exit.step_crit_edge:  ; preds = %is_default_overflow_handler.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %step

step:                                             ; preds = %is_default_overflow_handler.exit.step_crit_edge, %if.end67.step_crit_edge, %watchpoint_fault_on_uaccess.exit.step_crit_edge
  %37 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx71, align 4
  tail call fastcc void @enable_single_step(ptr noundef nonnull %11, i32 noundef %38)
  br label %for.inc

for.inc:                                          ; preds = %step, %is_default_overflow_handler.exit.for.inc_crit_edge, %if.end32.for.inc_crit_edge, %if.then25.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %min_dist.3 = phi i32 [ %min_dist.0179, %for.body.for.inc_crit_edge ], [ %min_dist.2, %step ], [ %min_dist.2, %is_default_overflow_handler.exit.for.inc_crit_edge ], [ %25, %if.end32.for.inc_crit_edge ], [ %min_dist.0179, %if.then25.for.inc_crit_edge ]
  %closest_match.3 = phi i32 [ %closest_match.0180, %for.body.for.inc_crit_edge ], [ %closest_match.2, %step ], [ %closest_match.2, %is_default_overflow_handler.exit.for.inc_crit_edge ], [ %spec.select136, %if.end32.for.inc_crit_edge ], [ %closest_match.0180, %if.then25.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0181, 1
  %39 = load i32, ptr @core_num_wrps, align 4
  %cmp = icmp slt i32 %inc, %39
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  %40 = zext i32 %min_dist.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %min_dist.3, label %if.then76 [
    i32 0, label %for.end.if.end102_crit_edge
    i32 -1, label %for.end.if.end102_crit_edge187
  ]

for.end.if.end102_crit_edge187:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end102

for.end.if.end102_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end102

if.then76:                                        ; preds = %for.end
  %arrayidx77 = getelementptr ptr, ptr %6, i32 %closest_match.3
  %41 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx77, align 4
  %hw.i150 = getelementptr inbounds %struct.perf_event, ptr %42, i32 0, i32 25
  %trigger79 = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %hw.i150, i32 0, i32 1
  %43 = ptrtoint ptr %trigger79 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %addr, ptr %trigger79, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @watchpoint_handler.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@watchpoint_handler, %if.then92)) #11
          to label %do.end96 [label %if.then92], !srcloc !298

if.then92:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %trigger79 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %trigger79, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @watchpoint_handler.__UNIQUE_ID_ddebug251, ptr noundef nonnull @.str.53, i32 noundef %45) #11
  br label %do.end96

do.end96:                                         ; preds = %if.then92, %if.then76
  tail call void @perf_bp_event(ptr noundef %42, ptr noundef %regs) #11
  %overflow_handler.i151 = getelementptr inbounds %struct.perf_event, ptr %42, i32 0, i32 60
  %46 = ptrtoint ptr %overflow_handler.i151 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %overflow_handler.i151, align 4
  %cmp.i152 = icmp eq ptr %47, @perf_event_output_forward
  br i1 %cmp.i152, label %do.end96.if.then98_crit_edge, label %is_default_overflow_handler.exit156, !prof !143

do.end96.if.then98_crit_edge:                     ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then98

is_default_overflow_handler.exit156:              ; preds = %do.end96
  %cmp3.i153 = icmp eq ptr %47, @perf_event_output_backward
  br i1 %cmp3.i153, label %is_default_overflow_handler.exit156.if.then98_crit_edge, label %is_default_overflow_handler.exit156.if.end102_crit_edge

is_default_overflow_handler.exit156.if.end102_crit_edge: ; preds = %is_default_overflow_handler.exit156
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end102

is_default_overflow_handler.exit156.if.then98_crit_edge: ; preds = %is_default_overflow_handler.exit156
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then98

if.then98:                                        ; preds = %is_default_overflow_handler.exit156.if.then98_crit_edge, %do.end96.if.then98_crit_edge
  %arrayidx100 = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %48 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx100, align 4
  tail call fastcc void @enable_single_step(ptr noundef %42, i32 noundef %49)
  br label %if.end102

if.end102:                                        ; preds = %if.then98, %is_default_overflow_handler.exit156.if.end102_crit_edge, %for.end.if.end102_crit_edge, %for.end.if.end102_crit_edge187, %rcu_read_lock.exit.if.end102_crit_edge
  %call.i157 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i157, label %if.end102.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i160

if.end102.rcu_read_unlock.exit_crit_edge:         ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i160:                               ; preds = %if.end102
  %call1.i158 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i158)
  %tobool.not.i159 = icmp eq i32 %call1.i158, 0
  br i1 %tobool.not.i159, label %land.lhs.true.i160.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i162

land.lhs.true.i160.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i160
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i162:                              ; preds = %land.lhs.true.i160
  %.b4.i161 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i161, label %land.lhs.true2.i162.rcu_read_unlock.exit_crit_edge, label %if.then.i163

land.lhs.true2.i162.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i162
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i163:                                     ; preds = %land.lhs.true2.i162
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 724, ptr noundef nonnull @.str.50) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i163, %land.lhs.true2.i162.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i160.rcu_read_unlock.exit_crit_edge, %if.end102.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !299
  %50 = tail call i32 @llvm.read_register.i32(metadata !132) #11
  %and.i.i.i.i.i164 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i.i.i164 to ptr
  %preempt_count.i.i.i.i165 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %preempt_count.i.i.i.i165 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %preempt_count.i.i.i.i165, align 4
  %sub.i.i.i = add i32 %53, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i165, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_bp_event(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @enable_single_step(ptr noundef %bp, i32 noundef %addr) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hw.i = getelementptr inbounds %struct.perf_event, ptr %bp, i32 0, i32 25
  %ctrl.i = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %hw.i, i32 0, i32 3
  %0 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load.i = load i32, ptr %ctrl.i, align 4
  %1 = and i32 %bf.load.i, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  %2 = tail call i32 @llvm.read_register.i32(metadata !132) #11
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %..i = select i1 %cmp.i, i32 ptrtoint (ptr @bp_on_reg to i32), i32 ptrtoint (ptr @wp_on_reg to i32)
  %.64.i = select i1 %cmp.i, i32 80, i32 112
  %add13.i = add i32 %7, %..i
  %slots.0.i = inttoptr i32 %add13.i to ptr
  %core_num_brps.val.i = load i32, ptr @core_num_brps, align 4
  %core_num_wrps.val.i = load i32, ptr @core_num_wrps, align 4
  %max_slots.0.i = select i1 %cmp.i, i32 %core_num_brps.val.i, i32 %core_num_wrps.val.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_slots.0.i)
  %cmp1456.i = icmp sgt i32 %max_slots.0.i, 0
  br i1 %cmp1456.i, label %entry.for.body.i_crit_edge, label %entry.for.end.i_crit_edge

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.057.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx15.i = getelementptr ptr, ptr %slots.0.i, i32 %i.057.i
  %8 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx15.i, align 4
  %cmp16.i = icmp eq ptr %9, %bp
  br i1 %cmp16.i, label %if.then17.i, label %for.inc.i

if.then17.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx15.i.le = getelementptr ptr, ptr %slots.0.i, i32 %i.057.i
  %10 = ptrtoint ptr %arrayidx15.i.le to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx15.i.le, align 4
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.057.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %max_slots.0.i
  br i1 %exitcond.not.i, label %for.inc.i.do.end23.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.do.end23.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23.i

for.end.i:                                        ; preds = %if.then17.i, %entry.for.end.i_crit_edge
  %i.054.i = phi i32 [ %i.057.i, %if.then17.i ], [ 0, %entry.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.054.i, i32 %max_slots.0.i)
  %cmp19.i = icmp eq i32 %i.054.i, %max_slots.0.i
  br i1 %cmp19.i, label %for.end.i.do.end23.i_crit_edge, label %if.end26.i

for.end.i.do.end23.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23.i

do.end23.i:                                       ; preds = %for.end.i.do.end23.i_crit_edge, %for.inc.i.do.end23.i_crit_edge
  %call25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #15
  br label %arch_uninstall_hw_breakpoint.exit

if.end26.i:                                       ; preds = %for.end.i
  %11 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load28.i = load i32, ptr %ctrl.i, align 4
  %12 = and i32 %bf.load28.i, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp31.not.i = icmp eq i32 %12, 0
  br i1 %cmp31.not.i, label %if.end26.i.if.end36.i_crit_edge, label %land.lhs.true.i

if.end26.i.if.end36.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36.i

land.lhs.true.i:                                  ; preds = %if.end26.i
  %step_ctrl.i = getelementptr inbounds %struct.perf_event, ptr %bp, i32 0, i32 25, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %step_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load32.i = load i32, ptr %step_ctrl.i, align 4
  %bf.clear33.i = and i32 %bf.load32.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear33.i)
  %tobool.not.i = icmp eq i32 %bf.clear33.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end36.i_crit_edge, label %if.then34.i

land.lhs.true.i.if.end36.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36.i

if.then34.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %14 = load i32, ptr @core_num_brps, align 4
  %add35.i = add i32 %14, 80
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then34.i, %land.lhs.true.i.if.end36.i_crit_edge, %if.end26.i.if.end36.i_crit_edge
  %base.1.i = phi i32 [ %add35.i, %if.then34.i ], [ %.64.i, %land.lhs.true.i.if.end36.i_crit_edge ], [ %.64.i, %if.end26.i.if.end36.i_crit_edge ]
  %i.1.i = phi i32 [ 0, %if.then34.i ], [ %i.054.i, %land.lhs.true.i.if.end36.i_crit_edge ], [ %i.054.i, %if.end26.i.if.end36.i_crit_edge ]
  %add37.i = add i32 %i.1.i, %base.1.i
  tail call fastcc void @write_wb_reg(i32 noundef %add37.i, i32 noundef 0) #11
  br label %arch_uninstall_hw_breakpoint.exit

arch_uninstall_hw_breakpoint.exit:                ; preds = %if.end36.i, %do.end23.i
  %step_ctrl = getelementptr inbounds %struct.perf_event, ptr %bp, i32 0, i32 25, i32 0, i32 0, i32 1
  %15 = ptrtoint ptr %step_ctrl to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.load = load i32, ptr %step_ctrl, align 4
  %16 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load9 = load i32, ptr %ctrl.i, align 4
  %bf.clear10 = and i32 %bf.load9, 6
  %bf.set4 = and i32 %bf.load, -4202496
  %bf.clear13 = or i32 %bf.set4, 4194784
  %bf.set14 = or i32 %bf.clear10, %bf.clear13
  %bf.set18 = or i32 %bf.set14, 1
  store i32 %bf.set18, ptr %step_ctrl, align 4
  %trigger = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %hw.i, i32 0, i32 1
  %17 = ptrtoint ptr %trigger to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %addr, ptr %trigger, align 4
  %call19 = tail call i32 @arch_install_hw_breakpoint(ptr noundef %bp)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @disable_single_step(ptr noundef %bp) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hw.i.i = getelementptr inbounds %struct.perf_event, ptr %bp, i32 0, i32 25
  %ctrl.i = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %hw.i.i, i32 0, i32 3
  %0 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load.i = load i32, ptr %ctrl.i, align 4
  %1 = and i32 %bf.load.i, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  %2 = tail call i32 @llvm.read_register.i32(metadata !132) #11
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %..i = select i1 %cmp.i, i32 ptrtoint (ptr @bp_on_reg to i32), i32 ptrtoint (ptr @wp_on_reg to i32)
  %.64.i = select i1 %cmp.i, i32 80, i32 112
  %add13.i = add i32 %7, %..i
  %slots.0.i = inttoptr i32 %add13.i to ptr
  %core_num_brps.val.i = load i32, ptr @core_num_brps, align 4
  %core_num_wrps.val.i = load i32, ptr @core_num_wrps, align 4
  %max_slots.0.i = select i1 %cmp.i, i32 %core_num_brps.val.i, i32 %core_num_wrps.val.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_slots.0.i)
  %cmp1456.i = icmp sgt i32 %max_slots.0.i, 0
  br i1 %cmp1456.i, label %entry.for.body.i_crit_edge, label %entry.for.end.i_crit_edge

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.057.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx15.i = getelementptr ptr, ptr %slots.0.i, i32 %i.057.i
  %8 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx15.i, align 4
  %cmp16.i = icmp eq ptr %9, %bp
  br i1 %cmp16.i, label %if.then17.i, label %for.inc.i

if.then17.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx15.i.le = getelementptr ptr, ptr %slots.0.i, i32 %i.057.i
  %10 = ptrtoint ptr %arrayidx15.i.le to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx15.i.le, align 4
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.057.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %max_slots.0.i
  br i1 %exitcond.not.i, label %for.inc.i.do.end23.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.do.end23.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23.i

for.end.i:                                        ; preds = %if.then17.i, %entry.for.end.i_crit_edge
  %i.054.i = phi i32 [ %i.057.i, %if.then17.i ], [ 0, %entry.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.054.i, i32 %max_slots.0.i)
  %cmp19.i = icmp eq i32 %i.054.i, %max_slots.0.i
  br i1 %cmp19.i, label %for.end.i.do.end23.i_crit_edge, label %if.end26.i

for.end.i.do.end23.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23.i

do.end23.i:                                       ; preds = %for.end.i.do.end23.i_crit_edge, %for.inc.i.do.end23.i_crit_edge
  %call25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #15
  br label %arch_uninstall_hw_breakpoint.exit

if.end26.i:                                       ; preds = %for.end.i
  %11 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load28.i = load i32, ptr %ctrl.i, align 4
  %12 = and i32 %bf.load28.i, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp31.not.i = icmp eq i32 %12, 0
  br i1 %cmp31.not.i, label %if.end26.i.if.end36.i_crit_edge, label %land.lhs.true.i

if.end26.i.if.end36.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36.i

land.lhs.true.i:                                  ; preds = %if.end26.i
  %step_ctrl.i = getelementptr inbounds %struct.perf_event, ptr %bp, i32 0, i32 25, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %step_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load32.i = load i32, ptr %step_ctrl.i, align 4
  %bf.clear33.i = and i32 %bf.load32.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear33.i)
  %tobool.not.i = icmp eq i32 %bf.clear33.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end36.i_crit_edge, label %if.then34.i

land.lhs.true.i.if.end36.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36.i

if.then34.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %14 = load i32, ptr @core_num_brps, align 4
  %add35.i = add i32 %14, 80
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then34.i, %land.lhs.true.i.if.end36.i_crit_edge, %if.end26.i.if.end36.i_crit_edge
  %base.1.i = phi i32 [ %add35.i, %if.then34.i ], [ %.64.i, %land.lhs.true.i.if.end36.i_crit_edge ], [ %.64.i, %if.end26.i.if.end36.i_crit_edge ]
  %i.1.i = phi i32 [ 0, %if.then34.i ], [ %i.054.i, %land.lhs.true.i.if.end36.i_crit_edge ], [ %i.054.i, %if.end26.i.if.end36.i_crit_edge ]
  %add37.i = add i32 %i.1.i, %base.1.i
  tail call fastcc void @write_wb_reg(i32 noundef %add37.i, i32 noundef 0) #11
  br label %arch_uninstall_hw_breakpoint.exit

arch_uninstall_hw_breakpoint.exit:                ; preds = %if.end36.i, %do.end23.i
  %step_ctrl = getelementptr inbounds %struct.perf_event, ptr %bp, i32 0, i32 25, i32 0, i32 0, i32 1
  %15 = ptrtoint ptr %step_ctrl to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.load = load i32, ptr %step_ctrl, align 4
  %bf.clear = and i32 %bf.load, -2
  store i32 %bf.clear, ptr %step_ctrl, align 4
  %call1 = tail call i32 @arch_install_hw_breakpoint(ptr noundef %bp)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_register_notifier(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dbg_cpu_pm_notify(ptr nocapture noundef readnone %self, i32 noundef %action, ptr nocapture noundef readnone %v) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %action)
  %cmp = icmp eq i32 %action, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = tail call i32 @llvm.read_register.i32(metadata !132) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  tail call fastcc void @reset_ctrl_regs(i32 noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.fshl.i8(i8, i8, i8) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind readnone }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !17, !19, !20, !22, !23, !25, !27, !29, !31, !33, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53, !55, !56, !57, !58, !59, !61, !62, !63, !65, !67, !69, !71, !73, !74, !75, !76, !78, !79, !81, !82, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !100, !101, !103, !105, !106, !107, !108, !110, !112, !113, !114, !115, !116, !118, !119, !120, !122, !123, !125, !126, !127, !128, !130}
!llvm.named.register.sp = !{!132}
!llvm.module.flags = !{!133, !134, !135, !136, !137, !138, !139, !140}
!llvm.ident = !{!141}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/kernel/hw_breakpoint.c", i32 286, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @hw_breakpoint_slots._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @hw_breakpoint_slots._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/kernel/hw_breakpoint.c", i32 359, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @arch_install_hw_breakpoint._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @arch_install_hw_breakpoint._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../arch/arm/kernel/hw_breakpoint.c", i32 411, i32 3}
!13 = !{ptr @arch_uninstall_hw_breakpoint._entry, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @arch_uninstall_hw_breakpoint._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @__initcall__kmod_hw_breakpoint__253_1192_arch_hw_breakpoint_init3, !16, !"__initcall__kmod_hw_breakpoint__253_1192_arch_hw_breakpoint_init3", i1 false, i1 false}
!16 = !{!"../arch/arm/kernel/hw_breakpoint.c", i32 1192, i32 1}
!17 = !{ptr @__pcpu_unique_bp_on_reg, !18, !"__pcpu_unique_bp_on_reg", i1 false, i1 false}
!18 = !{!"../arch/arm/kernel/hw_breakpoint.c", i32 30, i32 8}
!19 = !{ptr @bp_on_reg, !18, !"bp_on_reg", i1 false, i1 false}
!20 = !{ptr @__pcpu_unique_wp_on_reg, !21, !"__pcpu_unique_wp_on_reg", i1 false, i1 false}
!21 = !{!"../arch/arm/kernel/hw_breakpoint.c", i32 33, i32 8}
!22 = !{ptr @wp_on_reg, !21, !"wp_on_reg", i1 false, i1 false}
!23 = !{ptr @core_num_brps, !24, !"core_num_brps", i1 false, i1 false}
!24 = !{!"../arch/arm/kernel/hw_breakpoint.c", i32 36, i32 12}
!25 = !{ptr @core_num_wrps, !26, !"core_num_wrps", i1 false, i1 false}
!26 = !{!"../arch/arm/kernel/hw_breakpoint.c", i32 37, i32 12}
!27 = !{ptr @debug_arch, !28, !"debug_arch", i1 false, i1 false}
!28 = !{!"../arch/arm/kernel/hw_breakpoint.c", i32 40, i32 11}
!29 = !{ptr @max_watchpoint_len, !30, !"max_watchpoint_len", i1 false, i1 false}
!30 = !{!"../arch/arm/kernel/hw_breakpoint.c", i32 46, i32 11}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../arch/arm/kernel/hw_breakpoint.c", i32 132, i32 3}
!33 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @get_debug_arch._entry, !32, !"_entry", i1 false, i1 false}
!36 = !{ptr @get_debug_arch._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../arch/arm/kernel/hw_breakpoint.c", i32 119, i32 3}
!39 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @write_wb_reg._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @write_wb_reg._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../arch/arm/kernel/hw_breakpoint.c", i32 1120, i32 3}
!44 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @arch_hw_breakpoint_init._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @arch_hw_breakpoint_init._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../arch/arm/kernel/hw_breakpoint.c", i32 1136, i32 3}
!49 = !{ptr @arch_hw_breakpoint_init._entry.12, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @arch_hw_breakpoint_init._entry_ptr.14, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../arch/arm/kernel/hw_breakpoint.c", i32 1160, i32 9}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../arch/arm/kernel/hw_breakpoint.c", i32 1172, i32 2}
!55 = !{ptr @arch_hw_breakpoint_init._entry.16, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @arch_hw_breakpoint_init._entry_ptr.18, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../arch/arm/kernel/hw_breakpoint.c", i32 1178, i32 2}
!61 = !{ptr @arch_hw_breakpoint_init._entry.21, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @arch_hw_breakpoint_init._entry_ptr.23, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../arch/arm/kernel/hw_breakpoint.c", i32 1183, i32 17}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../arch/arm/kernel/hw_breakpoint.c", i32 1185, i32 17}
!67 = !{ptr @has_ossr, !68, !"has_ossr", i1 false, i1 false}
!68 = !{!"../arch/arm/kernel/hw_breakpoint.c", i32 43, i32 13}
!69 = !{ptr @debug_reg_hook, !70, !"debug_reg_hook", i1 false, i1 false}
!70 = !{!"../arch/arm/kernel/hw_breakpoint.c", i32 962, i32 26}
!71 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../arch/arm/kernel/hw_breakpoint.c", i32 953, i32 2}
!73 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @debug_reg_trap._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @debug_reg_trap._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = distinct !{null, !77, !"__already_done", i1 false, i1 false}
!77 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!78 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!79 = distinct !{null, !80, !"__already_done", i1 false, i1 false}
!80 = !{!"../arch/arm/kernel/hw_breakpoint.c", i32 1027, i32 3}
!81 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @reset_ctrl_regs._entry, !80, !"_entry", i1 false, i1 false}
!84 = !{ptr @reset_ctrl_regs._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!85 = distinct !{null, !86, !"__already_done", i1 false, i1 false}
!86 = !{!"../arch/arm/kernel/hw_breakpoint.c", i32 1048, i32 3}
!87 = !{ptr @.str.33, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @reset_ctrl_regs._entry.32, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @reset_ctrl_regs._entry_ptr.34, !86, !"_entry_ptr", i1 false, i1 false}
!90 = distinct !{null, !91, !"__already_done", i1 false, i1 false}
!91 = !{!"../arch/arm/kernel/hw_breakpoint.c", i32 1068, i32 3}
!92 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @reset_ctrl_regs._entry.36, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @reset_ctrl_regs._entry_ptr.38, !91, !"_entry_ptr", i1 false, i1 false}
!95 = distinct !{null, !96, !"__already_done", i1 false, i1 false}
!96 = !{!"../arch/arm/kernel/hw_breakpoint.c", i32 262, i32 3}
!97 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @enable_monitor_mode._entry, !96, !"_entry", i1 false, i1 false}
!100 = !{ptr @enable_monitor_mode._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @debug_err_mask, !102, !"debug_err_mask", i1 false, i1 false}
!102 = !{!"../arch/arm/kernel/hw_breakpoint.c", i32 947, i32 18}
!103 = !{ptr @.str.41, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../arch/arm/kernel/hw_breakpoint.c", i32 104, i32 3}
!105 = !{ptr @.str.42, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @read_wb_reg._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @read_wb_reg._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.43, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../arch/arm/kernel/hw_breakpoint.c", i32 930, i32 3}
!110 = !{ptr @.str.44, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../arch/arm/kernel/hw_breakpoint.c", i32 887, i32 4}
!112 = !{ptr @.str.45, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.46, !111, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @breakpoint_handler.__UNIQUE_ID_ddebug252, !111, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!115 = !{ptr @.str.47, !111, !"<string literal>", i1 false, i1 false}
!116 = distinct !{null, !117, !"__warned", i1 false, i1 false}
!117 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!118 = !{ptr @.str.48, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.49, !117, !"<string literal>", i1 false, i1 false}
!120 = distinct !{null, !121, !"__warned", i1 false, i1 false}
!121 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!122 = !{ptr @.str.50, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.51, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../arch/arm/kernel/hw_breakpoint.c", i32 784, i32 3}
!125 = !{ptr @.str.52, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @watchpoint_handler.__UNIQUE_ID_ddebug250, !124, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!127 = !{ptr @.str.53, !124, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @watchpoint_handler.__UNIQUE_ID_ddebug251, !129, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!129 = !{!"../arch/arm/kernel/hw_breakpoint.c", i32 812, i32 3}
!130 = !{ptr @dbg_cpu_pm_nb, !131, !"dbg_cpu_pm_nb", i1 false, i1 false}
!131 = !{!"../arch/arm/kernel/hw_breakpoint.c", i32 1099, i32 30}
!132 = !{!"sp"}
!133 = !{i32 1, !"wchar_size", i32 2}
!134 = !{i32 1, !"min_enum_size", i32 4}
!135 = !{i32 8, !"branch-target-enforcement", i32 0}
!136 = !{i32 8, !"sign-return-address", i32 0}
!137 = !{i32 8, !"sign-return-address-all", i32 0}
!138 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!139 = !{i32 7, !"uwtable", i32 1}
!140 = !{i32 7, !"frame-pointer", i32 2}
!141 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!142 = !{i64 2154328437}
!143 = !{!"branch_weights", i32 2000, i32 1}
!144 = !{i64 2154818191}
!145 = !{i64 2154818411}
!146 = !{i64 2154818305}
!147 = !{i64 2154798557}
!148 = !{i64 2154798755}
!149 = !{i64 2154798953}
!150 = !{i64 2154799151}
!151 = !{i64 2154799349}
!152 = !{i64 2154799547}
!153 = !{i64 2154799745}
!154 = !{i64 2154799943}
!155 = !{i64 2154800141}
!156 = !{i64 2154800339}
!157 = !{i64 2154800540}
!158 = !{i64 2154800742}
!159 = !{i64 2154800944}
!160 = !{i64 2154801146}
!161 = !{i64 2154801348}
!162 = !{i64 2154801550}
!163 = !{i64 2154802419}
!164 = !{i64 2154802617}
!165 = !{i64 2154802815}
!166 = !{i64 2154803013}
!167 = !{i64 2154803211}
!168 = !{i64 2154803409}
!169 = !{i64 2154803607}
!170 = !{i64 2154803805}
!171 = !{i64 2154804003}
!172 = !{i64 2154804201}
!173 = !{i64 2154804402}
!174 = !{i64 2154804604}
!175 = !{i64 2154804806}
!176 = !{i64 2154805008}
!177 = !{i64 2154805210}
!178 = !{i64 2154805412}
!179 = !{i64 2154806281}
!180 = !{i64 2154806479}
!181 = !{i64 2154806677}
!182 = !{i64 2154806875}
!183 = !{i64 2154807073}
!184 = !{i64 2154807271}
!185 = !{i64 2154807469}
!186 = !{i64 2154807667}
!187 = !{i64 2154807865}
!188 = !{i64 2154808063}
!189 = !{i64 2154808264}
!190 = !{i64 2154808466}
!191 = !{i64 2154808668}
!192 = !{i64 2154808870}
!193 = !{i64 2154809072}
!194 = !{i64 2154809274}
!195 = !{i64 2154810143}
!196 = !{i64 2154810341}
!197 = !{i64 2154810539}
!198 = !{i64 2154810737}
!199 = !{i64 2154810935}
!200 = !{i64 2154811133}
!201 = !{i64 2154811331}
!202 = !{i64 2154811529}
!203 = !{i64 2154811727}
!204 = !{i64 2154811925}
!205 = !{i64 2154812126}
!206 = !{i64 2154812328}
!207 = !{i64 2154812530}
!208 = !{i64 2154812732}
!209 = !{i64 2154812934}
!210 = !{i64 2154813136}
!211 = !{i64 2154815123}
!212 = !{i64 2154818521}
!213 = !{i64 2154846554}
!214 = !{!"branch_weights", i32 1, i32 2000}
!215 = !{i64 2154792840}
!216 = !{i64 912446}
!217 = !{i64 910149}
!218 = !{i64 909959}
!219 = !{i64 2154843239}
!220 = !{i64 2154843464}
!221 = !{i64 2154844320}
!222 = !{i64 2154846709}
!223 = !{i8 0, i8 2}
!224 = !{i64 2154846818}
!225 = !{i64 2154849412}
!226 = !{i64 2154849540}
!227 = !{i64 2154849622}
!228 = !{i64 2154853789}
!229 = !{i64 2154818637}
!230 = !{i64 2154818757}
!231 = !{i64 2154818901}
!232 = !{i64 2154819035}
!233 = !{i64 2154819120}
!234 = !{i64 2154781383}
!235 = !{i64 2154781579}
!236 = !{i64 2154781775}
!237 = !{i64 2154781971}
!238 = !{i64 2154782167}
!239 = !{i64 2154782363}
!240 = !{i64 2154782559}
!241 = !{i64 2154782755}
!242 = !{i64 2154782951}
!243 = !{i64 2154783147}
!244 = !{i64 2154783346}
!245 = !{i64 2154783546}
!246 = !{i64 2154783746}
!247 = !{i64 2154783946}
!248 = !{i64 2154784146}
!249 = !{i64 2154784346}
!250 = !{i64 2154785202}
!251 = !{i64 2154785398}
!252 = !{i64 2154785594}
!253 = !{i64 2154785790}
!254 = !{i64 2154785986}
!255 = !{i64 2154786182}
!256 = !{i64 2154786378}
!257 = !{i64 2154786574}
!258 = !{i64 2154786770}
!259 = !{i64 2154786966}
!260 = !{i64 2154787165}
!261 = !{i64 2154787365}
!262 = !{i64 2154787565}
!263 = !{i64 2154787765}
!264 = !{i64 2154787965}
!265 = !{i64 2154788165}
!266 = !{i64 2154789021}
!267 = !{i64 2154789217}
!268 = !{i64 2154789413}
!269 = !{i64 2154789609}
!270 = !{i64 2154789805}
!271 = !{i64 2154790001}
!272 = !{i64 2154790197}
!273 = !{i64 2154790393}
!274 = !{i64 2154790589}
!275 = !{i64 2154790785}
!276 = !{i64 2154790984}
!277 = !{i64 2154791184}
!278 = !{i64 2154791384}
!279 = !{i64 2154791584}
!280 = !{i64 2154791784}
!281 = !{i64 2154791984}
!282 = !{i64 2154793036}
!283 = !{i64 2154793232}
!284 = !{i64 2154793428}
!285 = !{i64 2154793624}
!286 = !{i64 2154793820}
!287 = !{i64 2154794016}
!288 = !{i64 2154794212}
!289 = !{i64 2154794408}
!290 = !{i64 2154794604}
!291 = !{i64 2154794803}
!292 = !{i64 2154795003}
!293 = !{i64 2154795203}
!294 = !{i64 2154795403}
!295 = !{i64 2154795603}
!296 = !{i64 2154795803}
!297 = !{i64 2149290011}
!298 = !{i64 2148195869, i64 2148195874, i64 2148195887, i64 2148195931, i64 2148195965, i64 2148195986}
!299 = !{i64 2149290277}
!300 = !{i64 2154832820, i64 2154833316, i64 2154832857, i64 2154832913, i64 2154832947, i64 2154832971, i64 2154833012, i64 2154833033, i64 2154833061, i64 2154833095}
!301 = !{i32 0, i32 33}
