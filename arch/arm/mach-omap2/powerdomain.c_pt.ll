; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/powerdomain.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/powerdomain.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.4 }
%union.anon.4 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.powerdomain = type { ptr, %union.anon, i16, i8, i8, i8, i8, [5 x i8], [5 x i8], i8, [11 x ptr], %struct.list_head, %struct.list_head, i32, [4 x i32], i32, [5 x i32], %struct.spinlock, i32, i8, i8, i32, [5 x i32], [5 x i32], [5 x i32], [5 x i32], i64, [4 x i64], i32 }
%union.anon = type { ptr }
%struct.pwrdm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@arch_pwrdm = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pwrdm_complete_init.nb = internal global { %struct.notifier_block, [20 x i8] } zeroinitializer, align 32
@pwrdm_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @pwrdm_list, ptr @pwrdm_list }, [24 x i8] zeroinitializer }, align 32
@pwrdm_add_clkdm.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 118, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"powerdomain\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pwrdm_add_clkdm\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"arch/arm/mach-omap2/powerdomain.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"powerdomain: %s: associating clockdomain %s\0A\00", [51 x i8] zeroinitializer }, align 32
@pwrdm_add_clkdm.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 122, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"powerdomain: %s: increase PWRDM_MAX_CLKDMS for clkdm %s\0A\00", [39 x i8] zeroinitializer }, align 32
@pwrdm_set_next_pwrst.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 -121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwrdm_set_next_pwrst\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"powerdomain: %s: setting next powerstate to %0x\0A\00", [47 x i8] zeroinitializer }, align 32
@pwrdm_set_logic_retst.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 -96, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwrdm_set_logic_retst\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"powerdomain: %s: setting next logic powerstate to %0x\0A\00", [41 x i8] zeroinitializer }, align 32
@pwrdm_set_mem_onst.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 -87, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pwrdm_set_mem_onst\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"powerdomain: %s: setting next memory powerstate for bank %0x while pwrdm-ON to %0x\0A\00", [44 x i8] zeroinitializer }, align 32
@pwrdm_set_mem_retst.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 -77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pwrdm_set_mem_retst\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"powerdomain: %s: setting next memory powerstate for bank %0x while pwrdm-RET to %0x\0A\00", [43 x i8] zeroinitializer }, align 32
@pwrdm_clear_all_prev_pwrst.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 -32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pwrdm_clear_all_prev_pwrst\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"powerdomain: %s: clearing previous power state reg\0A\00", [44 x i8] zeroinitializer }, align 32
@pwrdm_enable_hdwr_sar.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 -25, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwrdm_enable_hdwr_sar\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"powerdomain: %s: setting SAVEANDRESTORE bit\0A\00", [51 x i8] zeroinitializer }, align 32
@pwrdm_disable_hdwr_sar.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 -18, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pwrdm_disable_hdwr_sar\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"powerdomain: %s: clearing SAVEANDRESTORE bit\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"powerdomain: %s: Fix max powerstate to ON\0A\00", [53 x i8] zeroinitializer }, align 32
@omap_set_pwrdm_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 1141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013%s: unable to set power state of powerdomain: %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"omap_set_pwrdm_state\00", [43 x i8] zeroinitializer }, align 32
@omap_set_pwrdm_state._entry_ptr = internal global ptr @omap_set_pwrdm_state._entry, section ".printk_index", align 4
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"powerdomain: %s: pwrdm is null\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.pwrdm_get_context_loss_count = private unnamed_addr constant [29 x i8] c"pwrdm_get_context_loss_count\00", align 1
@pwrdm_get_context_loss_count.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.pwrdm_get_context_loss_count, ptr @.str.2, ptr @.str.23, i8 1, i8 39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"powerdomain: %s: context loss count = %d\0A\00", [54 x i8] zeroinitializer }, align 32
@pwrdm_can_ever_lose_context.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 1, i8 45, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pwrdm_can_ever_lose_context\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"powerdomain: %s: invalid powerdomain pointer\0A\00", [50 x i8] zeroinitializer }, align 32
@_pwrdm_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013powerdomain: %s: missing OMAP4 PRCM partition ID\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"_pwrdm_register\00", [16 x i8] zeroinitializer }, align 32
@_pwrdm_register._entry_ptr = internal global ptr @_pwrdm_register._entry, section ".printk_index", align 4
@_pwrdm_register._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013powerdomain: %s: voltagedomain %s does not exist\0A\00", [44 x i8] zeroinitializer }, align 32
@_pwrdm_register._entry_ptr.30 = internal global ptr @_pwrdm_register._entry.28, section ".printk_index", align 4
@_pwrdm_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&pwrdm->_lock\00", [18 x i8] zeroinitializer }, align 32
@_pwrdm_register.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.32, i8 0, i8 34, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"powerdomain: registered %s\0A\00", [36 x i8] zeroinitializer }, align 32
@enable_off_mode = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_power_domain_target = external dso_local global %struct.tracepoint, align 4
@trace_power_domain_target_rcuidle.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/power.h\00", [35 x i8] zeroinitializer }, align 32
@tracepoint_srcu = external dso_local global %struct.srcu_struct, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 2]
@___asan_gen_.36 = private unnamed_addr constant [11 x i8] c"arch_pwrdm\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 61, i32 26 }
@___asan_gen_.39 = private unnamed_addr constant [3 x i8] c"nb\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 367, i32 31 }
@___asan_gen_.42 = private unnamed_addr constant [11 x i8] c"pwrdm_list\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 59, i32 8 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 473, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 488, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 539, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 641, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 678, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 716, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 895, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 925, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 954, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 1082, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 1140, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 1164, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 1180, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 1203, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 99, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 113, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 120, i32 2 }
@___asan_gen_.148 = private constant [37 x i8] c"../arch/arm/mach-omap2/powerdomain.c\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 137, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant [32 x i8] c"../include/trace/events/power.h\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 354, i32 1 }
@___asan_gen_.153 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.154 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 108, i32 2 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @_pwrdm_register._entry, ptr @_pwrdm_register._entry.28, ptr @_pwrdm_register._entry_ptr, ptr @_pwrdm_register._entry_ptr.30, ptr @omap_set_pwrdm_state._entry, ptr @omap_set_pwrdm_state._entry_ptr, ptr @arch_pwrdm, ptr @pwrdm_complete_init.nb, ptr @pwrdm_list, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @_pwrdm_register.__key, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arch_pwrdm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwrdm_complete_init.nb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwrdm_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_set_pwrdm_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_pwrdm_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_pwrdm_register._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_pwrdm_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @pwrdm_register_platform_funcs(ptr noundef %po) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %po, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @arch_pwrdm, align 4
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %if.end3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %po, ptr @arch_pwrdm, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry.return_crit_edge ], [ -17, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pwrdm_register_pwrdms(ptr noundef readonly %ps) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @arch_pwrdm, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %ps, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %1 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ps, align 4
  %tobool4.not8 = icmp eq ptr %2, null
  br i1 %tobool4.not8, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %3 = phi ptr [ %5, %for.body.for.body_crit_edge ], [ %2, %for.cond.preheader.for.body_crit_edge ]
  %p.09 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %ps, %for.cond.preheader.for.body_crit_edge ]
  tail call fastcc void @_pwrdm_register(ptr noundef nonnull %3)
  %incdec.ptr = getelementptr ptr, ptr %p.09, i32 1
  %4 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %incdec.ptr, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -17, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_pwrdm_register(ptr noundef %pwrdm) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pwrdm, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pwrdm, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call.i = tail call i32 @omap_rev() #9
  %and.i = and i32 %call.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 68
  br i1 %cmp.i.not, label %land.lhs.true, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %prcm_partition = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 9
  %2 = ptrtoint ptr %prcm_partition to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %prcm_partition, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %do.end, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pwrdm, align 8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %5) #12
  br label %cleanup

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %6 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pwrdm, align 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end7
  %.pn.in.i = phi ptr [ @pwrdm_list, %if.end7 ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %8 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @pwrdm_list
  br i1 %cmp.not.i, label %for.cond.i.if.end12_crit_edge, label %for.body.i

for.cond.i.if.end12_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

for.body.i:                                       ; preds = %for.cond.i
  %temp_pwrdm.0.i = getelementptr i8, ptr %.pn.i, i32 -72
  %9 = ptrtoint ptr %temp_pwrdm.0.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %temp_pwrdm.0.i, align 8
  %call.i1 = tail call i32 @strcmp(ptr noundef %7, ptr noundef %10) #13
  %tobool.not.i = icmp eq i32 %call.i1, 0
  br i1 %tobool.not.i, label %_pwrdm_lookup.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

_pwrdm_lookup.exit:                               ; preds = %for.body.i
  %temp_pwrdm.0.i.le = getelementptr i8, ptr %.pn.i, i32 -72
  %tobool10.not = icmp eq ptr %temp_pwrdm.0.i.le, null
  br i1 %tobool10.not, label %_pwrdm_lookup.exit.if.end12_crit_edge, label %_pwrdm_lookup.exit.cleanup_crit_edge

_pwrdm_lookup.exit.cleanup_crit_edge:             ; preds = %_pwrdm_lookup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

_pwrdm_lookup.exit.if.end12_crit_edge:            ; preds = %_pwrdm_lookup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end12:                                         ; preds = %_pwrdm_lookup.exit.if.end12_crit_edge, %for.cond.i.if.end12_crit_edge
  %11 = load ptr, ptr @arch_pwrdm, align 4
  %tobool13.not = icmp eq ptr %11, null
  br i1 %tobool13.not, label %if.end12.if.end22_crit_edge, label %land.lhs.true14

if.end12.if.end22_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

land.lhs.true14:                                  ; preds = %if.end12
  %pwrdm_has_voltdm = getelementptr inbounds %struct.pwrdm_ops, ptr %11, i32 0, i32 18
  %12 = ptrtoint ptr %pwrdm_has_voltdm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pwrdm_has_voltdm, align 4
  %tobool15.not = icmp eq ptr %13, null
  br i1 %tobool15.not, label %land.lhs.true14.if.end22_crit_edge, label %if.then16

land.lhs.true14.if.end22_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then16:                                        ; preds = %land.lhs.true14
  %call18 = tail call i32 %13() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then16.do.body36_crit_edge, label %if.then16.if.end22_crit_edge

if.then16.if.end22_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then16.do.body36_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body36

if.end22:                                         ; preds = %if.then16.if.end22_crit_edge, %land.lhs.true14.if.end22_crit_edge, %if.end12.if.end22_crit_edge
  %voltdm23 = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 1
  %14 = ptrtoint ptr %voltdm23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %voltdm23, align 4
  %call24 = tail call ptr @voltdm_lookup(ptr noundef %15) #9
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %do.end29, label %if.end34

do.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pwrdm, align 8
  %18 = ptrtoint ptr %voltdm23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %voltdm23, align 4
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %17, ptr noundef %19) #12
  br label %cleanup

if.end34:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %voltdm23 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call24, ptr %voltdm23, align 4
  %voltdm_node = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 12
  %21 = ptrtoint ptr %voltdm_node to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %voltdm_node, ptr %voltdm_node, align 4
  %prev.i = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 12, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %voltdm_node, ptr %prev.i, align 4
  br label %do.body36

do.body36:                                        ; preds = %if.end34, %if.then16.do.body36_crit_edge
  %_lock = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 17
  tail call void @__raw_spin_lock_init(ptr noundef %_lock, ptr noundef nonnull @.str.31, ptr noundef nonnull @_pwrdm_register.__key, i16 noundef signext 3) #9
  %node = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 11
  %23 = load ptr, ptr @pwrdm_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef nonnull @pwrdm_list, ptr noundef %23) #9
  br i1 %call.i.i, label %if.end.i.i, label %do.body36.list_add.exit_crit_edge

do.body36.list_add.exit_crit_edge:                ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit

if.end.i.i:                                       ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %node, ptr %prev1.i.i, align 4
  %25 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %23, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 11, i32 1
  %26 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @pwrdm_list, ptr %prev3.i.i, align 4
  store volatile ptr %node, ptr @pwrdm_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %do.body36.list_add.exit_crit_edge
  %uglygep = getelementptr i8, ptr %pwrdm, i32 92
  %banks = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 6
  %27 = call ptr @memset(ptr %uglygep, i32 0, i32 20)
  %28 = ptrtoint ptr %banks to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %banks, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp4411.not = icmp eq i8 %29, 0
  br i1 %cmp4411.not, label %list_add.exit.for.end50_crit_edge, label %list_add.exit.for.body46_crit_edge

list_add.exit.for.body46_crit_edge:               ; preds = %list_add.exit
  br label %for.body46

list_add.exit.for.end50_crit_edge:                ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end50

for.body46:                                       ; preds = %for.body46.for.body46_crit_edge, %list_add.exit.for.body46_crit_edge
  %i.112 = phi i32 [ %inc49, %for.body46.for.body46_crit_edge ], [ 0, %list_add.exit.for.body46_crit_edge ]
  %arrayidx47 = getelementptr %struct.powerdomain, ptr %pwrdm, i32 0, i32 16, i32 %i.112
  %30 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %arrayidx47, align 4
  %inc49 = add nuw nsw i32 %i.112, 1
  %31 = ptrtoint ptr %banks to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %banks, align 1
  %conv43 = zext i8 %32 to i32
  %cmp44 = icmp ult i32 %inc49, %conv43
  br i1 %cmp44, label %for.body46.for.body46_crit_edge, label %for.body46.for.end50_crit_edge

for.body46.for.end50_crit_edge:                   ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end50

for.body46.for.body46_crit_edge:                  ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body46

for.end50:                                        ; preds = %for.body46.for.end50_crit_edge, %list_add.exit.for.end50_crit_edge
  %33 = load ptr, ptr @arch_pwrdm, align 4
  %tobool51.not = icmp eq ptr %33, null
  br i1 %tobool51.not, label %for.end50.if.end.i_crit_edge, label %land.lhs.true52

for.end50.if.end.i_crit_edge:                     ; preds = %for.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true52:                                  ; preds = %for.end50
  %pwrdm_wait_transition = getelementptr inbounds %struct.pwrdm_ops, ptr %33, i32 0, i32 17
  %34 = ptrtoint ptr %pwrdm_wait_transition to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pwrdm_wait_transition, align 4
  %tobool53.not = icmp eq ptr %35, null
  br i1 %tobool53.not, label %land.lhs.true52.if.end.i_crit_edge, label %if.then54

land.lhs.true52.if.end.i_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then54:                                        ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #11
  %call56 = tail call i32 %35(ptr noundef nonnull %pwrdm) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then54, %land.lhs.true52.if.end.i_crit_edge, %for.end50.if.end.i_crit_edge
  %pwrsts.i = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 3
  %36 = ptrtoint ptr %pwrsts.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %pwrsts.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %37)
  %cmp.i3 = icmp eq i8 %37, 8
  br i1 %cmp.i3, label %if.end.i.pwrdm_read_pwrst.exit_crit_edge, label %if.end3.i

if.end.i.pwrdm_read_pwrst.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwrdm_read_pwrst.exit

if.end3.i:                                        ; preds = %if.end.i
  %38 = load ptr, ptr @arch_pwrdm, align 4
  %tobool4.not.i = icmp eq ptr %38, null
  br i1 %tobool4.not.i, label %if.end3.i.pwrdm_read_pwrst.exit_crit_edge, label %land.lhs.true.i

if.end3.i.pwrdm_read_pwrst.exit_crit_edge:        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwrdm_read_pwrst.exit

land.lhs.true.i:                                  ; preds = %if.end3.i
  %pwrdm_read_pwrst.i = getelementptr inbounds %struct.pwrdm_ops, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %pwrdm_read_pwrst.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pwrdm_read_pwrst.i, align 4
  %tobool5.not.i = icmp eq ptr %40, null
  br i1 %tobool5.not.i, label %land.lhs.true.i.pwrdm_read_pwrst.exit_crit_edge, label %if.then6.i

land.lhs.true.i.pwrdm_read_pwrst.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwrdm_read_pwrst.exit

if.then6.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i4 = tail call i32 %40(ptr noundef nonnull %pwrdm) #9
  br label %pwrdm_read_pwrst.exit

pwrdm_read_pwrst.exit:                            ; preds = %if.then6.i, %land.lhs.true.i.pwrdm_read_pwrst.exit_crit_edge, %if.end3.i.pwrdm_read_pwrst.exit_crit_edge, %if.end.i.pwrdm_read_pwrst.exit_crit_edge
  %retval.0.i5 = phi i32 [ 3, %if.end.i.pwrdm_read_pwrst.exit_crit_edge ], [ %call.i4, %if.then6.i ], [ -22, %land.lhs.true.i.pwrdm_read_pwrst.exit_crit_edge ], [ -22, %if.end3.i.pwrdm_read_pwrst.exit_crit_edge ]
  %state = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 13
  %41 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %retval.0.i5, ptr %state, align 8
  %arrayidx61 = getelementptr %struct.powerdomain, ptr %pwrdm, i32 0, i32 14, i32 %retval.0.i5
  %42 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %arrayidx61, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_pwrdm_register.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_pwrdm_register, %if.then68)) #9
          to label %cleanup [label %if.then68], !srcloc !91

if.then68:                                        ; preds = %pwrdm_read_pwrst.exit
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pwrdm, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_pwrdm_register.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.32, ptr noundef %44) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then68, %pwrdm_read_pwrst.exit, %do.end29, %_pwrdm_lookup.exit.cleanup_crit_edge, %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pwrdm_complete_init() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr @pwrdm_list, align 4
  %cmp.i.not = icmp eq ptr %0, @pwrdm_list
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %pwrdm_set_next_pwrst.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn16 = phi ptr [ %.pn.pr, %pwrdm_set_next_pwrst.exit.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %temp_p.0 = getelementptr i8, ptr %.pn16, i32 -72
  %tobool.not.i = icmp eq ptr %temp_p.0, null
  br i1 %tobool.not.i, label %for.body.pwrdm_set_next_pwrst.exit_crit_edge, label %if.end.i

for.body.pwrdm_set_next_pwrst.exit_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwrdm_set_next_pwrst.exit

if.end.i:                                         ; preds = %for.body
  %pwrsts.i = getelementptr i8, ptr %.pn16, i32 -62
  %1 = ptrtoint ptr %pwrsts.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %pwrsts.i, align 2
  %3 = and i8 %2, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not.i = icmp eq i8 %3, 0
  br i1 %tobool2.not.i, label %if.end.i.pwrdm_set_next_pwrst.exit_crit_edge, label %do.body.i

if.end.i.pwrdm_set_next_pwrst.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwrdm_set_next_pwrst.exit

do.body.i:                                        ; preds = %if.end.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pwrdm_set_next_pwrst.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pwrdm_complete_init, %if.then8.i)) #9
          to label %do.end.i [label %if.then8.i], !srcloc !91

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %temp_p.0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %temp_p.0, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pwrdm_set_next_pwrst.__UNIQUE_ID_ddebug312, ptr noundef nonnull @.str.6, ptr noundef %5, i32 noundef 3) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then8.i, %do.body.i
  %6 = load ptr, ptr @arch_pwrdm, align 4
  %tobool11.not.i = icmp eq ptr %6, null
  br i1 %tobool11.not.i, label %do.end.i.pwrdm_set_next_pwrst.exit_crit_edge, label %land.lhs.true.i

do.end.i.pwrdm_set_next_pwrst.exit_crit_edge:     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwrdm_set_next_pwrst.exit

land.lhs.true.i:                                  ; preds = %do.end.i
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool12.not.i = icmp eq ptr %8, null
  br i1 %tobool12.not.i, label %land.lhs.true.i.pwrdm_set_next_pwrst.exit_crit_edge, label %if.then13.i

land.lhs.true.i.pwrdm_set_next_pwrst.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwrdm_set_next_pwrst.exit

if.then13.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %temp_p.0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %temp_p.0, align 8
  %11 = tail call i32 @llvm.read_register.i32(metadata !81) #9
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu.i, align 4
  tail call fastcc void @trace_power_domain_target_rcuidle(ptr noundef %10, i32 noundef 3, i32 noundef %14) #9
  %15 = load ptr, ptr @arch_pwrdm, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %call18.i = tail call i32 %17(ptr noundef nonnull %temp_p.0, i8 noundef zeroext 3) #9
  br label %pwrdm_set_next_pwrst.exit

pwrdm_set_next_pwrst.exit:                        ; preds = %if.then13.i, %land.lhs.true.i.pwrdm_set_next_pwrst.exit_crit_edge, %do.end.i.pwrdm_set_next_pwrst.exit_crit_edge, %if.end.i.pwrdm_set_next_pwrst.exit_crit_edge, %for.body.pwrdm_set_next_pwrst.exit_crit_edge
  %18 = ptrtoint ptr %.pn16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn.pr = load ptr, ptr %.pn16, align 4
  %cmp.not = icmp eq ptr %.pn.pr, @pwrdm_list
  br i1 %cmp.not, label %for.end, label %pwrdm_set_next_pwrst.exit.for.body_crit_edge

pwrdm_set_next_pwrst.exit.for.body_crit_edge:     ; preds = %pwrdm_set_next_pwrst.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %pwrdm_set_next_pwrst.exit
  %call.i = tail call i32 @omap_rev() #9
  %shr.mask.i = and i32 %call.i, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 1124073472, i32 %shr.mask.i)
  %cmp.i14.not = icmp eq i32 %shr.mask.i, 1124073472
  br i1 %cmp.i14.not, label %if.then8, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then8:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  store ptr @cpu_notifier, ptr @pwrdm_complete_init.nb, align 4
  %call9 = tail call i32 @cpu_pm_register_notifier(ptr noundef nonnull @pwrdm_complete_init.nb) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -13, %entry.cleanup_crit_edge ], [ 0, %if.then8 ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pwrdm_set_next_pwrst(ptr noundef %pwrdm, i8 noundef zeroext %pwrst) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pwrdm, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %pwrsts = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 3
  %0 = ptrtoint ptr %pwrsts to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pwrsts, align 2
  %conv = zext i8 %1 to i32
  %conv1 = zext i8 %pwrst to i32
  %shl = shl nuw i32 1, %conv1
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pwrdm_set_next_pwrst.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pwrdm_set_next_pwrst, %if.then8)) #9
          to label %do.end [label %if.then8], !srcloc !91

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pwrdm, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pwrdm_set_next_pwrst.__UNIQUE_ID_ddebug312, ptr noundef nonnull @.str.6, ptr noundef %3, i32 noundef %conv1) #9
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %4 = load ptr, ptr @arch_pwrdm, align 4
  %tobool11.not = icmp eq ptr %4, null
  br i1 %tobool11.not, label %do.end.cleanup_crit_edge, label %land.lhs.true

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %do.end
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %tobool12.not = icmp eq ptr %6, null
  br i1 %tobool12.not, label %land.lhs.true.cleanup_crit_edge, label %if.then13

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pwrdm, align 8
  %9 = tail call i32 @llvm.read_register.i32(metadata !81) #9
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu, align 4
  tail call fastcc void @trace_power_domain_target_rcuidle(ptr noundef %8, i32 noundef %conv1, i32 noundef %12)
  %13 = load ptr, ptr @arch_pwrdm, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %call18 = tail call i32 %15(ptr noundef nonnull %pwrdm, i8 noundef zeroext %pwrst) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %land.lhs.true.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call18, %if.then13 ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpu_notifier(ptr nocapture noundef readnone %nb, i32 noundef %cmd, ptr nocapture noundef readnone %v) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 5, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @enable_off_mode to i32))
  %1 = load i32, ptr @enable_off_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %if.then

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  %.pn.i2.i = load ptr, ptr @pwrdm_list, align 4
  %cmp.not.i3.i = icmp eq ptr %.pn.i2.i, @pwrdm_list
  br i1 %cmp.not.i3.i, label %if.then.sw.epilog_crit_edge, label %if.then.for.body.i.i_crit_edge

if.then.for.body.i.i_crit_edge:                   ; preds = %if.then
  br label %for.body.i.i

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body.i.i:                                     ; preds = %pwrdm_save_context.exit.i.for.body.i.i_crit_edge, %if.then.for.body.i.i_crit_edge
  %.pn.i4.i = phi ptr [ %.pn.i.i, %pwrdm_save_context.exit.i.for.body.i.i_crit_edge ], [ %.pn.i2.i, %if.then.for.body.i.i_crit_edge ]
  %temp_pwrdm.0.i.i = getelementptr i8, ptr %.pn.i4.i, i32 -72
  %2 = load ptr, ptr @arch_pwrdm, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %for.body.i.i.pwrdm_save_context.exit.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.pwrdm_save_context.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwrdm_save_context.exit.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %pwrdm_save_context.i.i = getelementptr inbounds %struct.pwrdm_ops, ptr %2, i32 0, i32 19
  %3 = ptrtoint ptr %pwrdm_save_context.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pwrdm_save_context.i.i, align 4
  %tobool1.not.i1.i = icmp eq ptr %4, null
  br i1 %tobool1.not.i1.i, label %land.lhs.true.i.i.pwrdm_save_context.exit.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.pwrdm_save_context.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwrdm_save_context.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %4(ptr noundef %temp_pwrdm.0.i.i) #9
  br label %pwrdm_save_context.exit.i

pwrdm_save_context.exit.i:                        ; preds = %if.then.i.i, %land.lhs.true.i.i.pwrdm_save_context.exit.i_crit_edge, %for.body.i.i.pwrdm_save_context.exit.i_crit_edge
  %5 = ptrtoint ptr %.pn.i4.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn.i.i = load ptr, ptr %.pn.i4.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, @pwrdm_list
  br i1 %cmp.not.i.i, label %pwrdm_save_context.exit.i.sw.epilog_crit_edge, label %pwrdm_save_context.exit.i.for.body.i.i_crit_edge

pwrdm_save_context.exit.i.for.body.i.i_crit_edge: ; preds = %pwrdm_save_context.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

pwrdm_save_context.exit.i.sw.epilog_crit_edge:    ; preds = %pwrdm_save_context.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @enable_off_mode to i32))
  %6 = load i32, ptr @enable_off_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %sw.bb1.sw.epilog_crit_edge, label %if.then3

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then3:                                         ; preds = %sw.bb1
  %.pn.i2.i5 = load ptr, ptr @pwrdm_list, align 4
  %cmp.not.i3.i6 = icmp eq ptr %.pn.i2.i5, @pwrdm_list
  br i1 %cmp.not.i3.i6, label %if.then3.sw.epilog_crit_edge, label %if.then3.for.body.i.i10_crit_edge

if.then3.for.body.i.i10_crit_edge:                ; preds = %if.then3
  br label %for.body.i.i10

if.then3.sw.epilog_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body.i.i10:                                   ; preds = %pwrdm_restore_context.exit.i.for.body.i.i10_crit_edge, %if.then3.for.body.i.i10_crit_edge
  %.pn.i4.i7 = phi ptr [ %.pn.i.i14, %pwrdm_restore_context.exit.i.for.body.i.i10_crit_edge ], [ %.pn.i2.i5, %if.then3.for.body.i.i10_crit_edge ]
  %temp_pwrdm.0.i.i8 = getelementptr i8, ptr %.pn.i4.i7, i32 -72
  %7 = load ptr, ptr @arch_pwrdm, align 4
  %tobool.not.i.i9 = icmp eq ptr %7, null
  br i1 %tobool.not.i.i9, label %for.body.i.i10.pwrdm_restore_context.exit.i_crit_edge, label %land.lhs.true.i.i12

for.body.i.i10.pwrdm_restore_context.exit.i_crit_edge: ; preds = %for.body.i.i10
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwrdm_restore_context.exit.i

land.lhs.true.i.i12:                              ; preds = %for.body.i.i10
  %pwrdm_restore_context.i.i = getelementptr inbounds %struct.pwrdm_ops, ptr %7, i32 0, i32 20
  %8 = ptrtoint ptr %pwrdm_restore_context.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pwrdm_restore_context.i.i, align 4
  %tobool1.not.i1.i11 = icmp eq ptr %9, null
  br i1 %tobool1.not.i1.i11, label %land.lhs.true.i.i12.pwrdm_restore_context.exit.i_crit_edge, label %if.then.i.i13

land.lhs.true.i.i12.pwrdm_restore_context.exit.i_crit_edge: ; preds = %land.lhs.true.i.i12
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwrdm_restore_context.exit.i

if.then.i.i13:                                    ; preds = %land.lhs.true.i.i12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %9(ptr noundef %temp_pwrdm.0.i.i8) #9
  br label %pwrdm_restore_context.exit.i

pwrdm_restore_context.exit.i:                     ; preds = %if.then.i.i13, %land.lhs.true.i.i12.pwrdm_restore_context.exit.i_crit_edge, %for.body.i.i10.pwrdm_restore_context.exit.i_crit_edge
  %10 = ptrtoint ptr %.pn.i4.i7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn.i.i14 = load ptr, ptr %.pn.i4.i7, align 4
  %cmp.not.i.i15 = icmp eq ptr %.pn.i.i14, @pwrdm_list
  br i1 %cmp.not.i.i15, label %pwrdm_restore_context.exit.i.sw.epilog_crit_edge, label %pwrdm_restore_context.exit.i.for.body.i.i10_crit_edge

pwrdm_restore_context.exit.i.for.body.i.i10_crit_edge: ; preds = %pwrdm_restore_context.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i10

pwrdm_restore_context.exit.i.sw.epilog_crit_edge: ; preds = %pwrdm_restore_context.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %pwrdm_restore_context.exit.i.sw.epilog_crit_edge, %if.then3.sw.epilog_crit_edge, %sw.bb1.sw.epilog_crit_edge, %pwrdm_save_context.exit.i.sw.epilog_crit_edge, %if.then.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_register_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pwrdm_lock(ptr noundef %pwrdm) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %_lock = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 17
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %_lock) #9
  %_lock_flags = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 18
  %0 = ptrtoint ptr %_lock_flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call2, ptr %_lock_flags, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pwrdm_unlock(ptr noundef %pwrdm) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %_lock = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 17
  %_lock_flags = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 18
  %0 = ptrtoint ptr %_lock_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %_lock_flags, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %_lock, i32 noundef %1) #9
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pwrdm_lookup(ptr noundef readonly %name) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %name, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.cond.i_crit_edge

entry.for.cond.i_crit_edge:                       ; preds = %entry
  br label %for.cond.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry.for.cond.i_crit_edge
  %.pn.in.i = phi ptr [ %.pn.i, %for.body.i.for.cond.i_crit_edge ], [ @pwrdm_list, %entry.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @pwrdm_list
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %temp_pwrdm.0.i = getelementptr i8, ptr %.pn.i, i32 -72
  %1 = ptrtoint ptr %temp_pwrdm.0.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %temp_pwrdm.0.i, align 8
  %call.i = tail call i32 @strcmp(ptr noundef nonnull %name, ptr noundef %2) #13
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %cleanup.loopexit.split.loop.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

cleanup.loopexit.split.loop.exit:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %temp_pwrdm.0.i.le = getelementptr i8, ptr %.pn.i, i32 -72
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split.loop.exit, %for.cond.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %temp_pwrdm.0.i.le, %cleanup.loopexit.split.loop.exit ], [ null, %for.cond.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pwrdm_for_each(ptr noundef readonly %fn, ptr noundef %user) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fn, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.cond_crit_edge

entry.for.cond_crit_edge:                         ; preds = %entry
  br label %for.cond

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry.for.cond_crit_edge
  %.pn.in = phi ptr [ %.pn, %for.body.for.cond_crit_edge ], [ @pwrdm_list, %entry.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @pwrdm_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %temp_pwrdm.0 = getelementptr i8, ptr %.pn, i32 -72
  %call = tail call i32 %fn(ptr noundef %temp_pwrdm.0, ptr noundef %user) #9
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %for.body.for.cond_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pwrdm_add_clkdm(ptr noundef %pwrdm, ptr noundef %clkdm) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pwrdm, null
  %tobool1.not = icmp eq ptr %clkdm, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pwrdm_add_clkdm.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pwrdm_add_clkdm, %if.then5)) #9
          to label %do.end [label %if.then5], !srcloc !91

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pwrdm, align 8
  %2 = ptrtoint ptr %clkdm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clkdm, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pwrdm_add_clkdm.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.3, ptr noundef %1, ptr noundef %3) #9
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %arrayidx = getelementptr %struct.powerdomain, ptr %pwrdm, i32 0, i32 10, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool8.not = icmp eq ptr %5, null
  br i1 %tobool8.not, label %do.end.if.end56_crit_edge, label %for.inc

do.end.if.end56_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

for.inc:                                          ; preds = %do.end
  %arrayidx.1 = getelementptr %struct.powerdomain, ptr %pwrdm, i32 0, i32 10, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.1, align 4
  %tobool8.not.1 = icmp eq ptr %7, null
  br i1 %tobool8.not.1, label %for.inc.if.end56_crit_edge, label %for.inc.1

for.inc.if.end56_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.powerdomain, ptr %pwrdm, i32 0, i32 10, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.2, align 4
  %tobool8.not.2 = icmp eq ptr %9, null
  br i1 %tobool8.not.2, label %for.inc.1.if.end56_crit_edge, label %for.inc.2

for.inc.1.if.end56_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.powerdomain, ptr %pwrdm, i32 0, i32 10, i32 3
  %10 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.3, align 4
  %tobool8.not.3 = icmp eq ptr %11, null
  br i1 %tobool8.not.3, label %for.inc.2.if.end56_crit_edge, label %for.inc.3

for.inc.2.if.end56_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.4 = getelementptr %struct.powerdomain, ptr %pwrdm, i32 0, i32 10, i32 4
  %12 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.4, align 4
  %tobool8.not.4 = icmp eq ptr %13, null
  br i1 %tobool8.not.4, label %for.inc.3.if.end56_crit_edge, label %for.inc.4

for.inc.3.if.end56_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx.5 = getelementptr %struct.powerdomain, ptr %pwrdm, i32 0, i32 10, i32 5
  %14 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.5, align 4
  %tobool8.not.5 = icmp eq ptr %15, null
  br i1 %tobool8.not.5, label %for.inc.4.if.end56_crit_edge, label %for.inc.5

for.inc.4.if.end56_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx.6 = getelementptr %struct.powerdomain, ptr %pwrdm, i32 0, i32 10, i32 6
  %16 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.6, align 4
  %tobool8.not.6 = icmp eq ptr %17, null
  br i1 %tobool8.not.6, label %for.inc.5.if.end56_crit_edge, label %for.inc.6

for.inc.5.if.end56_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx.7 = getelementptr %struct.powerdomain, ptr %pwrdm, i32 0, i32 10, i32 7
  %18 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.7, align 4
  %tobool8.not.7 = icmp eq ptr %19, null
  br i1 %tobool8.not.7, label %for.inc.6.if.end56_crit_edge, label %for.inc.7

for.inc.6.if.end56_crit_edge:                     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

for.inc.7:                                        ; preds = %for.inc.6
  %arrayidx.8 = getelementptr %struct.powerdomain, ptr %pwrdm, i32 0, i32 10, i32 8
  %20 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.8, align 4
  %tobool8.not.8 = icmp eq ptr %21, null
  br i1 %tobool8.not.8, label %for.inc.7.if.end56_crit_edge, label %for.inc.8

for.inc.7.if.end56_crit_edge:                     ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

for.inc.8:                                        ; preds = %for.inc.7
  %arrayidx.9 = getelementptr %struct.powerdomain, ptr %pwrdm, i32 0, i32 10, i32 9
  %22 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.9, align 4
  %tobool8.not.9 = icmp eq ptr %23, null
  br i1 %tobool8.not.9, label %for.inc.8.if.end56_crit_edge, label %for.inc.9

for.inc.8.if.end56_crit_edge:                     ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

for.inc.9:                                        ; preds = %for.inc.8
  %arrayidx.10 = getelementptr %struct.powerdomain, ptr %pwrdm, i32 0, i32 10, i32 10
  %24 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.10, align 4
  %tobool8.not.10 = icmp eq ptr %25, null
  br i1 %tobool8.not.10, label %for.inc.9.if.end56_crit_edge, label %do.body13

for.inc.9.if.end56_crit_edge:                     ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

do.body13:                                        ; preds = %for.inc.9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pwrdm_add_clkdm.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pwrdm_add_clkdm, %if.then25)) #9
          to label %do.end42 [label %if.then25], !srcloc !91

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pwrdm, align 8
  %28 = ptrtoint ptr %clkdm to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clkdm, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pwrdm_add_clkdm.__UNIQUE_ID_ddebug311, ptr noundef nonnull @.str.4, ptr noundef %27, ptr noundef %29) #9
  br label %do.end42

do.end42:                                         ; preds = %if.then25, %do.body13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 490, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end56:                                         ; preds = %for.inc.9.if.end56_crit_edge, %for.inc.8.if.end56_crit_edge, %for.inc.7.if.end56_crit_edge, %for.inc.6.if.end56_crit_edge, %for.inc.5.if.end56_crit_edge, %for.inc.4.if.end56_crit_edge, %for.inc.3.if.end56_crit_edge, %for.inc.2.if.end56_crit_edge, %for.inc.1.if.end56_crit_edge, %for.inc.if.end56_crit_edge, %do.end.if.end56_crit_edge
  %i.080.lcssa = phi i32 [ 0, %do.end.if.end56_crit_edge ], [ 1, %for.inc.if.end56_crit_edge ], [ 2, %for.inc.1.if.end56_crit_edge ], [ 3, %for.inc.2.if.end56_crit_edge ], [ 4, %for.inc.3.if.end56_crit_edge ], [ 5, %for.inc.4.if.end56_crit_edge ], [ 6, %for.inc.5.if.end56_crit_edge ], [ 7, %for.inc.6.if.end56_crit_edge ], [ 8, %for.inc.7.if.end56_crit_edge ], [ 9, %for.inc.8.if.end56_crit_edge ], [ 10, %for.inc.9.if.end56_crit_edge ]
  %arrayidx58 = getelementptr %struct.powerdomain, ptr %pwrdm, i32 0, i32 10, i32 %i.080.lcssa
  %30 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %clkdm, ptr %arrayidx58, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %do.end42, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -12, %do.end42 ], [ 0, %if.end56 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @pwrdm_get_mem_bank_count(ptr noundef readonly %pwrdm) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pwrdm, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %banks = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 6
  %0 = ptrtoint ptr %banks to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %banks, align 1
  %conv = zext i8 %1 to i32
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %conv, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_power_domain_target_rcuidle(ptr noundef %name, i32 noundef %state, i32 noundef %cpu_id) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_power_domain_target, i32 0, i32 1), ptr blockaddress(@trace_power_domain_target_rcuidle, %do.body)) #9
          to label %if.end53 [label %do.body], !srcloc !91

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !81) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !92

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i59 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i59
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end53_crit_edge, label %if.end

cpu_online.exit.if.end53_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.end:                                           ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !81) #9
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %12, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end35_crit_edge, label %land.rhs

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

land.rhs:                                         ; preds = %if.end
  %.b56 = load i1, ptr @trace_power_domain_target_rcuidle.__already_done, align 1
  br i1 %.b56, label %land.rhs.if.end35_crit_edge, label %if.then12, !prof !92

land.rhs.if.end35_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then12:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_power_domain_target_rcuidle.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 359, i32 noundef 9, ptr noundef null) #9
  br label %if.end35

if.end35:                                         ; preds = %if.then12, %land.rhs.if.end35_crit_edge, %if.end.if.end35_crit_edge
  %13 = tail call i32 @llvm.read_register.i32(metadata !81) #9
  %and.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %16, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !93
  %call.i = tail call i32 @__srcu_read_lock(ptr noundef nonnull @tracepoint_srcu) #9
  tail call void @rcu_irq_enter_irqson() #9
  %call47 = tail call i32 @__traceiter_power_domain_target(ptr noundef null, ptr noundef %name, i32 noundef %state, i32 noundef %cpu_id) #9
  tail call void @rcu_irq_exit_irqson() #9
  tail call void @__srcu_read_unlock(ptr noundef nonnull @tracepoint_srcu, i32 noundef %call.i) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !94
  %17 = tail call i32 @llvm.read_register.i32(metadata !81) #9
  %and.i.i.i57 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i57 to ptr
  %preempt_count.i.i58 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i58 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i58, align 4
  %sub.i = add i32 %20, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i58, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.end35, %cpu_online.exit.if.end53_crit_edge, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pwrdm_read_next_pwrst(ptr noundef %pwrdm) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pwrdm, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @arch_pwrdm, align 4
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %pwrdm_read_next_pwrst = getelementptr inbounds %struct.pwrdm_ops, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %pwrdm_read_next_pwrst to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pwrdm_read_next_pwrst, align 4
  %tobool2.not = icmp eq ptr %2, null
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %if.then3

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 %2(ptr noundef nonnull %pwrdm) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call, %if.then3 ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pwrdm_read_pwrst(ptr noundef %pwrdm) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pwrdm, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %pwrsts = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 3
  %0 = ptrtoint ptr %pwrsts to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pwrsts, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %1)
  %cmp = icmp eq i8 %1, 8
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr @arch_pwrdm, align 4
  %tobool4.not = icmp eq ptr %2, null
  br i1 %tobool4.not, label %if.end3.cleanup_crit_edge, label %land.lhs.true

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end3
  %pwrdm_read_pwrst = getelementptr inbounds %struct.pwrdm_ops, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %pwrdm_read_pwrst to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pwrdm_read_pwrst, align 4
  %tobool5.not = icmp eq ptr %4, null
  br i1 %tobool5.not, label %land.lhs.true.cleanup_crit_edge, label %if.then6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 %4(ptr noundef nonnull %pwrdm) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %land.lhs.true.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 3, %if.end.cleanup_crit_edge ], [ %call, %if.then6 ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pwrdm_read_prev_pwrst(ptr noundef %pwrdm) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pwrdm, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @arch_pwrdm, align 4
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %pwrdm_read_prev_pwrst = getelementptr inbounds %struct.pwrdm_ops, ptr %0, i32 0, i32 3
  %1 = ptrtoint ptr %pwrdm_read_prev_pwrst to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pwrdm_read_prev_pwrst, align 4
  %tobool2.not = icmp eq ptr %2, null
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %if.then3

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 %2(ptr noundef nonnull %pwrdm) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call, %if.then3 ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pwrdm_set_logic_retst(ptr noundef %pwrdm, i8 noundef zeroext %pwrst) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pwrdm, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %pwrsts_logic_ret = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 4
  %0 = ptrtoint ptr %pwrsts_logic_ret to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pwrsts_logic_ret, align 1
  %conv = zext i8 %1 to i32
  %conv1 = zext i8 %pwrst to i32
  %shl = shl nuw i32 1, %conv1
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pwrdm_set_logic_retst.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pwrdm_set_logic_retst, %if.then8)) #9
          to label %do.end [label %if.then8], !srcloc !91

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pwrdm, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pwrdm_set_logic_retst.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.8, ptr noundef %3, i32 noundef %conv1) #9
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %4 = load ptr, ptr @arch_pwrdm, align 4
  %tobool11.not = icmp eq ptr %4, null
  br i1 %tobool11.not, label %do.end.cleanup_crit_edge, label %land.lhs.true

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %do.end
  %pwrdm_set_logic_retst = getelementptr inbounds %struct.pwrdm_ops, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %pwrdm_set_logic_retst to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pwrdm_set_logic_retst, align 4
  %tobool12.not = icmp eq ptr %6, null
  br i1 %tobool12.not, label %land.lhs.true.cleanup_crit_edge, label %if.then13

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call15 = tail call i32 %6(ptr noundef nonnull %pwrdm, i8 noundef zeroext %pwrst) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %land.lhs.true.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call15, %if.then13 ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pwrdm_set_mem_onst(ptr noundef %pwrdm, i8 noundef zeroext %bank, i8 noundef zeroext %pwrst) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pwrdm, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %banks = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 6
  %0 = ptrtoint ptr %banks to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %banks, align 1
  %conv1 = zext i8 %bank to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %bank)
  %cmp.not = icmp ugt i8 %1, %bank
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %arrayidx = getelementptr %struct.powerdomain, ptr %pwrdm, i32 0, i32 8, i32 %conv1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv5 = zext i8 %3 to i32
  %conv6 = zext i8 %pwrst to i32
  %shl = shl nuw i32 1, %conv6
  %and = and i32 %shl, %conv5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end4.cleanup_crit_edge, label %do.body

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.end4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pwrdm_set_mem_onst.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pwrdm_set_mem_onst, %if.then13)) #9
          to label %do.end [label %if.then13], !srcloc !91

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pwrdm, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pwrdm_set_mem_onst.__UNIQUE_ID_ddebug314, ptr noundef nonnull @.str.10, ptr noundef %5, i32 noundef %conv1, i32 noundef %conv6) #9
  br label %do.end

do.end:                                           ; preds = %if.then13, %do.body
  %6 = load ptr, ptr @arch_pwrdm, align 4
  %tobool17.not = icmp eq ptr %6, null
  br i1 %tobool17.not, label %do.end.cleanup_crit_edge, label %land.lhs.true

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %do.end
  %pwrdm_set_mem_onst = getelementptr inbounds %struct.pwrdm_ops, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %pwrdm_set_mem_onst to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pwrdm_set_mem_onst, align 4
  %tobool18.not = icmp eq ptr %8, null
  br i1 %tobool18.not, label %land.lhs.true.cleanup_crit_edge, label %if.then19

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call21 = tail call i32 %8(ptr noundef nonnull %pwrdm, i8 noundef zeroext %bank, i8 noundef zeroext %pwrst) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %land.lhs.true.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -17, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ %call21, %if.then19 ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pwrdm_set_mem_retst(ptr noundef %pwrdm, i8 noundef zeroext %bank, i8 noundef zeroext %pwrst) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pwrdm, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %banks = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 6
  %0 = ptrtoint ptr %banks to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %banks, align 1
  %conv1 = zext i8 %bank to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %bank)
  %cmp.not = icmp ugt i8 %1, %bank
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %arrayidx = getelementptr %struct.powerdomain, ptr %pwrdm, i32 0, i32 7, i32 %conv1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv5 = zext i8 %3 to i32
  %conv6 = zext i8 %pwrst to i32
  %shl = shl nuw i32 1, %conv6
  %and = and i32 %shl, %conv5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end4.cleanup_crit_edge, label %do.body

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.end4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pwrdm_set_mem_retst.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pwrdm_set_mem_retst, %if.then13)) #9
          to label %do.end [label %if.then13], !srcloc !91

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pwrdm, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pwrdm_set_mem_retst.__UNIQUE_ID_ddebug315, ptr noundef nonnull @.str.12, ptr noundef %5, i32 noundef %conv1, i32 noundef %conv6) #9
  br label %do.end

do.end:                                           ; preds = %if.then13, %do.body
  %6 = load ptr, ptr @arch_pwrdm, align 4
  %tobool17.not = icmp eq ptr %6, null
  br i1 %tobool17.not, label %do.end.cleanup_crit_edge, label %land.lhs.true

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %do.end
  %pwrdm_set_mem_retst = getelementptr inbounds %struct.pwrdm_ops, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %pwrdm_set_mem_retst to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pwrdm_set_mem_retst, align 4
  %tobool18.not = icmp eq ptr %8, null
  br i1 %tobool18.not, label %land.lhs.true.cleanup_crit_edge, label %if.then19

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call21 = tail call i32 %8(ptr noundef nonnull %pwrdm, i8 noundef zeroext %bank, i8 noundef zeroext %pwrst) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %land.lhs.true.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -17, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ %call21, %if.then19 ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pwrdm_read_logic_pwrst(ptr noundef %pwrdm) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pwrdm, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @arch_pwrdm, align 4
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %pwrdm_read_logic_pwrst = getelementptr inbounds %struct.pwrdm_ops, ptr %0, i32 0, i32 7
  %1 = ptrtoint ptr %pwrdm_read_logic_pwrst to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pwrdm_read_logic_pwrst, align 4
  %tobool2.not = icmp eq ptr %2, null
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %if.then3

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 %2(ptr noundef nonnull %pwrdm) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call, %if.then3 ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pwrdm_read_prev_logic_pwrst(ptr noundef %pwrdm) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pwrdm, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @arch_pwrdm, align 4
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %pwrdm_read_prev_logic_pwrst = getelementptr inbounds %struct.pwrdm_ops, ptr %0, i32 0, i32 8
  %1 = ptrtoint ptr %pwrdm_read_prev_logic_pwrst to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pwrdm_read_prev_logic_pwrst, align 4
  %tobool2.not = icmp eq ptr %2, null
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %if.then3

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 %2(ptr noundef nonnull %pwrdm) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call, %if.then3 ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pwrdm_read_logic_retst(ptr noundef %pwrdm) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pwrdm, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @arch_pwrdm, align 4
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %pwrdm_read_logic_retst = getelementptr inbounds %struct.pwrdm_ops, ptr %0, i32 0, i32 9
  %1 = ptrtoint ptr %pwrdm_read_logic_retst to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pwrdm_read_logic_retst, align 4
  %tobool2.not = icmp eq ptr %2, null
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %if.then3

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 %2(ptr noundef nonnull %pwrdm) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call, %if.then3 ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pwrdm_read_mem_pwrst(ptr noundef %pwrdm, i8 noundef zeroext %bank) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pwrdm, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %banks = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 6
  %0 = ptrtoint ptr %banks to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %banks, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %bank)
  %cmp.not = icmp ugt i8 %1, %bank
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 5
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flags, align 4
  %4 = and i8 %3, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool6.not = icmp eq i8 %4, 0
  %spec.select = select i1 %tobool6.not, i8 %bank, i8 1
  %5 = load ptr, ptr @arch_pwrdm, align 4
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %if.end4.cleanup_crit_edge, label %land.lhs.true

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end4
  %pwrdm_read_mem_pwrst = getelementptr inbounds %struct.pwrdm_ops, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %pwrdm_read_mem_pwrst to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pwrdm_read_mem_pwrst, align 4
  %tobool10.not = icmp eq ptr %7, null
  br i1 %tobool10.not, label %land.lhs.true.cleanup_crit_edge, label %if.then11

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 %7(ptr noundef nonnull %pwrdm, i8 noundef zeroext %spec.select) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %land.lhs.true.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call, %if.then11 ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pwrdm_read_prev_mem_pwrst(ptr noundef %pwrdm, i8 noundef zeroext %bank) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pwrdm, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %banks = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 6
  %0 = ptrtoint ptr %banks to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %banks, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %bank)
  %cmp.not = icmp ugt i8 %1, %bank
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 5
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flags, align 4
  %4 = and i8 %3, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool6.not = icmp eq i8 %4, 0
  %spec.select = select i1 %tobool6.not, i8 %bank, i8 1
  %5 = load ptr, ptr @arch_pwrdm, align 4
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %if.end4.cleanup_crit_edge, label %land.lhs.true

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end4
  %pwrdm_read_prev_mem_pwrst = getelementptr inbounds %struct.pwrdm_ops, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %pwrdm_read_prev_mem_pwrst to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pwrdm_read_prev_mem_pwrst, align 4
  %tobool10.not = icmp eq ptr %7, null
  br i1 %tobool10.not, label %land.lhs.true.cleanup_crit_edge, label %if.then11

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 %7(ptr noundef nonnull %pwrdm, i8 noundef zeroext %spec.select) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %land.lhs.true.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call, %if.then11 ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pwrdm_read_mem_retst(ptr noundef %pwrdm, i8 noundef zeroext %bank) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pwrdm, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %banks = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 6
  %0 = ptrtoint ptr %banks to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %banks, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %bank)
  %cmp.not = icmp ugt i8 %1, %bank
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %2 = load ptr, ptr @arch_pwrdm, align 4
  %tobool5.not = icmp eq ptr %2, null
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %land.lhs.true

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end4
  %pwrdm_read_mem_retst = getelementptr inbounds %struct.pwrdm_ops, ptr %2, i32 0, i32 12
  %3 = ptrtoint ptr %pwrdm_read_mem_retst to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pwrdm_read_mem_retst, align 4
  %tobool6.not = icmp eq ptr %4, null
  br i1 %tobool6.not, label %land.lhs.true.cleanup_crit_edge, label %if.then7

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 %4(ptr noundef nonnull %pwrdm, i8 noundef zeroext %bank) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %land.lhs.true.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call, %if.then7 ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pwrdm_clear_all_prev_pwrst(ptr noundef %pwrdm) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pwrdm, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pwrdm_clear_all_prev_pwrst.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pwrdm_clear_all_prev_pwrst, %if.then4)) #9
          to label %do.end [label %if.then4], !srcloc !91

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pwrdm, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pwrdm_clear_all_prev_pwrst.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.14, ptr noundef %1) #9
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %2 = load ptr, ptr @arch_pwrdm, align 4
  %tobool6.not = icmp eq ptr %2, null
  br i1 %tobool6.not, label %do.end.cleanup_crit_edge, label %land.lhs.true

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %do.end
  %pwrdm_clear_all_prev_pwrst = getelementptr inbounds %struct.pwrdm_ops, ptr %2, i32 0, i32 13
  %3 = ptrtoint ptr %pwrdm_clear_all_prev_pwrst to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pwrdm_clear_all_prev_pwrst, align 4
  %tobool7.not = icmp eq ptr %4, null
  br i1 %tobool7.not, label %land.lhs.true.cleanup_crit_edge, label %if.then8

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call i32 %4(ptr noundef nonnull %pwrdm) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %land.lhs.true.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call10, %if.then8 ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pwrdm_enable_hdwr_sar(ptr noundef %pwrdm) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pwrdm, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 5
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 4
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pwrdm_enable_hdwr_sar.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pwrdm_enable_hdwr_sar, %if.then7)) #9
          to label %do.end [label %if.then7], !srcloc !91

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pwrdm, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pwrdm_enable_hdwr_sar.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.16, ptr noundef %4) #9
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %5 = load ptr, ptr @arch_pwrdm, align 4
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %do.end.cleanup_crit_edge, label %land.lhs.true

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %do.end
  %pwrdm_enable_hdwr_sar = getelementptr inbounds %struct.pwrdm_ops, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %pwrdm_enable_hdwr_sar to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pwrdm_enable_hdwr_sar, align 4
  %tobool10.not = icmp eq ptr %7, null
  br i1 %tobool10.not, label %land.lhs.true.cleanup_crit_edge, label %if.then11

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call13 = tail call i32 %7(ptr noundef nonnull %pwrdm) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %land.lhs.true.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call13, %if.then11 ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pwrdm_disable_hdwr_sar(ptr noundef %pwrdm) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pwrdm, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 5
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 4
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pwrdm_disable_hdwr_sar.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pwrdm_disable_hdwr_sar, %if.then7)) #9
          to label %do.end [label %if.then7], !srcloc !91

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pwrdm, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pwrdm_disable_hdwr_sar.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.18, ptr noundef %4) #9
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %5 = load ptr, ptr @arch_pwrdm, align 4
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %do.end.cleanup_crit_edge, label %land.lhs.true

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %do.end
  %pwrdm_disable_hdwr_sar = getelementptr inbounds %struct.pwrdm_ops, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %pwrdm_disable_hdwr_sar to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pwrdm_disable_hdwr_sar, align 4
  %tobool10.not = icmp eq ptr %7, null
  br i1 %tobool10.not, label %land.lhs.true.cleanup_crit_edge, label %if.then11

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call13 = tail call i32 %7(ptr noundef nonnull %pwrdm) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %land.lhs.true.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call13, %if.then11 ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @pwrdm_has_hdwr_sar(ptr noundef readonly %pwrdm) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pwrdm, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %flags = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 5
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 4
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1 = icmp ne i8 %2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %3 = phi i1 [ false, %entry.land.end_crit_edge ], [ %tobool1, %land.rhs ]
  ret i1 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pwrdm_state_switch_nolock(ptr noundef %pwrdm) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pwrdm, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr @arch_pwrdm, align 4
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %pwrdm_wait_transition = getelementptr inbounds %struct.pwrdm_ops, ptr %0, i32 0, i32 17
  %1 = ptrtoint ptr %pwrdm_wait_transition to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pwrdm_wait_transition, align 4
  %call = tail call i32 %2(ptr noundef nonnull %pwrdm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end.i.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  %pwrsts.i.i = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 3
  %3 = ptrtoint ptr %pwrsts.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %pwrsts.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %4)
  %cmp.i.i = icmp eq i8 %4, 8
  br i1 %cmp.i.i, label %if.end.i.i.pwrdm_read_pwrst.exit.i_crit_edge, label %if.end3.i.i

if.end.i.i.pwrdm_read_pwrst.exit.i_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwrdm_read_pwrst.exit.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  %5 = load ptr, ptr @arch_pwrdm, align 4
  %tobool4.not.i.i = icmp eq ptr %5, null
  br i1 %tobool4.not.i.i, label %if.end3.i.i.pwrdm_read_pwrst.exit.i_crit_edge, label %land.lhs.true.i.i

if.end3.i.i.pwrdm_read_pwrst.exit.i_crit_edge:    ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwrdm_read_pwrst.exit.i

land.lhs.true.i.i:                                ; preds = %if.end3.i.i
  %pwrdm_read_pwrst.i.i = getelementptr inbounds %struct.pwrdm_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %pwrdm_read_pwrst.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pwrdm_read_pwrst.i.i, align 4
  %tobool5.not.i.i = icmp eq ptr %7, null
  br i1 %tobool5.not.i.i, label %land.lhs.true.i.i.pwrdm_read_pwrst.exit.i_crit_edge, label %if.then6.i.i

land.lhs.true.i.i.pwrdm_read_pwrst.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwrdm_read_pwrst.exit.i

if.then6.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call i32 %7(ptr noundef nonnull %pwrdm) #9
  br label %pwrdm_read_pwrst.exit.i

pwrdm_read_pwrst.exit.i:                          ; preds = %if.then6.i.i, %land.lhs.true.i.i.pwrdm_read_pwrst.exit.i_crit_edge, %if.end3.i.i.pwrdm_read_pwrst.exit.i_crit_edge, %if.end.i.i.pwrdm_read_pwrst.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 3, %if.end.i.i.pwrdm_read_pwrst.exit.i_crit_edge ], [ %call.i.i, %if.then6.i.i ], [ -22, %land.lhs.true.i.i.pwrdm_read_pwrst.exit.i_crit_edge ], [ -22, %if.end3.i.i.pwrdm_read_pwrst.exit.i_crit_edge ]
  %state1.i = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 13
  %8 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state1.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %9)
  %cmp19.not.i = icmp eq i32 %retval.0.i.i, %9
  br i1 %cmp19.not.i, label %pwrdm_read_pwrst.exit.i._pwrdm_state_switch.exit_crit_edge, label %if.then20.i

pwrdm_read_pwrst.exit.i._pwrdm_state_switch.exit_crit_edge: ; preds = %pwrdm_read_pwrst.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_pwrdm_state_switch.exit

if.then20.i:                                      ; preds = %pwrdm_read_pwrst.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx22.i = getelementptr %struct.powerdomain, ptr %pwrdm, i32 0, i32 14, i32 %retval.0.i.i
  %10 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx22.i, align 4
  %inc23.i = add i32 %11, 1
  store i32 %inc23.i, ptr %arrayidx22.i, align 4
  br label %_pwrdm_state_switch.exit

_pwrdm_state_switch.exit:                         ; preds = %if.then20.i, %pwrdm_read_pwrst.exit.i._pwrdm_state_switch.exit_crit_edge
  tail call void @pm_dbg_update_time(ptr noundef nonnull %pwrdm, i32 noundef %9) #9
  %12 = ptrtoint ptr %state1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %retval.0.i.i, ptr %state1.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %_pwrdm_state_switch.exit, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ 0, %_pwrdm_state_switch.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pwrdm_state_switch(ptr noundef %pwrdm) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %_lock.i = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 17
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %_lock.i) #9
  %_lock_flags.i = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 18
  %0 = ptrtoint ptr %_lock_flags.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call2.i, ptr %_lock_flags.i, align 8
  %tobool.not.i = icmp eq ptr %pwrdm, null
  br i1 %tobool.not.i, label %entry.pwrdm_state_switch_nolock.exit_crit_edge, label %lor.lhs.false.i

entry.pwrdm_state_switch_nolock.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwrdm_state_switch_nolock.exit

lor.lhs.false.i:                                  ; preds = %entry
  %1 = load ptr, ptr @arch_pwrdm, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.pwrdm_state_switch_nolock.exit_crit_edge, label %if.end.i

lor.lhs.false.i.pwrdm_state_switch_nolock.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwrdm_state_switch_nolock.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %pwrdm_wait_transition.i = getelementptr inbounds %struct.pwrdm_ops, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %pwrdm_wait_transition.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pwrdm_wait_transition.i, align 4
  %call.i = tail call i32 %3(ptr noundef nonnull %pwrdm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end.i.i.i, label %if.end.i.pwrdm_state_switch_nolock.exit_crit_edge

if.end.i.pwrdm_state_switch_nolock.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwrdm_state_switch_nolock.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  %pwrsts.i.i.i = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 3
  %4 = ptrtoint ptr %pwrsts.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pwrsts.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %5)
  %cmp.i.i.i = icmp eq i8 %5, 8
  br i1 %cmp.i.i.i, label %if.end.i.i.i.pwrdm_read_pwrst.exit.i.i_crit_edge, label %if.end3.i.i.i

if.end.i.i.i.pwrdm_read_pwrst.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwrdm_read_pwrst.exit.i.i

if.end3.i.i.i:                                    ; preds = %if.end.i.i.i
  %6 = load ptr, ptr @arch_pwrdm, align 4
  %tobool4.not.i.i.i = icmp eq ptr %6, null
  br i1 %tobool4.not.i.i.i, label %if.end3.i.i.i.pwrdm_read_pwrst.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end3.i.i.i.pwrdm_read_pwrst.exit.i.i_crit_edge: ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwrdm_read_pwrst.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end3.i.i.i
  %pwrdm_read_pwrst.i.i.i = getelementptr inbounds %struct.pwrdm_ops, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %pwrdm_read_pwrst.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pwrdm_read_pwrst.i.i.i, align 4
  %tobool5.not.i.i.i = icmp eq ptr %8, null
  br i1 %tobool5.not.i.i.i, label %land.lhs.true.i.i.i.pwrdm_read_pwrst.exit.i.i_crit_edge, label %if.then6.i.i.i

land.lhs.true.i.i.i.pwrdm_read_pwrst.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwrdm_read_pwrst.exit.i.i

if.then6.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call i32 %8(ptr noundef nonnull %pwrdm) #9
  br label %pwrdm_read_pwrst.exit.i.i

pwrdm_read_pwrst.exit.i.i:                        ; preds = %if.then6.i.i.i, %land.lhs.true.i.i.i.pwrdm_read_pwrst.exit.i.i_crit_edge, %if.end3.i.i.i.pwrdm_read_pwrst.exit.i.i_crit_edge, %if.end.i.i.i.pwrdm_read_pwrst.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ 3, %if.end.i.i.i.pwrdm_read_pwrst.exit.i.i_crit_edge ], [ %call.i.i.i, %if.then6.i.i.i ], [ -22, %land.lhs.true.i.i.i.pwrdm_read_pwrst.exit.i.i_crit_edge ], [ -22, %if.end3.i.i.i.pwrdm_read_pwrst.exit.i.i_crit_edge ]
  %state1.i.i = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 13
  %9 = ptrtoint ptr %state1.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state1.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i.i, i32 %10)
  %cmp19.not.i.i = icmp eq i32 %retval.0.i.i.i, %10
  br i1 %cmp19.not.i.i, label %pwrdm_read_pwrst.exit.i.i._pwrdm_state_switch.exit.i_crit_edge, label %if.then20.i.i

pwrdm_read_pwrst.exit.i.i._pwrdm_state_switch.exit.i_crit_edge: ; preds = %pwrdm_read_pwrst.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_pwrdm_state_switch.exit.i

if.then20.i.i:                                    ; preds = %pwrdm_read_pwrst.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx22.i.i = getelementptr %struct.powerdomain, ptr %pwrdm, i32 0, i32 14, i32 %retval.0.i.i.i
  %11 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx22.i.i, align 4
  %inc23.i.i = add i32 %12, 1
  store i32 %inc23.i.i, ptr %arrayidx22.i.i, align 4
  br label %_pwrdm_state_switch.exit.i

_pwrdm_state_switch.exit.i:                       ; preds = %if.then20.i.i, %pwrdm_read_pwrst.exit.i.i._pwrdm_state_switch.exit.i_crit_edge
  tail call void @pm_dbg_update_time(ptr noundef nonnull %pwrdm, i32 noundef %10) #9
  %13 = ptrtoint ptr %state1.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %retval.0.i.i.i, ptr %state1.i.i, align 8
  br label %pwrdm_state_switch_nolock.exit

pwrdm_state_switch_nolock.exit:                   ; preds = %_pwrdm_state_switch.exit.i, %if.end.i.pwrdm_state_switch_nolock.exit_crit_edge, %lor.lhs.false.i.pwrdm_state_switch_nolock.exit_crit_edge, %entry.pwrdm_state_switch_nolock.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %lor.lhs.false.i.pwrdm_state_switch_nolock.exit_crit_edge ], [ -22, %entry.pwrdm_state_switch_nolock.exit_crit_edge ], [ %call.i, %if.end.i.pwrdm_state_switch_nolock.exit_crit_edge ], [ 0, %_pwrdm_state_switch.exit.i ]
  %14 = ptrtoint ptr %_lock_flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %_lock_flags.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %_lock.i, i32 noundef %15) #9
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pwrdm_pre_transition(ptr noundef %pwrdm) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pwrdm, null
  br i1 %tobool.not, label %for.cond.i.preheader, label %do.body.i.i

for.cond.i.preheader:                             ; preds = %entry
  %.pn.i32 = load ptr, ptr @pwrdm_list, align 4
  %cmp.not.i33 = icmp eq ptr %.pn.i32, @pwrdm_list
  br i1 %cmp.not.i33, label %for.cond.i.preheader.if.end_crit_edge, label %for.cond.i.preheader.for.body.i_crit_edge

for.cond.i.preheader.for.body.i_crit_edge:        ; preds = %for.cond.i.preheader
  br label %for.body.i

for.cond.i.preheader.if.end_crit_edge:            ; preds = %for.cond.i.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body.i.i:                                      ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pwrdm_clear_all_prev_pwrst.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pwrdm_pre_transition, %if.then4.i.i)) #9
          to label %do.end.i.i [label %if.then4.i.i], !srcloc !91

if.then4.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pwrdm, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pwrdm_clear_all_prev_pwrst.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.14, ptr noundef %1) #9
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then4.i.i, %do.body.i.i
  %2 = load ptr, ptr @arch_pwrdm, align 4
  %tobool6.not.i.i = icmp eq ptr %2, null
  br i1 %tobool6.not.i.i, label %do.end.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i

do.end.i.i.if.end.i.i.i_crit_edge:                ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

land.lhs.true.i.i:                                ; preds = %do.end.i.i
  %pwrdm_clear_all_prev_pwrst.i.i = getelementptr inbounds %struct.pwrdm_ops, ptr %2, i32 0, i32 13
  %3 = ptrtoint ptr %pwrdm_clear_all_prev_pwrst.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pwrdm_clear_all_prev_pwrst.i.i, align 4
  %tobool7.not.i.i = icmp eq ptr %4, null
  br i1 %tobool7.not.i.i, label %land.lhs.true.i.i.if.end.i.i.i_crit_edge, label %if.then8.i.i

land.lhs.true.i.i.if.end.i.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

if.then8.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call10.i.i = tail call i32 %4(ptr noundef nonnull %pwrdm) #9
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then8.i.i, %land.lhs.true.i.i.if.end.i.i.i_crit_edge, %do.end.i.i.if.end.i.i.i_crit_edge
  %pwrsts.i.i.i = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 3
  %5 = ptrtoint ptr %pwrsts.i.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pwrsts.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %6)
  %cmp.i.i.i = icmp eq i8 %6, 8
  br i1 %cmp.i.i.i, label %if.end.i.i.i.pwrdm_read_pwrst.exit.i.i_crit_edge, label %if.end3.i.i.i

if.end.i.i.i.pwrdm_read_pwrst.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwrdm_read_pwrst.exit.i.i

if.end3.i.i.i:                                    ; preds = %if.end.i.i.i
  %7 = load ptr, ptr @arch_pwrdm, align 4
  %tobool4.not.i.i.i = icmp eq ptr %7, null
  br i1 %tobool4.not.i.i.i, label %if.end3.i.i.i.pwrdm_read_pwrst.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end3.i.i.i.pwrdm_read_pwrst.exit.i.i_crit_edge: ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwrdm_read_pwrst.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end3.i.i.i
  %pwrdm_read_pwrst.i.i.i = getelementptr inbounds %struct.pwrdm_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %pwrdm_read_pwrst.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pwrdm_read_pwrst.i.i.i, align 4
  %tobool5.not.i.i.i = icmp eq ptr %9, null
  br i1 %tobool5.not.i.i.i, label %land.lhs.true.i.i.i.pwrdm_read_pwrst.exit.i.i_crit_edge, label %if.then6.i.i.i

land.lhs.true.i.i.i.pwrdm_read_pwrst.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwrdm_read_pwrst.exit.i.i

if.then6.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call i32 %9(ptr noundef nonnull %pwrdm) #9
  br label %pwrdm_read_pwrst.exit.i.i

pwrdm_read_pwrst.exit.i.i:                        ; preds = %if.then6.i.i.i, %land.lhs.true.i.i.i.pwrdm_read_pwrst.exit.i.i_crit_edge, %if.end3.i.i.i.pwrdm_read_pwrst.exit.i.i_crit_edge, %if.end.i.i.i.pwrdm_read_pwrst.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ 3, %if.end.i.i.i.pwrdm_read_pwrst.exit.i.i_crit_edge ], [ %call.i.i.i, %if.then6.i.i.i ], [ -22, %land.lhs.true.i.i.i.pwrdm_read_pwrst.exit.i.i_crit_edge ], [ -22, %if.end3.i.i.i.pwrdm_read_pwrst.exit.i.i_crit_edge ]
  %state1.i.i = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 13
  %10 = ptrtoint ptr %state1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state1.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i.i, i32 %11)
  %cmp19.not.i.i = icmp eq i32 %retval.0.i.i.i, %11
  br i1 %cmp19.not.i.i, label %pwrdm_read_pwrst.exit.i.i._pwrdm_pre_transition_cb.exit_crit_edge, label %if.then20.i.i

pwrdm_read_pwrst.exit.i.i._pwrdm_pre_transition_cb.exit_crit_edge: ; preds = %pwrdm_read_pwrst.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_pwrdm_pre_transition_cb.exit

if.then20.i.i:                                    ; preds = %pwrdm_read_pwrst.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx22.i.i = getelementptr %struct.powerdomain, ptr %pwrdm, i32 0, i32 14, i32 %retval.0.i.i.i
  %12 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx22.i.i, align 4
  %inc23.i.i = add i32 %13, 1
  store i32 %inc23.i.i, ptr %arrayidx22.i.i, align 4
  br label %_pwrdm_pre_transition_cb.exit

_pwrdm_pre_transition_cb.exit:                    ; preds = %if.then20.i.i, %pwrdm_read_pwrst.exit.i.i._pwrdm_pre_transition_cb.exit_crit_edge
  tail call void @pm_dbg_update_time(ptr noundef nonnull %pwrdm, i32 noundef %11) #9
  %14 = ptrtoint ptr %state1.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %retval.0.i.i.i, ptr %state1.i.i, align 8
  br label %if.end

for.body.i:                                       ; preds = %_pwrdm_pre_transition_cb.exit31.for.body.i_crit_edge, %for.cond.i.preheader.for.body.i_crit_edge
  %.pn.i34 = phi ptr [ %.pn.i, %_pwrdm_pre_transition_cb.exit31.for.body.i_crit_edge ], [ %.pn.i32, %for.cond.i.preheader.for.body.i_crit_edge ]
  %temp_pwrdm.0.i = getelementptr i8, ptr %.pn.i34, i32 -72
  %tobool.not.i.i3 = icmp eq ptr %temp_pwrdm.0.i, null
  br i1 %tobool.not.i.i3, label %for.body.i._pwrdm_pre_transition_cb.exit31_crit_edge, label %do.body.i.i4

for.body.i._pwrdm_pre_transition_cb.exit31_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_pwrdm_pre_transition_cb.exit31

do.body.i.i4:                                     ; preds = %for.body.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pwrdm_clear_all_prev_pwrst.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pwrdm_pre_transition, %if.then4.i.i5)) #9
          to label %do.end.i.i7 [label %if.then4.i.i5], !srcloc !91

if.then4.i.i5:                                    ; preds = %do.body.i.i4
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %temp_pwrdm.0.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %temp_pwrdm.0.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pwrdm_clear_all_prev_pwrst.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.14, ptr noundef %16) #9
  br label %do.end.i.i7

do.end.i.i7:                                      ; preds = %if.then4.i.i5, %do.body.i.i4
  %17 = load ptr, ptr @arch_pwrdm, align 4
  %tobool6.not.i.i6 = icmp eq ptr %17, null
  br i1 %tobool6.not.i.i6, label %do.end.i.i7.if.end.i.i.i15_crit_edge, label %land.lhs.true.i.i10

do.end.i.i7.if.end.i.i.i15_crit_edge:             ; preds = %do.end.i.i7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i15

land.lhs.true.i.i10:                              ; preds = %do.end.i.i7
  %pwrdm_clear_all_prev_pwrst.i.i8 = getelementptr inbounds %struct.pwrdm_ops, ptr %17, i32 0, i32 13
  %18 = ptrtoint ptr %pwrdm_clear_all_prev_pwrst.i.i8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pwrdm_clear_all_prev_pwrst.i.i8, align 4
  %tobool7.not.i.i9 = icmp eq ptr %19, null
  br i1 %tobool7.not.i.i9, label %land.lhs.true.i.i10.if.end.i.i.i15_crit_edge, label %if.then8.i.i12

land.lhs.true.i.i10.if.end.i.i.i15_crit_edge:     ; preds = %land.lhs.true.i.i10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i15

if.then8.i.i12:                                   ; preds = %land.lhs.true.i.i10
  call void @__sanitizer_cov_trace_pc() #11
  %call10.i.i11 = tail call i32 %19(ptr noundef nonnull %temp_pwrdm.0.i) #9
  br label %if.end.i.i.i15

if.end.i.i.i15:                                   ; preds = %if.then8.i.i12, %land.lhs.true.i.i10.if.end.i.i.i15_crit_edge, %do.end.i.i7.if.end.i.i.i15_crit_edge
  %pwrsts.i.i.i13 = getelementptr i8, ptr %.pn.i34, i32 -62
  %20 = ptrtoint ptr %pwrsts.i.i.i13 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %pwrsts.i.i.i13, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %21)
  %cmp.i.i.i14 = icmp eq i8 %21, 8
  br i1 %cmp.i.i.i14, label %if.end.i.i.i15.pwrdm_read_pwrst.exit.i.i26_crit_edge, label %if.end3.i.i.i17

if.end.i.i.i15.pwrdm_read_pwrst.exit.i.i26_crit_edge: ; preds = %if.end.i.i.i15
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwrdm_read_pwrst.exit.i.i26

if.end3.i.i.i17:                                  ; preds = %if.end.i.i.i15
  %22 = load ptr, ptr @arch_pwrdm, align 4
  %tobool4.not.i.i.i16 = icmp eq ptr %22, null
  br i1 %tobool4.not.i.i.i16, label %if.end3.i.i.i17.pwrdm_read_pwrst.exit.i.i26_crit_edge, label %land.lhs.true.i.i.i20

if.end3.i.i.i17.pwrdm_read_pwrst.exit.i.i26_crit_edge: ; preds = %if.end3.i.i.i17
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwrdm_read_pwrst.exit.i.i26

land.lhs.true.i.i.i20:                            ; preds = %if.end3.i.i.i17
  %pwrdm_read_pwrst.i.i.i18 = getelementptr inbounds %struct.pwrdm_ops, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %pwrdm_read_pwrst.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pwrdm_read_pwrst.i.i.i18, align 4
  %tobool5.not.i.i.i19 = icmp eq ptr %24, null
  br i1 %tobool5.not.i.i.i19, label %land.lhs.true.i.i.i20.pwrdm_read_pwrst.exit.i.i26_crit_edge, label %if.then6.i.i.i22

land.lhs.true.i.i.i20.pwrdm_read_pwrst.exit.i.i26_crit_edge: ; preds = %land.lhs.true.i.i.i20
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwrdm_read_pwrst.exit.i.i26

if.then6.i.i.i22:                                 ; preds = %land.lhs.true.i.i.i20
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i21 = tail call i32 %24(ptr noundef nonnull %temp_pwrdm.0.i) #9
  br label %pwrdm_read_pwrst.exit.i.i26

pwrdm_read_pwrst.exit.i.i26:                      ; preds = %if.then6.i.i.i22, %land.lhs.true.i.i.i20.pwrdm_read_pwrst.exit.i.i26_crit_edge, %if.end3.i.i.i17.pwrdm_read_pwrst.exit.i.i26_crit_edge, %if.end.i.i.i15.pwrdm_read_pwrst.exit.i.i26_crit_edge
  %retval.0.i.i.i23 = phi i32 [ 3, %if.end.i.i.i15.pwrdm_read_pwrst.exit.i.i26_crit_edge ], [ %call.i.i.i21, %if.then6.i.i.i22 ], [ -22, %land.lhs.true.i.i.i20.pwrdm_read_pwrst.exit.i.i26_crit_edge ], [ -22, %if.end3.i.i.i17.pwrdm_read_pwrst.exit.i.i26_crit_edge ]
  %state1.i.i24 = getelementptr i8, ptr %.pn.i34, i32 16
  %25 = ptrtoint ptr %state1.i.i24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %state1.i.i24, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i.i23, i32 %26)
  %cmp19.not.i.i25 = icmp eq i32 %retval.0.i.i.i23, %26
  br i1 %cmp19.not.i.i25, label %pwrdm_read_pwrst.exit.i.i26.if.end24.i.i30_crit_edge, label %if.then20.i.i29

pwrdm_read_pwrst.exit.i.i26.if.end24.i.i30_crit_edge: ; preds = %pwrdm_read_pwrst.exit.i.i26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i.i30

if.then20.i.i29:                                  ; preds = %pwrdm_read_pwrst.exit.i.i26
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx22.i.i27 = getelementptr %struct.powerdomain, ptr %temp_pwrdm.0.i, i32 0, i32 14, i32 %retval.0.i.i.i23
  %27 = ptrtoint ptr %arrayidx22.i.i27 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx22.i.i27, align 4
  %inc23.i.i28 = add i32 %28, 1
  store i32 %inc23.i.i28, ptr %arrayidx22.i.i27, align 4
  br label %if.end24.i.i30

if.end24.i.i30:                                   ; preds = %if.then20.i.i29, %pwrdm_read_pwrst.exit.i.i26.if.end24.i.i30_crit_edge
  tail call void @pm_dbg_update_time(ptr noundef nonnull %temp_pwrdm.0.i, i32 noundef %26) #9
  %29 = ptrtoint ptr %state1.i.i24 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %retval.0.i.i.i23, ptr %state1.i.i24, align 8
  br label %_pwrdm_pre_transition_cb.exit31

_pwrdm_pre_transition_cb.exit31:                  ; preds = %if.end24.i.i30, %for.body.i._pwrdm_pre_transition_cb.exit31_crit_edge
  %30 = ptrtoint ptr %.pn.i34 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn.i = load ptr, ptr %.pn.i34, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @pwrdm_list
  br i1 %cmp.not.i, label %_pwrdm_pre_transition_cb.exit31.if.end_crit_edge, label %_pwrdm_pre_transition_cb.exit31.for.body.i_crit_edge

_pwrdm_pre_transition_cb.exit31.for.body.i_crit_edge: ; preds = %_pwrdm_pre_transition_cb.exit31
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

_pwrdm_pre_transition_cb.exit31.if.end_crit_edge: ; preds = %_pwrdm_pre_transition_cb.exit31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %_pwrdm_pre_transition_cb.exit31.if.end_crit_edge, %_pwrdm_pre_transition_cb.exit, %for.cond.i.preheader.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pwrdm_post_transition(ptr noundef %pwrdm) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pwrdm, null
  br i1 %tobool.not, label %entry.for.cond.i_crit_edge, label %if.then

entry.for.cond.i_crit_edge:                       ; preds = %entry
  br label %for.cond.i

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call fastcc i32 @_pwrdm_post_transition_cb(ptr noundef nonnull %pwrdm, ptr noundef null)
  br label %if.end

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry.for.cond.i_crit_edge
  %.pn.in.i = phi ptr [ %.pn.i, %for.body.i.for.cond.i_crit_edge ], [ @pwrdm_list, %entry.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @pwrdm_list
  br i1 %cmp.not.i, label %for.cond.i.if.end_crit_edge, label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %temp_pwrdm.0.i = getelementptr i8, ptr %.pn.i, i32 -72
  %call.i = tail call fastcc i32 @_pwrdm_post_transition_cb(ptr noundef %temp_pwrdm.0.i, ptr noundef null) #9
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.if.end_crit_edge

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

if.end:                                           ; preds = %for.body.i.if.end_crit_edge, %for.cond.i.if.end_crit_edge, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_pwrdm_post_transition_cb(ptr noundef %pwrdm, ptr nocapture noundef readnone %unused) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp eq ptr %pwrdm, null
  br i1 %cmp.i, label %entry._pwrdm_state_switch.exit_crit_edge, label %if.end.i.i

entry._pwrdm_state_switch.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %_pwrdm_state_switch.exit

if.end.i.i:                                       ; preds = %entry
  %pwrsts.i.i = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 3
  %0 = ptrtoint ptr %pwrsts.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pwrsts.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %1)
  %cmp.i.i = icmp eq i8 %1, 8
  br i1 %cmp.i.i, label %if.end.i.i.pwrdm_read_pwrst.exit.i_crit_edge, label %if.end3.i.i

if.end.i.i.pwrdm_read_pwrst.exit.i_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwrdm_read_pwrst.exit.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  %2 = load ptr, ptr @arch_pwrdm, align 4
  %tobool4.not.i.i = icmp eq ptr %2, null
  br i1 %tobool4.not.i.i, label %if.end3.i.i.pwrdm_read_prev_pwrst.exit.i_crit_edge, label %land.lhs.true.i.i

if.end3.i.i.pwrdm_read_prev_pwrst.exit.i_crit_edge: ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwrdm_read_prev_pwrst.exit.i

land.lhs.true.i.i:                                ; preds = %if.end3.i.i
  %pwrdm_read_pwrst.i.i = getelementptr inbounds %struct.pwrdm_ops, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %pwrdm_read_pwrst.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pwrdm_read_pwrst.i.i, align 4
  %tobool5.not.i.i = icmp eq ptr %4, null
  br i1 %tobool5.not.i.i, label %land.lhs.true.i.i.pwrdm_read_pwrst.exit.i_crit_edge, label %if.then6.i.i

land.lhs.true.i.i.pwrdm_read_pwrst.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwrdm_read_pwrst.exit.i

if.then6.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call i32 %4(ptr noundef nonnull %pwrdm) #9
  br label %pwrdm_read_pwrst.exit.i

pwrdm_read_pwrst.exit.i:                          ; preds = %if.then6.i.i, %land.lhs.true.i.i.pwrdm_read_pwrst.exit.i_crit_edge, %if.end.i.i.pwrdm_read_pwrst.exit.i_crit_edge
  %retval.0.i.i.ph = phi i32 [ -22, %land.lhs.true.i.i.pwrdm_read_pwrst.exit.i_crit_edge ], [ %call.i.i, %if.then6.i.i ], [ 3, %if.end.i.i.pwrdm_read_pwrst.exit.i_crit_edge ]
  %.pr = load ptr, ptr @arch_pwrdm, align 4
  %tobool1.not.i.i = icmp eq ptr %.pr, null
  br i1 %tobool1.not.i.i, label %pwrdm_read_pwrst.exit.i.pwrdm_read_prev_pwrst.exit.i_crit_edge, label %land.lhs.true.i51.i

pwrdm_read_pwrst.exit.i.pwrdm_read_prev_pwrst.exit.i_crit_edge: ; preds = %pwrdm_read_pwrst.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwrdm_read_prev_pwrst.exit.i

land.lhs.true.i51.i:                              ; preds = %pwrdm_read_pwrst.exit.i
  %pwrdm_read_prev_pwrst.i.i = getelementptr inbounds %struct.pwrdm_ops, ptr %.pr, i32 0, i32 3
  %5 = ptrtoint ptr %pwrdm_read_prev_pwrst.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pwrdm_read_prev_pwrst.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %6, null
  br i1 %tobool2.not.i.i, label %land.lhs.true.i51.i.pwrdm_read_prev_pwrst.exit.i_crit_edge, label %if.then3.i.i

land.lhs.true.i51.i.pwrdm_read_prev_pwrst.exit.i_crit_edge: ; preds = %land.lhs.true.i51.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwrdm_read_prev_pwrst.exit.i

if.then3.i.i:                                     ; preds = %land.lhs.true.i51.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i52.i = tail call i32 %6(ptr noundef nonnull %pwrdm) #9
  br label %pwrdm_read_prev_pwrst.exit.i

pwrdm_read_prev_pwrst.exit.i:                     ; preds = %if.then3.i.i, %land.lhs.true.i51.i.pwrdm_read_prev_pwrst.exit.i_crit_edge, %pwrdm_read_pwrst.exit.i.pwrdm_read_prev_pwrst.exit.i_crit_edge, %if.end3.i.i.pwrdm_read_prev_pwrst.exit.i_crit_edge
  %retval.0.i.i3 = phi i32 [ %retval.0.i.i.ph, %if.then3.i.i ], [ %retval.0.i.i.ph, %land.lhs.true.i51.i.pwrdm_read_prev_pwrst.exit.i_crit_edge ], [ %retval.0.i.i.ph, %pwrdm_read_pwrst.exit.i.pwrdm_read_prev_pwrst.exit.i_crit_edge ], [ -22, %if.end3.i.i.pwrdm_read_prev_pwrst.exit.i_crit_edge ]
  %retval.0.i53.i = phi i32 [ %call.i52.i, %if.then3.i.i ], [ -22, %land.lhs.true.i51.i.pwrdm_read_prev_pwrst.exit.i_crit_edge ], [ -22, %pwrdm_read_pwrst.exit.i.pwrdm_read_prev_pwrst.exit.i_crit_edge ], [ -22, %if.end3.i.i.pwrdm_read_prev_pwrst.exit.i_crit_edge ]
  %state4.i = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 13
  %7 = ptrtoint ptr %state4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state4.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %retval.0.i53.i)
  %cmp5.not.i = icmp eq i32 %8, %retval.0.i53.i
  br i1 %cmp5.not.i, label %pwrdm_read_prev_pwrst.exit.i.if.end7.i_crit_edge, label %if.then6.i

pwrdm_read_prev_pwrst.exit.i.if.end7.i_crit_edge: ; preds = %pwrdm_read_prev_pwrst.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

if.then6.i:                                       ; preds = %pwrdm_read_prev_pwrst.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.powerdomain, ptr %pwrdm, i32 0, i32 14, i32 %retval.0.i53.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %inc.i = add i32 %10, 1
  store i32 %inc.i, ptr %arrayidx.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then6.i, %pwrdm_read_prev_pwrst.exit.i.if.end7.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i53.i)
  %cmp8.i = icmp eq i32 %retval.0.i53.i, 1
  br i1 %cmp8.i, label %if.end.i.i.i, label %if.end7.i.if.end.i58.i_crit_edge

if.end7.i.if.end.i58.i_crit_edge:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i58.i

if.end.i.i.i:                                     ; preds = %if.end7.i
  %11 = load ptr, ptr @arch_pwrdm, align 4
  %tobool1.not.i.i.i = icmp eq ptr %11, null
  br i1 %tobool1.not.i.i.i, label %if.end.i.i.i.if.end.i55.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i.i.i.if.end.i55.i_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i55.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i.i
  %pwrdm_read_prev_logic_pwrst.i.i.i = getelementptr inbounds %struct.pwrdm_ops, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %pwrdm_read_prev_logic_pwrst.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pwrdm_read_prev_logic_pwrst.i.i.i, align 4
  %tobool2.not.i.i.i = icmp eq ptr %13, null
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.if.end.i55.i_crit_edge, label %pwrdm_read_prev_logic_pwrst.exit.i.i

land.lhs.true.i.i.i.if.end.i55.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i55.i

pwrdm_read_prev_logic_pwrst.exit.i.i:             ; preds = %land.lhs.true.i.i.i
  %call.i.i.i = tail call i32 %13(ptr noundef nonnull %pwrdm) #9
  %pwrsts_logic_ret.i.i = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 4
  %14 = ptrtoint ptr %pwrsts_logic_ret.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pwrsts_logic_ret.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %15)
  %cmp.i54.i = icmp eq i8 %15, 3
  %conv3.i.i = and i32 %call.i.i.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv3.i.i)
  %cmp4.i.i = icmp eq i32 %conv3.i.i, 0
  %or.cond.i.i = select i1 %cmp.i54.i, i1 %cmp4.i.i, i1 false
  br i1 %or.cond.i.i, label %if.then.i.i, label %pwrdm_read_prev_logic_pwrst.exit.i.i.if.end.i55.i_crit_edge

pwrdm_read_prev_logic_pwrst.exit.i.i.if.end.i55.i_crit_edge: ; preds = %pwrdm_read_prev_logic_pwrst.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i55.i

if.then.i.i:                                      ; preds = %pwrdm_read_prev_logic_pwrst.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %ret_logic_off_counter.i.i = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 15
  %16 = ptrtoint ptr %ret_logic_off_counter.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ret_logic_off_counter.i.i, align 4
  %inc.i.i = add i32 %17, 1
  store i32 %inc.i.i, ptr %ret_logic_off_counter.i.i, align 4
  br label %if.end.i55.i

if.end.i55.i:                                     ; preds = %if.then.i.i, %pwrdm_read_prev_logic_pwrst.exit.i.i.if.end.i55.i_crit_edge, %land.lhs.true.i.i.i.if.end.i55.i_crit_edge, %if.end.i.i.i.if.end.i55.i_crit_edge
  %banks.i.i = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 6
  %18 = ptrtoint ptr %banks.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %banks.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp754.not.i.i = icmp eq i8 %19, 0
  br i1 %cmp754.not.i.i, label %if.end.i55.i.if.end.i58.i_crit_edge, label %for.body.lr.ph.i.i

if.end.i55.i.if.end.i58.i_crit_edge:              ; preds = %if.end.i55.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i58.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i55.i
  %flags.i.i.i = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 5
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %20 = phi i8 [ %19, %for.body.lr.ph.i.i ], [ %32, %for.inc.i.i.for.body.i.i_crit_edge ]
  %i.055.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc23.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %conv9.i.i = trunc i32 %i.055.i.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %conv9.i.i)
  %cmp.not.i.i.i = icmp ugt i8 %20, %conv9.i.i
  br i1 %cmp.not.i.i.i, label %if.end4.i.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end4.i.i.i:                                    ; preds = %for.body.i.i
  %21 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %flags.i.i.i, align 4
  %23 = and i8 %22, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool6.not.i.i.i = icmp eq i8 %23, 0
  %spec.select.i.i.i = select i1 %tobool6.not.i.i.i, i8 %conv9.i.i, i8 1
  %24 = load ptr, ptr @arch_pwrdm, align 4
  %tobool9.not.i.i.i = icmp eq ptr %24, null
  br i1 %tobool9.not.i.i.i, label %if.end4.i.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i37.i.i

if.end4.i.i.i.for.inc.i.i_crit_edge:              ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

land.lhs.true.i37.i.i:                            ; preds = %if.end4.i.i.i
  %pwrdm_read_prev_mem_pwrst.i.i.i = getelementptr inbounds %struct.pwrdm_ops, ptr %24, i32 0, i32 11
  %25 = ptrtoint ptr %pwrdm_read_prev_mem_pwrst.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pwrdm_read_prev_mem_pwrst.i.i.i, align 4
  %tobool10.not.i.i.i = icmp eq ptr %26, null
  br i1 %tobool10.not.i.i.i, label %land.lhs.true.i37.i.i.for.inc.i.i_crit_edge, label %pwrdm_read_prev_mem_pwrst.exit.i.i

land.lhs.true.i37.i.i.for.inc.i.i_crit_edge:      ; preds = %land.lhs.true.i37.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

pwrdm_read_prev_mem_pwrst.exit.i.i:               ; preds = %land.lhs.true.i37.i.i
  %call.i38.i.i = tail call i32 %26(ptr noundef nonnull %pwrdm, i8 noundef zeroext %spec.select.i.i.i) #9
  %arrayidx.i.i = getelementptr %struct.powerdomain, ptr %pwrdm, i32 0, i32 7, i32 %i.055.i.i
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %28)
  %cmp13.i.i = icmp eq i8 %28, 3
  %conv16.i.i = and i32 %call.i38.i.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv16.i.i)
  %cmp17.i.i = icmp eq i32 %conv16.i.i, 0
  %or.cond34.i.i = select i1 %cmp13.i.i, i1 %cmp17.i.i, i1 false
  br i1 %or.cond34.i.i, label %if.then19.i.i, label %pwrdm_read_prev_mem_pwrst.exit.i.i.for.inc.i.i_crit_edge

pwrdm_read_prev_mem_pwrst.exit.i.i.for.inc.i.i_crit_edge: ; preds = %pwrdm_read_prev_mem_pwrst.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.then19.i.i:                                    ; preds = %pwrdm_read_prev_mem_pwrst.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx20.i.i = getelementptr %struct.powerdomain, ptr %pwrdm, i32 0, i32 16, i32 %i.055.i.i
  %29 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx20.i.i, align 4
  %inc21.i.i = add i32 %30, 1
  store i32 %inc21.i.i, ptr %arrayidx20.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then19.i.i, %pwrdm_read_prev_mem_pwrst.exit.i.i.for.inc.i.i_crit_edge, %land.lhs.true.i37.i.i.for.inc.i.i_crit_edge, %if.end4.i.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc23.i.i = add nuw nsw i32 %i.055.i.i, 1
  %31 = ptrtoint ptr %banks.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %banks.i.i, align 1
  %conv6.i.i = zext i8 %32 to i32
  %cmp7.i.i = icmp ult i32 %inc23.i.i, %conv6.i.i
  br i1 %cmp7.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.if.end.i58.i_crit_edge

for.inc.i.i.if.end.i58.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i58.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

if.end.i58.i:                                     ; preds = %for.inc.i.i.if.end.i58.i_crit_edge, %if.end.i55.i.if.end.i58.i_crit_edge, %if.end7.i.if.end.i58.i_crit_edge
  %33 = load ptr, ptr @arch_pwrdm, align 4
  %tobool1.not.i57.i = icmp eq ptr %33, null
  br i1 %tobool1.not.i57.i, label %if.end.i58.i.pwrdm_read_next_pwrst.exit.i_crit_edge, label %land.lhs.true.i60.i

if.end.i58.i.pwrdm_read_next_pwrst.exit.i_crit_edge: ; preds = %if.end.i58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwrdm_read_next_pwrst.exit.i

land.lhs.true.i60.i:                              ; preds = %if.end.i58.i
  %pwrdm_read_next_pwrst.i.i = getelementptr inbounds %struct.pwrdm_ops, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %pwrdm_read_next_pwrst.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pwrdm_read_next_pwrst.i.i, align 4
  %tobool2.not.i59.i = icmp eq ptr %35, null
  br i1 %tobool2.not.i59.i, label %land.lhs.true.i60.i.pwrdm_read_next_pwrst.exit.i_crit_edge, label %if.then3.i62.i

land.lhs.true.i60.i.pwrdm_read_next_pwrst.exit.i_crit_edge: ; preds = %land.lhs.true.i60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwrdm_read_next_pwrst.exit.i

if.then3.i62.i:                                   ; preds = %land.lhs.true.i60.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i61.i = tail call i32 %35(ptr noundef nonnull %pwrdm) #9
  br label %pwrdm_read_next_pwrst.exit.i

pwrdm_read_next_pwrst.exit.i:                     ; preds = %if.then3.i62.i, %land.lhs.true.i60.i.pwrdm_read_next_pwrst.exit.i_crit_edge, %if.end.i58.i.pwrdm_read_next_pwrst.exit.i_crit_edge
  %retval.0.i63.i = phi i32 [ %call.i61.i, %if.then3.i62.i ], [ -22, %land.lhs.true.i60.i.pwrdm_read_next_pwrst.exit.i_crit_edge ], [ -22, %if.end.i58.i.pwrdm_read_next_pwrst.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i63.i, i32 %retval.0.i53.i)
  %cmp12.not.i = icmp eq i32 %retval.0.i63.i, %retval.0.i53.i
  br i1 %cmp12.not.i, label %pwrdm_read_next_pwrst.exit.i.sw.epilog.i_crit_edge, label %if.then13.i

pwrdm_read_next_pwrst.exit.i.sw.epilog.i_crit_edge: ; preds = %pwrdm_read_next_pwrst.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

if.then13.i:                                      ; preds = %pwrdm_read_next_pwrst.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %and.i = shl i32 %retval.0.i63.i, 8
  %shl.i = and i32 %and.i, 768
  %and14.i = and i32 %retval.0.i53.i, 3
  %or.i = or i32 %and14.i, %shl.i
  %or16.i = or i32 %or.i, -2147483648
  %36 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pwrdm, align 8
  %38 = tail call i32 @llvm.read_register.i32(metadata !81) #9
  %and.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cpu.i, align 4
  tail call fastcc void @trace_power_domain_target_rcuidle(ptr noundef %37, i32 noundef %or16.i, i32 noundef %41) #9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.then13.i, %pwrdm_read_next_pwrst.exit.i.sw.epilog.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i3, i32 %retval.0.i53.i)
  %cmp19.not.i = icmp eq i32 %retval.0.i.i3, %retval.0.i53.i
  br i1 %cmp19.not.i, label %sw.epilog.i.if.end24.i_crit_edge, label %if.then20.i

sw.epilog.i.if.end24.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i

if.then20.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx22.i = getelementptr %struct.powerdomain, ptr %pwrdm, i32 0, i32 14, i32 %retval.0.i.i3
  %42 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx22.i, align 4
  %inc23.i = add i32 %43, 1
  store i32 %inc23.i, ptr %arrayidx22.i, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then20.i, %sw.epilog.i.if.end24.i_crit_edge
  tail call void @pm_dbg_update_time(ptr noundef nonnull %pwrdm, i32 noundef %retval.0.i53.i) #9
  %44 = ptrtoint ptr %state4.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %retval.0.i.i3, ptr %state4.i, align 8
  br label %_pwrdm_state_switch.exit

_pwrdm_state_switch.exit:                         ; preds = %if.end24.i, %entry._pwrdm_state_switch.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @pwrdm_get_valid_lp_state(ptr nocapture noundef readonly %pwrdm, i1 noundef zeroext %is_logic_state, i8 noundef zeroext %req_state) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pwrsts = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 3
  %pwrsts_logic_ret = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 4
  %cond5 = select i1 %is_logic_state, i32 1, i32 3
  %cond.in.in = select i1 %is_logic_state, ptr %pwrsts_logic_ret, ptr %pwrsts
  %0 = ptrtoint ptr %cond.in.in to i32
  call void @__asan_load1_noabort(i32 %0)
  %cond.in87 = load i8, ptr %cond.in.in, align 1
  %conv7 = zext i8 %cond.in87 to i32
  %conv8 = zext i8 %req_state to i32
  %shl = shl nuw i32 1, %conv8
  %and = and i32 %shl, %conv7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %req_state)
  %tobool10.not = icmp eq i8 %req_state, 0
  br i1 %tobool10.not, label %if.end.while.cond29_crit_edge, label %if.end.while.cond_crit_edge

if.end.while.cond_crit_edge:                      ; preds = %if.end
  br label %while.cond

if.end.while.cond29_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond29

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.end.while.cond_crit_edge
  %indvars.iv = phi i32 [ %1, %while.body.while.cond_crit_edge ], [ %conv8, %if.end.while.cond_crit_edge ]
  %1 = add nsw i32 %indvars.iv, -1
  %shl17 = shl nuw i32 1, %1
  %and18 = and i32 %shl17, %conv7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %while.body, label %cleanup.loopexit91

while.body:                                       ; preds = %while.cond
  %cmp.wide = icmp eq i32 %1, 0
  br i1 %cmp.wide, label %while.body.while.cond29_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

while.body.while.cond29_crit_edge:                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond29

while.cond29:                                     ; preds = %while.body.while.cond29_crit_edge, %if.end.while.cond29_crit_edge
  %new_pwrst.1 = add i8 %req_state, 1
  %conv31 = zext i8 %new_pwrst.1 to i32
  %shl32 = shl nuw i32 1, %conv31
  %and33 = and i32 %shl32, %conv7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %while.body36, label %while.cond29.cleanup_crit_edge

while.cond29.cleanup_crit_edge:                   ; preds = %while.cond29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body36:                                     ; preds = %while.cond29
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %new_pwrst.1)
  %cmp38 = icmp ugt i8 %new_pwrst.1, 3
  br i1 %cmp38, label %while.body36.do.end_crit_edge, label %if.end59

while.body36.do.end_crit_edge:                    ; preds = %while.body36
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %while.cond29.4.do.end_crit_edge, %while.body36.3.do.end_crit_edge, %while.body36.2.do.end_crit_edge, %while.body36.1.do.end_crit_edge, %while.body36.do.end_crit_edge
  %2 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pwrdm, align 8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1083, i32 noundef 9, ptr noundef nonnull @.str.19, ptr noundef %3) #9
  br label %cleanup

if.end59:                                         ; preds = %while.body36
  call void @__sanitizer_cov_trace_cmp4(i32 %cond5, i32 %conv31)
  %cmp62 = icmp eq i32 %cond5, %conv31
  br i1 %cmp62, label %if.end59.cleanup_crit_edge, label %while.cond29.1

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond29.1:                                   ; preds = %if.end59
  %new_pwrst.1.1 = add i8 %req_state, 2
  %conv31.1 = zext i8 %new_pwrst.1.1 to i32
  %shl32.1 = shl nuw i32 1, %conv31.1
  %and33.1 = and i32 %shl32.1, %conv7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.1)
  %tobool34.not.1 = icmp eq i32 %and33.1, 0
  br i1 %tobool34.not.1, label %while.body36.1, label %while.cond29.1.cleanup_crit_edge

while.cond29.1.cleanup_crit_edge:                 ; preds = %while.cond29.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body36.1:                                   ; preds = %while.cond29.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %new_pwrst.1.1)
  %cmp38.1 = icmp ugt i8 %new_pwrst.1.1, 3
  br i1 %cmp38.1, label %while.body36.1.do.end_crit_edge, label %if.end59.1

while.body36.1.do.end_crit_edge:                  ; preds = %while.body36.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end59.1:                                       ; preds = %while.body36.1
  call void @__sanitizer_cov_trace_cmp4(i32 %cond5, i32 %conv31.1)
  %cmp62.1 = icmp eq i32 %cond5, %conv31.1
  br i1 %cmp62.1, label %if.end59.1.cleanup_crit_edge, label %while.cond29.2

if.end59.1.cleanup_crit_edge:                     ; preds = %if.end59.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond29.2:                                   ; preds = %if.end59.1
  %new_pwrst.1.2 = add i8 %req_state, 3
  %conv31.2 = zext i8 %new_pwrst.1.2 to i32
  %shl32.2 = shl nuw i32 1, %conv31.2
  %and33.2 = and i32 %shl32.2, %conv7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.2)
  %tobool34.not.2 = icmp eq i32 %and33.2, 0
  br i1 %tobool34.not.2, label %while.body36.2, label %while.cond29.2.cleanup_crit_edge

while.cond29.2.cleanup_crit_edge:                 ; preds = %while.cond29.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body36.2:                                   ; preds = %while.cond29.2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %new_pwrst.1.2)
  %cmp38.2 = icmp ugt i8 %new_pwrst.1.2, 3
  br i1 %cmp38.2, label %while.body36.2.do.end_crit_edge, label %if.end59.2

while.body36.2.do.end_crit_edge:                  ; preds = %while.body36.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end59.2:                                       ; preds = %while.body36.2
  call void @__sanitizer_cov_trace_cmp4(i32 %cond5, i32 %conv31.2)
  %cmp62.2 = icmp eq i32 %cond5, %conv31.2
  br i1 %cmp62.2, label %if.end59.2.cleanup_crit_edge, label %while.cond29.3

if.end59.2.cleanup_crit_edge:                     ; preds = %if.end59.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond29.3:                                   ; preds = %if.end59.2
  %new_pwrst.1.3 = add i8 %req_state, 4
  %conv31.3 = zext i8 %new_pwrst.1.3 to i32
  %shl32.3 = shl nuw i32 1, %conv31.3
  %and33.3 = and i32 %shl32.3, %conv7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.3)
  %tobool34.not.3 = icmp eq i32 %and33.3, 0
  br i1 %tobool34.not.3, label %while.body36.3, label %while.cond29.3.cleanup_crit_edge

while.cond29.3.cleanup_crit_edge:                 ; preds = %while.cond29.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body36.3:                                   ; preds = %while.cond29.3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -4, i8 %req_state)
  %cmp38.3 = icmp ult i8 %req_state, -4
  br i1 %cmp38.3, label %while.body36.3.do.end_crit_edge, label %if.end59.3

while.body36.3.do.end_crit_edge:                  ; preds = %while.body36.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end59.3:                                       ; preds = %while.body36.3
  call void @__sanitizer_cov_trace_cmp4(i32 %cond5, i32 %conv31.3)
  %cmp62.3 = icmp eq i32 %cond5, %conv31.3
  br i1 %cmp62.3, label %if.end59.3.cleanup_crit_edge, label %while.cond29.4

if.end59.3.cleanup_crit_edge:                     ; preds = %if.end59.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond29.4:                                   ; preds = %if.end59.3
  %new_pwrst.1.4 = add i8 %req_state, 5
  %conv31.4 = zext i8 %new_pwrst.1.4 to i32
  %shl32.4 = shl nuw i32 1, %conv31.4
  %and33.4 = and i32 %shl32.4, %conv7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.4)
  %tobool34.not.4 = icmp eq i32 %and33.4, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %new_pwrst.1.4)
  %cmp38.4 = icmp ugt i8 %new_pwrst.1.4, 3
  %or.cond = and i1 %tobool34.not.4, %cmp38.4
  br i1 %or.cond, label %while.cond29.4.do.end_crit_edge, label %while.cond29.4.cleanup_crit_edge

while.cond29.4.cleanup_crit_edge:                 ; preds = %while.cond29.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond29.4.do.end_crit_edge:                  ; preds = %while.cond29.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

cleanup.loopexit91:                               ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  %4 = trunc i32 %1 to i8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit91, %while.cond29.4.cleanup_crit_edge, %if.end59.3.cleanup_crit_edge, %while.cond29.3.cleanup_crit_edge, %if.end59.2.cleanup_crit_edge, %while.cond29.2.cleanup_crit_edge, %if.end59.1.cleanup_crit_edge, %while.cond29.1.cleanup_crit_edge, %if.end59.cleanup_crit_edge, %do.end, %while.cond29.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 3, %do.end ], [ %req_state, %entry.cleanup_crit_edge ], [ %4, %cleanup.loopexit91 ], [ %new_pwrst.1, %while.cond29.cleanup_crit_edge ], [ %new_pwrst.1, %if.end59.cleanup_crit_edge ], [ %new_pwrst.1.1, %while.cond29.1.cleanup_crit_edge ], [ %new_pwrst.1.1, %if.end59.1.cleanup_crit_edge ], [ %new_pwrst.1.2, %while.cond29.2.cleanup_crit_edge ], [ %new_pwrst.1.2, %if.end59.2.cleanup_crit_edge ], [ %new_pwrst.1.3, %while.cond29.3.cleanup_crit_edge ], [ %new_pwrst.1.3, %if.end59.3.cleanup_crit_edge ], [ %new_pwrst.1.4, %while.cond29.4.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_set_pwrdm_state(ptr noundef %pwrdm, i8 noundef zeroext %pwrst) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pwrdm, null
  %cmp.i = icmp ugt ptr %pwrdm, inttoptr (i32 -4096 to ptr)
  %or.cond88 = or i1 %tobool.not, %cmp.i
  br i1 %or.cond88, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %pwrsts = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 3
  %0 = ptrtoint ptr %pwrsts to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pwrsts, align 2
  %conv = zext i8 %1 to i32
  %conv194 = zext i8 %pwrst to i32
  %shl95 = shl nuw i32 1, %conv194
  %and96 = and i32 %shl95, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool2.not97 = icmp eq i32 %and96, 0
  br i1 %tobool2.not97, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.if.end.i_crit_edge

while.cond.preheader.if.end.i_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %if.end6.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %if.end6.while.body_crit_edge ], [ %conv194, %while.cond.preheader.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %indvars.iv)
  %cmp = icmp eq i32 %indvars.iv, 0
  br i1 %cmp, label %while.body.cleanup_crit_edge, label %if.end6

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %while.body
  %2 = trunc i32 %indvars.iv to i8
  %dec = add i8 %2, -1
  %conv1 = zext i8 %dec to i32
  %shl = shl nuw i32 1, %conv1
  %and = and i32 %shl, %conv
  %tobool2.not = icmp eq i32 %and, 0
  %indvars.iv.next = add nsw i32 %indvars.iv, -1
  br i1 %tobool2.not, label %if.end6.while.body_crit_edge, label %if.end6.if.end.i_crit_edge

if.end6.if.end.i_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end6.while.body_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end.i:                                         ; preds = %if.end6.if.end.i_crit_edge, %while.cond.preheader.if.end.i_crit_edge
  %pwrst.addr.0.lcssa = phi i8 [ %pwrst, %while.cond.preheader.if.end.i_crit_edge ], [ %dec, %if.end6.if.end.i_crit_edge ]
  %conv1.lcssa = phi i32 [ %conv194, %while.cond.preheader.if.end.i_crit_edge ], [ %conv1, %if.end6.if.end.i_crit_edge ]
  %shl.lcssa = phi i32 [ %shl95, %while.cond.preheader.if.end.i_crit_edge ], [ %shl, %if.end6.if.end.i_crit_edge ]
  %_lock.i = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 17
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %_lock.i) #9
  %_lock_flags.i = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 18
  %3 = ptrtoint ptr %_lock_flags.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call2.i, ptr %_lock_flags.i, align 8
  %4 = ptrtoint ptr %pwrsts to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pwrsts, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %5)
  %cmp.i53 = icmp eq i8 %5, 8
  br i1 %cmp.i53, label %if.end.i.if.end.i55_crit_edge, label %if.end3.i

if.end.i.if.end.i55_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i55

if.end3.i:                                        ; preds = %if.end.i
  %6 = load ptr, ptr @arch_pwrdm, align 4
  %tobool4.not.i = icmp eq ptr %6, null
  br i1 %tobool4.not.i, label %if.end3.i.osps_out_crit_edge, label %land.lhs.true.i

if.end3.i.osps_out_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %osps_out

land.lhs.true.i:                                  ; preds = %if.end3.i
  %pwrdm_read_pwrst.i = getelementptr inbounds %struct.pwrdm_ops, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %pwrdm_read_pwrst.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pwrdm_read_pwrst.i, align 4
  %tobool5.not.i = icmp eq ptr %8, null
  br i1 %tobool5.not.i, label %land.lhs.true.i.osps_out_crit_edge, label %pwrdm_read_pwrst.exit

land.lhs.true.i.osps_out_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %osps_out

pwrdm_read_pwrst.exit:                            ; preds = %land.lhs.true.i
  %call.i = tail call i32 %8(ptr noundef nonnull %pwrdm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp8 = icmp slt i32 %call.i, 0
  br i1 %cmp8, label %pwrdm_read_pwrst.exit.osps_out_crit_edge, label %pwrdm_read_pwrst.exit.if.end.i55_crit_edge

pwrdm_read_pwrst.exit.if.end.i55_crit_edge:       ; preds = %pwrdm_read_pwrst.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i55

pwrdm_read_pwrst.exit.osps_out_crit_edge:         ; preds = %pwrdm_read_pwrst.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %osps_out

if.end.i55:                                       ; preds = %pwrdm_read_pwrst.exit.if.end.i55_crit_edge, %if.end.i.if.end.i55_crit_edge
  %retval.0.i83 = phi i32 [ %call.i, %pwrdm_read_pwrst.exit.if.end.i55_crit_edge ], [ 3, %if.end.i.if.end.i55_crit_edge ]
  %9 = load ptr, ptr @arch_pwrdm, align 4
  %tobool1.not.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i, label %if.end.i55.pwrdm_read_next_pwrst.exit_crit_edge, label %land.lhs.true.i56

if.end.i55.pwrdm_read_next_pwrst.exit_crit_edge:  ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwrdm_read_next_pwrst.exit

land.lhs.true.i56:                                ; preds = %if.end.i55
  %pwrdm_read_next_pwrst.i = getelementptr inbounds %struct.pwrdm_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pwrdm_read_next_pwrst.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pwrdm_read_next_pwrst.i, align 4
  %tobool2.not.i = icmp eq ptr %11, null
  br i1 %tobool2.not.i, label %land.lhs.true.i56.pwrdm_read_next_pwrst.exit_crit_edge, label %if.then3.i

land.lhs.true.i56.pwrdm_read_next_pwrst.exit_crit_edge: ; preds = %land.lhs.true.i56
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwrdm_read_next_pwrst.exit

if.then3.i:                                       ; preds = %land.lhs.true.i56
  call void @__sanitizer_cov_trace_pc() #11
  %call.i57 = tail call i32 %11(ptr noundef nonnull %pwrdm) #9
  %phi.bo = and i32 %call.i57, 255
  br label %pwrdm_read_next_pwrst.exit

pwrdm_read_next_pwrst.exit:                       ; preds = %if.then3.i, %land.lhs.true.i56.pwrdm_read_next_pwrst.exit_crit_edge, %if.end.i55.pwrdm_read_next_pwrst.exit_crit_edge
  %retval.0.i58 = phi i32 [ %phi.bo, %if.then3.i ], [ 234, %land.lhs.true.i56.pwrdm_read_next_pwrst.exit_crit_edge ], [ 234, %if.end.i55.pwrdm_read_next_pwrst.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i83, i32 %conv1.lcssa)
  %cmp15 = icmp eq i32 %retval.0.i83, %conv1.lcssa
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i58, i32 %conv1.lcssa)
  %cmp19 = icmp eq i32 %retval.0.i58, %conv1.lcssa
  %or.cond = select i1 %cmp15, i1 %cmp19, i1 false
  br i1 %or.cond, label %pwrdm_read_next_pwrst.exit.osps_out_crit_edge, label %if.end22

pwrdm_read_next_pwrst.exit.osps_out_crit_edge:    ; preds = %pwrdm_read_next_pwrst.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %osps_out

if.end22:                                         ; preds = %pwrdm_read_next_pwrst.exit
  %conv23 = trunc i32 %retval.0.i83 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %conv23)
  %cmp.i59 = icmp ult i8 %conv23, 3
  br i1 %cmp.i59, label %if.then.i, label %if.end22.if.end.i65_crit_edge

if.end22.if.end.i65_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i65

if.then.i:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_cmp1(i8 %pwrst.addr.0.lcssa, i8 %conv23)
  %cmp4.i = icmp ult i8 %pwrst.addr.0.lcssa, %conv23
  br i1 %cmp4.i, label %land.lhs.true.i61, label %if.then.i.if.else.i_crit_edge

if.then.i.if.else.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i61:                                ; preds = %if.then.i
  %flags.i = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 5
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flags.i, align 4
  %14 = and i8 %13, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i60 = icmp eq i8 %14, 0
  br i1 %tobool.not.i60, label %land.lhs.true.i61.if.else.i_crit_edge, label %land.lhs.true7.i

land.lhs.true.i61.if.else.i_crit_edge:            ; preds = %land.lhs.true.i61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i61
  %15 = load ptr, ptr @arch_pwrdm, align 4
  %pwrdm_set_lowpwrstchange.i = getelementptr inbounds %struct.pwrdm_ops, ptr %15, i32 0, i32 16
  %16 = ptrtoint ptr %pwrdm_set_lowpwrstchange.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pwrdm_set_lowpwrstchange.i, align 4
  %tobool8.not.i = icmp eq ptr %17, null
  br i1 %tobool8.not.i, label %land.lhs.true7.i.if.else.i_crit_edge, label %land.lhs.true7.i.if.end.i65_crit_edge

land.lhs.true7.i.if.end.i65_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i65

land.lhs.true7.i.if.else.i_crit_edge:             ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true7.i.if.else.i_crit_edge, %land.lhs.true.i61.if.else.i_crit_edge, %if.then.i.if.else.i_crit_edge
  %pwrdm_clkdms.i = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 10
  %18 = ptrtoint ptr %pwrdm_clkdms.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pwrdm_clkdms.i, align 4
  tail call void @clkdm_deny_idle_nolock(ptr noundef %19) #9
  br label %if.end.i65

if.end.i65:                                       ; preds = %if.else.i, %land.lhs.true7.i.if.end.i65_crit_edge, %if.end22.if.end.i65_crit_edge
  %sleep_switch.0.i = phi i2 [ 1, %if.else.i ], [ -2, %land.lhs.true7.i.if.end.i65_crit_edge ], [ 0, %if.end22.if.end.i65_crit_edge ]
  %20 = ptrtoint ptr %pwrsts to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %pwrsts, align 2
  %conv.i = zext i8 %21 to i32
  %and.i = and i32 %shl.lcssa, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i64 = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i64, label %if.end.i65.do.end_crit_edge, label %do.body.i

if.end.i65.do.end_crit_edge:                      ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.body.i:                                        ; preds = %if.end.i65
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pwrdm_set_next_pwrst.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_set_pwrdm_state, %if.then8.i)) #9
          to label %do.end.i [label %if.then8.i], !srcloc !91

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pwrdm, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pwrdm_set_next_pwrst.__UNIQUE_ID_ddebug312, ptr noundef nonnull @.str.6, ptr noundef %23, i32 noundef %conv1.lcssa) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then8.i, %do.body.i
  %24 = load ptr, ptr @arch_pwrdm, align 4
  %tobool11.not.i = icmp eq ptr %24, null
  br i1 %tobool11.not.i, label %do.end.i.do.end_crit_edge, label %land.lhs.true.i66

do.end.i.do.end_crit_edge:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true.i66:                                ; preds = %do.end.i
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %tobool12.not.i = icmp eq ptr %26, null
  br i1 %tobool12.not.i, label %land.lhs.true.i66.do.end_crit_edge, label %pwrdm_set_next_pwrst.exit

land.lhs.true.i66.do.end_crit_edge:               ; preds = %land.lhs.true.i66
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

pwrdm_set_next_pwrst.exit:                        ; preds = %land.lhs.true.i66
  %27 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pwrdm, align 8
  %29 = tail call i32 @llvm.read_register.i32(metadata !81) #9
  %and.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cpu.i, align 4
  tail call fastcc void @trace_power_domain_target_rcuidle(ptr noundef %28, i32 noundef %conv1.lcssa, i32 noundef %32) #9
  %33 = load ptr, ptr @arch_pwrdm, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %call18.i = tail call i32 %35(ptr noundef nonnull %pwrdm, i8 noundef zeroext %pwrst.addr.0.lcssa) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool26.not = icmp eq i32 %call18.i, 0
  br i1 %tobool26.not, label %pwrdm_set_next_pwrst.exit.if.end29_crit_edge, label %pwrdm_set_next_pwrst.exit.do.end_crit_edge

pwrdm_set_next_pwrst.exit.do.end_crit_edge:       ; preds = %pwrdm_set_next_pwrst.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

pwrdm_set_next_pwrst.exit.if.end29_crit_edge:     ; preds = %pwrdm_set_next_pwrst.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

do.end:                                           ; preds = %pwrdm_set_next_pwrst.exit.do.end_crit_edge, %land.lhs.true.i66.do.end_crit_edge, %do.end.i.do.end_crit_edge, %if.end.i65.do.end_crit_edge
  %retval.0.i6786 = phi i32 [ %call18.i, %pwrdm_set_next_pwrst.exit.do.end_crit_edge ], [ -22, %if.end.i65.do.end_crit_edge ], [ -22, %land.lhs.true.i66.do.end_crit_edge ], [ -22, %do.end.i.do.end_crit_edge ]
  %36 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pwrdm, align 8
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, ptr noundef %37) #12
  br label %if.end29

if.end29:                                         ; preds = %do.end, %pwrdm_set_next_pwrst.exit.if.end29_crit_edge
  %retval.0.i6787 = phi i32 [ %retval.0.i6786, %do.end ], [ 0, %pwrdm_set_next_pwrst.exit.if.end29_crit_edge ]
  %38 = zext i2 %sleep_switch.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.35)
  switch i2 %sleep_switch.0.i, label %if.end29.osps_out_crit_edge [
    i2 1, label %sw.bb.i
    i2 -2, label %sw.bb1.i
  ]

if.end29.osps_out_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %osps_out

sw.bb.i:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %pwrdm_clkdms.i68 = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 10
  %39 = ptrtoint ptr %pwrdm_clkdms.i68 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pwrdm_clkdms.i68, align 4
  tail call void @clkdm_allow_idle_nolock(ptr noundef %40) #9
  br label %osps_out

sw.bb1.i:                                         ; preds = %if.end29
  %flags.i69 = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 5
  %41 = ptrtoint ptr %flags.i69 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %flags.i69, align 4
  %43 = and i8 %42, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i70 = icmp eq i8 %43, 0
  br i1 %tobool.not.i70, label %sw.bb1.i.lor.lhs.false.i.ithread-pre-split_crit_edge, label %land.lhs.true.i72

sw.bb1.i.lor.lhs.false.i.ithread-pre-split_crit_edge: ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i.ithread-pre-split

land.lhs.true.i72:                                ; preds = %sw.bb1.i
  %44 = load ptr, ptr @arch_pwrdm, align 4
  %pwrdm_set_lowpwrstchange.i71 = getelementptr inbounds %struct.pwrdm_ops, ptr %44, i32 0, i32 16
  %45 = ptrtoint ptr %pwrdm_set_lowpwrstchange.i71 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pwrdm_set_lowpwrstchange.i71, align 4
  %tobool3.not.i = icmp eq ptr %46, null
  br i1 %tobool3.not.i, label %land.lhs.true.i72.lor.lhs.false.i.i_crit_edge, label %if.then.i74

land.lhs.true.i72.lor.lhs.false.i.i_crit_edge:    ; preds = %land.lhs.true.i72
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i.i

if.then.i74:                                      ; preds = %land.lhs.true.i72
  call void @__sanitizer_cov_trace_pc() #11
  %call.i73 = tail call i32 %46(ptr noundef %pwrdm) #9
  br label %lor.lhs.false.i.ithread-pre-split

lor.lhs.false.i.ithread-pre-split:                ; preds = %if.then.i74, %sw.bb1.i.lor.lhs.false.i.ithread-pre-split_crit_edge
  %.pr = load ptr, ptr @arch_pwrdm, align 4
  br label %lor.lhs.false.i.i

lor.lhs.false.i.i:                                ; preds = %lor.lhs.false.i.ithread-pre-split, %land.lhs.true.i72.lor.lhs.false.i.i_crit_edge
  %47 = phi ptr [ %.pr, %lor.lhs.false.i.ithread-pre-split ], [ %44, %land.lhs.true.i72.lor.lhs.false.i.i_crit_edge ]
  %tobool1.not.i.i = icmp eq ptr %47, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.osps_out_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.osps_out_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %osps_out

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %pwrdm_wait_transition.i.i = getelementptr inbounds %struct.pwrdm_ops, ptr %47, i32 0, i32 17
  %48 = ptrtoint ptr %pwrdm_wait_transition.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pwrdm_wait_transition.i.i, align 4
  %call.i.i = tail call i32 %49(ptr noundef nonnull %pwrdm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.i.i, label %if.end.i.i.osps_out_crit_edge

if.end.i.i.osps_out_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %osps_out

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  %50 = ptrtoint ptr %pwrsts to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %pwrsts, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %51)
  %cmp.i.i.i.i = icmp eq i8 %51, 8
  br i1 %cmp.i.i.i.i, label %if.end.i.i.i.i.pwrdm_read_pwrst.exit.i.i.i_crit_edge, label %if.end3.i.i.i.i

if.end.i.i.i.i.pwrdm_read_pwrst.exit.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwrdm_read_pwrst.exit.i.i.i

if.end3.i.i.i.i:                                  ; preds = %if.end.i.i.i.i
  %52 = load ptr, ptr @arch_pwrdm, align 4
  %tobool4.not.i.i.i.i = icmp eq ptr %52, null
  br i1 %tobool4.not.i.i.i.i, label %if.end3.i.i.i.i.pwrdm_read_pwrst.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end3.i.i.i.i.pwrdm_read_pwrst.exit.i.i.i_crit_edge: ; preds = %if.end3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwrdm_read_pwrst.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end3.i.i.i.i
  %pwrdm_read_pwrst.i.i.i.i = getelementptr inbounds %struct.pwrdm_ops, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %pwrdm_read_pwrst.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pwrdm_read_pwrst.i.i.i.i, align 4
  %tobool5.not.i.i.i.i = icmp eq ptr %54, null
  br i1 %tobool5.not.i.i.i.i, label %land.lhs.true.i.i.i.i.pwrdm_read_pwrst.exit.i.i.i_crit_edge, label %if.then6.i.i.i.i

land.lhs.true.i.i.i.i.pwrdm_read_pwrst.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwrdm_read_pwrst.exit.i.i.i

if.then6.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i = tail call i32 %54(ptr noundef nonnull %pwrdm) #9
  br label %pwrdm_read_pwrst.exit.i.i.i

pwrdm_read_pwrst.exit.i.i.i:                      ; preds = %if.then6.i.i.i.i, %land.lhs.true.i.i.i.i.pwrdm_read_pwrst.exit.i.i.i_crit_edge, %if.end3.i.i.i.i.pwrdm_read_pwrst.exit.i.i.i_crit_edge, %if.end.i.i.i.i.pwrdm_read_pwrst.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ 3, %if.end.i.i.i.i.pwrdm_read_pwrst.exit.i.i.i_crit_edge ], [ %call.i.i.i.i, %if.then6.i.i.i.i ], [ -22, %land.lhs.true.i.i.i.i.pwrdm_read_pwrst.exit.i.i.i_crit_edge ], [ -22, %if.end3.i.i.i.i.pwrdm_read_pwrst.exit.i.i.i_crit_edge ]
  %state1.i.i.i = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 13
  %55 = ptrtoint ptr %state1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %state1.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i.i.i, i32 %56)
  %cmp19.not.i.i.i = icmp eq i32 %retval.0.i.i.i.i, %56
  br i1 %cmp19.not.i.i.i, label %pwrdm_read_pwrst.exit.i.i.i._pwrdm_state_switch.exit.i.i_crit_edge, label %if.then20.i.i.i

pwrdm_read_pwrst.exit.i.i.i._pwrdm_state_switch.exit.i.i_crit_edge: ; preds = %pwrdm_read_pwrst.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_pwrdm_state_switch.exit.i.i

if.then20.i.i.i:                                  ; preds = %pwrdm_read_pwrst.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx22.i.i.i = getelementptr %struct.powerdomain, ptr %pwrdm, i32 0, i32 14, i32 %retval.0.i.i.i.i
  %57 = ptrtoint ptr %arrayidx22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx22.i.i.i, align 4
  %inc23.i.i.i = add i32 %58, 1
  store i32 %inc23.i.i.i, ptr %arrayidx22.i.i.i, align 4
  br label %_pwrdm_state_switch.exit.i.i

_pwrdm_state_switch.exit.i.i:                     ; preds = %if.then20.i.i.i, %pwrdm_read_pwrst.exit.i.i.i._pwrdm_state_switch.exit.i.i_crit_edge
  tail call void @pm_dbg_update_time(ptr noundef nonnull %pwrdm, i32 noundef %56) #9
  %59 = ptrtoint ptr %state1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %retval.0.i.i.i.i, ptr %state1.i.i.i, align 8
  br label %osps_out

osps_out:                                         ; preds = %_pwrdm_state_switch.exit.i.i, %if.end.i.i.osps_out_crit_edge, %lor.lhs.false.i.i.osps_out_crit_edge, %sw.bb.i, %if.end29.osps_out_crit_edge, %pwrdm_read_next_pwrst.exit.osps_out_crit_edge, %pwrdm_read_pwrst.exit.osps_out_crit_edge, %land.lhs.true.i.osps_out_crit_edge, %if.end3.i.osps_out_crit_edge
  %ret.0 = phi i32 [ -22, %pwrdm_read_pwrst.exit.osps_out_crit_edge ], [ 0, %pwrdm_read_next_pwrst.exit.osps_out_crit_edge ], [ %retval.0.i6787, %if.end29.osps_out_crit_edge ], [ %retval.0.i6787, %sw.bb.i ], [ %retval.0.i6787, %lor.lhs.false.i.i.osps_out_crit_edge ], [ %retval.0.i6787, %if.end.i.i.osps_out_crit_edge ], [ %retval.0.i6787, %_pwrdm_state_switch.exit.i.i ], [ -22, %land.lhs.true.i.osps_out_crit_edge ], [ -22, %if.end3.i.osps_out_crit_edge ]
  %60 = ptrtoint ptr %_lock_flags.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %_lock_flags.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %_lock.i, i32 noundef %61) #9
  br label %cleanup

cleanup:                                          ; preds = %osps_out, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %osps_out ], [ -22, %entry.cleanup_crit_edge ], [ 0, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pwrdm_get_context_loss_count(ptr noundef readonly %pwrdm) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pwrdm, null
  br i1 %tobool.not, label %do.end, label %if.end17

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1164, i32 noundef 9, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.pwrdm_get_context_loss_count) #9
  br label %cleanup

if.end17:                                         ; preds = %entry
  %state_counter = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 14
  %0 = ptrtoint ptr %state_counter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state_counter, align 4
  %ret_logic_off_counter = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 15
  %2 = ptrtoint ptr %ret_logic_off_counter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ret_logic_off_counter, align 4
  %add = add i32 %3, %1
  %banks = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 6
  %4 = ptrtoint ptr %banks to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %banks, align 1
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp48.not = icmp eq i8 %5, 0
  br i1 %cmp48.not, label %if.end17.for.end_crit_edge, label %if.end17.for.body_crit_edge

if.end17.for.body_crit_edge:                      ; preds = %if.end17
  br label %for.body

if.end17.for.end_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end17.for.body_crit_edge
  %i.050 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end17.for.body_crit_edge ]
  %count.049 = phi i32 [ %add20, %for.body.for.body_crit_edge ], [ %add, %if.end17.for.body_crit_edge ]
  %arrayidx19 = getelementptr %struct.powerdomain, ptr %pwrdm, i32 0, i32 16, i32 %i.050
  %6 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx19, align 4
  %add20 = add i32 %7, %count.049
  %inc = add nuw nsw i32 %i.050, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end17.for.end_crit_edge
  %count.0.lcssa = phi i32 [ %add, %if.end17.for.end_crit_edge ], [ %add20, %for.body.for.end_crit_edge ]
  %and = and i32 %count.0.lcssa, 2147483647
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pwrdm_get_context_loss_count.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pwrdm_get_context_loss_count, %if.then30)) #9
          to label %cleanup [label %if.then30], !srcloc !91

if.then30:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pwrdm, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pwrdm_get_context_loss_count.__UNIQUE_ID_ddebug319, ptr noundef nonnull @.str.23, ptr noundef %9, i32 noundef %and) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %for.end, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %and, %if.then30 ], [ %and, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @pwrdm_can_ever_lose_context(ptr noundef readonly %pwrdm) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pwrdm, null
  br i1 %tobool.not, label %do.body, label %if.end5

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pwrdm_can_ever_lose_context.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pwrdm_can_ever_lose_context, %if.then4)) #9
          to label %cleanup [label %if.then4], !srcloc !91

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pwrdm_can_ever_lose_context.__UNIQUE_ID_ddebug320, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24) #9
  br label %cleanup

if.end5:                                          ; preds = %entry
  %pwrsts = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 3
  %0 = ptrtoint ptr %pwrsts to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pwrsts, align 2
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %and11 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end8.if.end26_crit_edge, label %if.then13

if.end8.if.end26_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then13:                                        ; preds = %if.end8
  %pwrsts_logic_ret = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 4
  %2 = ptrtoint ptr %pwrsts_logic_ret to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pwrsts_logic_ret, align 1
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool16.not = icmp eq i8 %4, 0
  br i1 %tobool16.not, label %for.cond.preheader, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %if.then13
  %banks = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 6
  %5 = ptrtoint ptr %banks to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %banks, align 1
  %conv19 = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp56.not = icmp eq i8 %6, 0
  br i1 %cmp56.not, label %for.cond.preheader.if.end26_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end26_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.057, 1
  %exitcond.not = icmp eq i32 %inc, %conv19
  br i1 %exitcond.not, label %for.cond.if.end26_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.if.end26_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.057 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.powerdomain, ptr %pwrdm, i32 0, i32 7, i32 %i.057
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool23.not = icmp eq i8 %9, 0
  br i1 %tobool23.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26:                                         ; preds = %for.cond.if.end26_crit_edge, %for.cond.preheader.if.end26_crit_edge, %if.end8.if.end26_crit_edge
  %banks28 = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 6
  %10 = ptrtoint ptr %banks28 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %banks28, align 1
  %conv29 = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp3058.not = icmp eq i8 %11, 0
  br i1 %cmp3058.not, label %if.end26.cleanup_crit_edge, label %if.end26.for.body32_crit_edge

if.end26.for.body32_crit_edge:                    ; preds = %if.end26
  br label %for.body32

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body32:                                       ; preds = %for.body32.for.body32_crit_edge, %if.end26.for.body32_crit_edge
  %i.159 = phi i32 [ %inc40, %for.body32.for.body32_crit_edge ], [ 0, %if.end26.for.body32_crit_edge ]
  %arrayidx33 = getelementptr %struct.powerdomain, ptr %pwrdm, i32 0, i32 8, i32 %i.159
  %12 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx33, align 1
  %14 = and i8 %13, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool36.not = icmp eq i8 %14, 0
  %tobool36.not.not = xor i1 %tobool36.not, true
  %inc40 = add nuw nsw i32 %i.159, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc40, i32 %conv29)
  %exitcond62.not = icmp eq i32 %inc40, %conv29
  %or.cond = select i1 %tobool36.not.not, i1 true, i1 %exitcond62.not
  br i1 %or.cond, label %cleanup.loopexit, label %for.body32.for.body32_crit_edge

for.body32.for.body32_crit_edge:                  ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body32

cleanup.loopexit:                                 ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #11
  %15 = xor i1 %tobool36.not, true
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %if.end26.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then4, %do.body
  %retval.0 = phi i1 [ true, %if.then4 ], [ true, %if.end5.cleanup_crit_edge ], [ true, %if.then13.cleanup_crit_edge ], [ true, %do.body ], [ false, %if.end26.cleanup_crit_edge ], [ %15, %cleanup.loopexit ], [ true, %for.body.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pwrdms_save_context() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %.pn.i2 = load ptr, ptr @pwrdm_list, align 4
  %cmp.not.i3 = icmp eq ptr %.pn.i2, @pwrdm_list
  br i1 %cmp.not.i3, label %entry.pwrdm_for_each.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.pwrdm_for_each.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwrdm_for_each.exit

for.body.i:                                       ; preds = %pwrdm_save_context.exit.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn.i4 = phi ptr [ %.pn.i, %pwrdm_save_context.exit.for.body.i_crit_edge ], [ %.pn.i2, %entry.for.body.i_crit_edge ]
  %temp_pwrdm.0.i = getelementptr i8, ptr %.pn.i4, i32 -72
  %0 = load ptr, ptr @arch_pwrdm, align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %for.body.i.pwrdm_save_context.exit_crit_edge, label %land.lhs.true.i

for.body.i.pwrdm_save_context.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwrdm_save_context.exit

land.lhs.true.i:                                  ; preds = %for.body.i
  %pwrdm_save_context.i = getelementptr inbounds %struct.pwrdm_ops, ptr %0, i32 0, i32 19
  %1 = ptrtoint ptr %pwrdm_save_context.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pwrdm_save_context.i, align 4
  %tobool1.not.i1 = icmp eq ptr %2, null
  br i1 %tobool1.not.i1, label %land.lhs.true.i.pwrdm_save_context.exit_crit_edge, label %if.then.i

land.lhs.true.i.pwrdm_save_context.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwrdm_save_context.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %2(ptr noundef %temp_pwrdm.0.i) #9
  br label %pwrdm_save_context.exit

pwrdm_save_context.exit:                          ; preds = %if.then.i, %land.lhs.true.i.pwrdm_save_context.exit_crit_edge, %for.body.i.pwrdm_save_context.exit_crit_edge
  %3 = ptrtoint ptr %.pn.i4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn.i = load ptr, ptr %.pn.i4, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @pwrdm_list
  br i1 %cmp.not.i, label %pwrdm_save_context.exit.pwrdm_for_each.exit_crit_edge, label %pwrdm_save_context.exit.for.body.i_crit_edge

pwrdm_save_context.exit.for.body.i_crit_edge:     ; preds = %pwrdm_save_context.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

pwrdm_save_context.exit.pwrdm_for_each.exit_crit_edge: ; preds = %pwrdm_save_context.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwrdm_for_each.exit

pwrdm_for_each.exit:                              ; preds = %pwrdm_save_context.exit.pwrdm_for_each.exit_crit_edge, %entry.pwrdm_for_each.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pwrdms_restore_context() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %.pn.i2 = load ptr, ptr @pwrdm_list, align 4
  %cmp.not.i3 = icmp eq ptr %.pn.i2, @pwrdm_list
  br i1 %cmp.not.i3, label %entry.pwrdm_for_each.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.pwrdm_for_each.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwrdm_for_each.exit

for.body.i:                                       ; preds = %pwrdm_restore_context.exit.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn.i4 = phi ptr [ %.pn.i, %pwrdm_restore_context.exit.for.body.i_crit_edge ], [ %.pn.i2, %entry.for.body.i_crit_edge ]
  %temp_pwrdm.0.i = getelementptr i8, ptr %.pn.i4, i32 -72
  %0 = load ptr, ptr @arch_pwrdm, align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %for.body.i.pwrdm_restore_context.exit_crit_edge, label %land.lhs.true.i

for.body.i.pwrdm_restore_context.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwrdm_restore_context.exit

land.lhs.true.i:                                  ; preds = %for.body.i
  %pwrdm_restore_context.i = getelementptr inbounds %struct.pwrdm_ops, ptr %0, i32 0, i32 20
  %1 = ptrtoint ptr %pwrdm_restore_context.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pwrdm_restore_context.i, align 4
  %tobool1.not.i1 = icmp eq ptr %2, null
  br i1 %tobool1.not.i1, label %land.lhs.true.i.pwrdm_restore_context.exit_crit_edge, label %if.then.i

land.lhs.true.i.pwrdm_restore_context.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwrdm_restore_context.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %2(ptr noundef %temp_pwrdm.0.i) #9
  br label %pwrdm_restore_context.exit

pwrdm_restore_context.exit:                       ; preds = %if.then.i, %land.lhs.true.i.pwrdm_restore_context.exit_crit_edge, %for.body.i.pwrdm_restore_context.exit_crit_edge
  %3 = ptrtoint ptr %.pn.i4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn.i = load ptr, ptr %.pn.i4, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @pwrdm_list
  br i1 %cmp.not.i, label %pwrdm_restore_context.exit.pwrdm_for_each.exit_crit_edge, label %pwrdm_restore_context.exit.for.body.i_crit_edge

pwrdm_restore_context.exit.for.body.i_crit_edge:  ; preds = %pwrdm_restore_context.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

pwrdm_restore_context.exit.pwrdm_for_each.exit_crit_edge: ; preds = %pwrdm_restore_context.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwrdm_for_each.exit

pwrdm_for_each.exit:                              ; preds = %pwrdm_restore_context.exit.pwrdm_for_each.exit_crit_edge, %entry.pwrdm_for_each.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pwrdms_lost_power() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %.pn.i2 = load ptr, ptr @pwrdm_list, align 4
  %cmp.not.i3 = icmp eq ptr %.pn.i2, @pwrdm_list
  br i1 %cmp.not.i3, label %entry.pwrdm_for_each.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.pwrdm_for_each.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwrdm_for_each.exit

for.body.i:                                       ; preds = %pwrdm_lost_power.exit.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn.i4 = phi ptr [ %.pn.i, %pwrdm_lost_power.exit.for.body.i_crit_edge ], [ %.pn.i2, %entry.for.body.i_crit_edge ]
  %temp_pwrdm.0.i = getelementptr i8, ptr %.pn.i4, i32 -72
  %tobool.not.i.i = icmp eq ptr %temp_pwrdm.0.i, null
  br i1 %tobool.not.i.i, label %for.body.i.if.then.i_crit_edge, label %if.end.i.i

for.body.i.if.then.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.end.i.i:                                       ; preds = %for.body.i
  %pwrsts.i.i = getelementptr i8, ptr %.pn.i4, i32 -62
  %0 = ptrtoint ptr %pwrsts.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pwrsts.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %1)
  %cmp.i.i = icmp eq i8 %1, 8
  br i1 %cmp.i.i, label %if.end.i.i.if.then.i_crit_edge, label %if.end3.i.i

if.end.i.i.if.then.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  %2 = load ptr, ptr @arch_pwrdm, align 4
  %tobool4.not.i.i = icmp eq ptr %2, null
  br i1 %tobool4.not.i.i, label %if.end3.i.i.if.then.i_crit_edge, label %land.lhs.true.i.i

if.end3.i.i.if.then.i_crit_edge:                  ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

land.lhs.true.i.i:                                ; preds = %if.end3.i.i
  %pwrdm_read_pwrst.i.i = getelementptr inbounds %struct.pwrdm_ops, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %pwrdm_read_pwrst.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pwrdm_read_pwrst.i.i, align 4
  %tobool5.not.i.i = icmp eq ptr %4, null
  br i1 %tobool5.not.i.i, label %land.lhs.true.i.i.if.then.i_crit_edge, label %pwrdm_read_pwrst.exit.i

land.lhs.true.i.i.if.then.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

pwrdm_read_pwrst.exit.i:                          ; preds = %land.lhs.true.i.i
  %call.i.i = tail call i32 %4(ptr noundef nonnull %temp_pwrdm.0.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i1 = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i1, label %pwrdm_read_pwrst.exit.i.pwrdm_lost_power.exit_crit_edge, label %pwrdm_read_pwrst.exit.i.if.then.i_crit_edge

pwrdm_read_pwrst.exit.i.if.then.i_crit_edge:      ; preds = %pwrdm_read_pwrst.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

pwrdm_read_pwrst.exit.i.pwrdm_lost_power.exit_crit_edge: ; preds = %pwrdm_read_pwrst.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwrdm_lost_power.exit

if.then.i:                                        ; preds = %pwrdm_read_pwrst.exit.i.if.then.i_crit_edge, %land.lhs.true.i.i.if.then.i_crit_edge, %if.end3.i.i.if.then.i_crit_edge, %if.end.i.i.if.then.i_crit_edge, %for.body.i.if.then.i_crit_edge
  %retval.0.i12.i = phi i32 [ %call.i.i, %pwrdm_read_pwrst.exit.i.if.then.i_crit_edge ], [ -22, %if.end3.i.i.if.then.i_crit_edge ], [ -22, %land.lhs.true.i.i.if.then.i_crit_edge ], [ 3, %if.end.i.i.if.then.i_crit_edge ], [ -22, %for.body.i.if.then.i_crit_edge ]
  %state_counter.i = getelementptr i8, ptr %.pn.i4, i32 20
  %arrayidx.i = getelementptr %struct.powerdomain, ptr %temp_pwrdm.0.i, i32 0, i32 14, i32 %retval.0.i12.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %inc.i = add i32 %6, 1
  store i32 %inc.i, ptr %arrayidx.i, align 4
  %7 = ptrtoint ptr %state_counter.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state_counter.i, align 4
  %inc3.i = add i32 %8, 1
  store i32 %inc3.i, ptr %state_counter.i, align 4
  br label %pwrdm_lost_power.exit

pwrdm_lost_power.exit:                            ; preds = %if.then.i, %pwrdm_read_pwrst.exit.i.pwrdm_lost_power.exit_crit_edge
  %retval.0.i13.i = phi i32 [ %retval.0.i12.i, %if.then.i ], [ 0, %pwrdm_read_pwrst.exit.i.pwrdm_lost_power.exit_crit_edge ]
  %state4.i = getelementptr i8, ptr %.pn.i4, i32 16
  %9 = ptrtoint ptr %state4.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %retval.0.i13.i, ptr %state4.i, align 8
  %10 = ptrtoint ptr %.pn.i4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn.i = load ptr, ptr %.pn.i4, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @pwrdm_list
  br i1 %cmp.not.i, label %pwrdm_lost_power.exit.pwrdm_for_each.exit_crit_edge, label %pwrdm_lost_power.exit.for.body.i_crit_edge

pwrdm_lost_power.exit.for.body.i_crit_edge:       ; preds = %pwrdm_lost_power.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

pwrdm_lost_power.exit.pwrdm_for_each.exit_crit_edge: ; preds = %pwrdm_lost_power.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwrdm_for_each.exit

pwrdm_for_each.exit:                              ; preds = %pwrdm_lost_power.exit.pwrdm_for_each.exit_crit_edge, %entry.pwrdm_for_each.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @voltdm_lookup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_irq_enter_irqson() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_power_domain_target(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_irq_exit_irqson() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__srcu_read_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__srcu_read_unlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_dbg_update_time(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clkdm_deny_idle_nolock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clkdm_allow_idle_nolock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

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

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !43, !44, !45, !46, !48, !49, !51, !52, !54, !55, !56, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !72, !73, !75, !77, !78, !80}
!llvm.named.register.sp = !{!81}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @pwrdm_complete_init.nb, !1, !"nb", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/powerdomain.c", i32 367, i32 31}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-omap2/powerdomain.c", i32 473, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @pwrdm_add_clkdm.__UNIQUE_ID_ddebug310, !3, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-omap2/powerdomain.c", i32 488, i32 3}
!10 = !{ptr @pwrdm_add_clkdm.__UNIQUE_ID_ddebug311, !9, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../arch/arm/mach-omap2/powerdomain.c", i32 539, i32 2}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @pwrdm_set_next_pwrst.__UNIQUE_ID_ddebug312, !12, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../arch/arm/mach-omap2/powerdomain.c", i32 641, i32 2}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @pwrdm_set_logic_retst.__UNIQUE_ID_ddebug313, !16, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../arch/arm/mach-omap2/powerdomain.c", i32 678, i32 2}
!21 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @pwrdm_set_mem_onst.__UNIQUE_ID_ddebug314, !20, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../arch/arm/mach-omap2/powerdomain.c", i32 716, i32 2}
!25 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @pwrdm_set_mem_retst.__UNIQUE_ID_ddebug315, !24, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../arch/arm/mach-omap2/powerdomain.c", i32 895, i32 2}
!29 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @pwrdm_clear_all_prev_pwrst.__UNIQUE_ID_ddebug316, !28, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../arch/arm/mach-omap2/powerdomain.c", i32 925, i32 2}
!33 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @pwrdm_enable_hdwr_sar.__UNIQUE_ID_ddebug317, !32, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../arch/arm/mach-omap2/powerdomain.c", i32 954, i32 2}
!37 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @pwrdm_disable_hdwr_sar.__UNIQUE_ID_ddebug318, !36, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../arch/arm/mach-omap2/powerdomain.c", i32 1082, i32 4}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../arch/arm/mach-omap2/powerdomain.c", i32 1140, i32 3}
!43 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @omap_set_pwrdm_state._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @omap_set_pwrdm_state._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../arch/arm/mach-omap2/powerdomain.c", i32 1164, i32 3}
!48 = !{ptr @__func__.pwrdm_get_context_loss_count, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../arch/arm/mach-omap2/powerdomain.c", i32 1180, i32 2}
!51 = !{ptr @pwrdm_get_context_loss_count.__UNIQUE_ID_ddebug319, !50, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../arch/arm/mach-omap2/powerdomain.c", i32 1203, i32 3}
!54 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @pwrdm_can_ever_lose_context.__UNIQUE_ID_ddebug320, !53, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!56 = !{ptr @arch_pwrdm, !57, !"arch_pwrdm", i1 false, i1 false}
!57 = !{!"../arch/arm/mach-omap2/powerdomain.c", i32 61, i32 26}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../arch/arm/mach-omap2/powerdomain.c", i32 99, i32 3}
!60 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @_pwrdm_register._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @_pwrdm_register._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../arch/arm/mach-omap2/powerdomain.c", i32 113, i32 3}
!65 = !{ptr @_pwrdm_register._entry.28, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @_pwrdm_register._entry_ptr.30, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @_pwrdm_register.__key, !68, !"__key", i1 false, i1 false}
!68 = !{!"../arch/arm/mach-omap2/powerdomain.c", i32 120, i32 2}
!69 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../arch/arm/mach-omap2/powerdomain.c", i32 137, i32 2}
!72 = !{ptr @_pwrdm_register.__UNIQUE_ID_ddebug309, !71, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!73 = !{ptr @pwrdm_list, !74, !"pwrdm_list", i1 false, i1 false}
!74 = !{!"../arch/arm/mach-omap2/powerdomain.c", i32 59, i32 8}
!75 = distinct !{null, !76, !"__already_done", i1 false, i1 false}
!76 = !{!"../include/trace/events/power.h", i32 354, i32 1}
!77 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!78 = distinct !{null, !79, !"__already_done", i1 false, i1 false}
!79 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!80 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!81 = !{!"sp"}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!91 = !{i64 2148726041, i64 2148726046, i64 2148726059, i64 2148726103, i64 2148726137, i64 2148726158}
!92 = !{!"branch_weights", i32 2000, i32 1}
!93 = !{i64 2155377191}
!94 = !{i64 2155377430}
